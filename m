Delivery-date: Tue, 22 Apr 2025 10:38:52 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u799Y-003yXl-1X
	for lore@lore.pengutronix.de;
	Tue, 22 Apr 2025 10:38:52 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u799Q-0001ml-D1
	for lore@pengutronix.de; Tue, 22 Apr 2025 10:38:52 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=RRA34Xcsw/Uh9lwULrBqcNXXJ8mOUBhELPzz20yOgUw=; b=FYPVQ8S+/C3tD2PaIpCNrVg57x
	MTxA6qu6TkEwvJWtGs5R4r5ltTXRXWvBt7dcr1jacsyNcK1gS507X2iuwX/nxZzmJd/jhv14DdH0i
	EM+brUbYje5JfeKTuYk2b4E1Ao8nJBhCljmL2Ei+vqgRbtpo8oEfISHqjf8ItpVfYeuaFxWfDkiNs
	YVy8MyPOvUvV0BtsNSlrot4omL1+sL8f1hbIyJXf3SpApjxiVAgN2G9KvuX8nRVZu5NK/QF1O9UmY
	o/+tHiByP+8c/EsET36dAuzv7gi8eLEA5NME5jwS/7cefeDdVLj5s1uxqg09vcZxwFI+XZc4Sr0WE
	OW5cOF8A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u798l-00000006MFv-0Wu3;
	Tue, 22 Apr 2025 08:38:03 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u78UL-00000006CKX-0Heu
	for barebox@lists.infradead.org;
	Tue, 22 Apr 2025 07:56:18 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u78UJ-0000eV-UF
	for barebox@lists.infradead.org; Tue, 22 Apr 2025 09:56:15 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u78UJ-001Vvk-2Q
	for barebox@lists.infradead.org;
	Tue, 22 Apr 2025 09:56:15 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u78UJ-000vGy-28
	for barebox@lists.infradead.org;
	Tue, 22 Apr 2025 09:56:15 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Tue, 22 Apr 2025 09:56:12 +0200
Message-Id: <20250422075615.220139-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250422_005617_264791_C275E3A1 
X-CRM114-Status: GOOD (  15.83  )
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
Subject: [PATCH 1/4] restart: give poweroff_machine and restart_machine a flag parameter
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Ahmad Fatoum <a.fatoum@barebox.org>

We currently do differentiate between warm and cold reset, but
restart_machine has no flag to choose between them and instead users
need to iterate over all registered handlers and choose a suitable one
and then call hat handler's action.

In preparation for making warm/cold reset and any other flags we may
require a feature an argument to the driver action, change all
poweroff_machine and restart_machine calls to take a flags parameter.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 arch/arm/boards/zii-common/board.c | 2 +-
 arch/arm/cpu/psci.c                | 2 +-
 arch/arm/lib32/bootm.c             | 4 ++--
 arch/arm/mach-at91/bootstrap.c     | 2 +-
 arch/arm/mach-mvebu/kwbootimage.c  | 2 +-
 arch/arm/mach-tegra/tegra20-pmc.c  | 2 +-
 arch/mips/lib/bootm.c              | 2 +-
 arch/powerpc/lib/ppclinux.c        | 2 +-
 commands/poweroff.c                | 2 +-
 common/fastboot.c                  | 2 +-
 common/misc.c                      | 4 ++--
 common/poweroff.c                  | 2 +-
 common/ratp/reset.c                | 2 +-
 common/restart.c                   | 2 +-
 drivers/input/specialkeys.c        | 4 ++--
 include/poweroff.h                 | 2 +-
 include/restart.h                  | 2 +-
 17 files changed, 20 insertions(+), 20 deletions(-)

diff --git a/arch/arm/boards/zii-common/board.c b/arch/arm/boards/zii-common/board.c
index 96f9243591f2..29d9acb5ab07 100644
--- a/arch/arm/boards/zii-common/board.c
+++ b/arch/arm/boards/zii-common/board.c
@@ -122,7 +122,7 @@ static int rdu_i210_invm(void)
 	pwrite(fd, &val, sizeof(val), 0);
 
 	shutdown_barebox();
-	restart_machine();
+	restart_machine(0);
 
 	return 0;
 }
diff --git a/arch/arm/cpu/psci.c b/arch/arm/cpu/psci.c
index 70c97e03a5ff..ed26a3138dfe 100644
--- a/arch/arm/cpu/psci.c
+++ b/arch/arm/cpu/psci.c
@@ -144,7 +144,7 @@ static unsigned long psci_system_reset(void)
 	if (psci_ops->system_reset)
 		psci_ops->system_reset();
 
