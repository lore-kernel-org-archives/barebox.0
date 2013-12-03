Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VnmGC-0005fQ-JU
 for barebox@lists.infradead.org; Tue, 03 Dec 2013 09:27:17 +0000
Date: Tue, 3 Dec 2013 10:26:54 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20131203092654.GH24559@pengutronix.de>
References: <EAF1F21DA385DA4797F21C5DCAEF6BAC467D346735@AUTOSERVER1.auto.local>
 <20131127130236.GX24559@pengutronix.de>
 <EAF1F21DA385DA4797F21C5DCAEF6BAC467D346765@AUTOSERVER1.auto.local>
 <20131127210115.GZ24559@pengutronix.de>
 <EAF1F21DA385DA4797F21C5DCAEF6BAC467D3467EB@AUTOSERVER1.auto.local>
 <20131128162219.GT32436@tarshish>
 <EAF1F21DA385DA4797F21C5DCAEF6BAC467D3467F8@AUTOSERVER1.auto.local>
 <20131129094623.GB24559@pengutronix.de>
 <EAF1F21DA385DA4797F21C5DCAEF6BAC467D346830@AUTOSERVER1.auto.local>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <EAF1F21DA385DA4797F21C5DCAEF6BAC467D346830@AUTOSERVER1.auto.local>
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
Subject: Re: FW: Barebox on Karo TX25
To: John Parker <John.Parker@lucyautomation.co.uk>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

BTW Please don't top-post.

On Mon, Dec 02, 2013 at 09:13:31AM +0000, John Parker wrote:
> Hi again
> 
> So now my problem is that I really could do with the LED and UBIFS stuff that happened since February.
> 
> Should I try to fix mx25 in the latest code, or undo the problematic commit?

Well preferably you should fix the latest code and send a patch to make
it work again ;) However, that could become tricky. For doing so the
patch to enable the debug UART early may become useful. With this you
can use putc_ll and puthex_ll in early code.

I did some investigation. What happens here is really strange. First I
added a missing instruction cache invalidation. That alone doesn't fix
the problem. Inserting a nop fixes booting for me, see the attached
patch. If I move the nop up in the code it still works. If I move it
down, then the board does not work. I have no idea what's happening here
:(

Sascha


From 1bf9ced65ffcfc452957a68060a0e3f56ef3f023 Mon Sep 17 00:00:00 2001
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 3 Dec 2013 10:22:07 +0100
Subject: [PATCH] ARM: tx25: Make it boot by inserting a nop

SIGH!

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/karo-tx25/lowlevel.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm/boards/karo-tx25/lowlevel.c b/arch/arm/boards/karo-tx25/lowlevel.c
index d010043..cf6295b 100644
--- a/arch/arm/boards/karo-tx25/lowlevel.c
+++ b/arch/arm/boards/karo-tx25/lowlevel.c
@@ -121,6 +121,8 @@ void __bare_init __naked barebox_arm_reset_vector(void)
 	/* set to 3.3v SDRAM */
 	writel(0x800, MX25_IOMUXC_BASE_ADDR + 0x454);
 
+	asm volatile ("nop;"::);
+
 	writel(ESDMISC_RST, MX25_ESDCTL_BASE_ADDR + IMX_ESDMISC);
 
 	while (!(readl(MX25_ESDCTL_BASE_ADDR + IMX_ESDMISC) & (1 << 31)));
-- 
1.8.4.3

-- 
1.8.4.3

Sascha

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
