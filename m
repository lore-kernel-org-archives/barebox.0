Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZD5hr-000337-TT
 for barebox@lists.infradead.org; Thu, 09 Jul 2015 06:53:16 +0000
Date: Thu, 9 Jul 2015 08:52:53 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150709065253.GK18700@pengutronix.de>
References: <20150708123200.GH18700@pengutronix.de>
 <OF2C7718AB.DA224B8D-ONC1257E7C.002375F3-C1257E7C.0023CCF2@beijer.se>
 <OF33093548.0EB61029-ONC1257E7C.004A9EB9-C1257E7C.004A9EBC@beijer.se>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <OF33093548.0EB61029-ONC1257E7C.004A9EB9-C1257E7C.004A9EBC@beijer.se>
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
Subject: Re: Boot using SPI-NOR device
To: joacim.zetterling@westermo.se
Cc: barebox@lists.infradead.org

On Wed, Jul 08, 2015 at 03:35:03PM +0200, joacim.zetterling@westermo.se wrote:
>    I try to boot linux from a spi-flash with squashfs.
>    by doing the following (discard the debug printouts ;-))
> 
>    barebox:/ mkdir -p /mnt/bootfs
>    barebox:/ mount -t squash -o sha1 /dev/s25fl512s.primary /mnt/bootfs

squash? barebox does not have squashfs support. You must have some out
of tree patches to which I can't say anything. How about posting these,
then we can maybe see what's going wrong.

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
