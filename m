Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from forward9l.mail.yandex.net ([84.201.143.142])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Z7kE0-0005ht-FL
 for barebox@lists.infradead.org; Wed, 24 Jun 2015 12:56:22 +0000
From: Alexander Smirnov <alllecs@yandex.ru>
Date: Wed, 24 Jun 2015 15:57:28 +0300
Message-Id: <1435150649-10266-3-git-send-email-alllecs@yandex.ru>
In-Reply-To: <1435150649-10266-1-git-send-email-alllecs@yandex.ru>
References: <1435150649-10266-1-git-send-email-alllecs@yandex.ru>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [RFC V2 2/3] ddr_spd: add routune for printing SPD contents in human
 readable format
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org, Alexander Smirnov <alllecs@yandex.ru>

Signed-off-by: Alexander Smirnov <alllecs@yandex.ru>
---
 common/ddr_spd.c  | 245 ++++++++++++++++++++++++++++++++++++++++++++++++++++++
 include/ddr_spd.h |   1 +
 2 files changed, 246 insertions(+)

diff --git a/common/ddr_spd.c b/common/ddr_spd.c
index ea0b529..8a98cc4 100644
--- a/common/ddr_spd.c
+++ b/common/ddr_spd.c
@@ -61,3 +61,248 @@ uint32_t ddr3_spd_checksum_pass(const struct ddr3_spd_eeprom_s *spd)
 
 	return 0;
 }
