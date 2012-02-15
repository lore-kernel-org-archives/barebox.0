Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lpp01m010-f49.google.com ([209.85.215.49])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RxgKZ-0005X3-Eb
 for barebox@lists.infradead.org; Wed, 15 Feb 2012 14:59:40 +0000
Received: by lahg1 with SMTP id g1so1376486lah.36
 for <barebox@lists.infradead.org>; Wed, 15 Feb 2012 06:59:37 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <20120215120911.GB3852@pengutronix.de>
References: <CALQ+5adUP4qyf8+82s2NK6R3LbvjteuE-bkQ0iUdMG7X2LtxFQ@mail.gmail.com>
 <20120215120911.GB3852@pengutronix.de>
From: Igor Trevisan <igt1972@gmail.com>
Date: Wed, 15 Feb 2012 15:59:17 +0100
Message-ID: <CALQ+5adPFLiwehAoeLoDKwzU5KLhQmMs92GxsT62yDYfppk+aA@mail.gmail.com>
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
Subject: Re: iMX27 clock settings
To: barebox@lists.infradead.org

>
> One thing that might be interesting in such cases is the output of
> the dump_clocks command.

It's a useful debug command!
Here it is its output:

barebox:/ dump_clocks
chip id: [2,882,1,01d]
mpll:     600000000 Hz
spll:     240000000 Hz
arm:      400000000 Hz
perclk1:   20000000 Hz
perclk2:   40000000 Hz
perclk3:  100000000 Hz
perclk4:   40000000 Hz
clkin26:   26000000 Hz
ahb:      133333333 Hz
ipg:       66666666 Hz
barebox:/

This is what I get after the last configuration I tried:

writel(0x00262C15, MPCTL0)	
writel(0x040C2403, SPCTL0)	
writel(0x33F30207, CSCR)	/* Use DIV3 and AHBDIV=10 */

We have three different boards using iMX27L; on two of them
Barebox with this setting runs properly, on the third we frequently
see the system hanging (cyclic restarts).
Note: I have the same results with:
writel(0x33F30307, CSCR)	/* Use DIV3 and AHBDIV=11 */

Best regards,
I.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
