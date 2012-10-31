Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 20.mo5.mail-out.ovh.net ([91.121.55.239]
 helo=mo5.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TTX3r-0002kU-CG
 for barebox@lists.infradead.org; Wed, 31 Oct 2012 12:06:21 +0000
Received: from mail193.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id D2441FFA583
 for <barebox@lists.infradead.org>; Wed, 31 Oct 2012 13:13:27 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Wed, 31 Oct 2012 13:04:03 +0100
Message-Id: <1351685043-29058-2-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1351685043-29058-1-git-send-email-plagnioj@jcrosoft.com>
References: <20121031120122.GF29599@game.jcrosoft.org>
 <1351685043-29058-1-git-send-email-plagnioj@jcrosoft.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 2/2] m25p80: sync flash support with the kernel
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 drivers/mtd/devices/m25p80.c |   42 +++++++++++++++++++++++++++++++++---------
 1 file changed, 33 insertions(+), 9 deletions(-)

diff --git a/drivers/mtd/devices/m25p80.c b/drivers/mtd/devices/m25p80.c
index b4ac045..428d126 100644
--- a/drivers/mtd/devices/m25p80.c
+++ b/drivers/mtd/devices/m25p80.c
@@ -622,6 +622,7 @@ static const struct spi_device_id m25p_ids[] = {
 	{ "at25fs040",  INFO(0x1f6604, 0, 64 * 1024,   8, SECT_4K) },
 
 	{ "at25df041a", INFO(0x1f4401, 0, 64 * 1024,   8, SECT_4K) },
+	{ "at25df321a", INFO(0x1f4701, 0, 64 * 1024,  64, SECT_4K) },
 	{ "at25df641",  INFO(0x1f4800, 0, 64 * 1024, 128, SECT_4K) },
 
 	{ "at26f004",   INFO(0x1f0400, 0, 64 * 1024,  8, SECT_4K) },
@@ -629,19 +630,29 @@ static const struct spi_device_id m25p_ids[] = {
 	{ "at26df161a", INFO(0x1f4601, 0, 64 * 1024, 32, SECT_4K) },
 	{ "at26df321",  INFO(0x1f4700, 0, 64 * 1024, 64, SECT_4K) },
 
+	{ "at45db081d", INFO(0x1f2500, 0, 64 * 1024, 16, SECT_4K) },
+
 	/* EON -- en25xxx */
 	{ "en25f32", INFO(0x1c3116, 0, 64 * 1024,  64, SECT_4K) },
 	{ "en25p32", INFO(0x1c2016, 0, 64 * 1024,  64, 0) },
+	{ "en25q32b", INFO(0x1c3016, 0, 64 * 1024,  64, 0) },
 	{ "en25p64", INFO(0x1c2017, 0, 64 * 1024, 128, 0) },
+	{ "en25q64", INFO(0x1c3017, 0, 64 * 1024, 128, SECT_4K) },
+
+	/* Everspin */
+	{ "mr25h256", CAT25_INFO(  32 * 1024, 1, 256, 2) },
 
 	/* Intel/Numonyx -- xxxs33b */
 	{ "160s33b",  INFO(0x898911, 0, 64 * 1024,  32, 0) },
 	{ "320s33b",  INFO(0x898912, 0, 64 * 1024,  64, 0) },
 	{ "640s33b",  INFO(0x898913, 0, 64 * 1024, 128, 0) },
+	{ "n25q064",  INFO(0x20ba17, 0, 64 * 1024, 128, 0) },
 
 	/* Macronix */
+	{ "mx25l2005a",  INFO(0xc22012, 0, 64 * 1024,   4, SECT_4K) },
 	{ "mx25l4005a",  INFO(0xc22013, 0, 64 * 1024,   8, SECT_4K) },
 	{ "mx25l8005",   INFO(0xc22014, 0, 64 * 1024,  16, 0) },
+	{ "mx25l1606e",  INFO(0xc22015, 0, 64 * 1024,  32, SECT_4K) },
 	{ "mx25l3205d",  INFO(0xc22016, 0, 64 * 1024,  64, 0) },
 	{ "mx25l6405d",  INFO(0xc22017, 0, 64 * 1024, 128, 0) },
 	{ "mx25l12805d", INFO(0xc22018, 0, 64 * 1024, 256, 0) },
@@ -649,19 +660,28 @@ static const struct spi_device_id m25p_ids[] = {
 	{ "mx25l25635e", INFO(0xc22019, 0, 64 * 1024, 512, 0) },
 	{ "mx25l25655e", INFO(0xc22619, 0, 64 * 1024, 512, 0) },
 
+	/* Micron */
+	{ "n25q128",  INFO(0x20ba18, 0, 64 * 1024, 256, 0) },
+	{ "n25q256a", INFO(0x20ba19, 0, 64 * 1024, 512, SECT_4K) },
+
 	/* Spansion -- single (large) sector size only, at least
 	 * for the chips listed here (without boot sectors).
 	 */
+	{ "s25sl032p",  INFO(0x010215, 0x4d00,  64 * 1024,  64, 0) },
+	{ "s25sl064p",  INFO(0x010216, 0x4d00,  64 * 1024, 128, 0) },
+	{ "s25fl256s0", INFO(0x010219, 0x4d00, 256 * 1024, 128, 0) },
+	{ "s25fl256s1", INFO(0x010219, 0x4d01,  64 * 1024, 512, 0) },
+	{ "s25fl512s",  INFO(0x010220, 0x4d00, 256 * 1024, 256, 0) },
+	{ "s70fl01gs",  INFO(0x010221, 0x4d00, 256 * 1024, 256, 0) },
+	{ "s25sl12800", INFO(0x012018, 0x0300, 256 * 1024,  64, 0) },
+	{ "s25sl12801", INFO(0x012018, 0x0301,  64 * 1024, 256, 0) },
+	{ "s25fl129p0", INFO(0x012018, 0x4d00, 256 * 1024,  64, 0) },
+	{ "s25fl129p1", INFO(0x012018, 0x4d01,  64 * 1024, 256, 0) },
 	{ "s25sl004a",  INFO(0x010212,      0,  64 * 1024,   8, 0) },
 	{ "s25sl008a",  INFO(0x010213,      0,  64 * 1024,  16, 0) },
 	{ "s25sl016a",  INFO(0x010214,      0,  64 * 1024,  32, 0) },
 	{ "s25sl032a",  INFO(0x010215,      0,  64 * 1024,  64, 0) },
-	{ "s25sl032p",  INFO(0x010215, 0x4d00,  64 * 1024,  64, SECT_4K) },
 	{ "s25sl064a",  INFO(0x010216,      0,  64 * 1024, 128, 0) },
-	{ "s25sl12800", INFO(0x012018, 0x0300, 256 * 1024,  64, 0) },
-	{ "s25sl12801", INFO(0x012018, 0x0301,  64 * 1024, 256, 0) },
-	{ "s25fl129p0", INFO(0x012018, 0x4d00, 256 * 1024,  64, 0) },
-	{ "s25fl129p1", INFO(0x012018, 0x4d01,  64 * 1024, 256, 0) },
 	{ "s25fl016k",  INFO(0xef4015,      0,  64 * 1024,  32, SECT_4K) },
 	{ "s25fl064k",  INFO(0xef4017,      0,  64 * 1024, 128, SECT_4K) },
 
@@ -685,6 +705,7 @@ static const struct spi_device_id m25p_ids[] = {
 	{ "m25p32",  INFO(0x202016,  0,  64 * 1024,  64, 0) },
 	{ "m25p64",  INFO(0x202017,  0,  64 * 1024, 128, 0) },
 	{ "m25p128", INFO(0x202018,  0, 256 * 1024,  64, 0) },
+	{ "n25q032", INFO(0x20ba16,  0,  64 * 1024,  64, 0) },
 
 	{ "m25p05-nonjedec",  INFO(0, 0,  32 * 1024,   2, 0) },
 	{ "m25p10-nonjedec",  INFO(0, 0,  32 * 1024,   4, 0) },
@@ -700,10 +721,14 @@ static const struct spi_device_id m25p_ids[] = {
 	{ "m45pe80", INFO(0x204014,  0, 64 * 1024,   16, 0) },
 	{ "m45pe16", INFO(0x204015,  0, 64 * 1024,   32, 0) },
 
+	{ "m25pe20", INFO(0x208012,  0, 64 * 1024,  4,       0) },
 	{ "m25pe80", INFO(0x208014,  0, 64 * 1024, 16,       0) },
 	{ "m25pe16", INFO(0x208015,  0, 64 * 1024, 32, SECT_4K) },
 
-	{ "m25px64", INFO(0x207117,  0, 64 * 1024, 128, 0) },
+	{ "m25px32",    INFO(0x207116,  0, 64 * 1024, 64, SECT_4K) },
+	{ "m25px32-s0", INFO(0x207316,  0, 64 * 1024, 64, SECT_4K) },
+	{ "m25px32-s1", INFO(0x206316,  0, 64 * 1024, 64, SECT_4K) },
+	{ "m25px64",    INFO(0x207117,  0, 64 * 1024, 128, 0) },
 
 	/* Winbond -- w25x "blocks" are 64K, "sectors" are 4KiB */
 	{ "w25x10", INFO(0xef3011, 0, 64 * 1024,  2,  SECT_4K) },
@@ -713,8 +738,10 @@ static const struct spi_device_id m25p_ids[] = {
 	{ "w25x16", INFO(0xef3015, 0, 64 * 1024,  32, SECT_4K) },
 	{ "w25x32", INFO(0xef3016, 0, 64 * 1024,  64, SECT_4K) },
 	{ "w25q32", INFO(0xef4016, 0, 64 * 1024,  64, SECT_4K) },
+	{ "w25q32dw", INFO(0xef6016, 0, 64 * 1024,  64, SECT_4K) },
 	{ "w25x64", INFO(0xef3017, 0, 64 * 1024, 128, SECT_4K) },
 	{ "w25q64", INFO(0xef4017, 0, 64 * 1024, 128, SECT_4K) },
+	{ "w25q80", INFO(0xef5014, 0, 64 * 1024,  16, SECT_4K) },
 
 	/* Catalyst / On Semiconductor -- non-JEDEC */
 	{ "cat25c11", CAT25_INFO(  16, 8, 16, 1) },
@@ -722,9 +749,6 @@ static const struct spi_device_id m25p_ids[] = {
 	{ "cat25c09", CAT25_INFO( 128, 8, 32, 2) },
 	{ "cat25c17", CAT25_INFO( 256, 8, 32, 2) },
 	{ "cat25128", CAT25_INFO(2048, 8, 64, 2) },
-
-	/* Micron */
-	{ "n25q128", INFO(0x20ba18, 0, 64 * 1024, 256, 0) },
 	{ },
 };
 
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
