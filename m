Delivery-date: Mon, 02 Dec 2024 09:08:49 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tI1U9-0030Le-0I
	for lore@lore.pengutronix.de;
	Mon, 02 Dec 2024 09:08:49 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tI1U8-0007dE-Sv
	for lore@pengutronix.de; Mon, 02 Dec 2024 09:08:49 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=YtziIdy355gCjkOM2DibOeoA86AZl3iuy+IODg9TT8s=; b=Lxsl4OiqCQNzLDcyalrfvFFrtx
	qkv91qJamV9S68WbtA3QUj+3LFQwNajTMnylQsMjKcX1vY1AxHdN8cZ4zzOu1rdKee44tnE8CaOsf
	I445dpdqJHaqWShRxNmu5IWZZtSnHnsmd2DLmZViuzmVZX5Fo+jPEZb2C4vwhA6y0p3767tfC5vTA
	xAHEpTOBUeGdwZaRcuA08ttrVyFQpkmTzbR0zPdPwN9T/90NVZicTXZSNlCbSn2Sf+5llGCXn8Yw6
	XU6MYD/EaBkEMoNHa0DZqMZXLxhIhPAGWZP2/YIZqCV+YzrKYGmZBUZile5dv20v/2AbeEfp7F0Tp
	ncmd6vsQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tI1Tj-00000005NLS-3uaD;
	Mon, 02 Dec 2024 08:08:23 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tI1Th-00000005NKU-0rtx
	for barebox@lists.infradead.org;
	Mon, 02 Dec 2024 08:08:22 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tI1Tf-0007U2-Rj; Mon, 02 Dec 2024 09:08:19 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tI1Te-001GJZ-2q;
	Mon, 02 Dec 2024 09:08:19 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tI1Tf-00EZ80-1o;
	Mon, 02 Dec 2024 09:08:19 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Sohaib Mohamed <sohaib.amhmd@gmail.com>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  2 Dec 2024 09:08:17 +0100
Message-Id: <20241202080818.3471605-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241202_000821_241399_AFD548F9 
X-CRM114-Status: GOOD (  11.40  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-6.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH master v2 1/2] crc: crc-itu-t: generate lookup table on first use
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Unlike CRC32, CRC16 enjoys only limited use in barebox:

  - RATP
  - DDR SPD EEPROM
  - TQ EEPROM
  - SD over SPI
  - XYMODEM

Nevertheless, once one of these is enabled, a lookup table of 512 bytes
is generated, which is, by definition, badly compressible.

Let's do what CRC32 is doing and generate the lookup table anew on first
access instead.

This saves us 404 bytes for a XZ-compressed THUMB2 barebox.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 crypto/crc-itu-t.c | 69 ++++++++++++++++++++++------------------------
 include/crc.h      | 23 ----------------
 2 files changed, 33 insertions(+), 59 deletions(-)

diff --git a/crypto/crc-itu-t.c b/crypto/crc-itu-t.c
index 64bccfb7420d..837a6464b6aa 100644
--- a/crypto/crc-itu-t.c
+++ b/crypto/crc-itu-t.c
@@ -7,41 +7,36 @@
 
 #include <crc.h>
 
