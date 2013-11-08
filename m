Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VeheI-0005wo-Uc
 for barebox@lists.infradead.org; Fri, 08 Nov 2013 08:42:40 +0000
Date: Fri, 8 Nov 2013 09:42:15 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20131108084215.GU24559@pengutronix.de>
References: <1383662527-8538-1-git-send-email-lisovy@gmail.com>
 <1383662527-8538-4-git-send-email-lisovy@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1383662527-8538-4-git-send-email-lisovy@gmail.com>
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
Subject: Re: [PATCH 3/3] ARM: i.mx53: Support for Voipac board. Device
 definition is read from Devicetree
To: Rostislav Lisovy <lisovy@gmail.com>
Cc: barebox@lists.infradead.org, pisa@cmp.felk.cvut.cz

Hi Rostislav,

On Tue, Nov 05, 2013 at 03:42:07PM +0100, Rostislav Lisovy wrote:
> Signed-off-by: Rostislav Lisovy <lisovy@gmail.com>
> 
> diff --git a/arch/arm/boards/freescale-mx53-vmx53/env/config b/arch/arm/boards/freescale-mx53-vmx53/env/config
> new file mode 100644
> index 0000000..3d90172
> --- /dev/null
> +++ b/arch/arm/boards/freescale-mx53-vmx53/env/config

Why not use defenv-2?

> diff --git a/arch/arm/boards/freescale-mx53-vmx53/flash_header.c b/arch/arm/boards/freescale-mx53-vmx53/flash_header.c
> new file mode 100644
> index 0000000..a6864a6
> --- /dev/null
> +++ b/arch/arm/boards/freescale-mx53-vmx53/flash_header.c

I'm currently generating the flash images for new boards using the
imx-image tool and also generate multi board images. This is a very
flexible, though maybe hard to understand mechanism. Is this the reason
you haven't used it or were you not aware of it?
I would rather see this board taking part in this new mechanism. Are you
willing to port this over? Otherwise I could try and convert this patch,
but I would depend on you testing the result.

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
