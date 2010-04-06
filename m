Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.69 #1 (Red Hat Linux))
	id 1Nz2J7-0007Z6-1c
	for barebox@lists.infradead.org; Tue, 06 Apr 2010 06:30:42 +0000
Date: Tue, 6 Apr 2010 08:30:07 +0200
From: 'Sascha Hauer' <s.hauer@pengutronix.de>
Message-ID: <20100406063007.GA3688@pengutronix.de>
References: <007101cad0b8$eba13150$c2e393f0$@cpdesign.com.au>
	<20100331121903.GU2241@pengutronix.de>
	<003d01cad47c$3cc272d0$b6475870$@cpdesign.com.au>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <003d01cad47c$3cc272d0$b6475870$@cpdesign.com.au>
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
Subject: Re: Splash screen on mx35 3 stack
To: Marc Reilly <marc@cpdesign.com.au>
Cc: barebox@lists.infradead.org

On Mon, Apr 05, 2010 at 02:55:33PM +1000, Marc Reilly wrote:
> Hi Sascha,
> 
> Please pardon my terrible manners for not saying a big "thank you" sooner!
> Easter holiday preparations got in the way.

No problem, I was in easter mdoe aswell ;)

> 
> > I have short circuited pins 2 and 3 of q6 on the personality board to get
> power
> > to the LCD. q6 is normally driven by the mc9s08 (pin ptf0). We did not
> have
> > any code for this chip at that time and then forgot about it. As we now
> have a
> > driver for it it should only be a matter of finding the right bits to
> twiddle with.
> 
> Ah, I see ... so this LCD only works if power is supplied to it? :)
> 
> As a quick test I shorted out pin 2 and 3 of Q6, and the LCD works.
> However, I can't that FET to turn on via software. I've tried enabling the
> LCD in f3s_enable_display with:
> 
> u8 mask = (0x01 << 6);
> mc9sdz60_set_bits( mc9sdz60_get(), MC9SDZ60_REG_GPIO_1, mask ,  mask);
> 
> From a quick glance, this seemed to be essentially what the kernel was
> doing. Mc9sdz60 registers read as expected but the screen stays off - that's
> as much as I had time for.
> 
> > Patches welcome ;)
> If I figure it out, will submit a patch for sure, but I'll be moving to
> custom hardware soon and it will become irrelevant, so I may have to admit
> defeat.

Same situation here, so I added the following patch to make this clear:


From 86d1c12dd33b538dd2b3fc750d869e9defa2cd6e Mon Sep 17 00:00:00 2001
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 6 Apr 2010 08:28:00 +0200
Subject: [PATCH] i.MX35 3stack: Add a comment about the nonworking display

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 board/freescale-mx35-3-stack/3stack.c |    4 ++++
 1 files changed, 4 insertions(+), 0 deletions(-)

diff --git a/board/freescale-mx35-3-stack/3stack.c b/board/freescale-mx35-3-stack/3stack.c
index 3b6a93b..1faf1b9 100644
--- a/board/freescale-mx35-3-stack/3stack.c
+++ b/board/freescale-mx35-3-stack/3stack.c
@@ -113,6 +113,10 @@ static struct device_d i2c_dev = {
 
 /*
  * Generic display, shipped with the PDK
+ * FIXME: The power for the display is driven by the mc9s08. This is
+ * currently not done in software, for the display to work you have to
+ * short ciruit pins 2 and 3 of q6 on the personality board, or better,
+ * send a patch.
  */
 static struct fb_videomode CTP_CLAA070LC0ACW = {
 	/* 800x480 @ 60 Hz */
-- 
1.7.0


-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
