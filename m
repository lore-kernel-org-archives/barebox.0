Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fnJ5n-0004ZD-Nx
 for barebox@lists.infradead.org; Wed, 08 Aug 2018 07:41:17 +0000
Date: Wed, 8 Aug 2018 09:41:03 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180808074103.gk4exopq4ym3j24y@pengutronix.de>
References: <A49D50D39772A245B44D2DDFA61E3E8702088F1D@DCB14.DCBAD.local>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <A49D50D39772A245B44D2DDFA61E3E8702088F1D@DCB14.DCBAD.local>
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
Subject: Re: kernel ubi boot
To: Dimitri Van Dyck | IndigoCare <Dimitri.VanDyck@indigocare.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

On Thu, Jul 26, 2018 at 01:52:32PM +0000, Dimitri Van Dyck | IndigoCare wrote:
> Hi,
> 
> Is it possible to boot zImage from ubi, and not from raw flash?

Yes, this should be possible.

> If so, from what version is this supported?
> 
> barebox@Voipac VMX53:/ boot
> booting nand-dtb-ubi
> 
> Loading OS UBI image '/dev/ubi0.kernel'
> using internal devicetree
> no image handler found for image type UBI image

/dev/ubi0.kernel seems to contain a UBI image and not a kernel image.
While I think that you can simply put a zImage into a UBI volume and
boot it, there seems to be something wrong in your setup.

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
