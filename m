Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1S9Hvv-00019K-Ji
 for barebox@lists.infradead.org; Sun, 18 Mar 2012 15:22:12 +0000
Date: Sun, 18 Mar 2012 16:22:05 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120318152205.GU3852@pengutronix.de>
References: <4F65C69D.5060500@cmotion.eu>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4F65C69D.5060500@cmotion.eu>
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
Subject: Re: [PATCH] Add support for Karo TX51 module
To: Christian Kapeler <christian.kapeller@cmotion.eu>
Cc: support@karo-electronics.de, barebox@lists.infradead.org

On Sun, Mar 18, 2012 at 12:27:25PM +0100, Christian Kapeler wrote:
> Hi,
> 
> the attached patches introduce basic barebox support for the Karo
> SO-DIMM TX51 SOC modules.
> Note, that the code is not tested with the Starterkit development
> board as base,
> but on our own custom board.
> 
> Currently the board boots, supports nand, and mmc. Ethernet support
> is currently only working,
> when barebox is chainloaded from Redboot shipped with the modules.

Looks mostly good, except for the FEC debugging of course. One thing
about it is that rather than hand patching the iomux files we should
just update them from the kernel. I have a patch in my queue which
updates basic iomux-v3 support so that just like in the kernel the
iomux pad is not a struct anymore but a 64bit type. This should make
the way free to use the kernel iomux files. Given that your patch
is not yet ready I still have some time to bring this into shape.

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
