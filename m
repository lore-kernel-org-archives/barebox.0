Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mout.kundenserver.de ([212.227.126.187])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YXR5l-000283-6f
 for barebox@lists.infradead.org; Mon, 16 Mar 2015 09:13:46 +0000
Date: Mon, 16 Mar 2015 10:13:11 +0100 (CET)
From: Rolf Evers-Fischer <embedded24@evers-fischer.de>
Message-ID: <alpine.DEB.2.10.1503160957040.7455@9VTHT2J-D520>
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
Subject: Re: ARM: UBI/UBIFS on spi-nor
To: renaud.barbier@ge.com
Cc: barebox@lists.infradead.org

> I have a cortex-A9 based platform featuring a spi-nor (n25q256a).

> Copying a bigger file (512KB) leads to a read failure
> Has anybody used UBI/UBIFS on spi-nor successfully or seen a similar 
issue?
> 

Hello,
I've recently used UBI/UBIFS with a cortex-A7 based platform featuring a 
spi-nor from Spansion (s25fl256). I had to introduce some changes for the 
4-byte-mode, which will be set automatically, if barebox detects a flash 
memory with more than 16MByte, because I was not able to reboot my 
platform. But it seems that your problem is a different one.

I've just downloaded the datasheet of the n25q256a, and it seems that this 
chip reports the JEDEC_MFR of ST (0x20), but needs the 4-byte CMD of 
Macronix (0xb7).

This combination is currently not supported by barebox, but if you add an 
additional 'case: CFI_MRF_ST' line to your 'set_4byte()' function, it 
should hopefully work:

diff --git a/drivers/mtd/devices/m25p80.c b/drivers/mtd/devices/m25p80.c
index 095a4ca..f54eb1f 100644
--- a/drivers/mtd/devices/m25p80.c
+++ b/drivers/mtd/devices/m25p80.c
@@ -157,6 +157,7 @@ static inline int set_4byte(struct m25p *flash, u32 
jedec_id, int enable)
 {
 	switch (JEDEC_MFR(jedec_id)) {
 	case CFI_MFR_MACRONIX:
+	case CFI_MFR_ST:
 		flash->command[0] = enable ? OPCODE_EN4B : OPCODE_EX4B;
 		return spi_write(flash->spi, flash->command, 1);
 	default:


Best regards,
 Rolf


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