-	restart_machine();
+	restart_machine(0);
 }
 
 /* Avoid missing prototype warning, called from assembly */
diff --git a/arch/arm/lib32/bootm.c b/arch/arm/lib32/bootm.c
index 625091ece1e9..017e9b0edc4b 100644
--- a/arch/arm/lib32/bootm.c
+++ b/arch/arm/lib32/bootm.c
@@ -337,7 +337,7 @@ static int __do_bootm_linux(struct image_data *data, unsigned long free_mem,
 	start_linux((void *)kernel, swap, initrd_start, initrd_size,
 		    fdt_load_address, state, tee);
 
-	restart_machine();
+	restart_machine(0);
 
 	return -ERESTARTSYS;
 }
@@ -695,7 +695,7 @@ static int do_bootm_aimage(struct image_data *data)
 
 		second();
 
-		restart_machine();
+		restart_machine(0);
 	}
 
 	close(fd);
diff --git a/arch/arm/mach-at91/bootstrap.c b/arch/arm/mach-at91/bootstrap.c
index fbf5fa78a157..0ccdef93477d 100644
--- a/arch/arm/mach-at91/bootstrap.c
+++ b/arch/arm/mach-at91/bootstrap.c
@@ -146,7 +146,7 @@ static void boot_mmc_disk_action(struct menu *m, struct menu_entry *me)
 
 static void boot_reset_action(struct menu *m, struct menu_entry *me)
 {
-	restart_machine();
+	restart_machine(0);
 }
 
 static void at91_bootstrap_menu(void)
diff --git a/arch/arm/mach-mvebu/kwbootimage.c b/arch/arm/mach-mvebu/kwbootimage.c
index 2bcc42fe5749..e016941075e2 100644
--- a/arch/arm/mach-mvebu/kwbootimage.c
+++ b/arch/arm/mach-mvebu/kwbootimage.c
@@ -64,7 +64,7 @@ static int do_bootm_kwbimage_v0_v1(struct image_data *data)
 
 	barebox();
 
-	restart_machine();
+	restart_machine(0);
 
 out_free:
 	free(barebox);
diff --git a/arch/arm/mach-tegra/tegra20-pmc.c b/arch/arm/mach-tegra/tegra20-pmc.c
index 11fd8c28be59..d4c28ac54142 100644
--- a/arch/arm/mach-tegra/tegra20-pmc.c
+++ b/arch/arm/mach-tegra/tegra20-pmc.c
@@ -221,7 +221,7 @@ static int tegra20_pmc_probe(struct device *dev)
 static int do_tegrarcm(int argc, char *argv[])
 {
 	writel(2, pmc_base + PMC_SCRATCH(0));
-	restart_machine();
+	restart_machine(0);
 
 	return 0;
 }
diff --git a/arch/mips/lib/bootm.c b/arch/mips/lib/bootm.c
index a623b1c83b35..2bc8283f7d7b 100644
--- a/arch/mips/lib/bootm.c
+++ b/arch/mips/lib/bootm.c
@@ -40,7 +40,7 @@ static int do_bootm_barebox(struct image_data *data)
 
 	barebox(-2, fdt);
 
