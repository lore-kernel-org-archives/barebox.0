Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Wyyuc-0005qh-Tz
 for barebox@lists.infradead.org; Mon, 23 Jun 2014 07:43:35 +0000
Date: Mon, 23 Jun 2014 09:43:08 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140623074308.GU15686@pengutronix.de>
References: <CAOpc7mFqu1ov94naTWtCiJMXxNk5RLa=mSL-eh3SwFXNoP1UGg@mail.gmail.com>
 <20140618195849.GL15686@pengutronix.de>
 <CAOpc7mFo8jdw24V=2wZW=dCMMbiBW87R7ZGKSqRR7SO4StB79g@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAOpc7mFo8jdw24V=2wZW=dCMMbiBW87R7ZGKSqRR7SO4StB79g@mail.gmail.com>
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

On Mon, Jun 23, 2014 at 09:25:02AM +0200, Holger Schurig wrote:
> Whaaa, it never occured to me that I have to enable the framebuffer as
> well...   thanks, now it works.

barebox has nothing useful to show on the screen until some splash
command has been executed, so it's better to leave the display
diabled to avoid unnecessary flickering.

> 
> As for simplefb, I removed that. I thought that this sets up a
> framebuffer in the bootloader, which when Linux' framebuffer driver
> takes over, without reprogramm or screen flicker. However, it seems
> that this only works with specific framebuffer patterns, e.g. some 16
> and 32 bit special rgb formats. I don't really get the need for that,
> because the bootloader already has programmed the graphics device
> correctly, the Linux driver could just re-use that information, so I
> don't really see a need why the framebuffer organization has to be
> present in the device tree in yet-another-format (tm).

The simplefb driver in the kernel is completely hardware agnostic. It's
just a way for the firmware to give an already initialized framebuffer
to Linux and to run Linux graphics without having a framebuffer driver
under Linux. The IPU driver cannot take over an already initialized
framebuffer, instead it will reset and reconfigure the IPU during
initialization. I'm not sure which direction this
passing-a-framebuffer-from-bootloader-to-linux will take, but the
current situation is less than satisfying. My preferred solution is to
be fast enough in the bootloader and show a splash screen under Linux
only.

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
