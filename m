Delivery-date: Thu, 25 Sep 2025 14:00:26 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v1keA-000vuz-2F
	for lore@lore.pengutronix.de;
	Thu, 25 Sep 2025 14:00:26 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v1ke7-0005HM-D1
	for lore@pengutronix.de; Thu, 25 Sep 2025 14:00:26 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=rvAtyJ/FhWXlgAcTyeCc4ZzEKYS7on5iIxa+UHjXpM8=; b=Ekgym4qS8krdjtmB9Oy8ZAHFio
	25a1xzq20t4qhhwcT6wMkyawmcLZeFMLXzdHww1VVuddVMIvTzyI1kBRLaOYhx1ptOJYxLaZEYlkG
	J1LMVSrwIBr7TQvrw1fkkJwkuPnsvH7ZIhdvT1e4ZN010/L4u3P+RupLmDlpWCcWoqMN0f3Uvu+9M
	hBm3LLsapUAD4frxl+FHaDUf1MxBpCRQjCm/W/Bn7G79wMRQf/LFCSGCc4Od0EYmM5mQiuJVXccbj
	eWIbhxoz0Y73fURA6PGzTMQkrIRKr5SttpRYbiEfajHz3PhVLcVQW3HdurEg8zkdXiO+vnrpCgWiU
	B4xjmEIw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v1kdO-00000008k2g-2yFK;
	Thu, 25 Sep 2025 11:59:38 +0000
Received: from cczrelay02.in2p3.fr ([134.158.66.142])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v1kdG-00000008jqb-1H6c
	for barebox@lists.infradead.org;
	Thu, 25 Sep 2025 11:59:35 +0000
Received: from [127.0.1.1] (clrelecpo09w.in2p3.fr [134.158.124.135])
	(authenticated bits=0)
	by cczrelay02.in2p3.fr (8.14.4/8.14.4) with ESMTP id 58PBxEkv016594
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES128-GCM-SHA256 bits=128 verify=NO);
	Thu, 25 Sep 2025 13:59:25 +0200
From: David Picard <david.picard@clermont.in2p3.fr>
Date: Thu, 25 Sep 2025 13:59:13 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20250925-boards-enclustra-sa2-add-support-v2-6-6820ad6c6256@clermont.in2p3.fr>
References: <20250925-boards-enclustra-sa2-add-support-v2-0-6820ad6c6256@clermont.in2p3.fr>
In-Reply-To: <20250925-boards-enclustra-sa2-add-support-v2-0-6820ad6c6256@clermont.in2p3.fr>
To: Sascha Hauer <s.hauer@pengutronix.de>,
        BAREBOX <barebox@lists.infradead.org>
Cc: David Picard <david.picard@clermont.in2p3.fr>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1758801565; l=21282;
 i=david.picard@clermont.in2p3.fr; s=20250917; h=from:subject:message-id;
 bh=YyMoGqxESsDTyWZAoxd8x0bxBq7NV1wa81RgjJ+dD5s=;
 b=2LBvuTBjfujefK+iPoe0itTKiQJPtm6LYyUnj/LRru7exhVDQO1OuTJLY4HH8TjUMoJuF7MtR
 vGJYhyf8hX8B1Kxh4mU7hZgltrgzoj3M0bgzkDn5knymd6uoys1lA/5
X-Developer-Key: i=david.picard@clermont.in2p3.fr; a=ed25519;
 pk=Ew2hyxWdBXm7qaK2tHrk3KcOlOjoh3+irqJPSHtq/PU=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250925_045930_763991_CD557E62 
X-CRM114-Status: GOOD (  20.82  )
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
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 06/10] boards: enclustra-sa2: configure SI5338
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Configure the SI5338 clock generator on the ST1 baseboard.

Signed-off-by: David Picard <david.picard@clermont.in2p3.fr>

---
v1 -> v2:
  - replace custom functions to read and write a byte to a
    I2C register with regmap functions.
  - replace custom functions to update bits in a
    I2C register with regmap functions.
---
---
 arch/arm/boards/enclustra-sa2/Makefile             |   2 +-
 .../boards/enclustra-sa2/Si5338-RevB-Registers.h   | 433 +++++++++++++++++++++
 arch/arm/boards/enclustra-sa2/board.c              |   6 +
 arch/arm/boards/enclustra-sa2/si5338_config.c      | 252 ++++++++++++
 arch/arm/boards/enclustra-sa2/si5338_config.h      |  22 ++
 arch/arm/mach-socfpga/Kconfig                      |   4 +
 6 files changed, 718 insertions(+), 1 deletion(-)

