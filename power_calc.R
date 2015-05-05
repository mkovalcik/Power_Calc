Power.calc <- function(delta, alpha, n, sd = 1){
	df <- (n/2-1)*2 #split n into two groups df of each 1 is n-1 then multiply by 2 cuz 2 equal groups
	quantile <- qt(alpha/2, df,lower.tail = FALSE)
	prob <- pt(quantile,df,ncp = (sqrt(n/4)*delta/sd),lower.tail = FALSE)
		#ncp = n/2 * 1/2 because my test assumes n is total participants 	
	return(prob)
}
