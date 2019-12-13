Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iffnm-0001pB-DX
 for barebox@lists.infradead.org; Fri, 13 Dec 2019 07:55:55 +0000
Date: Fri, 13 Dec 2019 08:55:49 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20191213075549.bsugsd4fjo6lqox5@pengutronix.de>
References: <c0e44a15-802d-b008-36b3-3b3d6007e587@data-modul.com>
 <f67d5b7fec7c354a8d632dc8e20d15e5c273030f.camel@pengutronix.de>
 <cfdb29ab-63b9-6d85-52b2-e76dd88839fd@data-modul.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cfdb29ab-63b9-6d85-52b2-e76dd88839fd@data-modul.com>
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
Subject: Re: imx-usb-loader on imx8mq/mm
To: "Yazdani, Reyhaneh" <RYazdani@data-modul.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

On Fri, Dec 13, 2019 at 07:20:15AM +0000, Yazdani, Reyhaneh wrote:
> Thanks Lucas.
> 
> So, if I have a board which has only eMMC (no SD card). What would be your
> recommendation about programming it with Barebox?
> 
> Currently, I program U-Boot via uuu utility and then from Kernel, I program
> Barebox on boot1 partition of eMMC (boot0 is not possible).
> 
> I am trying at least to program Barebox in U-boot via ums, mmc write , ... but
> until now I am not successful. Do you have any experience or idea?

The image as it's falling out of the barebox build should be written
straight to the eMMC. The eMMC itself has a setting which specifies
where the i.MX will boot from, valid setting are user area, boot0 or
boot1. It can be that this setting doesn't match the area you are
writing to.

Another way would be to start barebox from U-Boot and let the
barebox-update command do the job of writing barebox to the eMMC.

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
