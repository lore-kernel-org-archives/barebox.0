Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 15.mo5.mail-out.ovh.net ([178.33.107.29]
 helo=mo5.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TxEWv-0001Xh-Bf
 for barebox@lists.infradead.org; Mon, 21 Jan 2013 10:23:06 +0000
Received: from mail609.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id EF61FFFAA12
 for <barebox@lists.infradead.org>; Mon, 21 Jan 2013 11:32:40 +0100 (CET)
Date: Mon, 21 Jan 2013 11:21:32 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20130121102132.GD26329@game.jcrosoft.org>
References: <20130119163524.GC26329@game.jcrosoft.org>
 <20130120154055.GR1906@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20130120154055.GR1906@pengutronix.de>
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
Subject: Re: [PATCH 0/9 v4] at91: add bootstrap support
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 16:40 Sun 20 Jan     , Sascha Hauer wrote:
> On Sat, Jan 19, 2013 at 05:35:24PM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > Hi,
> > 
> > 	v4:
> > 	 make the code arm & mips supported for barebox head detection
> > 
> > 	v3:
> > 
> > 	send correct patch series and pull
> > 
> > 	can we have it on master the v2 does not cange much since v1
> > 
> > 	v2:
> > 	 fix whitesapce
> > 	 fix comment
> > 	 fix command default
> > 
> > 	This patch serie introduce a common bootstrap code
> > 	aka xloder for TI and at91bootstrap for Atmel
> > 	to barebox
> > 
> > 	As I do not have with me right now a TI platform I did not switch
> > 	it to the new generic bootstrap code.
> > 
> > 	On at91 add it on the calao usb-a9263 test on nand and spi
> > 	This patch serie depends on the previous at91 patch series
> > 
> > The following changes since commit cef34886b745cf3f6dff55bf326e29a5857b2206:
> > 
> >   graphic_utils/fb_open: fix fbsize (2013-01-16 21:33:14 +0100)
> > 
> > are available in the git repository at:
> > 
> >   git://git.jcrosoft.org/barebox.git delivery/at91_bootstrap
> 
> With the bootstrap code it's still too easy to break compilation. For
> example if the usb_a9263_128mib_bootstrap_defconfig is selected and then
> hush is enabled manually in menuconfig we end up with multiple
> definitions of run_shell. I just sent a startup related cleanup series
> that makes this less dependent on Kconfig magic (only first patch is
> needed for this). Could you base your series on this one?

yeah I was looking on this too this WE

Best Regards,
J.
> 
> Sascha
> 
> -- 
> Pengutronix e.K.                           |                             |
> Industrial Linux Solutions                 | http://www.pengutronix.de/  |
> Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
