Accelerate.NOISeq <-
function (OS = NULL) 
{
    if (OS == "Unix") {
        data(text.n.menor_unix)
        data(text.busca_unix)
        env <- getNamespace("NOISeq")
        sourceCpp(code = text.n.menor_unix)
        sourceCpp(code = text.busca_unix)
        assignInNamespace("busca", busca, ns = "NOISeq", envir = env)
        assignInNamespace("n.menor", nmenor, ns = "NOISeq", envir = env)
    }
    if (OS == "Windows") {
        data(text.n.menor_win)
        data(text.busca_win)
        env <- getNamespace("NOISeq")
        sourceCpp(code = text.n.menor_win)
        sourceCpp(code = text.busca_win)
        assignInNamespace("busca", busca, ns = "NOISeq", envir = env)
        assignInNamespace("n.menor", nmenor, ns = "NOISeq", envir = env)
    }
    else {
        warning("Please specify OS as Unix or Windows!")
    }
}
