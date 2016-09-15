Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bkR3a-0004qM-Be
 for barebox@lists.infradead.org; Thu, 15 Sep 2016 07:26:03 +0000
Date: Thu, 15 Sep 2016 09:25:40 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160915072540.ppraxdgext4baws6@pengutronix.de>
References: <1473841290-3935-1-git-send-email-s.hauer@pengutronix.de>
 <1473875075.4359.7.camel@rtred1test09.kymeta.local>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1473875075.4359.7.camel@rtred1test09.kymeta.local>
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
Subject: Re: [PATCH 1/2] pbl: console: Make it work with multiple setup_c()
To: Trent Piepho <tpiepho@kymetacorp.com>
Cc: Barebox List <barebox@lists.infradead.org>

On Wed, Sep 14, 2016 at 05:41:06PM +0000, Trent Piepho wrote:
> On Wed, 2016-09-14 at 10:21 +0200, Sascha Hauer wrote:
> > +
> > +static void (*__putc)(void *ctx, int c) = INVALID_PTR;
> > +static void *putc_ctx = INVALID_PTR;
> 
> There's also __attribute__ ((section(".data"))).  U-boot uses that. It
> does make it clear why INVALID_PTR is not NULL.

That looks better indeed, see below.

> 
> Also, could use ERR_PTR(-EINVAL).

I tried that before, but it doesn't work because ERR_PTR() is a function
and cannot be used to statically initialize variables.

Sascha

----------------------------8<---------------------------------------

From 80c55cb4837594a7db7f2cedb8e2f177e2697510 Mon Sep 17 00:00:00 2001
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 12 Jul 2016 12:18:05 +0200
Subject: [PATCH] pbl: console: Let console pointer survive BSS clearing

The PBL console support may be configured before the BSS segment
is cleared. Put the pointer into the data section so that it is
not affected by the BSS clearing.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 pbl/console.c | 15 ++++++++++-----
 1 file changed, 10 insertions(+), 5 deletions(-)

diff --git a/pbl/console.c b/pbl/console.c
index 4cefe748..007e4e4 100644
--- a/pbl/console.c
+++ b/pbl/console.c
@@ -1,8 +1,13 @@
 #include <common.h>
 #include <debug_ll.h>
+#include <linux/err.h>
 
-static void (*__putc)(void *ctx, int c);
-static void *putc_ctx;
+/*
+ * Put these in the data section so that they survive the clearing of the
+ * BSS segment.
+ */
+static __attribute__ ((section(".data"))) void (*__putc)(void *ctx, int c);
+static __attribute__ ((section(".data"))) void *putc_ctx;
 
 /**
  * pbl_set_putc() - setup UART used for PBL console
@@ -20,10 +25,10 @@ void pbl_set_putc(void (*putcf)(void *ctx, int c), void *ctx)
 
 void console_putc(unsigned int ch, char c)
 {
-	if (!__putc)
-		putc_ll(c);
-	else
+	if (__putc)
 		__putc(putc_ctx, c);
+	else
+		putc_ll(c);
 }
 
 int console_puts(unsigned int ch, const char *str)
-- 
2.8.1

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
