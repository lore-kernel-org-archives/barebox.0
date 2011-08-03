Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 15.mo3.mail-out.ovh.net ([87.98.150.177]
	helo=mo3.mail-out.ovh.net)
	by canuck.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
	id 1QobFn-00022u-G6
	for barebox@lists.infradead.org; Wed, 03 Aug 2011 13:12:56 +0000
Received: from mail191.ha.ovh.net (b9.ovh.net [213.186.33.59])
	by mo3.mail-out.ovh.net (Postfix) with SMTP id 01DD61000061
	for <barebox@lists.infradead.org>;
	Wed,  3 Aug 2011 15:13:59 +0200 (CEST)
Date: Wed, 3 Aug 2011 14:54:46 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20110803125446.GC24730@game.jcrosoft.org>
References: <1312362661-31340-1-git-send-email-antonynpavlov@gmail.com>
	<1312362661-31340-4-git-send-email-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="O5XBE6gyVG5Rl6Rj"
Content-Disposition: inline
In-Reply-To: <1312362661-31340-4-git-send-email-antonynpavlov@gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=subscribe>
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH v9 04/12] MIPS: add common MIPS stuff
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org


--O5XBE6gyVG5Rl6Rj
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

> index e37b6c5..2b3227a 100644
> --- a/arch/mips/include/asm/common.h
> +++ b/arch/mips/include/asm/common.h
> @@ -24,6 +24,17 @@
>  #ifndef _ASM_MIPS_COMMON_H_
>  #define _ASM_MIPS_COMMON_H_
>  
> -/* nothing special yet */
> +#define NS16550_READ_WRITE_UART_FUNC(pfx, shift, offset) \
> +static unsigned int pfx ##_uart_read(unsigned long base, \
> +		unsigned char reg_idx) \
> +{									\
> +	return __raw_readb((char *)base + (reg_idx << shift) + offset);	\
> +}									\
> +									\
> +static void pfx ##_uart_write(unsigned int val, unsigned long base, \
> +		unsigned char reg_idx) \
> +{									\
> +	__raw_writeb(val, (char *)base + (reg_idx << shift) + offset);	\
> +}									\
you can drop this

add the following patch instead as will need readb/w/l and writeb/w/l for
cfi support anyway

otherwise lokks very good

Best Regards,
J.

--O5XBE6gyVG5Rl6Rj
Content-Type: text/x-diff; charset=us-ascii
Content-Disposition: attachment; filename="0001-mips-add-readb-w-l-and-writeb-w-l-support.patch"

From b2f4074620cc8965457c2461860363c1800bf424 Mon Sep 17 00:00:00 2001
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Sun, 17 Jul 2011 13:57:44 +0800
Subject: [PATCH] mips: add readb/w/l and writeb/w/l support

needed by cfi driver as example

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/mips/include/asm/io.h |    8 ++++++++
 1 files changed, 8 insertions(+), 0 deletions(-)

diff --git a/arch/mips/include/asm/io.h b/arch/mips/include/asm/io.h
index 97ea231..51a5340 100644
--- a/arch/mips/include/asm/io.h
+++ b/arch/mips/include/asm/io.h
@@ -62,4 +62,12 @@ static inline void __raw_writel(u32 b, volatile void __iomem *addr)
 }
 #endif
 
+#define writeb(v,a) __raw_writeb(v,a)
+#define writew(v,a) __raw_writew(v,a)
+#define writel(v,a) __raw_writel(v,a)
+
+#define readb(a) __raw_readb(a)
+#define readw(a) __raw_readw(a)
+#define readl(a) __raw_readl(a)
+
 #endif	/* __ASM_MIPS_IO_H */
-- 
1.7.5.4


--O5XBE6gyVG5Rl6Rj
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--O5XBE6gyVG5Rl6Rj--
