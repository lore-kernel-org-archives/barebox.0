Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1RDWPu-0002zW-KQ
	for barebox@lists.infradead.org; Tue, 11 Oct 2011 07:06:23 +0000
Date: Tue, 11 Oct 2011 09:06:16 +0200
From: Robert Schwebel <r.schwebel@pengutronix.de>
Message-ID: <20111011070616.GM18273@pengutronix.de>
References: <20110308071058.GB22012@jasper.tkos.co.il>
	<4DE1E2FA.1090907@wellsense-tech.com>
	<20110529063350.GB32378@jasper.tkos.co.il>
	<4DE1F253.4050504@wellsense-tech.com>
	<20110529072803.GE32378@jasper.tkos.co.il>
	<4E9148E5.6070102@wellsense-tech.com>
	<20111010044451.GA28707@sapphire.tkos.co.il>
	<4E93E4F4.8040604@wellsense-tech.com>
	<20111011065419.GL18273@pengutronix.de>
	<4E93E8CB.1040504@wellsense-tech.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4E93E8CB.1040504@wellsense-tech.com>
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

On Tue, Oct 11, 2011 at 08:57:15AM +0200, Boaz Ben-David wrote:
> The kernel size is almost 5MB (it includes an initramfs).
>
> 8 seconds are from the time I call "bootm uImage" and until the init script in
> the initramfs kicks in.
>
> If I can seriously shorten this time I will be glad to know, maybe there's
> something I missed.

Do you really need such a big image? Making things as small as possible
in the first place and load everything that's possible at a later time
is a good strategy for quickboot scenarios.

The elinux reference is a good one for boot time reduction. Their wiki
has a long list of possibilities.

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