diff --git a/arch/arm/boards/enclustra-sa2/Makefile b/arch/arm/boards/enclustra-sa2/Makefile
index 8c927fe291a6b3eb20a32a2db96c73f231ab4697..2185c84fc482776681a5f2fc3cad7434f0160561 100644
--- a/arch/arm/boards/enclustra-sa2/Makefile
+++ b/arch/arm/boards/enclustra-sa2/Makefile
@@ -1,2 +1,2 @@
-obj-y += lowlevel.o board.o
+obj-y += lowlevel.o board.o si5338_config.o
 pbl-y += lowlevel.o
diff --git a/arch/arm/boards/enclustra-sa2/Si5338-RevB-Registers.h b/arch/arm/boards/enclustra-sa2/Si5338-RevB-Registers.h
new file mode 100644
index 0000000000000000000000000000000000000000..ea9093e8601835e01391b4b19aa98787c4861b41
--- /dev/null
+++ b/arch/arm/boards/enclustra-sa2/Si5338-RevB-Registers.h
@@ -0,0 +1,433 @@
+//Register map for use with AN428 (JumpStart)
+//http://www.skyworksinc.com/timing
+//#BEGIN_HEADER
+//Date = Friday, June 09, 2023 5:03 PM
+//File version = 3
+//Software Name = ClockBuilder Pro
+//Software version = 4.9.0.0
+//Software date = 4 24, 2023
+//Chip = Si533x
+//Part Number = Si533x
+//#END_HEADER
+//Input Frequency (MHz) = 24.000000000
+//Input Type = CMOS_SSTL_HSTL
+//P1 = 1
+//Input Mux = RefClk
+//FDBK Input Frequency (MHz) = 24.000000000
+//FDBK Input Type = OFF
+//P2 = 1
+//FDBK Mux = NoClk
+//PFD Input Frequency (MHz) = 24.000000000
+//VCO Frequency (GHz) = 2.500000
+//N = 104  1/6  (104.1667)
+//Internal feedback enabled
+//Output Clock 0
+// Output Frequency (MHz) = 125.000000000
+// Mux Selection = IDn
+// MultiSynth = 20  (20.0000)
+// R = 1
+//Output Clock 1
+// Output is off
+//Output Clock 2
+// Output is off
+//Output Clock 3
+// Output Frequency (MHz) = 100.000000000
+// Mux Selection = IDn
+// MultiSynth = 25  (25.0000)
+// R = 1
+//Driver 0
+// Enabled
+// Powered on
+// Output voltage = 3.30
+// Output type = 3.3V LVDS
+// Output state when disabled = Tristate
+//Driver 1
+// Disabled
+// Powered off
+// Output voltage = 3.30
+// Output type = 3.3V LVDS
+// Output state when disabled = StopLow
+//Driver 2
+// Disabled
+// Powered off
+// Output voltage = 3.30
+// Output type = 3.3V LVDS
+// Output state when disabled = StopLow
+//Driver 3
+// Enabled
+// Powered on
+// Output voltage = 3.30
+// Output type = 3.3V CMOS on A
+// Output state when disabled = Tristate
+//Clock 0 phase inc/dec step size (ns) = 0.000
+//Clock 1 phase inc/dec step size (ns) = 0.000
+//Clock 2 phase inc/dec step size (ns) = 0.000
+//Clock 3 phase inc/dec step size (ns) = 0.000
+//Phase increment and decrement pin control is off
+//Frequency increment and decrement pin control is off
+//Frequency increment and decrement is disabled
+//Initial phase offset 0 (ns) = 0.000
+//Initial phase offset 1 (ns) = 0.000
+//Initial phase offset 2 (ns) = 0.000
+//Initial phase offset 3 (ns) = 0.000
+//SSC is disabled
+
+#define NUM_REGS_MAX 350
+
+typedef struct Reg_Data {
+	unsigned char Reg_Addr;
+	unsigned char Reg_Val;
+	unsigned char Reg_Mask;
+} Reg_Data;
+
+Reg_Data const Reg_Store[NUM_REGS_MAX] = {
+	{  0, 0x00, 0x00 },
+	{  1, 0x00, 0x00 },
+	{  2, 0x00, 0x00 },
+	{  3, 0x00, 0x00 },
+	{  4, 0x00, 0x00 },
+	{  5, 0x00, 0x00 },
+	{  6, 0x08, 0x1D },
+	{  7, 0x00, 0x00 },
+	{  8, 0x70, 0x00 },
+	{  9, 0x0F, 0x00 },
+	{ 10, 0x00, 0x00 },
+	{ 11, 0x00, 0x00 },
+	{ 12, 0x00, 0x00 },
+	{ 13, 0x00, 0x00 },
+	{ 14, 0x00, 0x00 },
+	{ 15, 0x00, 0x00 },
+	{ 16, 0x00, 0x00 },
+	{ 17, 0x00, 0x00 },
+	{ 18, 0x00, 0x00 },
+	{ 19, 0x00, 0x00 },
+	{ 20, 0x00, 0x00 },
+	{ 21, 0x00, 0x00 },
+	{ 22, 0x00, 0x00 },
+	{ 23, 0x00, 0x00 },
+	{ 24, 0x00, 0x00 },
+	{ 25, 0x00, 0x00 },
+	{ 26, 0x00, 0x00 },
+	{ 27, 0x70, 0x80 },
+	{ 28, 0x0B, 0xFF },
+	{ 29, 0x08, 0xFF },
+	{ 30, 0xB0, 0xFF },
+	{ 31, 0xC0, 0xFF },
+	{ 32, 0xE3, 0xFF },
+	{ 33, 0xE3, 0xFF },
+	{ 34, 0xC0, 0xFF },
+	{ 35, 0x00, 0xFF },
+	{ 36, 0x06, 0x1F },
+	{ 37, 0x00, 0x1F },
+	{ 38, 0x00, 0x1F },
+	{ 39, 0x01, 0x1F },
+	{ 40, 0x63, 0xFF },
+	{ 41, 0x0C, 0x7F },
+	{ 42, 0x37, 0x3F },
+	{ 43, 0x00, 0x00 },
+	{ 44, 0x00, 0x00 },
+	{ 45, 0x00, 0xFF },
+	{ 46, 0x00, 0xFF },
+	{ 47, 0x14, 0x3F },
+	{ 48, 0x3C, 0xFF },
+	{ 49, 0x00, 0xFF },
+	{ 50, 0xC4, 0xFF },
+	{ 51, 0x07, 0xFF },
+	{ 52, 0x10, 0xFF },
+	{ 53, 0x00, 0xFF },
+	{ 54, 0x08, 0xFF },
+	{ 55, 0x00, 0xFF },
+	{ 56, 0x00, 0xFF },
+	{ 57, 0x00, 0xFF },
+	{ 58, 0x00, 0xFF },
+	{ 59, 0x01, 0xFF },
+	{ 60, 0x00, 0xFF },
+	{ 61, 0x00, 0xFF },
+	{ 62, 0x00, 0x3F },
+	{ 63, 0x10, 0xFF },
+	{ 64, 0x00, 0xFF },
+	{ 65, 0x00, 0xFF },
+	{ 66, 0x00, 0xFF },
+	{ 67, 0x00, 0xFF },
+	{ 68, 0x00, 0xFF },
+	{ 69, 0x00, 0xFF },
+	{ 70, 0x00, 0xFF },
+	{ 71, 0x00, 0xFF },
+	{ 72, 0x00, 0xFF },
+	{ 73, 0x00, 0x3F },
+	{ 74, 0x10, 0xFF },
+	{ 75, 0x00, 0xFF },
+	{ 76, 0x00, 0xFF },
+	{ 77, 0x00, 0xFF },
+	{ 78, 0x00, 0xFF },
+	{ 79, 0x00, 0xFF },
+	{ 80, 0x00, 0xFF },
+	{ 81, 0x00, 0xFF },
+	{ 82, 0x00, 0xFF },
+	{ 83, 0x00, 0xFF },
+	{ 84, 0x00, 0x3F },
+	{ 85, 0x10, 0xFF },
+	{ 86, 0x80, 0xFF },
+	{ 87, 0x0A, 0xFF },
+	{ 88, 0x00, 0xFF },
+	{ 89, 0x00, 0xFF },
+	{ 90, 0x00, 0xFF },
+	{ 91, 0x00, 0xFF },
+	{ 92, 0x01, 0xFF },
+	{ 93, 0x00, 0xFF },
+	{ 94, 0x00, 0xFF },
+	{ 95, 0x00, 0x3F },
+	{ 96, 0x10, 0x00 },
+	{ 97, 0x15, 0xFF },
+	{ 98, 0x32, 0xFF },
+	{ 99, 0x08, 0xFF },
+	{ 100, 0x00, 0xFF },
+	{ 101, 0x00, 0xFF },
+	{ 102, 0x00, 0xFF },
+	{ 103, 0x06, 0xFF },
+	{ 104, 0x00, 0xFF },
+	{ 105, 0x00, 0xFF },
+	{ 106, 0x80, 0xBF },
+	{ 107, 0x00, 0xFF },
+	{ 108, 0x00, 0xFF },
+	{ 109, 0x00, 0xFF },
+	{ 110, 0x00, 0xFF },
+	{ 111, 0x00, 0xFF },
+	{ 112, 0x00, 0xFF },
+	{ 113, 0x00, 0xFF },
+	{ 114, 0x40, 0xFF },
+	{ 115, 0x00, 0xFF },
+	{ 116, 0x80, 0xFF },
+	{ 117, 0x00, 0xFF },
+	{ 118, 0x40, 0xFF },
+	{ 119, 0x00, 0xFF },
+	{ 120, 0x00, 0xFF },
+	{ 121, 0x00, 0xFF },
+	{ 122, 0x00, 0xFF },
+	{ 123, 0x00, 0xFF },
+	{ 124, 0x00, 0xFF },
+	{ 125, 0x00, 0xFF },
+	{ 126, 0x00, 0xFF },
+	{ 127, 0x00, 0xFF },
+	{ 128, 0x00, 0xFF },
+	{ 129, 0x00, 0x0F },
+	{ 130, 0x00, 0x0F },
+	{ 131, 0x00, 0xFF },
+	{ 132, 0x00, 0xFF },
+	{ 133, 0x00, 0xFF },
+	{ 134, 0x00, 0xFF },
+	{ 135, 0x00, 0xFF },
+	{ 136, 0x00, 0xFF },
+	{ 137, 0x00, 0xFF },
+	{ 138, 0x00, 0xFF },
+	{ 139, 0x00, 0xFF },
+	{ 140, 0x00, 0xFF },
+	{ 141, 0x00, 0xFF },
+	{ 142, 0x00, 0xFF },
+	{ 143, 0x00, 0xFF },
+	{ 144, 0x00, 0xFF },
+	{ 145, 0x00, 0x00 },
+	{ 146, 0xFF, 0x00 },
+	{ 147, 0x00, 0x00 },
+	{ 148, 0x00, 0x00 },
+	{ 149, 0x00, 0x00 },
+	{ 150, 0x00, 0x00 },
+	{ 151, 0x00, 0x00 },
+	{ 152, 0x00, 0xFF },
+	{ 153, 0x00, 0xFF },
+	{ 154, 0x00, 0xFF },
+	{ 155, 0x00, 0xFF },
+	{ 156, 0x00, 0xFF },
+	{ 157, 0x00, 0xFF },
+	{ 158, 0x00, 0x0F },
+	{ 159, 0x00, 0x0F },
+	{ 160, 0x00, 0xFF },
+	{ 161, 0x00, 0xFF },
+	{ 162, 0x00, 0xFF },
+	{ 163, 0x00, 0xFF },
+	{ 164, 0x00, 0xFF },
+	{ 165, 0x00, 0xFF },
+	{ 166, 0x00, 0xFF },
+	{ 167, 0x00, 0xFF },
+	{ 168, 0x00, 0xFF },
+	{ 169, 0x00, 0xFF },
+	{ 170, 0x00, 0xFF },
+	{ 171, 0x00, 0xFF },
+	{ 172, 0x00, 0xFF },
+	{ 173, 0x00, 0xFF },
+	{ 174, 0x00, 0xFF },
+	{ 175, 0x00, 0xFF },
+	{ 176, 0x00, 0xFF },
+	{ 177, 0x00, 0xFF },
+	{ 178, 0x00, 0xFF },
+	{ 179, 0x00, 0xFF },
+	{ 180, 0x00, 0xFF },
+	{ 181, 0x00, 0x0F },
+	{ 182, 0x00, 0xFF },
+	{ 183, 0x00, 0xFF },
+	{ 184, 0x00, 0xFF },
+	{ 185, 0x00, 0xFF },
+	{ 186, 0x00, 0xFF },
+	{ 187, 0x00, 0xFF },
+	{ 188, 0x00, 0xFF },
+	{ 189, 0x00, 0xFF },
+	{ 190, 0x00, 0xFF },
+	{ 191, 0x00, 0xFF },
+	{ 192, 0x00, 0xFF },
+	{ 193, 0x00, 0xFF },
+	{ 194, 0x00, 0xFF },
+	{ 195, 0x00, 0xFF },
+	{ 196, 0x00, 0xFF },
+	{ 197, 0x00, 0xFF },
+	{ 198, 0x00, 0xFF },
+	{ 199, 0x00, 0xFF },
+	{ 200, 0x00, 0xFF },
+	{ 201, 0x00, 0xFF },
+	{ 202, 0x00, 0xFF },
+	{ 203, 0x00, 0x0F },
+	{ 204, 0x00, 0xFF },
+	{ 205, 0x00, 0xFF },
+	{ 206, 0x00, 0xFF },
+	{ 207, 0x00, 0xFF },
+	{ 208, 0x00, 0xFF },
+	{ 209, 0x00, 0xFF },
+	{ 210, 0x00, 0xFF },
+	{ 211, 0x00, 0xFF },
+	{ 212, 0x00, 0xFF },
+	{ 213, 0x00, 0xFF },
+	{ 214, 0x00, 0xFF },
+	{ 215, 0x00, 0xFF },
+	{ 216, 0x00, 0xFF },
+	{ 217, 0x00, 0xFF },
+	{ 218, 0x00, 0x00 },
+	{ 219, 0x00, 0x00 },
+	{ 220, 0x00, 0x00 },
+	{ 221, 0x0D, 0x00 },
+	{ 222, 0x00, 0x00 },
+	{ 223, 0x00, 0x00 },
+	{ 224, 0xF4, 0x00 },
+	{ 225, 0xF0, 0x00 },
+	{ 226, 0x00, 0x00 },
+	{ 227, 0x00, 0x00 },
+	{ 228, 0x00, 0x00 },
+	{ 229, 0x00, 0x00 },
+	{ 231, 0x00, 0x00 },
+	{ 232, 0x00, 0x00 },
+	{ 233, 0x00, 0x00 },
+	{ 234, 0x00, 0x00 },
+	{ 235, 0x00, 0x00 },
+	{ 236, 0x00, 0x00 },
+	{ 237, 0x00, 0x00 },
+	{ 238, 0x14, 0x00 },
+	{ 239, 0x00, 0x00 },
+	{ 240, 0x00, 0x00 },
+	{ 242, 0x02, 0x02 },
+	{ 243, 0xF0, 0x00 },
+	{ 244, 0x00, 0x00 },
+	{ 245, 0x00, 0x00 },
+	{ 247, 0x00, 0x00 },
+	{ 248, 0x00, 0x00 },
+	{ 249, 0xA8, 0x00 },
+	{ 250, 0x00, 0x00 },
+	{ 251, 0x84, 0x00 },
+	{ 252, 0x00, 0x00 },
+	{ 253, 0x00, 0x00 },
+	{ 254, 0x00, 0x00 },
+	{ 255, 1, 0xFF }, // set page bit to 1
+	{  0, 0x00, 0x00 },
+	{  1, 0x00, 0x00 },
+	{  2, 0x00, 0x00 },
+	{  3, 0x00, 0x00 },
+	{  4, 0x00, 0x00 },
+	{  5, 0x00, 0x00 },
+	{  6, 0x00, 0x00 },
+	{  7, 0x00, 0x00 },
+	{  8, 0x00, 0x00 },
+	{  9, 0x00, 0x00 },
+	{ 10, 0x00, 0x00 },
+	{ 11, 0x00, 0x00 },
+	{ 12, 0x00, 0x00 },
+	{ 13, 0x00, 0x00 },
+	{ 14, 0x00, 0x00 },
+	{ 15, 0x00, 0x00 },
+	{ 16, 0x00, 0x00 },
+	{ 17, 0x01, 0x00 },
+	{ 18, 0x00, 0x00 },
+	{ 19, 0x00, 0x00 },
+	{ 20, 0x90, 0x00 },
+	{ 21, 0x31, 0x00 },
+	{ 22, 0x00, 0x00 },
+	{ 23, 0x00, 0x00 },
+	{ 24, 0x01, 0x00 },
+	{ 25, 0x00, 0x00 },
+	{ 26, 0x00, 0x00 },
+	{ 27, 0x00, 0x00 },
+	{ 28, 0x00, 0x00 },
+	{ 29, 0x00, 0x00 },
+	{ 30, 0x00, 0x00 },
+	{ 31, 0x00, 0xFF },
+	{ 32, 0x00, 0xFF },
+	{ 33, 0x01, 0xFF },
+	{ 34, 0x00, 0xFF },
+	{ 35, 0x00, 0xFF },
+	{ 36, 0x90, 0xFF },
+	{ 37, 0x31, 0xFF },
+	{ 38, 0x00, 0xFF },
+	{ 39, 0x00, 0xFF },
+	{ 40, 0x01, 0xFF },
+	{ 41, 0x00, 0xFF },
+	{ 42, 0x00, 0xFF },
+	{ 43, 0x00, 0x0F },
+	{ 44, 0x00, 0x00 },
+	{ 45, 0x00, 0x00 },
+	{ 46, 0x00, 0x00 },
+	{ 47, 0x00, 0xFF },
+	{ 48, 0x00, 0xFF },
+	{ 49, 0x01, 0xFF },
+	{ 50, 0x00, 0xFF },
+	{ 51, 0x00, 0xFF },
+	{ 52, 0x90, 0xFF },
+	{ 53, 0x31, 0xFF },
+	{ 54, 0x00, 0xFF },
+	{ 55, 0x00, 0xFF },
+	{ 56, 0x01, 0xFF },
+	{ 57, 0x00, 0xFF },
+	{ 58, 0x00, 0xFF },
+	{ 59, 0x00, 0x0F },
+	{ 60, 0x00, 0x00 },
+	{ 61, 0x00, 0x00 },
+	{ 62, 0x00, 0x00 },
+	{ 63, 0x00, 0xFF },
+	{ 64, 0x00, 0xFF },
+	{ 65, 0x01, 0xFF },
+	{ 66, 0x00, 0xFF },
+	{ 67, 0x00, 0xFF },
+	{ 68, 0x90, 0xFF },
+	{ 69, 0x31, 0xFF },
+	{ 70, 0x00, 0xFF },
+	{ 71, 0x00, 0xFF },
+	{ 72, 0x01, 0xFF },
+	{ 73, 0x00, 0xFF },
+	{ 74, 0x00, 0xFF },
+	{ 75, 0x00, 0x0F },
+	{ 76, 0x00, 0x00 },
+	{ 77, 0x00, 0x00 },
+	{ 78, 0x00, 0x00 },
+	{ 79, 0x00, 0xFF },
+	{ 80, 0x00, 0xFF },
+	{ 81, 0x00, 0xFF },
+	{ 82, 0x00, 0xFF },
+	{ 83, 0x00, 0xFF },
+	{ 84, 0x90, 0xFF },
+	{ 85, 0x31, 0xFF },
+	{ 86, 0x00, 0xFF },
+	{ 87, 0x00, 0xFF },
+	{ 88, 0x01, 0xFF },
+	{ 89, 0x00, 0xFF },
+	{ 90, 0x00, 0xFF },
+	{ 91, 0x00, 0x0F },
+	{ 92, 0x00, 0x00 },
+	{ 93, 0x00, 0x00 },
+	{ 94, 0x00, 0x00 },
+	{ 255, 0, 0xFF } }; // set page bit to 0
+//End of file
diff --git a/arch/arm/boards/enclustra-sa2/board.c b/arch/arm/boards/enclustra-sa2/board.c
index 4c2b44252d84c78ed8de5754051d0bf194ce8d02..d2e539cbf9460adddc158885473f4ef0004dc284 100644
--- a/arch/arm/boards/enclustra-sa2/board.c
+++ b/arch/arm/boards/enclustra-sa2/board.c
@@ -14,6 +14,7 @@
 #include <mach/socfpga/cyclone5-regs.h>
 #include <net.h>
 #include <linux/nvmem-consumer.h>
