Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1WxM0n-0003gh-A6
 for barebox@lists.infradead.org; Wed, 18 Jun 2014 19:59:14 +0000
Date: Wed, 18 Jun 2014 21:58:49 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140618195849.GL15686@pengutronix.de>
References: <CAOpc7mFqu1ov94naTWtCiJMXxNk5RLa=mSL-eh3SwFXNoP1UGg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAOpc7mFqu1ov94naTWtCiJMXxNk5RLa=mSL-eh3SwFXNoP1UGg@mail.gmail.com>
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
Subject: Re: i.MX6 frame buffer inside barebox?
To: Holger Schurig <holgerschurig@gmail.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

On Wed, Jun 18, 2014 at 04:26:48PM +0200, Holger Schurig wrote:
> Hi, I'm a bit puzzled. I compiled my barebox with
> 
> CONFIG_CMD_SPLASH=y
> CONFIG_VIDEO=y
> CONFIG_DRIVER_VIDEO_IMX_IPUV3=y
> CONFIG_DRIVER_VIDEO_IMX_IPUV3_LVDS=y
> CONFIG_DRIVER_VIDEO_SIMPLEFB=y
> 
> and some entries in the device tree about it (see below). And when I
> boot barebox, I see /dev/fb0.
> 
> However, the LVDS signals don't come out of the CPU, e.g. LVDS_CLK0_P
> / LVDS_CLK0_N is silent. Do I need something to enable the drive as
> well?  Simply writing to /dev/fb0, e.g. with the "splash" or "mw -d
> /dev/fdb0" command, doesn't seem to do the magic.

have you enabled the framebuffer? fb0.enable=1

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
