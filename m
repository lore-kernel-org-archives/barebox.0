Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ip2.televic.com ([81.82.194.222])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Un1f8-0003lW-VA
 for barebox@lists.infradead.org; Thu, 13 Jun 2013 07:09:40 +0000
From: Vanhauwaert Wouter <W.Vanhauwaert@TELEVIC.com>
Date: Thu, 13 Jun 2013 09:09:11 +0200
Message-ID: <E78BBE677EB9144B8F0A0A29674CD5338ECF0A3DAA@SRV-VS06.TELEVIC.COM>
Content-Language: en-US
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
Subject: NAND + imx53, BBT/timings?
To: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

Hi all,

I'm working on a custom design which has an imx53 and a 1GB NAND flash (Samsung k9k8g08u0d) via an 8 bit bus.
So I added this imx_nand_platform_data structure with a .width=1, .hw_ecc=1 and .flash_bbt=1.
The flash gets detected at startup (also loads the bootloader from it).

nand: Manufacturer ID: 0xec, Chip ID: 0xd3 (Samsung NAND 1GiB 3,3V 8-bit), page size 2048, OOB size:64 
but then
nand: Bad block table not found for chip 0
nand: Bad block table not found for chip 0

etc

and when I do imx_nand_bbm, I get:
Bad eraseblock 0 at 0x00000000
Bad eraseblock 1 at 0x00020000
And for the rest UnCorrectable RS-ECC errors

This is a barenew flash, so I suppose I should find a factory bad block table?
I'm using the barebox 2013.05.1 stable release from git

Grtz,
Wouter

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
