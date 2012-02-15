Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Rxdg3-0008W7-O5
 for barebox@lists.infradead.org; Wed, 15 Feb 2012 12:09:45 +0000
Date: Wed, 15 Feb 2012 13:09:11 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120215120911.GB3852@pengutronix.de>
References: <CALQ+5adUP4qyf8+82s2NK6R3LbvjteuE-bkQ0iUdMG7X2LtxFQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CALQ+5adUP4qyf8+82s2NK6R3LbvjteuE-bkQ0iUdMG7X2LtxFQ@mail.gmail.com>
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
To: Igor Trevisan <igt1972@gmail.com>
Cc: barebox@lists.infradead.org

On Tue, Feb 14, 2012 at 04:10:08PM +0100, Igor Trevisan wrote:
> Hi,
> 
> I'm working on a custom board based on iMX27L. Initially I worked with Redboot
> as Linux bootloader but now, I'm happily working with Barebox (2012.01.0)
> having replaced Redboot with it.
> 
> Everithing is fine (thanks to the guys in the list for helping me!) but...
> I noticed that my Linux apps run more slowly within my system if it's
> started by Barebox
> then if it's started by Redbbot.
> I think it's a matter of internal clocks settings.
> 
> I see that Redboot, for example, set:
>         CSR=0x33F38107
> while Barebox does:
> 	writel(0x33F30307 | CSCR_MPLL_RESTART | CSCR_SPLL_RESTART, CSCR)
> That brings to CSR=0x33F30307 at the end of the PLLs restart procedure.
> 
> Reading the Manual I can see that the differences between the two settings
> mean having an arm_clk that is 2/3 and an AHB_clk that's the half.
> 
> Is there a particular reason for having these "slower configuration"?

One thing that might be interesting in such cases is the output of
the dump_clocks command.

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
