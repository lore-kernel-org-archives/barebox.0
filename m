Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gFzHW-0005OR-Ix
 for barebox@lists.infradead.org; Fri, 26 Oct 2018 10:23:56 +0000
Date: Fri, 26 Oct 2018 12:23:42 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20181026102342.lhx6hpcnobqe2g4k@pengutronix.de>
References: <20181026120558.1ef80a86@yaise-pc1>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20181026120558.1ef80a86@yaise-pc1>
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
Subject: Re: IMX6UL: Booting kernel with initramfs blocks
To: Patrick Boettcher <patrick.boettcher@posteo.de>
Cc: barebox@lists.infradead.org, Mikael Pann <Mikael.pann@stimio.fr>

Hi Patrick,

On Fri, Oct 26, 2018 at 12:05:58PM +0200, Patrick Boettcher wrote:
> Hi,
> 
> we are using a Phytec IMX6UL-module and would like to use a
> kernel+initramfs as a rescue/recovery system (when bootchooser bails
> out).
> 
> We are building the initramfs-zIamge with Yocto using a
> customized Phytec-distribution (not many changes). 
> 
> What we added to get an initramfs'd kernel is 
> 
>    INITRAMFS_IMAGE = "<image-name>"
>    INITRAMFS_IMAGE_BUNDLE = "1"
> 
> to local.conf.
> 
> bitbaking the thing gives us the zImage-initramfs-file.
> 
> Then we created two static volumes within the UBI-partition on the
> NAND one for the image, one for the dtb.
> 
> When trying to boot the image with bootm -o .. .. it takes some time
> (to load I guess) and then blocks.

Could you copy the image out from UBI to /somefile first to get UBI out
of the equation first?

Doing bootm -v -v might reveal some more information then.

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
