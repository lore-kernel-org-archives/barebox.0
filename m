Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ww0-f49.google.com ([74.125.82.49])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QPVX7-0006NO-46
	for barebox@lists.infradead.org; Thu, 26 May 2011 08:03:06 +0000
Received: by wwb39 with SMTP id 39so338062wwb.18
	for <barebox@lists.infradead.org>; Thu, 26 May 2011 01:03:02 -0700 (PDT)
From: Peter Korsgaard <jacmet@sunsite.dk>
References: <1305408544-29710-1-git-send-email-jacmet@sunsite.dk>
Date: Thu, 26 May 2011 10:02:57 +0200
In-Reply-To: <1305408544-29710-1-git-send-email-jacmet@sunsite.dk> (Peter
	Korsgaard's message of "Sat, 14 May 2011 23:29:04 +0200")
Message-ID: <87ei3lriry.fsf@macbook.be.48ers.dk>
MIME-Version: 1.0
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] Fix sandbox ./barebox --help by reverting 6b082cfe (fix
	printf warnings)
To: barebox@lists.infradead.org, s.hauer@pengutronix.de

>>>>> "Peter" == Peter Korsgaard <jacmet@sunsite.dk> writes:

 Peter> While getting rid of all the format(barebox_printf) warnings was nice,
 Peter> it caused the printf calls in arch/sandbox/os/common.c to get directed
 Peter> to the barebox versions rather than the libc ones causing a crash:

 Peter> E.G. before this revert:
 Peter> nm -a barebox|grep -w printf
 Peter> 0000000000404fa3 T print

 Peter> And after:
 Peter> nm -a barebox|grep -w printf
 Peter> U printf@@GLIBC_2.2.5

 Peter> Signed-off-by: Peter Korsgaard <jacmet@sunsite.dk>

Ping?

 Peter> ---
 Peter>  include/stdio.h |    5 -----
 Peter>  1 files changed, 0 insertions(+), 5 deletions(-)

 Peter> diff --git a/include/stdio.h b/include/stdio.h
 Peter> index 9b1f161..c824764 100644
 Peter> --- a/include/stdio.h
 Peter> +++ b/include/stdio.h
 Peter> @@ -8,9 +8,6 @@
 Peter>   * STDIO based functions (can always be used)
 Peter>   */
 
 Peter> -#define ORIG_printf	printf
 Peter> -#undef printf
 Peter> -
 Peter>  /* serial stuff */
 Peter>  void	serial_printf(const char *fmt, ...) __attribute__ ((format(printf, 1, 2)));
 
 Peter> @@ -63,6 +60,4 @@ int	fputc(int file, const char c);
 Peter>  int	ftstc(int file);
 Peter>  int	fgetc(int file);
 
 Peter> -#define printf			ORIG_printf
 Peter> -
 Peter>  #endif /* __STDIO_H */
 Peter> -- 
 Peter> 1.7.4.4

-- 
Bye, Peter Korsgaard

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
