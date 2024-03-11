Delivery-date: Mon, 11 Mar 2024 22:40:30 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rjnNm-001Wz8-2T
	for lore@lore.pengutronix.de;
	Mon, 11 Mar 2024 22:40:30 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rjnNl-0000qF-9V
	for lore@pengutronix.de; Mon, 11 Mar 2024 22:40:30 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JkJJigOOBqC7wmpcAZaNnx6lei0DV/cRr+pqHkgOw88=; b=pxWumcWOF3tIBR
	FEDoXl5o2/35UCYtfZh/FmBD1yF1jzG50Wue21mVtRm4LU0u0fpicBj88CeOyH1JfC7yILdjmisu4
	RuteaJHDW+wTKFOMH+dXJDXAwt/gZOJkhSIJDw4lOFhpQP00pJuvh9Q9s8bTawWY0ts49QbGJTeBn
	6ywyZYac1d882BnKXEnl7T12BtlymJnXfgrtq2QMuIOydACYpQ4uRh5XnGk/qgWiD7AoShNYusNZ8
	R5KXkTCyx6mMs7FhuYzsVcjBPNTONMG0lXqL75TOy+arBc6MnGgNvV1gQfwzYjL7pQnKinVH9xgEs
	uWtnrSzcEkUAbCKTE1CA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rjnN8-00000003Hsk-28xP;
	Mon, 11 Mar 2024 21:39:50 +0000
Received: from mail-lf1-x12e.google.com ([2a00:1450:4864:20::12e])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rjnN0-00000003HpC-2JvD
	for barebox@lists.infradead.org;
	Mon, 11 Mar 2024 21:39:46 +0000
Received: by mail-lf1-x12e.google.com with SMTP id 2adb3069b0e04-512b3b04995so3779774e87.3
        for <barebox@lists.infradead.org>; Mon, 11 Mar 2024 14:39:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1710193176; x=1710797976; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JkJJigOOBqC7wmpcAZaNnx6lei0DV/cRr+pqHkgOw88=;
        b=d2Mp0RJCjEsllzZtONTMiRE78pxoMBJfRh+q3clctR4iPFRlszoGkksaIy4n7XJ9PC
         ANVYYkB3fPPCcCtfvgkZSLMAfI1TrfQ2rY4/e9WE5wXl9pTGtMdVNKx+JAJ69sFq8KOe
         LSiRNP5OPQnPSBXTy00QKNgB58kD+qcNnDcIZagUZgt5+qwQUcRW8168Am87MI2jOQIn
         2htJdvh3kXuLMf/omCpKMvjMgQCPGvyvmsXAFPQ93hjB1PGGHyBxdCwMQvejwu0O8Znn
         9LsjyWN8TKyD80gcRs7hJrWCqhQOIkhj2QeKQ+shKPlL9QnVjtZPX4lt+gcEBIIGjEwQ
         fxsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710193176; x=1710797976;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=JkJJigOOBqC7wmpcAZaNnx6lei0DV/cRr+pqHkgOw88=;
        b=Gunl45K31+nxObiMFRkgESJr4PeX3rgY3Jn0e7vomCEPq9ySWxTWitEHSTkBEPScBX
         Alw1AH5AzwMT9Ye+oqL/UPmivfm1+7Rt/3n199wxNlnes9MAg4NwiP7MIm3cp/w9tsKL
         ILgEGCTREk5gY4E9Vj645yVBJPagrTY5kFEFJeJXjqR0JqJIoAOAHZnrDFbu34Lkyjmt
         JSGptP56Q5aHBi2uFRqHW6xmHiGTeNfxk2v6uxEmmBIp9RH+4xLIvY0DbTVV0Vye6oIg
         /Xt+hxSVeWln9Srzyy6D6LkHxQ4fLXYXouQPyyFOzKe5VsFJheLXJQoMMru71VTCUvi6
         lP2A==
X-Gm-Message-State: AOJu0YxYRz1guMPIcfuWlialey1g2XR7YSY+kwXg8gOn45kpescW5Sxh
	2WZQVbPrdiYR2I+7zskAObFbJmBwqm/EE09wtlWhXz4q7lLflUmDZvM/RUf9uPrmWQ==
