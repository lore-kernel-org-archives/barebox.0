Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1RDWEO-0002oa-N6
	for barebox@lists.infradead.org; Tue, 11 Oct 2011 06:54:30 +0000
Date: Tue, 11 Oct 2011 08:54:19 +0200
From: Robert Schwebel <r.schwebel@pengutronix.de>
Message-ID: <20111011065419.GL18273@pengutronix.de>
References: <201103081635.29082.marc@cpdesign.com.au>
	<39A4B204C321D34DA3490E3B119D5A6C68C006F8A4@SBS2008.wellsense.local>
	<20110308071058.GB22012@jasper.tkos.co.il>
	<4DE1E2FA.1090907@wellsense-tech.com>
	<20110529063350.GB32378@jasper.tkos.co.il>
	<4DE1F253.4050504@wellsense-tech.com>
	<20110529072803.GE32378@jasper.tkos.co.il>
	<4E9148E5.6070102@wellsense-tech.com>
	<20111010044451.GA28707@sapphire.tkos.co.il>
	<4E93E4F4.8040604@wellsense-tech.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4E93E4F4.8040604@wellsense-tech.com>
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
Subject: Re: iMX35 3stack framebuffer problem
To: Boaz Ben-David <boaz.bd@wellsense-tech.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

On Tue, Oct 11, 2011 at 08:40:52AM +0200, Boaz Ben-David wrote:
> Yes, I didn't mention it, but I tried your suggestion. It works
> (meaning there's no flicker) but
>
> the problem is that the screen is blank for about 8 seconds before I
> have control again to init it.
>
> People here said they prefer flicker over 8 seconds of blank time...

This is why we have a framebuffer / video driver framework in Barebox.
We do not have a driver for MX35 yet, but that could of course be
changed.

On the other hand, I'm wondering why it needs 8 s until you see
something on the Linux side. We have an MX35 system here which runs at
532 MHz, and it needs about 1 s from power-on into Linux userspace, so
we decided to show the splash screen from there.

rsc
-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
