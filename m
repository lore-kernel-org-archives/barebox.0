Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UZR5d-0002Yo-HV
 for barebox@lists.infradead.org; Mon, 06 May 2013 19:28:50 +0000
Date: Mon, 6 May 2013 21:28:26 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130506192826.GP20989@pengutronix.de>
References: <1367599871-28479-1-git-send-email-thomas.petazzoni@free-electrons.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1367599871-28479-1-git-send-email-thomas.petazzoni@free-electrons.com>
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
Subject: Re: [PATCH 0/7] Basic support for Marvell Armada 370/XP SoC
To: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
Cc: Lior Amsalem <alior@marvell.com>, barebox@lists.infradead.org, Willy Tarreau <w@1wt.eu>, Ezequiel Garcia <ezequiel.garcia@free-electrons.com>

On Fri, May 03, 2013 at 06:51:04PM +0200, Thomas Petazzoni wrote:
> Hello,
> 
> Here is a patch set that adds basic support for the Marvell Armada 370
> and Armada XP SoC. For now, the support is quite minimal, since only
> the serial port is supported. However, a significant part of the work
> has been the development of the tools that allow to extract/create
> bootable images and to push a bootable image through the UART to the
> hardware platform.
> 
> I expect to work on adding support for more devices (such as the
> network interface) and possibly to add support for the older, but
> popular, Marvell Kirkwood SoC family. Contributions are of course
> welcome.
> 
> In detail, the patch set contains:
> 
>  * A kwbimage tool. This tool allows to extract existing bootloader
>    images, and create new bootloader images. It is more or less
>    similar in purpose to the kwbimage tool from U-Boot, but is capable
>    of handling 'version 1' images used by Armada 370/XP, and not only
>    allows to create images, but also extract images.
> 
>    A typical usage is to first extract an existing bootloader image:
> 
>     ./scripts/kwbimage -x -i <existing-image> -o <some-directory>
> 
>    As an output, you typically get 3 files: kwbimage.cfg (a text file
>    that describes the configuration of the image in a format
>    ressembling the one used by U-Boot), binary.0 (the binary blob that
>    does the DDR3 training) and payload (the bootloader itself).

So now I have the DDR3 training blob and the payload. I would then
replace the payload with barebox and call kwbimage again to generate
a new image, right?

Just to understand what the problem here is: Am I right that we do not
have the source code for the DDR3 training code and that the code is not
GPL so that we can't distribute it with barebox?

Independently of this I repeat that adding a tool for the job of
generating images is the right way to go, at least when the images are
of a certain complexity which is the case here.

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
