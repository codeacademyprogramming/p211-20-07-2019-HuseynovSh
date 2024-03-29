

--alter procedure usp_GetNewsInfo 
--	@email nvarchar(100) = NULL,
--	@startYear Datetime = NULL,
--	@endYear Datetime = NULL 
--AS
--SELECT 
--	News.Title,
--	News.Content,
--	News.Image,
--	News.CreatedAt,
--	CONCAT(Users.Firstname, ' ', Users.Lastname) as 'Fullname',
--	Users.Email
--FROM [P211_Blog].[dbo].[News]
--join Users on News.UserId = Users.Id
--where 
--	Email LIKE '%' + isnull(@email, Email) + '%' AND
--	News.CreatedAt >= isnull(@startYear, News.CreatedAt)  AND
--	News.CreatedAt <= isnull(@endYear, News.CreatedAt)

--execute usp_GetNewsInfo @startYear = '2019-06-01', @email = 'az'

--Sum(5, 56, 32) // positional arguments
--Sum(c: 10, a: 5, b: 7) //named argument

--public int Sum(int a, int b, int c)
--{
--	return a + b + c;
--}

--public string ParseEmailDomain(string email)
--{
--	string result = email.toUpper();
--  result = result.toLower();
--  result = result.toUpper();
--	return result;
--}

--declare @a nvarchar(100)

--alter function ParseEmailDomain (@email nvarchar(200))
--returns nvarchar(200) 
--as
--begin
--	DECLARE @result nvarchar(200); --string result
--	DECLARE @indexOfAt int;        --int indexOfAt 

--	SET @indexOfAt = charindex('@', @email);
--	SET @result = substring(@email, @indexOfAt + 1, 200);
--	SET @result = Upper(@result);

--	return @result;
--end


--select dbo.ParseEmailDomain('aftandil@mail.ru')

--select 
--	*,
--	dbo.ParseEmailDomain(Email) as 'Domain'
--from Users

--select 
--*, Month(CreatedAt)
--from News


--create function GetMonthsInAz(@date datetime)
--returns nvarchar(10)
--as
--begin
--	DECLARE @month int = MONTH(@date)
--	DECLARE @result nvarchar(10)

--	SET @result = 
--	case @month
--		when 1 then 'Yanvar'
--		when 2 then 'Fevral'
--		when 3 then 'Mart'
--		when 4 then 'Aprel'
--		when 5 then 'May'
--		when 6 then 'Iyun'
--		when 7 then 'Iyul'
--		when 8 then 'Avqust'
--		when 9 then 'Sentyabr'
--		when 10 then 'Oktyabr'
--		when 11 then 'Noyabr'
--		when 12 then 'Dekabr'
--	end 

--	return @result
--end

select 
	*, dbo.GetMonthsInAz(CreatedAt) 'Month in Az'
from News