-/** CRC table for the CRC ITU-T V.41 0x1021 (x^16 + x^12 + x^15 + 1) */
-const u16 crc_itu_t_table[256] = {
-	0x0000, 0x1021, 0x2042, 0x3063, 0x4084, 0x50a5, 0x60c6, 0x70e7,
-	0x8108, 0x9129, 0xa14a, 0xb16b, 0xc18c, 0xd1ad, 0xe1ce, 0xf1ef,
-	0x1231, 0x0210, 0x3273, 0x2252, 0x52b5, 0x4294, 0x72f7, 0x62d6,
-	0x9339, 0x8318, 0xb37b, 0xa35a, 0xd3bd, 0xc39c, 0xf3ff, 0xe3de,
-	0x2462, 0x3443, 0x0420, 0x1401, 0x64e6, 0x74c7, 0x44a4, 0x5485,
-	0xa56a, 0xb54b, 0x8528, 0x9509, 0xe5ee, 0xf5cf, 0xc5ac, 0xd58d,
-	0x3653, 0x2672, 0x1611, 0x0630, 0x76d7, 0x66f6, 0x5695, 0x46b4,
-	0xb75b, 0xa77a, 0x9719, 0x8738, 0xf7df, 0xe7fe, 0xd79d, 0xc7bc,
-	0x48c4, 0x58e5, 0x6886, 0x78a7, 0x0840, 0x1861, 0x2802, 0x3823,
-	0xc9cc, 0xd9ed, 0xe98e, 0xf9af, 0x8948, 0x9969, 0xa90a, 0xb92b,
-	0x5af5, 0x4ad4, 0x7ab7, 0x6a96, 0x1a71, 0x0a50, 0x3a33, 0x2a12,
-	0xdbfd, 0xcbdc, 0xfbbf, 0xeb9e, 0x9b79, 0x8b58, 0xbb3b, 0xab1a,
-	0x6ca6, 0x7c87, 0x4ce4, 0x5cc5, 0x2c22, 0x3c03, 0x0c60, 0x1c41,
-	0xedae, 0xfd8f, 0xcdec, 0xddcd, 0xad2a, 0xbd0b, 0x8d68, 0x9d49,
-	0x7e97, 0x6eb6, 0x5ed5, 0x4ef4, 0x3e13, 0x2e32, 0x1e51, 0x0e70,
-	0xff9f, 0xefbe, 0xdfdd, 0xcffc, 0xbf1b, 0xaf3a, 0x9f59, 0x8f78,
-	0x9188, 0x81a9, 0xb1ca, 0xa1eb, 0xd10c, 0xc12d, 0xf14e, 0xe16f,
-	0x1080, 0x00a1, 0x30c2, 0x20e3, 0x5004, 0x4025, 0x7046, 0x6067,
-	0x83b9, 0x9398, 0xa3fb, 0xb3da, 0xc33d, 0xd31c, 0xe37f, 0xf35e,
-	0x02b1, 0x1290, 0x22f3, 0x32d2, 0x4235, 0x5214, 0x6277, 0x7256,
-	0xb5ea, 0xa5cb, 0x95a8, 0x8589, 0xf56e, 0xe54f, 0xd52c, 0xc50d,
-	0x34e2, 0x24c3, 0x14a0, 0x0481, 0x7466, 0x6447, 0x5424, 0x4405,
-	0xa7db, 0xb7fa, 0x8799, 0x97b8, 0xe75f, 0xf77e, 0xc71d, 0xd73c,
-	0x26d3, 0x36f2, 0x0691, 0x16b0, 0x6657, 0x7676, 0x4615, 0x5634,
-	0xd94c, 0xc96d, 0xf90e, 0xe92f, 0x99c8, 0x89e9, 0xb98a, 0xa9ab,
-	0x5844, 0x4865, 0x7806, 0x6827, 0x18c0, 0x08e1, 0x3882, 0x28a3,
-	0xcb7d, 0xdb5c, 0xeb3f, 0xfb1e, 0x8bf9, 0x9bd8, 0xabbb, 0xbb9a,
-	0x4a75, 0x5a54, 0x6a37, 0x7a16, 0x0af1, 0x1ad0, 0x2ab3, 0x3a92,
-	0xfd2e, 0xed0f, 0xdd6c, 0xcd4d, 0xbdaa, 0xad8b, 0x9de8, 0x8dc9,
-	0x7c26, 0x6c07, 0x5c64, 0x4c45, 0x3ca2, 0x2c83, 0x1ce0, 0x0cc1,
-	0xef1f, 0xff3e, 0xcf5d, 0xdf7c, 0xaf9b, 0xbfba, 0x8fd9, 0x9ff8,
-	0x6e17, 0x7e36, 0x4e55, 0x5e74, 0x2e93, 0x3eb2, 0x0ed1, 0x1ef0
-};
+static u16 crc_itu_t_table[256];
+
+/*
+ * Implements the standard CRC ITU-T V.41:
+ *   Width 16
+ *   Poly  0x1021 (x^16 + x^12 + x^15 + 1)
+ *   Init  0
+ */
+static u16 crc_itu_t_byte(u16 crc, const u8 data)
+{
+	int i;
+
+	crc = crc ^ data << 8;
+	for (i = 0; i < 8; ++i) {
+		if (crc & 0x8000)
+			crc = crc << 1 ^ 0x1021;
+		else
+			crc = crc << 1;
+	}
+	return crc;
+}
+
+static void make_crc_table(void)
+{
+	if (crc_itu_t_table[1])
+		return;
+
+	for (int n = 0; n < 256; n++)
+		crc_itu_t_table[n] = crc_itu_t_byte(0, n);
+}
 
 /**
  * crc_itu_t - Compute the CRC-ITU-T for the data buffer
@@ -54,7 +49,9 @@ const u16 crc_itu_t_table[256] = {
  */
 u16 crc_itu_t(u16 crc, const u8 *buffer, size_t len)
 {
+	make_crc_table();
+
 	while (len--)
-		crc = crc_itu_t_byte(crc, *buffer++);
+		crc = (crc << 8) ^ crc_itu_t_table[((crc >> 8) ^ *buffer++) & 0xff];
 	return crc;
 }
diff --git a/include/crc.h b/include/crc.h
index a5204aaabb9c..3eba635dbaa4 100644
--- a/include/crc.h
+++ b/include/crc.h
@@ -10,31 +10,8 @@
  *   Poly  0x1021 (x^16 + x^12 + x^15 + 1)
  *   Init  0
  */
-extern u16 const crc_itu_t_table[256];
-
 extern u16 crc_itu_t(u16 crc, const u8 *buffer, size_t len);
 
-#ifdef __PBL__
-static inline u16 crc_itu_t_byte(u16 crc, const u8 data)
-{
-	int i;
-
-	crc = crc ^ data << 8;
-	for (i = 0; i < 8; ++i) {
-		if (crc & 0x8000)
-			crc = crc << 1 ^ 0x1021;
-		else
-			crc = crc << 1;
-	}
-	return crc;
-}
-#else
-static inline u16 crc_itu_t_byte(u16 crc, const u8 data)
-{
-	return (crc << 8) ^ crc_itu_t_table[((crc >> 8) ^ data) & 0xff];
-}
-#endif
-
 uint32_t crc32(uint32_t, const void *, unsigned int);
 uint32_t crc32_be(uint32_t, const void *, unsigned int);
 uint32_t crc32_no_comp(uint32_t, const void *, unsigned int);
-- 
2.39.5