+
+static char *heights[] = {
+	"<25.4",
+	"25.4",
+	"25.4 - 30.0",
+	"30.0",
+	"30.5",
+	"> 30.5"
+};
+
+static char *sdram_voltage_interface_level[] = {
+	"TTL (5V tolerant)",
+	"LVTTL (not 5V tolerant)",
+	"HSTL 1.5V",
+	"SSTL 3.3V",
+	"SSTL 2.5V",
+	"SSTL 1.8V"
+};
+
+static char *ddr2_module_types[] = {
+	"RDIMM (133.35 mm)",
+	"UDIMM (133.25 mm)",
+	"SO-DIMM (67.6 mm)",
+	"Micro-DIMM (45.5 mm)",
+	"Mini-RDIMM (82.0 mm)",
+	"Mini-UDIMM (82.0 mm)"
+};
+
+static char *refresh[] = {
+	"15.625",
+	"3.9",
+	"7.8",
+	"31.3",
+	"62.5",
+	"125"
+};
+
+static char *type_list[] = {
+	"Reserved",
+	"FPM DRAM",
+	"EDO",
+	"Pipelined Nibble",
+	"SDR SDRAM",
+	"Multiplexed ROM",
+	"DDR SGRAM",
+	"DDR SDRAM",
+	"DDR2 SDRAM",
+	"FB-DIMM",
+	"FB-DIMM Probe",
+	"DDR3 SDRAM"
+};
+
+static int funct(uint8_t addr)
+{
+	int t;
+
+	t = ((addr >> 4) * 10 + (addr & 0xf));
+
+	return t;
+}
+
+
+static int des(uint8_t byte)
+{
+	int k;
+
+	k = (byte & 0x3) * 10 / 4;
+
+	return k;
+}
+
+static int integ(uint8_t byte)
+{
+	int k;
+
+	k = (byte >> 2);
+
+	return k;
+}
+
+static int ddr2_sdram_ctime(uint8_t byte)
+{
+	int ctime;
+
+	ctime = (byte >> 4) * 100;
+	if ((byte & 0xf) <= 9) {
+		ctime += (byte & 0xf) * 10;
+	} else if ((byte & 0xf) == 10) {
+		ctime += 25;
+	} else if ((byte & 0xf) == 11) {
+		ctime += 33;
+	} else if ((byte & 0xf) == 12) {
+		ctime += 66;
+	} else if ((byte & 0xf) == 13) {
+		ctime += 75;
+	}
+	return ctime;
+}
+
+void prin(uint8_t *record)
+{
+	int highestCAS = 0;
+	int cas[256];
+	int i, i_i, k, x, y;
+	int ddrclk, tbits, pcclk;
+	int trcd, trp, tras;
+	int ctime;
+	uint8_t parity;
+	char *ref;
+
+	ctime = ddr2_sdram_ctime(record[9]);
+	ddrclk = 2 * (1000 / ctime) * 100;
+	tbits = (record[7] << 8) + record[6];
+	if ((record[11] & 0x03) == 1) {
+		tbits = tbits - 8;
+	}
+	pcclk = ddrclk * tbits / 8;
+	pcclk = pcclk - (pcclk % 100);
+	i_i = (record[3] & 0x0f) + (record[4] & 0x0f) - 17;
+	k = ((record[5] & 0x7) + 1) * record[17];
+	trcd = ((record[29] >> 2) + ((record[29] & 3) * 0.25)) / ctime * 100;
+	trp = ((record[27] >> 2) + ((record[27] & 3) * 0.25)) / ctime * 100;
+	tras = record[30] * 100 / ctime ;
+	x = (int)(ctime / 100);
+	y = (ctime - (int)((ctime / 100) * 100)) / 10;
+
+	for (i_i = 2; i_i < 7; i_i++) {
+		if (record[18] & (1 << i_i)) {
+			highestCAS = i_i;
+		cas[highestCAS]++;
+		}
+	}
+
+	printf("---=== SPD EEPROM Information ===---\n");
+	printf("EEPROM Checksum of bytes 0-62\t\t\t OK (0x%0X)\n", record[63]);
+	printf("# of bytes written to SDRAM EEPROM\t\t %d\n", record[0]);
+	printf("Total number of bytes in EEPROM\t\t\t %d\n", 1 << record[1]);
+
+	if (record[2] < 11) {
+		printf("Fundamental Memory type\t\t\t\t %s\n", type_list[record[2]]);
+	} else {
+		printf("Warning: unknown memory type (%02x)\n", record[2]);
+	}
+	printf("SPD Revision\t\t\t\t\t %x.%x\n", record[62] >> 4, record[62] & 0x0f);
+
+	printf("\n---=== Memory Characteristics ===---\n");
+	printf("Maximum module speed\t\t\t\t %d MHz (PC2-%d)\n", ddrclk, pcclk);
+	if (i_i > 0 && i_i <= 12 && k > 0) {
+		printf("Size\t\t\t\t\t\t %d MB\n", ((1 << i_i) * k));
+	} else {
+		printf("Size\t\t\t\t\t\t INVALID: %02x %02x %02x %02x\n", record[3], record[4], record[5], record[17]);
+	}
+	printf("Banks x Rows x Columns x Bits\t\t\t %d x %d x %d x %d\n", record[17], record[3], record[4], record[6]);
+	printf("Ranks\t\t\t\t\t\t %d\n", (record[5] & 0x7) + 1);
+	printf("SDRAM Device Width\t\t\t\t %d bits\n", record[13]);
+
+	if ((record[5] >> 5) < 7) {
+		printf("Module Height\t\t\t\t\t %s mm\n", heights[(record[5] >> 5)]);
+	} else {
+		printf("Error height\n");
+	}
+	printf("Module Type\t\t\t\t\t %s\n", ddr2_module_types[fls(record[20]) - 1]);
+	printf("DRAM Package\t\t\t\t\t ");
+	if ((record[5] & 0x10) == 1) {
+		printf("Stack\n");
+	} else {
+		printf("Planar\n");
+	}
+	if (record[8] < 7) {
+		printf("Voltage Interface Level\t\t\t\t %s\n", sdram_voltage_interface_level[record[8]]);
+	} else {
+		printf("Error Voltage Interface Level\n");
+	}
+	printf("Module Configuration Type \t\t\t ");
+
+	parity = record[11] & 0x07;
+	if (parity == 0) {
+		printf("No Parity\n");
+	}
+	if ((parity & 0x03) == 0x01) {
+		printf("Data Parity\n");
+	}
+	if (parity & 0x02) {
+		printf("Data ECC\n");
+	}
+	if (parity & 0x04) {
+		printf("Address/Command Parity\n");
+	}
+	if ((record[12] >> 7) == 1) {
+		ref = "- Self Refresh";
+	} else {
+		ref = " ";
+	}
+	printf("Refresh Rate\t\t\t\t\t Reduced (%s us) %s\n", refresh[record[12] & 0x7f], ref);
+	printf("Supported Burst Lengths\t\t\t\t %d, %d\n", record[16] & 4, record[16] & 8);
+
+	printf("Supported CAS Latencies (tCL)\t\t\t %dT\n", highestCAS);
+	printf("tCL-tRCD-tRP-tRAS\t\t\t\t %d-%d-%d-%d as DDR2-%d\n", highestCAS, trcd, trp, tras, ddrclk);
+	printf("Minimum Cycle Time\t\t\t\t %d.%d ns at CAS %d\n", x, y, highestCAS);
+	printf("Maximum Access Time\t\t\t\t 0.%d%d ns at CAS %d\n", (record[10] >> 4), (record[10] & 0xf), highestCAS);
+	printf("Maximum Cycle Time (tCK max)\t\t\t %d ns\n", (record[43] >> 4) + (record[43] & 0x0f));
+
+	printf("\n---=== Timing Parameters ===---\n");
+	printf("Address/Command Setup Time Before Clock (tIS)\t 0.%d ns\n", (funct(record[32])));
+	printf("Address/Command Hold Time After Clock (tIH)\t 0.%d ns\n", (funct(record[33])));
+	printf("Data Input Setup Time Before Strobe (tDS)\t 0.%d%d ns\n", (record[34] >> 4), (record[34] & 0xf));
+	printf("Data Input Hold Time After Strobe (tDH)\t\t 0.%d%d ns\n", (record[35] >> 4), (record[35] & 0xf));
+
+	printf("Minimum Row Precharge Delay (tRP)\t\t %d.%d ns\n", integ(record[27]), des(record[27]));
+	printf("Minimum Row Active to Row Active Delay (tRRD)\t %d.%d ns\n", integ(record[28]), des(record[28]));
+	printf("Minimum RAS# to CAS# Delay (tRCD)\t\t %d.%d ns\n", integ(record[29]), des(record[29]));
+	printf("Minimum RAS# Pulse Width (tRAS)\t\t\t %d ns\n", ((record[30] & 0xfc) + (record[30] & 0x3)));
+	printf("Write Recovery Time (tWR)\t\t\t %d.%d ns\n", integ(record[36]), des(record[36]));
+	printf("Minimum Write to Read CMD Delay (tWTR)\t\t %d.%d ns\n", integ(record[37]), des(record[37]));
+	printf("Minimum Read to Pre-charge CMD Delay (tRTP)\t %d.%d ns\n", integ(record[38]), des(record[38]));
+	printf("Minimum Active to Auto-refresh Delay (tRC)\t %d ns\n", record[41]);
+	printf("Minimum Recovery Delay (tRFC)\t\t\t %d ns\n", record[42]);
+	printf("Maximum DQS to DQ Skew (tDQSQ)\t\t\t 0.%d ns\n", record[44]);
+	printf("Maximum Read Data Hold Skew (tQHS)\t\t 0.%d ns\n", record[45]);
+
+	printf("\n---=== Manufacturing Information ===---\n");
+
+	printf("Manufacturer JEDEC ID\t\t\t\t");
+	for (i = 64; i < 72; i++) {
+		printf(" %02x", record[i]);
+	}
+	printf("\n");
+	if (record[72]) {
+		printf("Manufacturing Location Code\t\t\t 0x%02x\n", record[72]);
+	}
+	printf("Part Number\t\t\t\t\t ");
+	for (i = 73; i < 91; i++) {
+		if (record[i] >= 32 && record[i] < 127) {
+			printf("%c", record[i]);
+		} else {
+			printf("%d", record[i]);
+		}
+	}
+	printf("\n");
+	printf("Manufacturing Date\t\t\t\t 20%d-W%d\n", record[93], record[94]);
+	printf("Assembly Serial Number\t\t\t\t 0x");
+	for (i = 95; i < 99; i++) {
+		printf("%02X", record[i]);
+	}
+}
diff --git a/include/ddr_spd.h b/include/ddr_spd.h
index fc03bac..1c308ef 100644
--- a/include/ddr_spd.h
+++ b/include/ddr_spd.h
@@ -228,6 +228,7 @@ struct ddr3_spd_eeprom_s {
 	uint8_t cust[80];        /* 176-255 Open for Customer Use */
 };
 
+extern void prin(uint8_t *record);
 extern uint32_t ddr3_spd_checksum_pass(const struct ddr3_spd_eeprom_s *spd);
 extern uint32_t ddr2_spd_checksum_pass(const struct ddr2_spd_eeprom_s *spd);
 
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