X-Google-Smtp-Source: AGHT+IGrOaCxAS8orqW9kb3GKsoaPB8sKUWQijAbl9YNJvYuY3oNcRfHqQKe72ynSd6ZWg/jbeKlQA==
X-Received: by 2002:a19:2d55:0:b0:513:4ad1:d89f with SMTP id t21-20020a192d55000000b005134ad1d89fmr5369006lft.23.1710193175943;
        Mon, 11 Mar 2024 14:39:35 -0700 (PDT)
Received: from localhost.localdomain ([46.39.34.39])
        by smtp.gmail.com with ESMTPSA id v15-20020ac25b0f000000b0051302450df3sm1237958lfn.148.2024.03.11.14.39.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 11 Mar 2024 14:39:35 -0700 (PDT)
From: Denis Orlov <denorl2009@gmail.com>
To: barebox@lists.infradead.org
Date: Tue, 12 Mar 2024 00:36:08 +0300
Message-ID: <20240311213915.584429-3-denorl2009@gmail.com>
X-Mailer: git-send-email 2.44.0
In-Reply-To: <20240311213915.584429-1-denorl2009@gmail.com>
References: <20240311213915.584429-1-denorl2009@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240311_143942_910206_04068C93 
X-CRM114-Status: GOOD (  24.61  )
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
Cc: Denis Orlov <denorl2009@gmail.com>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/2] ddr_spd: add routine for printing DDR3 SPD contents
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This allows to print the DDR3 SPD data with spd_decode command. The code
is ported from the decode-dimms program of i2c-tools. The output of the
command is almost exactly the same as of the original program with a few
minor differences: lacking commas in one place, and manufacturer ID
being output as a hexadecimal value instead of a decoded string. The
logic is mostly the same too, but some changes in how calculations are
made were required so as not to use floating point arithmetic.

Signed-off-by: Denis Orlov <denorl2009@gmail.com>
---
 common/ddr_spd.c | 556 ++++++++++++++++++++++++++++++++++++++++++++++-
 1 file changed, 548 insertions(+), 8 deletions(-)

diff --git a/common/ddr_spd.c b/common/ddr_spd.c
index 1c1d5826e0..b7693f3fd2 100644
--- a/common/ddr_spd.c
+++ b/common/ddr_spd.c
@@ -231,11 +231,31 @@ static int ddr2_sdram_ctime(uint8_t byte)
 	return ctime;
 }
 
+static void spd_print_manufacturing_date(uint8_t year, uint8_t week)
+{
+	/*
+	 * According to JEDEC Standard the year/week bytes must be in BCD
+	 * format. However, that is not always true for actual DIMMs out
+	 * there, so fall back to binary format if it makes more sense.
+	 */
+
+	printf("%-48s ", "Manufacturing Date");
+	if ((year & 0xf0) <= 0x90 && (year & 0xf) <= 0x9
+	    && (week & 0xf0) <= 0x90 && (week & 0xf) <= 0x9) {
+		printf("20%02X-W%02X", year, week);
+	} else if (year <= 99 && week >= 1 && week <= 53) {
+		printf("20%02d-W%02d", year, week);
+	} else {
+		printf("0x%02X%02X", year, week);
+	}
+	printf("\n");
+}
+
 /*
  * Based on
  * https://github.com/groeck/i2c-tools/blob/master/eeprom/decode-dimms
  */
-void ddr_spd_print(uint8_t *record)
+static void ddr2_spd_print(uint8_t *record)
 {
 	int highestCAS = 0;
 	int i, i_i, k, x, y;
@@ -246,11 +266,6 @@ void ddr_spd_print(uint8_t *record)
 	char *ref, *sum;
 	struct ddr2_spd_eeprom *s = (struct ddr2_spd_eeprom *)record;
 
-	if (s->mem_type != SPD_MEMTYPE_DDR2) {
-		printf("Can't dump information for non-DDR2 memory\n");
-		return;
-	}
-
 	ctime = ddr2_sdram_ctime(s->clk_cycle);
 	ddrclk = 2 * (100000 / ctime);
 	tbits = (s->res_7 << 8) + (s->dataw);
@@ -420,14 +435,539 @@ void ddr_spd_print(uint8_t *record)
 			printf("%d", record[i]);
 	}
 	printf("\n");
