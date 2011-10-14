Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1REboW-00079b-Ow
	for barebox@lists.infradead.org; Fri, 14 Oct 2011 07:04:17 +0000
Date: Fri, 14 Oct 2011 09:04:14 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20111014070414.GW13898@pengutronix.de>
References: <1318543601-20819-1-git-send-email-loic.minier@linaro.org>
	<1318543601-20819-4-git-send-email-loic.minier@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1318543601-20819-4-git-send-email-loic.minier@linaro.org>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-15"
Content-Transfer-Encoding: quoted-printable
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 3/5] fprintf() returns an int
To: =?iso-8859-15?Q?Lo=EFc?= Minier <loic.minier@linaro.org>
Cc: barebox@lists.infradead.org

On Fri, Oct 14, 2011 at 12:06:39AM +0200, Lo=EFc Minier wrote:
> For consistency, let fprintf return an int just like it's regular libc
> implementation and all the other printf variations barebox has.  This
> also fixes a warning on variable i being never read in the function.
> =

> Signed-off-by: Lo=EFc Minier <loic.minier@linaro.org>
> ---
>  common/console.c |    4 +++-
>  include/stdio.h  |    2 +-
>  2 files changed, 4 insertions(+), 2 deletions(-)
> =

> diff --git a/common/console.c b/common/console.c
> index 06e9c29..0d2a33b 100644
> --- a/common/console.c
> +++ b/common/console.c
> @@ -327,7 +327,7 @@ void console_flush(void)
>  }
>  EXPORT_SYMBOL(console_flush);
>  =

> -void fprintf (int file, const char *fmt, ...)
> +int fprintf (int file, const char *fmt, ...)
>  {
>  	va_list args;
>  	uint i;
> @@ -343,6 +343,8 @@ void fprintf (int file, const char *fmt, ...)
>  =

>  	/* Print the string */
>  	fputs (file, printbuffer);
> +
> +	return i;
>  }
>  EXPORT_SYMBOL(fprintf);

fprintf is supposed to return the number of characters printed, that is
the return value of fputs. I know that fputs currently returns a wrong
value, but maybe we can fix this with the following:



From 51a7a01e90cc50c6b41bae60dcf70a50f0ff3486 Mon Sep 17 00:00:00 2001
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 14 Oct 2011 08:56:22 +0200
Subject: [PATCH] console: fix return values of puts functions

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/console.c |   14 ++++++++++----
 include/stdio.h  |    6 +++---
 2 files changed, 13 insertions(+), 7 deletions(-)

diff --git a/common/console.c b/common/console.c
index 0d2a33b..6216e88 100644
--- a/common/console.c
+++ b/common/console.c
@@ -292,24 +292,30 @@ int fputc(int fd, char c)
 }
 EXPORT_SYMBOL(fputc);
 =

-void console_puts(unsigned int ch, const char *str)
+int console_puts(unsigned int ch, const char *str)
 {
 	const char *s =3D str;
+	int n =3D 0;
+
 	while (*s) {
-		if (*s =3D=3D '\n')
+		if (*s =3D=3D '\n') {
 			console_putc(ch, '\r');
+			n++;
+		}
 		console_putc(ch, *s);
+		n++;
 		s++;
 	}
+	return n;
 }
 EXPORT_SYMBOL(console_puts);
 =

 int fputs(int fd, const char *s)
 {
 	if (fd =3D=3D 1)
-		puts(s);
+		return puts(s);
 	else if (fd =3D=3D 2)
-		eputs(s);
+		return eputs(s);
 	else
 		return write(fd, s, strlen(s));
 	return 0;
diff --git a/include/stdio.h b/include/stdio.h
index 0c68fa8..4901bc7 100644
--- a/include/stdio.h
+++ b/include/stdio.h
@@ -17,12 +17,12 @@ int	tstc(void);
 /* stdout */
 void	console_putc(unsigned int ch, const char c);
 int	getc(void);
-void	console_puts(unsigned int ch, const char *s);
+int	console_puts(unsigned int ch, const char *s);
 void	console_flush(void);
 =

-static inline void puts(const char *s)
+static inline int puts(const char *s)
 {
-	console_puts(CONSOLE_STDOUT, s);
+	return console_puts(CONSOLE_STDOUT, s);
 }
 =

 static inline void putchar(char c)
-- =

1.7.7

-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
