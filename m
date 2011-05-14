Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wy0-f177.google.com ([74.125.82.177])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1QLMOf-0003xR-VT
	for barebox@lists.infradead.org; Sat, 14 May 2011 21:29:15 +0000
Received: by wyb28 with SMTP id 28so3373333wyb.36
	for <barebox@lists.infradead.org>; Sat, 14 May 2011 14:29:11 -0700 (PDT)
From: Peter Korsgaard <jacmet@sunsite.dk>
Date: Sat, 14 May 2011 23:29:04 +0200
Message-Id: <1305408544-29710-1-git-send-email-jacmet@sunsite.dk>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] Fix sandbox ./barebox --help by reverting 6b082cfe (fix
	printf warnings)
To: barebox@lists.infradead.org, mkl@pengutronix.de

While getting rid of all the format(barebox_printf) warnings was nice,
it caused the printf calls in arch/sandbox/os/common.c to get directed
to the barebox versions rather than the libc ones causing a crash:

E.G. before this revert:
nm -a barebox|grep -w printf
0000000000404fa3 T print

And after:
nm -a barebox|grep -w printf
U printf@@GLIBC_2.2.5

Signed-off-by: Peter Korsgaard <jacmet@sunsite.dk>
---
 include/stdio.h |    5 -----
 1 files changed, 0 insertions(+), 5 deletions(-)

diff --git a/include/stdio.h b/include/stdio.h
index 9b1f161..c824764 100644
--- a/include/stdio.h
+++ b/include/stdio.h
@@ -8,9 +8,6 @@
  * STDIO based functions (can always be used)
  */
 
-#define ORIG_printf	printf
-#undef printf
-
 /* serial stuff */
 void	serial_printf(const char *fmt, ...) __attribute__ ((format(printf, 1, 2)));
 
@@ -63,6 +60,4 @@ int	fputc(int file, const char c);
 int	ftstc(int file);
 int	fgetc(int file);
 
-#define printf			ORIG_printf
-
 #endif /* __STDIO_H */
-- 
1.7.4.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
