Delivery-date: Thu, 14 Aug 2025 22:28:40 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1umeYy-000cgK-2O
	for lore@lore.pengutronix.de;
	Thu, 14 Aug 2025 22:28:40 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1umeYx-0001ZA-AN
	for lore@pengutronix.de; Thu, 14 Aug 2025 22:28:40 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=AcfSFlksz7OfH7Tt7KeOOXwGfHM7aR/VrCFCwFtFkeA=; b=EsjKCMHhafqZIUX6QZvEiB92wA
	HoQ3p6bwen259rrI3qJdIHtmwykYK9WiXdx+vWae2YEq53SUD3JWBQ9aDjAPV+jWklxqz1o34xMFR
	8wSwPN2gTI7tKbjYXfBCT+9oB9D5JySpYoNvtsoihVn9E52EW3VeySN1XhDfviJRNlLdWUJ6Coqk+
	+N146cbaB6jZFTEwMz/FdwZMBXpQ49nGEpLrn6us72PQkUGrPE/rUuQy+wGRuFrFQk055dZkqUCAD
	09Wap+NrxZ7ofnIfEjYbWDcCuwIJVixEYZWfOvv07N3PU/f399jbeC4/5+4jVGR82feHjJsbGR8zw
	DS5XM+/A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1umeYW-00000000VB9-3M8a;
	Thu, 14 Aug 2025 20:28:12 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1umeYS-00000000V7x-1UvI
	for barebox@lists.infradead.org;
	Thu, 14 Aug 2025 20:28:10 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.fritz.box)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1umeYR-00019L-4L; Thu, 14 Aug 2025 22:28:07 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Thu, 14 Aug 2025 22:28:02 +0200
Message-Id: <20250814202805.354827-5-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250814202805.354827-1-a.fatoum@barebox.org>
References: <20250814202805.354827-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250814_132808_392068_D65198D1 
X-CRM114-Status: GOOD (  13.39  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 5/8] commands: bfetch: add RISC-V cpu/firmware info
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The RISC-V cpuinfo command has been switch to support structured I/O.
Use that to print CPU and SBI (RISC-V equivalent to ARM secure monitor)
version information.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 commands/bfetch.c | 45 +++++++++++++++++++++++++++++++++++----------
 1 file changed, 35 insertions(+), 10 deletions(-)

diff --git a/commands/bfetch.c b/commands/bfetch.c
index c201c66b09ea..a44d5a000667 100644
--- a/commands/bfetch.c
+++ b/commands/bfetch.c
@@ -232,9 +232,9 @@ static void print_barebox_info(unsigned *line)
 		print_line("Architecture", "%s", CONFIG_ARCH_LINUX_NAME);
 }
 
-static void print_cpu_mem_info(unsigned *line)
+static struct bobject *print_cpu_mem_info(unsigned *line)
 {
-	struct bobject *bret;
+	struct bobject *bret = NULL;
 	struct memory_bank *mem;
 	unsigned long memsize = 0;
 	int nbanks = 0;
@@ -250,8 +250,13 @@ static void print_cpu_mem_info(unsigned *line)
 					   bobject_get_param(bret, "exception_level"));
 			else if (IS_ENABLED(CONFIG_ARM32))
 				print_line("CPU", "%s", bobject_get_param(bret, "core"));
-
-			bobject_free(bret);
+		}
+	} else if (IS_ENABLED(CONFIG_RISCV)) {
+		ret = structio_run_command(&bret, "cpuinfo");
+		if (!ret) {
+			print_line("CPU", "%s in %s-Mode",
+				   bobject_get_param(bret, "Architecture"),
+				   bobject_get_param(bret, "Mode"));
 		}
 	} else if (IS_ENABLED(CONFIG_GLOBALVAR)) {
 		print_line("CPU", "%s-endian", globalvar_get("endianness"));
@@ -268,6 +273,8 @@ static void print_cpu_mem_info(unsigned *line)
 	else if (nbanks == 1)
 		print_line("Memory",      "%s",
 			   size_human_readable(memsize));
+
+	return bret;
 }
 
 static void print_shell_console(unsigned *line)
@@ -635,11 +642,12 @@ static int tee_devinfo(struct bobject **bret)
 	return -ENODEV;
 }
 
-static void print_firmware(unsigned *line)
+static void print_firmware(unsigned *line, struct bobject *cpuinfo)
 {
 	const char *psci_version;
 	struct bobject *bret;
 	bool have_scmi = false, have_tee = false;
+	const char *sbi_version = NULL;
 
 	psci_version = getenv("psci.version");
 
@@ -647,8 +655,11 @@ static void print_firmware(unsigned *line)
 		have_scmi = true;
 	if (tee_devinfo(&bret) == 0)
 		have_tee = true;
+	if (IS_ENABLED(CONFIG_RISCV_SBI))
+		sbi_version = bobject_get_param(cpuinfo, "SBI version");
 
-	if (!psci_version && !have_scmi && !have_tee && !efi_is_payload())
+	if (!psci_version && !have_scmi && !have_tee && !efi_is_payload() &&
+	    !sbi_version)
 		return;
 
 	print_line("Firmware", "");
@@ -660,7 +671,19 @@ static void print_firmware(unsigned *line)
 	if (have_scmi)
 		print_line("  SCMI", "yes");
 
-	/* TODO: RISC-V SBI version */
+	if (sbi_version) {
+		const char *imp = bobject_get_param(cpuinfo, "SBI implementation name");
+
+		if (!imp)
+			imp = bobject_get_param(cpuinfo, "SBI implementation ID");
+
+		if (imp) {
+			print_line("  SBI", "%s by %s %s", sbi_version, imp,
+				   bobject_get_param(cpuinfo, "SBI implementation version") ?: "");
+		} else {
+			print_line("  SBI", "%s", sbi_version);
+		}
+	}
 
 	if (have_tee) {
 		const char *name = bobject_get_param(bret, "impl.name");
@@ -680,11 +703,13 @@ static void print_firmware(unsigned *line)
 			   dev_get_param(&efi_bus.dev, "fw_vendor"),
 			   dev_get_param(&efi_bus.dev, "fw_revision"));
 	}
+
+	bobject_free(cpuinfo);
 }
 
 static int do_bfetch(int argc, char *argv[])
 {
-	struct bobject *bret;
+	struct bobject *bret, *cpuinfo;
 	unsigned _line, *line = &_line;
 	int opt;
 	int ret;
@@ -703,7 +728,7 @@ static int do_bfetch(int argc, char *argv[])
 	print_header(line);
 
 	print_barebox_info(line);
-	print_cpu_mem_info(line);
+	cpuinfo = print_cpu_mem_info(line);
 
 	ret = structio_run_command(&bret, "uptime");
 	if (!ret) {
@@ -725,7 +750,7 @@ static int do_bfetch(int argc, char *argv[])
 	print_devices_drivers(line);
 	print_storage(line);
 	print_env(line);
-	print_firmware(line);
+	print_firmware(line, cpuinfo);
 
 	while (logo(line))
 		putchar('\n');
-- 
2.39.5