-	printf("%-48s 20%d-W%d\n", "Manufacturing Date", record[93],
-		record[94]);
+	spd_print_manufacturing_date(record[93], record[94]);
 	printf("%-48s 0x", "Assembly Serial Number");
 	for (i = 95; i < 99; i++)
 		printf("%02X", record[i]);
 	printf("\n");
 }
 
+static const char * const ddr3_spd_moduletypes[] = {
+	"Undefined",
+	"RDIMM",
+	"UDIMM",
+	"SO-DIMM",
+	"Micro-DIMM",
+	"Mini-RDIMM",
+	"Mini-UDIMM",
+	"Mini-CDIMM",
+	"72b-SO-UDIMM",
+	"72b-SO-RDIMM",
+	"72b-SO-CDIMM",
+	"LRDIMM",
+	"16b-SO-DIMM",
+	"32b-SO-DIMM"
+};
+
+static const char * const ddr3_spd_moduletypes_width[] = {
+	"Unknown",
+	"133.35 mm",
+	"133.35 mm",
+	"67.6 mm",
+	"TBD",
+	"82.0 mm",
+	"82.0 mm",
+	"67.6 mm",
+	"67.6 mm",
+	"67.6 mm",
+	"67.6 mm",
+	"133.35 mm",
+	"67.6 mm",
+	"67.6 mm"
+};
+
+#define DDR3_UNBUFFERED		1
+#define DDR3_REGISTERED		2
+#define DDR3_CLOCKED		3
+#define DDR3_LOAD_REDUCED	4
+
+static const uint8_t ddr3_spd_moduletypes_family[] = {
+	0,
+	DDR3_REGISTERED,
+	DDR3_UNBUFFERED,
+	DDR3_UNBUFFERED,
+	DDR3_UNBUFFERED,
+	DDR3_REGISTERED,
+	DDR3_UNBUFFERED,
+	DDR3_CLOCKED,
+	DDR3_UNBUFFERED,
+	DDR3_REGISTERED,
+	DDR3_CLOCKED,
+	DDR3_LOAD_REDUCED,
+	DDR3_UNBUFFERED,
+	DDR3_UNBUFFERED
+};
+
+static const int ddr3_std_speeds[] = {
+	1000 * 7.5 / 8,
+	1000 * 7.5 / 7,
+	1000 * 1.25,
+	1000 * 1.5,
+	1000 * 1.875,
+	1000 * 2.5
+};
+
+static const char * const ddr3_maximum_activated_counts[] = {
+	"Untested",
+	"700 K",
+	"600 K",
+	"500 K",
+	"400 K",
+	"300 K",
+	"200 K",
+	"Reserved",
+	"Unlimited",
+};
+
+static int ddr3_timing_from_mtb_ftb(uint16_t txx, int8_t fine_txx,
+				    uint8_t mtb_dividend, uint8_t mtb_divisor,
+				    uint8_t ftb_div)
+{
+	/*
+	 * Given mtb in ns and ftb in ps, return the result in ps,
+	 * carefully rounding to the nearest picosecond.
+	 */
+	int result = txx * 10000 * mtb_dividend / mtb_divisor
+		     + fine_txx * (ftb_div >> 4) / (ftb_div & 0xf);
+	return DIV_ROUND_CLOSEST(result, 10);
+}
+
+static int ddr3_adjust_ctime(int ctime, uint8_t ftb_div)
+{
+	uint8_t ftb_divisor = ftb_div >> 4;
+	uint8_t ftb_dividend = ftb_div & 0xf;
+	int i;
+
+	/*
+	 * Starting with DDR3-1866, vendors may start approximating the
+	 * minimum cycle time. Try to guess what they really meant so
+	 * that the reported speed matches the standard.
+	 */
+	for (i = 7; i < 15; i++) {
+		int test = ctime * ftb_divisor - (int)(1000 * 7.5) * ftb_divisor / i;
+
+		if (test > -(int)ftb_dividend && test < ftb_dividend)
+			return (int)(1000 * 7.5) / i;
+	}
+
+	return ctime;
+}
+
+static void ddr3_print_reference_card(uint8_t ref_raw_card, uint8_t mod_height)
+{
+	const char alphabet[] = "ABCDEFGHJKLMNPRTUVWY";
+	uint8_t ref = ref_raw_card & 0x1f;
+	uint8_t revision = mod_height >> 5;
+	char ref_card[3] = { 0 };
+
+	if (ref == 0x1f) {
+		printf("%-48s %s\n", "Module Reference Card", "ZZ");
+		return;
+	}
+
+	if (ref_raw_card & 0x80)
+		ref += 0x1f;
+	if (!revision)
+		revision = ((ref_raw_card >> 5) & 0x3);
+
+	if (ref < ARRAY_SIZE(alphabet) - 1) {
+		/* One letter reference card */
+		ref_card[0] = alphabet[ref];
+	} else {
+		/* Two letter reference card */
+		uint8_t ref1 = ref / (ARRAY_SIZE(alphabet) - 1);
+
+		ref -= (ARRAY_SIZE(alphabet) - 1) * ref1;
+		ref_card[0] = alphabet[ref1];
+		ref_card[1] = alphabet[ref];
+	}
+
+	printf("%-48s %s revision %u\n", "Module Reference Card", ref_card, revision);
+}
+
+static void ddr3_print_revision_number(const char *name, uint8_t rev)
+{
+	uint8_t h = rev >> 4;
+	uint8_t l = rev & 0xf;
+
+	/* Decode as suggested by JEDEC Standard 21-C */
+	if (!h)
+		printf("%-48s %d\n", name, l);
+	if (h < 0xa)
+		printf("%-48s %d.%d\n", name, h, l);
+	else
+		printf("%-48s %c%d\n", name, 'A' + h - 0xa, l);
+}
+
+static void ddr3_spd_print(uint8_t *record)
+{
+	struct ddr3_spd_eeprom *s = (struct ddr3_spd_eeprom *)record;
+	const char *sum;
+	uint8_t spd_len;
+	int size, bytes_written;
+	int ctime, ddrclk;
+	uint8_t tbits;
+	int pcclk;
+	uint8_t cap, k;
+	int taa, trcd, trp, tras;
+	uint16_t cas_sup;
+	int twr, trrd, trc, trfc, twtr, trtp, tfaw;
+	uint8_t die_count, loading;
+	uint8_t mac;
+	uint8_t family;
+	int i;
+
+	sum = ddr3_spd_check(s) ? "ERR" : "OK";
+
+	printf("\n---=== SPD EEPROM Information ===---\n");
+
+	printf("EEPROM CRC of bytes 0-%3d %22s %s (0x%02X%02X)\n",
+	       (s->info_size_crc & 0x80) ? 116 : 125, "", sum, s->crc[1], s->crc[0]);
+
+	spd_len = (s->info_size_crc >> 4) & 0x7;
+	size = 64 << (s->info_size_crc & 0xf);
+	if (spd_len == 0) {
+		bytes_written = 128;
+	} else if (spd_len == 1) {
+		bytes_written = 176;
+	} else if (spd_len == 2) {
+		bytes_written = 256;
+	} else {
+		size = 64;
+		bytes_written = 64;
+	}
+	printf("%-48s %d\n", "# of bytes written to SDRAM EEPROM", bytes_written);
+	printf("%-48s %d\n", "Total number of bytes in EEPROM", size);
+	printf("%-48s %s\n", "Fundamental Memory type", type_list[s->mem_type]);
+
+	if (s->spd_rev != 0xff)
+		printf("%-48s %x.%x\n", "SPD Revision", s->spd_rev >> 4,
+		       s->spd_rev & 0xf);
+
+	printf("%-48s ", "Module Type");
+	if (s->module_type <= ARRAY_SIZE(ddr3_spd_moduletypes))
+		printf("%s\n", ddr3_spd_moduletypes[s->module_type]);
+	else
+		printf("Reserved (0x%02x)\n", s->module_type);
+
+	if ((s->ftb_div & 0x0f) == 0 || s->mtb_divisor == 0) {
+		printf("Invalid time base divisor, can't decode\n");
+		return;
+	}
+
+	printf("\n---=== Memory Characteristics ===---\n");
+
+	ctime = ddr3_timing_from_mtb_ftb(s->tck_min, s->fine_tck_min,
+					 s->mtb_dividend, s->mtb_divisor, s->ftb_div);
+	ctime = ddr3_adjust_ctime(ctime, s->ftb_div);
+
+	ddrclk = 2 * 1000 * 1000 / ctime;
+	tbits = 1 << ((s->bus_width & 0x7) + 3);
+	pcclk = ddrclk * tbits / 8;
+	pcclk = pcclk - (pcclk % 100);	/* Round down to comply with JEDEC */
+	printf("%-48s %d MT/s (PC3-%d)\n", "Maximum module speed", ddrclk, pcclk);
+
+	cap = (s->density_banks & 0xf) + 28 + (s->bus_width & 0x7) + 3
+	      - ((s->organization & 0x7) + 2) - (20 + 3);
+	k = (s->organization >> 3) + 1;
+	printf("%-48s %d MB\n", "Size", (1 << cap) * k);
+
+	printf("%-48s %d x %d x %d x %d\n", "Banks x Rows x Columns x Bits",
+	       1 << (((s->density_banks >> 4) & 0x7) + 3),
+	       (((s->addressing >> 3) & 0x1f) + 12),
+	       ((s->addressing & 7) + 9),
+	       (1 << ((s->bus_width & 0x7) + 3)));
+
+	printf("%-48s %d\n", "Ranks", k);
+
+	printf("%-48s %d bits\n", "SDRAM Device Width",
+	       (1 << ((s->organization & 0x7) + 2)));
+
+	printf("%-48s %d bits\n", "Primary Bus Width",
+	       (8 << (s->bus_width & 0x7)));
+	if (s->bus_width & 0x18)
+		printf("%-48s %d bits\n", "Bus Width Extension", s->bus_width & 0x18);
+
+	taa = ddr3_timing_from_mtb_ftb(s->taa_min, s->fine_taa_min,
+				       s->mtb_dividend, s->mtb_divisor, s->ftb_div);
+	trcd = ddr3_timing_from_mtb_ftb(s->trcd_min, s->fine_trcd_min,
+					s->mtb_dividend, s->mtb_divisor, s->ftb_div);
+	trp = ddr3_timing_from_mtb_ftb(s->trp_min, s->fine_trp_min,
+				       s->mtb_dividend, s->mtb_divisor, s->ftb_div);
+	tras = (((s->tras_trc_ext & 0xf) << 8) + s->tras_min_lsb)
+	       * 1000 * s->mtb_dividend / s->mtb_divisor;
+
+	printf("%-48s %d-%d-%d-%d\n", "tCL-tRCD-tRP-tRAS",
+	       DIV_ROUND_UP(taa, ctime), DIV_ROUND_UP(trcd, ctime),
+	       DIV_ROUND_UP(trp, ctime), DIV_ROUND_UP(tras, ctime));
+
+	printf("%-48s", "Supported CAS Latencies (tCL)");
+	cas_sup = (s->caslat_msb << 8) + s->caslat_lsb;
+	for (i = 14; i >= 0; i--) {
+		if (cas_sup & (1 << i))
+			printf(" %dT", i + 4);
+	}
+	printf("\n");
+
+	printf("\n---=== Timings at Standard Speeds ===---\n");
+
+	for (i = 0; i < ARRAY_SIZE(ddr3_std_speeds); i++) {
+		int ctime_at_speed = ddr3_std_speeds[i];
+		int best_cas = 0;
+		int j;
+
+		/* Find min CAS latency at this speed */
+		for (j = 14; j >= 0; j--) {
+			if (!(cas_sup & (1 << j)))
+				continue;
+			if (DIV_ROUND_UP(taa, ctime_at_speed) <= j + 4) {
+				best_cas = j + 4;
+			}
+		}
+
+		if (!best_cas || ctime_at_speed < ctime)
+			continue;
+
+		printf("tCL-tRCD-tRP-tRAS as DDR3-%-4d %17s %d-%d-%d-%d\n",
+		       2000 * 1000 / ctime_at_speed, "", best_cas,
+		       DIV_ROUND_UP(trcd, ctime_at_speed),
+		       DIV_ROUND_UP(trp, ctime_at_speed),
+		       DIV_ROUND_UP(tras, ctime_at_speed));
+	}
+
+	printf("\n---=== Timing Parameters ===---\n");
+
+	printf("%-48s %d.%03d ns\n", "Minimum Cycle Time (tCK)",
+	       ctime / 1000, ctime % 1000);
+	printf("%-48s %d.%03d ns\n", "Minimum CAS Latency Time (tAA)",
+	       taa / 1000, taa % 1000);
+	twr = s->twr_min * 1000 * s->mtb_dividend / s->mtb_divisor;
+	printf("%-48s %d.%03d ns\n", "Minimum Write Recovery time (tWR)",
+	       twr / 1000, twr % 1000);
+	printf("%-48s %d.%03d ns\n", "Minimum RAS# to CAS# Delay (tRCD)",
+	       trcd / 1000, trcd % 1000);
+	trrd = s->trrd_min * 1000 * s->mtb_dividend / s->mtb_divisor;
+	printf("%-48s %d.%03d ns\n", "Minimum Row Active to Row Active Delay (tRRD)",
+	       trrd / 1000, trrd % 1000);
+	printf("%-48s %d.%03d ns\n", "Minimum Row Precharge Delay (tRP)",
+	       trp / 1000, trp % 1000);
+	printf("%-48s %d.%03d ns\n", "Minimum Active to Precharge Delay (tRAS)",
+	       tras / 1000, tras % 1000);
+	trc = ddr3_timing_from_mtb_ftb(((s->tras_trc_ext & 0xf0) << 4) + s->trc_min_lsb,
+				       s->fine_trc_min, s->mtb_dividend, s->mtb_divisor,
+				       s->ftb_div);
+	printf("%-48s %d.%03d ns\n", "Minimum Active to Auto-Refresh Delay (tRC)",
+	       trc / 1000, trc % 1000);
+	trfc = ((s->trfc_min_msb << 8) + s->trfc_min_lsb) * 1000
+	       * s->mtb_dividend / s->mtb_divisor;
+	printf("%-48s %d.%03d ns\n", "Minimum Recovery Delay (tRFC)",
+	       trfc / 1000, trfc % 1000);
+	twtr = s->twtr_min * 1000 * s->mtb_dividend / s->mtb_divisor;
+	printf("%-48s %d.%03d ns\n", "Minimum Write to Read CMD Delay (tWTR)",
+	       twtr / 1000, twtr % 1000);
+	trtp = s->trtp_min * 1000 * s->mtb_dividend / s->mtb_divisor;
+	printf("%-48s %d.%03d ns\n", "Minimum Read to Pre-charge CMD Delay (tRTP)",
+	       trtp / 1000, trtp % 1000);
+	tfaw = (((s->tfaw_msb & 0xf) << 8) + s->tfaw_min) * 1000
+	       * s->mtb_dividend / s->mtb_divisor;
+	printf("%-48s %d.%03d ns\n", "Minimum Four Activate Window Delay (tFAW)",
+	       tfaw / 1000, tfaw % 1000);
+
+	printf("\n---=== Optional Features ===---\n");
+
+	printf("%-48s 1.5V%s%s%s\n", "Operable voltages",
+	       (s->module_vdd & 0x1) ? " tolerant" : "",
+	       (s->module_vdd & 0x2) ? ", 1.35V" : "",
+	       (s->module_vdd & 0x4) ? ", 1.2X V" : "");
+	printf("%-48s %s\n", "RZQ/6 supported?",
+	       (s->opt_features & 1) ? "Yes" : "No");
+	printf("%-48s %s\n", "RZQ/7 supported?",
+	       (s->opt_features & 2) ? "Yes" : "No");
+	printf("%-48s %s\n", "DLL-Off Mode supported?",
+	       (s->opt_features & 0x80) ? "Yes" : "No");
+	printf("%-48s 0-%d degrees C\n", "Operating temperature range",
+	       (s->therm_ref_opt & 0x1) ? 95 : 85);
+	if (s->therm_ref_opt & 0x1)
+		printf("%-48s %s\n", "Refresh Rate in extended temp range",
+		       (s->therm_ref_opt & 0x2) ? "1X" : "2X");
+	printf("%-48s %s\n", "Auto Self-Refresh?",
+	       (s->therm_ref_opt & 0x4) ? "Yes" : "No");
+	printf("%-48s %s\n", "On-Die Thermal Sensor readout?",
+	       (s->therm_ref_opt & 0x8) ? "Yes" : "No");
+	printf("%-48s %s\n", "Partial Array Self-Refresh?",
+	       (s->therm_ref_opt & 0x80) ? "Yes" : "No");
+	printf("%-48s %s\n", "Module Thermal Sensor",
+	       (s->therm_sensor & 0x80) ? "Yes" : "No");
+
+	printf("%-48s %s\n", "SDRAM Device Type",
+	       (s->device_type & 0x80) ? "Non-Standard" : "Standard Monolithic");
+
+	die_count = (s->device_type >> 4) & 0x7;
+	if (die_count == 1)
+		printf("%-48s Single die\n", "");
+	else if (die_count == 2)
+		printf("%-48s 2 die\n", "");
+	else if (die_count == 3)
+		printf("%-48s 4 die\n", "");
+	else if (die_count == 4)
+		printf("%-48s 8 die\n", "");
+
+	loading = (s->device_type >> 2) & 0x3;
+	if (loading == 1)
+		printf("%-48s Multi load stack\n", "");
+	else if (loading == 2)
+		printf("%-48s Single load stack\n", "");
+
+	mac = s->res_39_59[2] & 0xf;
+	if (mac < ARRAY_SIZE(ddr3_maximum_activated_counts))
+		printf("%-48s %s\n", "Maximum Activate Count (MAC)",
+		       ddr3_maximum_activated_counts[mac]);
+
+	/*
+	 * The following bytes are type-specific, so don't continue if the type
+	 * is unknown.
+	 */
+	if (!s->module_type || s->module_type > ARRAY_SIZE(ddr3_spd_moduletypes))
+		return;
+
+	family = ddr3_spd_moduletypes_family[s->module_type];
+	if (family == DDR3_UNBUFFERED || family == DDR3_REGISTERED
+	    || family == DDR3_CLOCKED || family == DDR3_LOAD_REDUCED) {
+		printf("\n---=== Physical Characteristics ===---\n");
+		printf("%-48s %d mm\n", "Module Height",
+		       ((s->mod_section.unbuffered.mod_height & 0x1f) + 15));
+		printf("%-48s %d mm front, %d mm back\n", "Module Thickness",
+		       (s->mod_section.unbuffered.mod_thickness & 0xf) + 1,
+		       ((s->mod_section.unbuffered.mod_thickness >> 4) & 0xf) + 1);
+		printf("%-48s %s\n", "Module Width",
+		       ddr3_spd_moduletypes_width[s->module_type]);
+		ddr3_print_reference_card(s->mod_section.unbuffered.ref_raw_card,
+					  s->mod_section.unbuffered.mod_height);
+	}
+
+	if (family == DDR3_UNBUFFERED)
+		printf("%-48s %s\n", "Rank 1 Mapping",
+		       (s->mod_section.unbuffered.addr_mapping) ? "Mirrored" : "Standard");
+
+	if (family == DDR3_REGISTERED) {
+		uint8_t rows = (s->mod_section.registered.modu_attr >> 2) & 0x3;
+		uint8_t registers = s->mod_section.registered.modu_attr & 0x3;
+
+		printf("\n---=== Registered DIMM ===---\n");
+
+		if (!rows)
+			printf("%-48s Undefined\n", "# DRAM Rows");
+		else
+			printf("%-48s %u\n", "# DRAM Rows", 1 << (rows - 1));
+
+		if (!registers)
+			printf("%-48s Undefined\n", "# Registers");
+		else
+			printf("%-48s %u\n", "# Registers", 1 << (registers - 1));
+		printf("%-48s 0x%02x%02x\n", "Register manufacturer ID",
+		       s->mod_section.registered.reg_id_hi,
+		       s->mod_section.registered.reg_id_lo);
+		printf("%-48s %s\n", "Register device type",
+		       (!s->mod_section.registered.reg_type) ? "SSTE32882" : "Undefined");
+		if (s->mod_section.registered.reg_rev != 0xff)
+			ddr3_print_revision_number("Register revision",
+						   s->mod_section.registered.reg_rev);
+		printf("%-48s %s\n", "Heat spreader",
+		       (s->mod_section.registered.thermal & 0x80) ? "Yes" : "No");
+	}
+
+	if (family == DDR3_LOAD_REDUCED) {
+		uint8_t modu_attr = s->mod_section.loadreduced.modu_attr;
+		uint8_t rows = (modu_attr >> 2) & 0x3;
+		static const char *mirroring[] = {
+			"None", "Odd ranks", "Reserved", "Reserved"
+		};
+
+		printf("\n---=== Load Reduced DIMM ===---\n");
+
+		if (!rows)
+			printf("%-48s Undefined\n", "# DRAM Rows");
+		else if (rows == 0x3)
+			printf("%-48s Reserved\n", "# DRAM Rows");
+		else
+			printf("%-48s %u\n", "# DRAM Rows", 1 << (rows - 1));
+
+		printf("%-48s %s\n", "Mirroring",
+		       mirroring[modu_attr & 0x3]);
+
+		printf("%-48s %s\n", "Rank Numbering",
+		       (modu_attr & 0x20) ? "Even only" : "Contiguous");
+		printf("%-48s %s\n", "Buffer Orientation",
+		       (modu_attr & 0x10) ? "Horizontal" : "Vertical");
+		printf("%-48s 0x%02x%02x\n", "Register Manufacturer ID",
+			s->mod_section.loadreduced.buf_id_hi,
+			s->mod_section.loadreduced.buf_id_lo);
+		if (s->mod_section.loadreduced.buf_rev_id != 0xff)
+			ddr3_print_revision_number("Buffer Revision",
+						   s->mod_section.loadreduced.buf_rev_id);
+		printf("%-48s %s\n", "Heat spreader",
+		       (s->mod_section.loadreduced.modu_attr & 0x80) ? "Yes" : "No");
+	}
+
+	printf("\n---=== Manufacturer Data ===---\n");
+
+	printf("%-48s 0x%02x%02x\n", "Module Manufacturer ID",
+	       s->mmid_msb, s->mmid_lsb);
+
+	if (!((s->dmid_lsb == 0xff) && (s->dmid_msb == 0xff))
+	    && !((s->dmid_lsb == 0x0) && (s->dmid_msb == 0x0)))
+		printf("%-48s 0x%02x%02x\n", "DRAM Manufacturer ID",
+		       s->dmid_msb, s->dmid_lsb);
+
+	if (!(s->mloc == 0xff) && !(s->mloc == 0x0))
+		printf("%-48s 0x%02x\n", "Manufacturing Location Code",
+		       s->mloc);
+
+	if (!((s->mdate[0] == 0xff) && (s->mdate[1] == 0xff))
+	    && !((s->mdate[0] == 0x0) && (s->mdate[1] == 0x0)))
+		spd_print_manufacturing_date(s->mdate[0], s->mdate[1]);
+
+	if ((s->sernum[0] != s->sernum[1])
+	    && (s->sernum[0] != s->sernum[2])
+	    && (s->sernum[1] != s->sernum[3])
+	    && ((s->sernum[0] != 0xff) || (s->sernum[0] != 0x0)))
+		printf("%-48s 0x%02X%02X%02X%02X\n", "Assembly Serial Number",
+		       s->sernum[0], s->sernum[1], s->sernum[2], s->sernum[3]);
+
+	printf("%-48s ", "Part Number");
+	if (!(s->mpart[0] >= 32 && s->mpart[0] < 127)) {
+		printf("Undefined\n");
+	} else {
+		for (i = 0; i < ARRAY_SIZE(s->mpart); i++) {
+			if (s->mpart[i] >= 32 && s->mpart[i] < 127)
+				printf("%c", s->mpart[i]);
+			else
+				break;
+		}
+		printf("\n");
+	}
+
+	if (!((s->mrev[0] == 0xff) && (s->mrev[1] == 0xff))
+	    && !((s->mrev[0] == 0x0) && (s->mrev[1] == 0x0)))
+		printf("%-48s 0x%02X%02X\n", "Revision Code", s->mrev[0], s->mrev[1]);
+}
+
+void ddr_spd_print(uint8_t *record)
+{
+	uint8_t mem_type = record[2];
+
+	switch (mem_type) {
+	case SPD_MEMTYPE_DDR2:
+		ddr2_spd_print(record);
+		break;
+	case SPD_MEMTYPE_DDR3:
+		ddr3_spd_print(record);
+		break;
+	default:
+		printf("Can only dump SPD information for DDR2 and DDR3 memory types\n");
+	}
+}
+
 #define SPD_SPA0_ADDRESS        0x36
 #define SPD_SPA1_ADDRESS        0x37
 
-- 
2.44.0



