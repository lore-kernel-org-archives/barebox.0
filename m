Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from forward9l.mail.yandex.net ([84.201.143.142])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZB3Ko-0003P1-A4
 for barebox@lists.infradead.org; Fri, 03 Jul 2015 15:57:04 +0000
From: Alexander Smirnov <alllecs@yandex.ru>
Date: Fri,  3 Jul 2015 18:58:24 +0300
Message-Id: <1435939105-12189-3-git-send-email-alllecs@yandex.ru>
In-Reply-To: <1435939105-12189-1-git-send-email-alllecs@yandex.ru>
References: <1435939105-12189-1-git-send-email-alllecs@yandex.ru>
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
Subject: [PATCH 2/3] ddr_spd: add routine for printing DDR2 SPD contents in
 human-readable format
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org, Alexander Smirnov <alllecs@yandex.ru>

---=== SPD EEPROM Information ===---
EEPROM Checksum of bytes 0-62                    OK (0xDF)
Total number of bytes in EEPROM                  256
Fundamental Memory type                          DDR2 SDRAM
SPD Revision                                     1.2

---=== Memory Characteristics ===---
Maximum module speed                             800 MHz (PC2-6400)
Size                                             2048 MB
Banks x Rows x Columns x Bits                    8 x 14 x 10 x 64
Ranks                                            2
SDRAM Device Width                               8 bits
Module Height                                    30.0 mm
Module Type                                      SO-DIMM (67.6 mm)
DRAM Package                                     Planar
Voltage Interface Level                          SSTL 1.8V
Module Configuration Type                        No Parity
Refresh Rate                                     Reduced (7.8 us) - Self Refresh
Supported Burst Lengths                          4, 8
Supported CAS Latencies (tCL)                    6T
tCL-tRCD-tRP-tRAS                                6-6-6-18 as DDR2-800
Minimum Cycle Time                               2.5 ns at CAS 6
Maximum Access Time                              0.40 ns at CAS 6
Maximum Cycle Time (tCK max)                     8 ns

---=== Timing Parameters ===---
Address/Command Setup Time Before Clock (tIS)    0.17 ns
Address/Command Hold Time After Clock (tIH)      0.25 ns
Data Input Setup Time Before Strobe (tDS)        0.05 ns
Data Input Hold Time After Strobe (tDH)          0.12 ns
Minimum Row Precharge Delay (tRP)                15.00 ns
Minimum Row Active to Row Active Delay (tRRD)    7.50 ns
Minimum RAS# to CAS# Delay (tRCD)                15.00 ns
Minimum RAS# Pulse Width (tRAS)                  45.00 ns
Write Recovery Time (tWR)                        15.00 ns
Minimum Write to Read CMD Delay (tWTR)           7.50 ns
Minimum Read to Pre-charge CMD Delay (tRTP)      7.50 ns
Minimum Active to Auto-refresh Delay (tRC)       60.00 ns
Minimum Recovery Delay (tRFC)                    127 ns
Maximum DQS to DQ Skew (tDQSQ)                   0.20 ns
Maximum Read Data Hold Skew (tQHS)               0.30 ns

---=== Manufacturing Information ===---
Manufacturer JEDEC ID                            7f 98 00 00 00 00 00 00
Manufacturing Location Code                      0x05
Part Number
Manufacturing Date                               2014-W47
Assembly Serial Number                           0x43266892

Signed-off-by: Alexander Smirnov <alllecs@yandex.ru>
---
 common/ddr_spd.c  | 296 ++++++++++++++++++++++++++++++++++++++++++++++++++++++
 include/ddr_spd.h |   1 +
 2 files changed, 297 insertions(+)

diff --git a/common/ddr_spd.c b/common/ddr_spd.c
index ea0b529..39f383b 100644
--- a/common/ddr_spd.c
+++ b/common/ddr_spd.c
@@ -61,3 +61,299 @@ uint32_t ddr3_spd_checksum_pass(const struct ddr3_spd_eeprom_s *spd)
 
 	return 0;
 }