-	restart_machine();
+	restart_machine(0);
 }
 
 static struct image_handler barebox_handler = {
diff --git a/arch/powerpc/lib/ppclinux.c b/arch/powerpc/lib/ppclinux.c
index 9b8404962cea..6b00c2ee5756 100644
--- a/arch/powerpc/lib/ppclinux.c
+++ b/arch/powerpc/lib/ppclinux.c
@@ -98,7 +98,7 @@ static int do_bootm_linux(struct image_data *data)
 	 */
 	kernel(fdt, kernel, 0, 0, 0);
 
-	restart_machine();
+	restart_machine(0);
 
 error:
 	return -1;
diff --git a/commands/poweroff.c b/commands/poweroff.c
index 9320c07a6c5f..5c793fc4e3ae 100644
--- a/commands/poweroff.c
+++ b/commands/poweroff.c
@@ -9,7 +9,7 @@
 
 static int cmd_poweroff(int argc, char *argv[])
 {
-	poweroff_machine();
+	poweroff_machine(0);
 
 	/* Not reached */
 	return 1;
diff --git a/common/fastboot.c b/common/fastboot.c
index 60bef0ec776b..a444b81a7bec 100644
--- a/common/fastboot.c
+++ b/common/fastboot.c
@@ -284,7 +284,7 @@ int fastboot_tx_print(struct fastboot *fb, enum fastboot_msg_type type,
 static void cb_reboot(struct fastboot *fb, const char *cmd)
 {
 	fastboot_tx_print(fb, FASTBOOT_MSG_OKAY, "");
-	restart_machine();
+	restart_machine(0);
 }
 
 static void cb_getvar(struct fastboot *fb, const char *cmd)
diff --git a/common/misc.c b/common/misc.c
index 375fbbb199c7..ce1fbc284f48 100644
--- a/common/misc.c
+++ b/common/misc.c
@@ -303,9 +303,9 @@ static void __noreturn do_panic(bool stacktrace, const char *fmt, va_list ap)
 	mdelay_non_interruptible(100);	/* allow messages to go out */
 
 	if (IS_ENABLED(CONFIG_PANIC_POWEROFF))
-		poweroff_machine();
+		poweroff_machine(0);
 	else
-		restart_machine();
+		restart_machine(0);
 }
 
 void __noreturn panic(const char *fmt, ...)
diff --git a/common/poweroff.c b/common/poweroff.c
index 65909c614145..d453a9a98025 100644
--- a/common/poweroff.c
+++ b/common/poweroff.c
@@ -63,7 +63,7 @@ int poweroff_handler_register_fn(void (*poweroff_fn)(struct poweroff_handler *))
 /**
  * poweroff_machine() - power off the machine
  */
-void __noreturn poweroff_machine(void)
+void __noreturn poweroff_machine(unsigned long flags)
 {
 	struct poweroff_handler *handler = NULL, *tmp;
 	unsigned int priority = 0;
diff --git a/common/ratp/reset.c b/common/ratp/reset.c
index 060475169ba3..c6453b094722 100644
--- a/common/ratp/reset.c
+++ b/common/ratp/reset.c
@@ -43,7 +43,7 @@ static int ratp_cmd_reset(const struct ratp_bb *req, int req_len,
 	if (!reset_req->force)
 		shutdown_barebox();
 
-	restart_machine();
+	restart_machine(0);
 	/* Not reached */
 	return 1;
 }
diff --git a/common/restart.c b/common/restart.c
index e54b4d7c5b82..2ab0196542d8 100644
--- a/common/restart.c
+++ b/common/restart.c
@@ -102,7 +102,7 @@ struct restart_handler *restart_handler_get_by_name(const char *name, int flags)
 /**
  * restart_machine() - reset the whole system
  */
-void __noreturn restart_machine(void)
+void __noreturn restart_machine(unsigned long flags)
 {
 	struct restart_handler *rst;
 
diff --git a/drivers/input/specialkeys.c b/drivers/input/specialkeys.c
index f9693dc383c4..9db93804f82e 100644
--- a/drivers/input/specialkeys.c
+++ b/drivers/input/specialkeys.c
@@ -14,12 +14,12 @@ static void input_specialkeys_notify(struct input_notifier *in,
 	switch (ev->code) {
 	case KEY_RESTART:
 		pr_info("Triggering reset due to special key.\n");
-		restart_machine();
+		restart_machine(0);
 		break;
 
 	case KEY_POWER:
 		pr_info("Triggering poweroff due to special key.\n");
-		poweroff_machine();
+		poweroff_machine(0);
 		break;
 	}
 
diff --git a/include/poweroff.h b/include/poweroff.h
index 217b68cdf966..307097c01541 100644
--- a/include/poweroff.h
+++ b/include/poweroff.h
@@ -2,7 +2,7 @@
 #ifndef __INCLUDE_POWEROFF_H
 #define __INCLUDE_POWEROFF_H
 
-void __noreturn poweroff_machine(void);
+void __noreturn poweroff_machine(unsigned long poweroff_flags);
 
 struct poweroff_handler {
 	void (*poweroff)(struct poweroff_handler *);
diff --git a/include/restart.h b/include/restart.h
index 02db7915075e..75d96111ea1b 100644
--- a/include/restart.h
+++ b/include/restart.h
@@ -9,7 +9,7 @@
 struct device_node;
 
 void restart_handlers_print(void);
-void __noreturn restart_machine(void);
+void __noreturn restart_machine(unsigned long restart_flags);
 struct restart_handler *restart_handler_get_by_name(const char *name, int flags);
 
 struct device_node;
-- 
2.39.5



