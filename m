Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iw3pl-00040W-DK
 for barebox@lists.infradead.org; Mon, 27 Jan 2020 12:49:43 +0000
Date: Mon, 27 Jan 2020 13:49:38 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200127124938.ajhbdy2rev7ijz2c@pengutronix.de>
References: <20200127100711.wo2fwdq4o3cax3jl@pengutronix.de>
 <20200127101831.27601-1-ceggers@arri.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200127101831.27601-1-ceggers@arri.de>
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
Subject: Re: [RFC PATCH] bootm: Register as bootentry provider
To: Christian Eggers <ceggers@arri.de>
Cc: barebox@lists.infradead.org, ceggers@gmx.de

On Mon, Jan 27, 2020 at 11:18:31AM +0100, Christian Eggers wrote:
> > Obviously anything involving shell scripts cannot work when no shell is
> > enabled. I suggest using bootloader spec (CONFIG_BLSPEC) to boot a
> > kernel. This works without shell support.
> 
> I would like to avoid using bootloader spec. The patch below works fine
> for me. Do you think that this (or something similar) can be added to
> barebox?
> 
> 
> Support for "boot <device>". This is required for using bootchooser with
> CONFIG_SHELL_NONE. In this case no boot scripts can be used, so the
> device name of the flash partition containing the kernel image has to
> provided.
> 
> Only enabled if CONFIG_BLSPEC is disabled.
> 
> Example: bootchooser.system0.boot=nand0.root.ubi.kernel0

you could leave bootchooser.system0.boot empty in which case bootchooser
tries to boot something called "system0".

Like in your patch below call bootentry_register_provider() from your
boardcode and put behind "system0" whatever you want.

I don't like interpreting a device name as a kernel image very much,
given that there's no possibility to also specify the devicetree and
commandline.

Another thing is that just enabling CONFIG_BLSPEC in a config shouldn't
prevent a board from booting. the "Only enabled if CONFIG_BLSPEC is
disabled" is not an option here.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