+#include "si5338_config.h"
 
 /** Enclustra's MAC address vendor prefix is 20:B0:F7 */
 #define ENCLUSTRA_PREFIX            (0x20b0f7)
@@ -99,6 +100,11 @@ static int socfpga_init(void)
 
 	set_mac_addr();
 
+#ifdef CONFIG_MACH_SOCFPGA_ENCLUSTRA_SA2_SI5338
+	/* configure clock generator on the Enclustra ST1 baseboard: */
+	si5338_init();
+#endif
+
 	return 0;
 }
 late_initcall(socfpga_init);
diff --git a/arch/arm/boards/enclustra-sa2/si5338_config.c b/arch/arm/boards/enclustra-sa2/si5338_config.c
new file mode 100644
index 0000000000000000000000000000000000000000..deb8a460be3dc8712add893710825e6b0746181a
--- /dev/null
+++ b/arch/arm/boards/enclustra-sa2/si5338_config.c
@@ -0,0 +1,252 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
+#include <i2c/i2c.h>
+#include <clock.h>
+#include <linux/kernel.h>              /* ARRAY_SIZE */
+#include <linux/regmap.h>
+#include "si5338_config.h"
+#include "Si5338-RevB-Registers.h"
+
+struct si5338 {
+	struct device *dev;
+	struct regmap *map;
+	struct i2c_client *client;
+	int revision;
+	int type;
+} si_dev = { NULL, NULL, NULL, 0, 0 };
+
+
+/**
+ * @brief Get the device from the devicetree
+ * @return A pointer to the device if found, or \t NULL otherwise.
+ */
+static struct device *get_dev(void)
+{
+	struct device *dev;
+	struct i2c_client *client;
+
+	dev = get_device_by_name("si53380");
+	if (dev == NULL) {
+		printf("%s() >> ERROR: can't find device SI5338\n", __func__);
+		return NULL;
+	}
+	client = to_i2c_client(dev);
+	debug("%s() >> SI5338 found at I2C address 0x%02x\n", __func__,
+		  client->addr);
+
+	return dev;
+}
+
+/**
+ * @brief Write a single byte to a register in the SI5338
+ * @param[in] ctx A pointer to a struct si5338.
+ * @param[in] reg The register address.
+ * @param[in] val The byte to be written to the register.
+ * @return 0 on success, a negative value from `asm-generic/errno.h` on error.
+ */
+static int regmap_reg_write(void *ctx, unsigned int reg, unsigned int val)
+{
+	int ret;
+	struct si5338 *si = ctx;
+	u8 buf[] = { val };			/* register value */
+
+	ret = i2c_write_reg(si->client, reg, buf, 1);
+
+	return ret == 1 ? 0 : ret;
+}
+
+/**
+ * @brief Read a single byte from a register in the SI5338
+ * @param[in] ctx A pointer to a struct si5338.
+ * @param[in] reg The register address.
+ * @param[out] val The byte to be written to the register.
+ * @return 0 on success, a negative value from `asm-generic/errno.h` on error.
+ */
+static int regmap_reg_read(void *ctx, unsigned int reg, unsigned int *val)
+{
+	struct si5338 *si = ctx;
+	u8 buf[1];
+	int ret;
+
+	ret = i2c_read_reg(si->client, reg, buf, 1);
+	*val = buf[0];
+
+	return ret == 1 ? 0 : ret;
+}
+
+/**
+ * @brief Validate input clock status
+ * @param[in] dev The I²C device.
+ *
+ * Loop until the \c LOS_CLKIN bit is clear.
+ *
+ * @return 0 on success, a negative value from `asm-generic/errno.h` on error.
+ */
+static int check_input_clock(struct device *dev)
+{
+	// validate input clock status
+	int ret;
+	unsigned int val;
+
+	do {
+		ret = regmap_reg_read(&si_dev, 218, &val);
+		if (ret) {
+			printf("%s() >> ERROR: SI5338 read failed addr: 218\n", __func__);
+			return ret;
+		}
+	} while (val & 0x04);
+
+	return 0;
+}
+
+/**
+ * @brief Check output PLL status
+ * @param[in] dev The I²C device.
+ *
+ * Loop until the \c PLL_LOL, \c LOS_CLKIN and \c SYS_CAL bits are clear.
+ *
+ * @return 0 on success, a negative value from `asm-generic/errno.h` on error
+ * (-EIO if too many trials).
+ */
+static int check_pll(struct device *dev)
+{
+	int ret;
+	int try = 0;
+	unsigned int val;
+
+	do {
+		ret = regmap_reg_read(&si_dev, 218, &val);
+		if (ret < 0)
+			return ret;
+		mdelay(100);
+		try++;
+		if (try > 10) {
+			printf("%s() >> ERROR: SI5338 PLL is not locking\n", __func__);
+			return -EIO;
+		}
+	} while (val & 0x15);
+
+	return 0;
+}
+
+int si5338_init(void)
+{
+	unsigned int val;
+	struct device *dev;
+	int ret;
+	struct regmap_config rgmp_cfg = {
+		.reg_bits = 8,          /* register addresses are coded on 8 bits */
+		.reg_stride = 1,        /* register addresses increment by 1 */
+		.pad_bits = 0,
+		.val_bits = 8,
+		.max_register = 0xff,   /* maximum register address */
+		.reg_format_endian = REGMAP_ENDIAN_DEFAULT,
+		.val_format_endian = REGMAP_ENDIAN_DEFAULT,
+		.read_flag_mask = 0,
+		.write_flag_mask = 0,
+	};
+	struct regmap_bus rgmp_i2c_bus = {
+		.reg_write = regmap_reg_write,
+		.reg_read = regmap_reg_read,
+	};
+
+	si_dev.dev = get_dev();
+	if (si_dev.dev == NULL)
+		return -ENODEV;
+	si_dev.client = to_i2c_client(si_dev.dev);
+	si_dev.map = regmap_init(si_dev.dev, &rgmp_i2c_bus,
+							 &si_dev, &rgmp_cfg);
+
+	dev = get_dev();
+	if (dev == NULL)
+		return -ENODEV;
+
+	/* Set PAGE_SEL bit to 0. If bit is 1, registers with address
+	 * greater than 255 can be addressed.
+	 */
+	if (regmap_reg_write(&si_dev, 255, 0x00))
+		return -1;
+
+	// disable outputs
+	if (regmap_update_bits(si_dev.map, 230, 0x10, 0x10))
+		return -1;
+
+	// pause lol
+	if (regmap_update_bits(si_dev.map, 241, 0x80, 0x80))
+		return -1;
+
+	// write new configuration
+	for (int i = 0; i < NUM_REGS_MAX; i++)
+		if (regmap_update_bits(si_dev.map, Reg_Store[i].Reg_Addr,
+							   Reg_Store[i].Reg_Mask, Reg_Store[i].Reg_Val))
+			return -1;
+
+	ret = check_input_clock(dev);
+	if (ret)
+		return ret;
+
+	// configure PLL for locking
+	ret = regmap_update_bits(si_dev.map, 49, 0x80, 0x00);
+	if (ret)
+		return ret;
+
+	// initiate locking of PLL
+	ret = regmap_reg_write(&si_dev, 246, 0x02);
+	if (ret)
+		return ret;
+
+	// wait 25ms (100ms to be on the safe side)
+	mdelay(100);
+
+	// restart lol
+	ret = regmap_update_bits(si_dev.map, 241, 0xff, 0x65);
+	if (ret)
+		return ret;
+
+	ret = check_pll(dev);
+	if (ret)
+		return ret;
+
+	// copy fcal values to active registers: FCAL[17:16]
+	ret = regmap_reg_read(&si_dev, 237, &val);
+	if (ret)
+		return ret;
+	ret = regmap_update_bits(si_dev.map, 47, 0x03, val);
+	if (ret)
+		return ret;
+
+	// copy fcal values to active registers: FCAL[15:8]
+	ret = regmap_reg_read(&si_dev, 236, &val);
+	if (ret)
+		return ret;
+	ret = regmap_reg_write(&si_dev, 46, val);
+	if (ret)
+		return ret;
+
+	// copy fcal values to active registers: FCAL[7:0]
+	ret = regmap_reg_read(&si_dev, 235, &val);
+	if (ret)
+		return ret;
+	ret = regmap_reg_write(&si_dev, 45, val);
+	if (ret)
+		return ret;
+
+	// Must write 000101b to these bits if the device is not factory programmed
+	ret = regmap_update_bits(si_dev.map, 47, 0xFC, 0x14);
+	if (ret)
+		return ret;
+
+	// set PLL to use FCAL values
+	ret = regmap_update_bits(si_dev.map, 49, 0x80, 0x80);
+	if (ret)
+		return ret;
+
+	// enable outputs
+	ret = regmap_reg_write(&si_dev, 230, 0x00);
+	if (ret)
+		return ret;
+
+	printf("SI5338 init successful\n");
+
+	return 0;
+}
diff --git a/arch/arm/boards/enclustra-sa2/si5338_config.h b/arch/arm/boards/enclustra-sa2/si5338_config.h
new file mode 100644
index 0000000000000000000000000000000000000000..69eb81e57e55db4fecc5ba7307ec05cd2bcc772d
--- /dev/null
+++ b/arch/arm/boards/enclustra-sa2/si5338_config.h
@@ -0,0 +1,22 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
+/*
+ * Initialize the Si5338 clock generator.
+ *
+ * Datasheet: https://www.skyworksinc.com/en/application-pages/-/media/SkyWorks/SL/documents/public/data-sheets/Si5338.pdf
+ * Reference manual: https://www.skyworksinc.com/-/media/Skyworks/SL/documents/public/reference-manuals/Si5338-RM.pdf
+ */
+
+#pragma once
+
+/**
+ * @brief Initialize the SI5338
+ *
+ * Get the I²C address from the devicetree and write the registers of the
+ * SI5338 after the configuration in \c Si5338-RevB-Registers.h, generated
+ * by [ClockBuilder Pro](https://www.skyworksinc.com/Application-Pages/Clockbuilder-Pro-Software).
+ *
+ * @return 0 on success, a negative value from `asm-generic/errno.h` on error.
+ */
+
+int si5338_init(void);
diff --git a/arch/arm/mach-socfpga/Kconfig b/arch/arm/mach-socfpga/Kconfig
index 61935c260c8f06acec119377af7d46411e3e2744..7b05646eac0b39a119cf1bcc61b06ebc631feb28 100644
--- a/arch/arm/mach-socfpga/Kconfig
+++ b/arch/arm/mach-socfpga/Kconfig
@@ -42,6 +42,10 @@ config MACH_SOCFPGA_ENCLUSTRA_SA2
 	select ARCH_SOCFPGA_CYCLONE5
 	bool "Enclustra SA2"
 
+config MACH_SOCFPGA_ENCLUSTRA_SA2_SI5338
+	depends on MACH_SOCFPGA_ENCLUSTRA_SA2
+	bool "Configure the SI5338 clock generator on ST1 baseboard"
+
 config MACH_SOCFPGA_TERASIC_DE0_NANO_SOC
 	select ARCH_SOCFPGA_CYCLONE5
 	bool "Terasic DE0-NANO-SoC aka Atlas"

-- 
2.43.0



