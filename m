Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from f56.mail.ru ([217.69.129.103])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Uj86R-0003ba-1t
 for barebox@lists.infradead.org; Sun, 02 Jun 2013 13:13:44 +0000
From: =?UTF-8?B?QWxleGFuZGVyIFNoaXlhbg==?= <shc_work@mail.ru>
Mime-Version: 1.0
Date: Sun, 02 Jun 2013 17:13:18 +0400
Message-ID: <1370178798.173110869@f56.mail.ru>
In-Reply-To: <1370177945-36985-1-git-send-email-monaka@monami-ya.com>
References: <1370177945-36985-1-git-send-email-monaka@monami-ya.com>
Reply-To: =?UTF-8?B?QWxleGFuZGVyIFNoaXlhbg==?= <shc_work@mail.ru>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: =?UTF-8?B?UmU6IFtQQVRDSF0gUmVtb3ZlIGEgcmVkdW5kYW50IGxpbmUu?=
To: =?UTF-8?B?TWFzYWtpIE11cmFuYWth?= <monaka@monami-ya.jp>
Cc: barebox@lists.infradead.org

> Signed-off-by: Masaki Muranaka <monaka@monami-ya.com>
> ---
>  commands/echo.c | 1 -
>  1 file changed, 1 deletion(-)
> 
> diff --git a/commands/echo.c b/commands/echo.c
> index 8929234..4dfd870 100644
> --- a/commands/echo.c
> +++ b/commands/echo.c
> @@ -55,7 +55,6 @@ static int do_echo(int argc, char *argv[])
>  			break;
>  		case 'o':
>  			oflags |= O_TRUNC;
> -			file = argv[optind + 1];
>  			if (optind + 1 < argc)
>  				file = argv[optind + 1];
>  			else
> -- 

Nice catch. This is a possible crash.

---
_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