+
+static char *heights[] = {
+	"<25.4",
+	"25.4",
+	"25.4 - 30.0",
+	"30.0",
+	"30.5",
+	"> 30.5",
+};
+
+static char *sdram_voltage_interface_level[] = {
+	"TTL (5V tolerant)",
+	"LVTTL (not 5V tolerant)",
+	"HSTL 1.5V",
+	"SSTL 3.3V",
+	"SSTL 2.5V",
+	"SSTL 1.8V",
+};
+
+static char *ddr2_module_types[] = {
+	"RDIMM (133.35 mm)",
+	"UDIMM (133.25 mm)",
+	"SO-DIMM (67.6 mm)",
+	"Micro-DIMM (45.5 mm)",
+	"Mini-RDIMM (82.0 mm)",
+	"Mini-UDIMM (82.0 mm)",
+};
+
+static char *refresh[] = {
+	"15.625",
+	"3.9",
+	"7.8",
+	"31.3",
+	"62.5",
+	"125",
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
+	[SPD_MEMTYPE_DDR2] = "DDR2 SDRAM",
+	"FB-DIMM",
+	"FB-DIMM Probe",
+	[SPD_MEMTYPE_DDR3] = "DDR3 SDRAM",
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
+static int des(uint8_t byte)
+{
+	int k;
+
+	k = (byte & 0x3) * 100 / 4;
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
+	if ((byte & 0xf) <= 9)
+		ctime += (byte & 0xf) * 10;
+	else if ((byte & 0xf) == 10)
+		ctime += 25;
+	else if ((byte & 0xf) == 11)
+		ctime += 33;
+	else if ((byte & 0xf) == 12)
+		ctime += 66;
+	else if ((byte & 0xf) == 13)
+		ctime += 75;
+
+	return ctime;
+}
+
+/*
+ * Based on
+ * https://github.com/groeck/i2c-tools/blob/master/eeprom/decode-dimms
+ */
+void ddr_spd_print(uint8_t *record)
+{
+	int highestCAS = 0;
+	int cas[256];
+	int i, i_i, k, x, y;
+	int ddrclk, tbits, pcclk;
+	int trcd, trp, tras;
+	int ctime;
+	uint8_t parity;
+	char *ref, *sum;
+	struct ddr2_spd_eeprom_s *s = (struct ddr2_spd_eeprom_s *)record;
+
+	if (s->mem_type != SPD_MEMTYPE_DDR2) {
+		printf("Can't dump information for non-DDR2 memory\n");
+		return;
+	}
+
+	ctime = ddr2_sdram_ctime(s->clk_cycle);
+	ddrclk = 2 * (100000 / ctime);
+	tbits = (s->res_7 << 8) + (s->dataw);
+	if ((s->config & 0x03) == 1)
+		tbits = tbits - 8;
+
+	pcclk = ddrclk * tbits / 8;
+	pcclk = pcclk - (pcclk % 100);
+	i_i = (s->nrow_addr & 0x0f) + (s->ncol_addr & 0x0f) - 17;
+	k = ((s->mod_ranks & 0x7) + 1) * s->nbanks;
+	trcd = ((s->trcd >> 2) + ((s->trcd & 3) * 0.25)) * 100 / ctime;
+	trp = ((s->trp >> 2) + ((s->trp & 3) * 0.25)) * 100 / ctime;
+	tras = s->tras * 100 / ctime ;
+	x = (int)(ctime / 100);
+	y = (ctime - (int)((ctime / 100) * 100)) / 10;
+
+	for (i_i = 2; i_i < 7; i_i++) {
+		if (s->cas_lat & 1 << i_i) {
+			highestCAS = i_i;
+			cas[highestCAS]++;
+		}
+	}
+
+	if (ddr2_spd_checksum_pass(s))
+		sum = "ERR";
+	else
+		sum = "OK";
+
+	printf("---=== SPD EEPROM Information ===---\n");
+	printf("%-48s %s (0x%02X)\n", "EEPROM Checksum of bytes 0-62",
+		sum, s->cksum);
+	printf("%-48s %d\n", "# of bytes written to SDRAM EEPROM",
+		s->info_size);
+	printf("%-48s %d\n", "Total number of bytes in EEPROM",
+		1 << (s->chip_size));
+
+	if (s->mem_type < ARRAY_SIZE(type_list))
+		printf("%-48s %s\n", "Fundamental Memory type",
+			type_list[s->mem_type]);
+	else
+		printf("%-48s (%02x)\n", "Warning: unknown memory type",
+			s->mem_type);
+
+	printf("%-48s %x.%x\n", "SPD Revision", s->spd_rev >> 4,
+		s->spd_rev & 0x0f);
+
+	printf("\n---=== Memory Characteristics ===---\n");
+	printf("%-48s %d MHz (PC2-%d)\n", "Maximum module speed",
+		ddrclk, pcclk);
+	if (i_i > 0 && i_i <= 12 && k > 0)
+		printf("%-48s %d MB\n", "Size", (1 << i_i) * k);
+	else
+		printf("%-48s INVALID: %02x %02x %02x %02x\n", "Size",
+			s->nrow_addr, s->ncol_addr, s->mod_ranks, s->nbanks);
+
+	printf("%-48s %d x %d x %d x %d\n", "Banks x Rows x Columns x Bits",
+		s->nbanks, s->nrow_addr, s->ncol_addr, s->dataw);
+	printf("%-48s %d\n", "Ranks", (s->mod_ranks & 0x7) + 1);
+	printf("%-48s %d bits\n", "SDRAM Device Width", s->primw);
+
+	if (s->mod_ranks >> 5 < ARRAY_SIZE(heights))
+		printf("%-48s %s mm\n", "Module Height",
+			heights[s->mod_ranks >> 5]);
+	else
+		printf("Error height\n");
+
+	if ((fls(s->dimm_type) - 1) < ARRAY_SIZE(ddr2_module_types))
+		printf("%-48s %s\n", "Module Type",
+			ddr2_module_types[fls(s->dimm_type) - 1]);
+	else
+		printf("Error module type\n");
+
+	printf("%-48s ", "DRAM Package ");
+	if ((s->mod_ranks & 0x10) == 1)
+		printf("Stack\n");
+	else
+		printf("Planar\n");
+	if (s->voltage < ARRAY_SIZE(sdram_voltage_interface_level))
+		printf("%-48s %s\n", "Voltage Interface Level",
+			sdram_voltage_interface_level[s->voltage]);
+	else
+		printf("Error Voltage Interface Level\n");
+
+	printf("%-48s ", "Module Configuration Type ");
+
+	parity = s->config & 0x07;
+	if (parity == 0)
+		printf("No Parity\n");
+
+	if ((parity & 0x03) == 0x01)
+		printf("Data Parity\n");
+	if (parity & 0x02)
+		printf("Data ECC\n");
+
+	if (parity & 0x04)
+		printf("Address/Command Parity\n");
+
+	if ((s->refresh >> 7) == 1)
+		ref = "- Self Refresh";
+	else
+		ref = " ";
+
+	printf("%-48s Reduced (%s us) %s\n", "Refresh Rate",
+		refresh[s->refresh & 0x7f], ref);
+	printf("%-48s %d, %d\n", "Supported Burst Lengths",
+		s->burstl & 4, s->burstl & 8);
+
+	printf("%-48s %dT\n", "Supported CAS Latencies (tCL)", highestCAS);
+	printf("%-48s %d-%d-%d-%d as DDR2-%d\n", "tCL-tRCD-tRP-tRAS",
+		highestCAS, trcd, trp, tras, ddrclk);
+	printf("%-48s %d.%d ns at CAS %d\n", "Minimum Cycle Time", x, y,
+		highestCAS);
+	printf("%-48s 0.%d%d ns at CAS %d\n", "Maximum Access Time",
+		(s->clk_access >> 4), (s->clk_access & 0xf), highestCAS);
+	printf("%-48s %d ns\n", "Maximum Cycle Time (tCK max)",
+		(s->tckmax >> 4) + (s->tckmax & 0x0f));
+
+	printf("\n---=== Timing Parameters ===---\n");
+	printf("%-48s 0.%d ns\n",
+		"Address/Command Setup Time Before Clock (tIS)",
+		funct(s->ca_setup));
+	printf("%-48s 0.%d ns\n", "Address/Command Hold Time After Clock (tIH)",
+		funct(s->ca_hold));
+	printf("%-48s 0.%d%d ns\n", "Data Input Setup Time Before Strobe (tDS)",
+		s->data_setup >> 4, s->data_setup & 0xf);
+	printf("%-48s 0.%d%d ns\n", "Data Input Hold Time After Strobe (tDH)",
+		s->data_hold >> 4, s->data_hold & 0xf);
+
+	printf("%-48s %d.%02d ns\n", "Minimum Row Precharge Delay (tRP)",
+		integ(s->trp), des(s->trp));
+	printf("%-48s %d.%02d ns\n",
+		"Minimum Row Active to Row Active Delay (tRRD)",
+		integ(s->trrd), des(s->trrd));
+	printf("%-48s %d.%02d ns\n", "Minimum RAS# to CAS# Delay (tRCD)",
+		integ(s->trcd), des(s->trcd));
+	printf("%-48s %d.00 ns\n", "Minimum RAS# Pulse Width (tRAS)",
+		((s->tras & 0xfc) + (s->tras & 0x3)));
+	printf("%-48s %d.%02d ns\n", "Write Recovery Time (tWR)",
+		integ(s->twr), des(s->twr));
+	printf("%-48s %d.%02d ns\n", "Minimum Write to Read CMD Delay (tWTR)",
+		integ(s->twtr), des(s->twtr));
+	printf("%-48s %d.%02d ns\n",
+		"Minimum Read to Pre-charge CMD Delay (tRTP)",
+		integ(s->trtp), des(s->trtp));
+	printf("%-48s %d.00 ns\n", "Minimum Active to Auto-refresh Delay (tRC)",
+		s->trc);
+	printf("%-48s %d ns\n", "Minimum Recovery Delay (tRFC)", s->trfc);
+	printf("%-48s 0.%d ns\n", "Maximum DQS to DQ Skew (tDQSQ)", s->tdqsq);
+	printf("%-48s 0.%d ns\n", "Maximum Read Data Hold Skew (tQHS)",
+		s->tqhs);
+
+	printf("\n---=== Manufacturing Information ===---\n");
+
+	printf("%-48s", "Manufacturer JEDEC ID");
+	for (i = 64; i < 72; i++)
+		printf(" %02x", record[i]);
+
+	printf("\n");
+	if (s->mloc)
+		printf("%-48s 0x%02x\n", "Manufacturing Location Code",
+			s->mloc);
+
+	printf("%-48s ", "Part Number");
+	for (i = 73; i < 91; i++) {
+		if (record[i] >= 32 && record[i] < 127)
+			printf("%c", record[i]);
+		else
+			printf("%d", record[i]);
+	}
+	printf("\n");
+	printf("%-48s 20%d-W%d\n", "Manufacturing Date", record[93],
+		record[94]);
+	printf("%-48s 0x", "Assembly Serial Number");
+	for (i = 95; i < 99; i++)
+		printf("%02X", record[i]);
+	printf("\n");
+}
diff --git a/include/ddr_spd.h b/include/ddr_spd.h
index fc03bac..01fe73c 100644
--- a/include/ddr_spd.h
+++ b/include/ddr_spd.h
@@ -228,6 +228,7 @@ struct ddr3_spd_eeprom_s {
 	uint8_t cust[80];        /* 176-255 Open for Customer Use */
 };
 
+extern void ddr_spd_print(uint8_t *record);
 extern uint32_t ddr3_spd_checksum_pass(const struct ddr3_spd_eeprom_s *spd);
 extern uint32_t ddr2_spd_checksum_pass(const struct ddr2_spd_eeprom_s *spd);
 
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
