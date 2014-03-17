Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WPRCq-0000oI-4l
 for barebox@lists.infradead.org; Mon, 17 Mar 2014 06:39:28 +0000
Date: Mon, 17 Mar 2014 07:39:04 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140317063904.GC17250@pengutronix.de>
References: <532207C7.9020206@icid.cu> <20140313212810.4179d0c2@e6520eb>
 <53234E31.2070300@icid.cu>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <53234E31.2070300@icid.cu>
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
Subject: Re: problem booting with Micron MT29F8G08ABABAWP ...
To: raespi <raespi@icid.cu>
Cc: barebox@lists.infradead.org

On Fri, Mar 14, 2014 at 02:45:05PM -0400, raespi wrote:
> Hello again ... diving through the drivers/mtd/nand/nand_base.c code
> I managed to boot with this little modification in the
> nand_flash_detect_onfi() function just before exiting from it:
> 
>     if ( mtd->oobsize > 128 )
>       mtd->oobsize = 128;
> 
> Apparently the only allowed oobsizes are 8, 16, 64 and 128 according
> to the nand_scan_ident() function.

You're probably referring to this code:

	/*
	 * If no default placement scheme is given, select an
	 * appropriate one.
	 */
	if (!chip->ecc.layout && (chip->ecc.mode != NAND_ECC_SOFT_BCH)) {
		switch (mtd->oobsize) {
		case 8:
			chip->ecc.layout = &nand_oob_8;
			break;
		case 16:
			chip->ecc.layout = &nand_oob_16;
			break;
		case 64:
			chip->ecc.layout = &nand_oob_64;
			break;
		case 128:
			chip->ecc.layout = &nand_oob_128;
			break;
		default:
			pr_warn("No oob scheme defined for oobsize %d\n",
				   mtd->oobsize);
			BUG();
		}
	}

This check is only executed when you haven't specified an ecc layout in
your chip driver. You probably have to set chip->ecc.layout in your
driver.

For problems like this it often helps to compare it to the kernel code
(provided it works there). The code is quite similar.

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
