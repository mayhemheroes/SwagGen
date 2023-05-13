#if canImport(Darwin)
import Darwin.C
#elseif canImport(Glibc)
import Glibc
#elseif canImport(MSVCRT)
import MSVCRT
#endif

import Foundation
import Swagger
import JSONUtilities
import Yams

@_cdecl("LLVMFuzzerTestOneInput")
public func test(_ start: UnsafeRawPointer, _ count: Int) -> CInt {
    let fdp = FuzzedDataProvider(start, count)
    do {
        try SwaggerSpec(string: fdp.ConsumeRemainingString())
    }
    catch _ as SwaggerError {
        return -1
    }
    catch _ as JSONUtilities.DecodingError {
        return -1
    }
    catch _ as Yams.YamlError {
        return -1
    }
    catch _ {
        exit(EXIT_FAILURE)
    }
    return 0;
}