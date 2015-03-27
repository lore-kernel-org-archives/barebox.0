Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YbP4E-000473-Bw
 for barebox@lists.infradead.org; Fri, 27 Mar 2015 07:52:35 +0000
Date: Fri, 27 Mar 2015 08:52:09 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150327075209.GT9742@pengutronix.de>
References: <DB3PR03MB0826EDA17C8F26BA05AEAC9A98080@DB3PR03MB0826.eurprd03.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <DB3PR03MB0826EDA17C8F26BA05AEAC9A98080@DB3PR03MB0826.eurprd03.prod.outlook.com>
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
Subject: Re: OMAP NAND Driver ECC Read broken
To: "Gabor Janak (g.janak@agilion.de)" <g.janak@agilion.de>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

Hi Gabor,

On Thu, Mar 26, 2015 at 08:13:38AM +0000, Gabor Janak (g.janak@agilion.de) wrote:
> Hello,
> 
> on all Platforms which using
> drivers/mtd/nand/nand_omap_gpmc.c
> with  ECC Mode OMAP_ECC_HAMMING_CODE_HW_ROMCODE
> (in DTS: bch8_hw_romcode )  the Code is only check the first part of a block page.
> 
> The special Read-function read always a whole page, but only the ECC results oft he first block is checked.
> Any Error after first 512Byte are not detected and not corrected.
> 
> I'm Using barebox-2014.09  on am335x . But it looks in the current HEAD same ...
> 
> A fast Workaround hack :
> In function omap_correct_bch:
> Settings blocks always to 4  and because eccsize is 13
> 
> Changing at the end:
>                calc_ecc = calc_ecc + eccsize;
>                 read_ecc = read_ecc + eccsize+1; //add 1 because in Flash 13+1 is written
>                 dat += 512;
> 
> 
> I know this ist he wrong way.... ;)
> 
> If i have some time, i will try to search a better solution, but currently i have not much time.

It would be great if you could find the time to write a patch. Thanks
for noting this issue anyway, it may safe other peoples time.

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
