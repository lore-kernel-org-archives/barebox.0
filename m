Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp2-g21.free.fr ([2a01:e0c:1:1599::11])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1SEdG7-0001S8-OX
 for barebox@lists.infradead.org; Mon, 02 Apr 2012 09:09:09 +0000
Date: Mon, 2 Apr 2012 11:08:57 +0200
From: Eric =?ISO-8859-1?B?QuluYXJk?= <eric@eukrea.com>
Message-ID: <20120402110857.1fceff5a@eb-e6520>
In-Reply-To: <CAD9ZU8D0a8BRAtAN8_9Hz_75Lek=N_i_F+jjXvfR1gxMsPNZ3A@mail.gmail.com>
References: <CAD9ZU8AJc+LxYRa_HFQ_pxt+G3ijZmyKcQ0MqDKvVHH5FrJ1Qw@mail.gmail.com>
 <20120401104934.GD22835@sapphire.tkos.co.il>
 <20120401144518.73c1cf53@eb-e6520>
 <20120401125209.GE22835@sapphire.tkos.co.il>
 <20120401150507.465b4a6d@eb-e6520>
 <CAD9ZU8D0a8BRAtAN8_9Hz_75Lek=N_i_F+jjXvfR1gxMsPNZ3A@mail.gmail.com>
Mime-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: nand_imx 4k support ?
To: Gabriel Tisan <gabriel.tisan@gmail.com>
Cc: barebox@lists.infradead.org

Le Mon, 2 Apr 2012 11:03:06 +0200,
Gabriel Tisan <gabriel.tisan@gmail.com> a =E9crit :

> Yes, Baruch I meant write support, especially ECC layout for 4K flashes.
> =

> Actually the 4k flashes could have 128 or 218 bytes OOB.
> =

> Could you point me to some docs about this layout ? I use a flash with
> 218 bytes spare.
> =

here is a (dirty) patch which force the NFC configuration :

diff --git a/drivers/mtd/nand/nand_imx.c b/drivers/mtd/nand/nand_imx.c
index 85cfbed..182a7ff 100644
--- a/drivers/mtd/nand/nand_imx.c
+++ b/drivers/mtd/nand/nand_imx.c
@@ -805,7 +812,7 @@ static void preset_v3(struct mtd_info *mtd)
 		config2 |=3D NFC_V3_CONFIG2_PS_2048;
 		config2 |=3D NFC_V3_CONFIG2_NUM_ADDR_PHASE1(addr_phases);
 	} else if (mtd->writesize =3D=3D 4096) {
-		config2 |=3D NFC_V3_CONFIG2_PS_4096;
+		config2 |=3D NFC_V3_CONFIG2_PS_4096 | 1;
 		config2 |=3D NFC_V3_CONFIG2_NUM_ADDR_PHASE1(addr_phases);
 	} else {
 		config2 |=3D NFC_V3_CONFIG2_PS_512;
@@ -817,13 +824,14 @@ static void preset_v3(struct mtd_info *mtd)
 			config2 |=3D NFC_V3_MX51_CONFIG2_PPB(
 					ffs(mtd->erasesize /
mtd->writesize) - 6); else
-			config2 |=3D NFC_V3_MX53_CONFIG2_PPB(
-					ffs(mtd->erasesize /
mtd->writesize) - 6);
+			config2 |=3D 0x200; /*NFC_V3_MX53_CONFIG2_PPB(
+					ffs(mtd->erasesize /
mtd->writesize) - 6);*/ host->eccsize =3D get_eccsize(mtd);
-		if (host->eccsize =3D=3D 8)
+//		if (host->eccsize =3D=3D 8)
 			config2 |=3D NFC_V3_CONFIG2_ECC_MODE_8;
 	}
-
+	printf("config2 : %x\n", config2);
+	config2 =3D 0x706da17A;
 	writel(config2, NFC_V3_CONFIG2);
 =

 	config3 =3D NFC_V3_CONFIG3_NUM_OF_DEVICES(0) |
@@ -835,6 +843,8 @@ static void preset_v3(struct mtd_info *mtd)
 	if (!(chip->options & NAND_BUSWIDTH_16))
 		config3 |=3D NFC_V3_CONFIG3_FW8;
 =

+	printf("config3 : %x\n", config3);
+	config3=3D 0x1a8608;
 	writel(config3, NFC_V3_CONFIG3);
 =

 	writel(0, NFC_V3_DELAY_LINE);
@@ -1064,7 +1074,7 @@ static int __init imxnd_probe(struct device_d
*dev) host->main_area0 =3D host->base;
 		host->regs =3D host->base + 0xe00;
 		host->spare0 =3D host->base + 0x800;
-		host->spare_len =3D 16;
+		host->spare_len =3D 64;
 		oob_smallpage =3D &nandv1_hw_eccoob_smallpage;
 		oob_largepage =3D &nandv1_hw_eccoob_largepage;
 	} else if (nfc_is_v3_2()) {

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
