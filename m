Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-yw0-f193.google.com ([209.85.211.193])
	by bombadil.infradead.org with esmtp (Exim 4.69 #1 (Red Hat Linux))
	id 1NyeLf-0007Fe-61
	for barebox@lists.infradead.org; Mon, 05 Apr 2010 04:55:44 +0000
Received: by ywh31 with SMTP id 31so2182853ywh.25
	for <barebox@lists.infradead.org>; Sun, 04 Apr 2010 21:55:41 -0700 (PDT)
From: "Marc Reilly" <marc@cpdesign.com.au>
References: <007101cad0b8$eba13150$c2e393f0$@cpdesign.com.au>
	<20100331121903.GU2241@pengutronix.de>
In-Reply-To: <20100331121903.GU2241@pengutronix.de>
Date: Mon, 5 Apr 2010 14:55:33 +1000
Message-ID: <003d01cad47c$3cc272d0$b6475870$@cpdesign.com.au>
MIME-Version: 1.0
Content-Language: en-au
Reply-To: marc@cpdesign.com.au
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
Subject: RE: Splash screen on mx35 3 stack
To: 'Sascha Hauer' <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi Sascha,

Please pardon my terrible manners for not saying a big "thank you" sooner!
Easter holiday preparations got in the way.

> I have short circuited pins 2 and 3 of q6 on the personality board to get
power
> to the LCD. q6 is normally driven by the mc9s08 (pin ptf0). We did not
have
> any code for this chip at that time and then forgot about it. As we now
have a
> driver for it it should only be a matter of finding the right bits to
twiddle with.

Ah, I see ... so this LCD only works if power is supplied to it? :)

As a quick test I shorted out pin 2 and 3 of Q6, and the LCD works.
However, I can't that FET to turn on via software. I've tried enabling the
LCD in f3s_enable_display with:

u8 mask = (0x01 << 6);
mc9sdz60_set_bits( mc9sdz60_get(), MC9SDZ60_REG_GPIO_1, mask ,  mask);

From a quick glance, this seemed to be essentially what the kernel was
doing. Mc9sdz60 registers read as expected but the screen stays off - that's
as much as I had time for.

> Patches welcome ;)
If I figure it out, will submit a patch for sure, but I'll be moving to
custom hardware soon and it will become irrelevant, so I may have to admit
defeat.

Thanks again!

Cheers
Marc

  


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
