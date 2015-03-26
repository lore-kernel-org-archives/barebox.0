Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-am1on0120.outbound.protection.outlook.com
 ([157.56.112.120] helo=emea01-am1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Yb2vT-0003Qo-9d
 for barebox@lists.infradead.org; Thu, 26 Mar 2015 08:14:05 +0000
From: "Gabor Janak (g.janak@agilion.de)" <g.janak@agilion.de>
Date: Thu, 26 Mar 2015 08:13:38 +0000
Message-ID: <DB3PR03MB0826EDA17C8F26BA05AEAC9A98080@DB3PR03MB0826.eurprd03.prod.outlook.com>
Content-Language: de-DE
MIME-Version: 1.0
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
Subject: OMAP NAND Driver ECC Read broken
To: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

Hello,

on all Platforms which using
drivers/mtd/nand/nand_omap_gpmc.c
with  ECC Mode OMAP_ECC_HAMMING_CODE_HW_ROMCODE
(in DTS: bch8_hw_romcode )  the Code is only check the first part of a block page.

The special Read-function read always a whole page, but only the ECC results oft he first block is checked.
Any Error after first 512Byte are not detected and not corrected.

I'm Using barebox-2014.09  on am335x . But it looks in the current HEAD same ...

A fast Workaround hack :
In function omap_correct_bch:
Settings blocks always to 4  and because eccsize is 13

Changing at the end:
               calc_ecc = calc_ecc + eccsize;
                read_ecc = read_ecc + eccsize+1; //add 1 because in Flash 13+1 is written
                dat += 512;


I know this ist he wrong way.... ;)

If i have some time, i will try to search a better solution, but currently i have not much time.



Bye,

Gabor

[Hannover Messe]<http://www.hannovermesse.de/aussteller/agilion/H465093?source=dl_ban>

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
