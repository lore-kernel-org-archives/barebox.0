Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBCcp-0003sC-Mj
 for barebox@lists.infradead.org; Mon, 09 Mar 2020 07:14:57 +0000
Date: Mon, 9 Mar 2020 08:14:51 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200309071451.GC3335@pengutronix.de>
References: <20200228204823.28415-1-dg@emlix.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200228204823.28415-1-dg@emlix.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-15"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 0/3] Support for fastboot over UDP
To: Daniel =?iso-8859-15?Q?Gl=F6ckner?= <dg@emlix.com>
Cc: barebox@lists.infradead.org

On Fri, Feb 28, 2020 at 09:48:20PM +0100, Daniel Gl=F6ckner wrote:
> This patch series adds support the UDP variant of the fastboot protocol
> that was already supported in its USB form by Barebox. There is also a
> TCP variant, but Barebox obviously can't support that one with its
> current network stack.
> =

> The first patch separates all functions that can be reused into a file in
> common/. Although git didn't pick up the similarities, common/fastboot.c
> can be easily diffed against the old drivers/usb/gadget/f_fastboot.c,
> especially after replacing struct f_fb with fb and struct f_fastboot with
> struct fastboot.
> =

> The global.usbgadget.fastboot_max_download_size variable has not been
> renamed because someone might expect it to have that name. But I'll
> happily drop the usbgadget part from the name if you prefer.
> =

> The generic Kconfig options have been renamed. We could add options
> with the old name that select the new options to make the transition
> easier.

We can rename the options in the defconfig files by hand. Only a handful
of them have fastboot enabled.

> =

> The second patch contains the implementation. The code was initially
> taken from U-Boot, but had to be rewritten heavily to fit the way the
> existing Barebox fastboot code executes commands and prints messages.
> Contrary to U-Boot it does not send keep alive messages every 30
> seconds because everything is executed from a poller.

How does that prevent you from sending keep palive messages? Sending
packages from a poller should work.

> =

> The third patch was necessary to allow network interfaces to be activated
> without sending packets. The fastboot code sends packets only in reply to
> received packets.

I'll have a look at this topic the next round. I don't like this
implicit ethopen-during-send we currently do anyway and I think this can
be approved.

Sascha

-- =

Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
