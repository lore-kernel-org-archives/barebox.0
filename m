Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Wefxj-00059Q-Tr
 for barebox@lists.infradead.org; Mon, 28 Apr 2014 07:26:52 +0000
Date: Mon, 28 Apr 2014 09:26:27 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140428072627.GN5858@pengutronix.de>
References: <1398591044-3616-1-git-send-email-b.galvani@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1398591044-3616-1-git-send-email-b.galvani@gmail.com>
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
Subject: Re: [PATCH 00/11] ARM: add initial support for Rockchip boards
To: Beniamino Galvani <b.galvani@gmail.com>
Cc: barebox@lists.infradead.org

Hi Beniamino,

On Sun, Apr 27, 2014 at 11:30:33AM +0200, Beniamino Galvani wrote:
> This series adds an initial support for Rockchip SoCs and has been
> tested on a Radxa Rock board, on which I'm able to load a kernel from
> the network and boot it [1].
> 
> At the moment Barebox must be chainloaded from the Rockchip binary
> bootloader which performs low-level initializations and loads Barebox
> from the "boot" partition on the NAND.
> 
> Barebox should be written using the same procedure used for kernels:
> it must be prepared with the mkimage tool and then written with
> rkflashkit.
> 
> There is a u-boot code released by Rockchip [2] which probably
> includes all the low-level initializations but I'm not brave enough to
> try it.
> 
> The patchset adds ethernet and pinctrl drivers, PLL and clocks
> initialization, and code to power on the external PHY of the board
> through the PMIC.

Awesome! I'm happy to see barebox support for one of the more popular
Linux ARM architectures.

The patches look quite good and there's not much to be done to
make them ready for merging.

I'm just on the way to merge the Linux devicetree files into barebox
and use them where possible so we do not duplicate the devicetrees in
barebox. Could you post a followup once to base the rockchip dts files
on the Linux dts files once I have everything in place? I saw that you
already use the mainline dts files, but these do not contain the
ethernet nodes for example.

Also I'd like to let rockchip use the multi image mechanism. This is not
much work when you know what to do. You could change it yourself or I do
the change for you, but in this case, could you give the result a test?

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
