Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mailout04.rmx.de ([94.199.90.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ivz1l-0005Uc-9j
 for barebox@lists.infradead.org; Mon, 27 Jan 2020 07:41:47 +0000
Received: from kdin01.retarus.com (unknown [172.19.17.48])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mailout04.rmx.de (Postfix) with ESMTPS id 485hWw5JKvz3qvBB
 for <barebox@lists.infradead.org>; Mon, 27 Jan 2020 08:41:32 +0100 (CET)
Received: from ppmail.arri.de (unknown [217.111.95.7])
 (using TLSv1 with cipher AES128-SHA (128/128 bits))
 (No client certificate requested)
 by kdin01.retarus.com (Postfix) with ESMTPS id 485hWv742Kz2xFJ
 for <barebox@lists.infradead.org>; Mon, 27 Jan 2020 08:41:31 +0100 (CET)
From: Christian Eggers <ceggers@arri.de>
Date: Mon, 27 Jan 2020 08:41:15 +0100
Message-ID: <20200127074115.17013-1-ceggers@arri.de>
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
Subject: [PATCH] eeprom: at25: Allow page sizes greater than 16 bit
To: barebox@lists.infradead.org
Cc: Christian Eggers <ceggers@arri.de>, ceggers@gmx.de

For FRAM devices the page size is usually equal to the device size. Some
available devices are greater than 64kB, so a 32 bit variable must be
used.

The same change has to be done for the Linux driver. I'll try to
upstream this as soon as possible.

Signed-off-by: Christian Eggers <ceggers@arri.de>
---
 drivers/eeprom/at25.c | 2 +-
 include/spi/eeprom.h  | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/eeprom/at25.c b/drivers/eeprom/at25.c
index 1c9ef1232..56168c216 100644
--- a/drivers/eeprom/at25.c
+++ b/drivers/eeprom/at25.c
@@ -259,7 +259,7 @@ static int at25_np_to_chip(struct device_d *dev,
 
 	if (of_property_read_u32(np, "pagesize", &val) == 0 ||
 	    of_property_read_u32(np, "at25,page-size", &val) == 0) {
-		chip->page_size = (u16)val;
+		chip->page_size = val;
 	} else {
 		dev_err(dev, "Error: missing \"pagesize\" property\n");
 		return -ENODEV;
diff --git a/include/spi/eeprom.h b/include/spi/eeprom.h
index 15495e59f..137718f02 100644
--- a/include/spi/eeprom.h
+++ b/include/spi/eeprom.h
@@ -10,7 +10,7 @@
  */
 struct spi_eeprom {
 	char		name[10];
-	u16		page_size;		/* for writes */
+	u32		page_size;		/* for writes */
 	u16		flags;
 #define	EE_ADDR1	0x0001			/*  8 bit addrs */
 #define	EE_ADDR2	0x0002			/* 16 bit addrs */
-- 
Christian Eggers
Embedded software developer

Arnold & Richter Cine Technik GmbH & Co. Betriebs KG
Sitz: Muenchen - Registergericht: Amtsgericht Muenchen - Handelsregisternummer: HRA 57918
Persoenlich haftender Gesellschafter: Arnold & Richter Cine Technik GmbH
Sitz: Muenchen - Registergericht: Amtsgericht Muenchen - Handelsregisternummer: HRB 54477
Geschaeftsfuehrer: Dr. Michael Neuhaeuser; Stephan Schenk; Walter Trauninger; Markus Zeiler


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
