Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from f297.mail.ru ([217.69.129.79])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UjAVZ-0005Zx-Jr
 for barebox@lists.infradead.org; Sun, 02 Jun 2013 15:47:51 +0000
From: =?UTF-8?B?QWxleGFuZGVyIFNoaXlhbg==?= <shc_work@mail.ru>
Mime-Version: 1.0
Date: Sun, 02 Jun 2013 19:47:24 +0400
Message-ID: <1370188044.845875578@f297.mail.ru>
In-Reply-To: <1370178849-37125-1-git-send-email-monaka@monami-ya.com>
References: <1370178849-37125-1-git-send-email-monaka@monami-ya.com>
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
Subject: =?UTF-8?B?UmU6IFtQQVRDSF0gUmVtb3ZlIGZ0c3RjKCkuIEl0IGlzIGRlY2xhcmVkIGJ1?=
 =?UTF-8?B?dCBub3QgaW1wbGVtZW50ZWQu?=
To: =?UTF-8?B?TWFzYWtpIE11cmFuYWth?= <monaka@monami-ya.jp>
Cc: barebox@lists.infradead.org

> ---
>  include/stdio.h | 1 -
>  1 file changed, 1 deletion(-)
> 
> diff --git a/include/stdio.h b/include/stdio.h
> index 5c091a8..ff2572e 100644
> --- a/include/stdio.h
> +++ b/include/stdio.h
> @@ -101,7 +101,6 @@ static inline void putchar(char c)
>  int	fprintf(int file, const char *fmt, ...) __attribute__ ((format(__printf__, 2, 3)));
>  int	fputs(int file, const char *s);
>  int	fputc(int file, const char c);
> -int	ftstc(int file);
>  int	fgetc(int file);
>  
>  #endif /* __STDIO_H */
> -- 

Here (and in some other pathes) is missing Signed-off-by line.
Additionally, I want to focus on the fact that the address of From and Signed-off-by differ.
Git documentation says not to have been used aliases.
So, I think this field should be equal in the future.

---
_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
