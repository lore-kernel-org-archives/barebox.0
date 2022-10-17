Delivery-date: Mon, 17 Oct 2022 09:11:56 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1okKI1-00BNkf-1U
	for lore@lore.pengutronix.de; Mon, 17 Oct 2022 09:11:56 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1okKHy-000623-IJ
	for lore@pengutronix.de; Mon, 17 Oct 2022 09:11:55 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=vkEmVOTSfVet4FWYk1V/ViQ6pL5thFTNzm6NYEIEzh4=; b=xNVuUCfEBhNt51Jiu0lLQGBvVo
	mRArevhBpQOcdZ6TjsRAhZ/ExwwEgBkzfYykmUHZhxlBXNCxMSkqOIuYhqtxX/3G/IOjadINU0Mjf
	As0cozXbAhdLS9oZCShu7A+3RgPJmfBwTffv/9jnSu22NQlafo4pS1E68KsfgpNymnws27plLZ5ez
	ipq+qNws9LUcOZJ/EXvGKJqHou4AMvNBl7VSXJRprnnlcChjhELINfP0WHoctKGaBMjO7CapXUzhI
	jzXJ/wpMxjHTttpuYML0WwFRep+H9lnnOVr9OUKB4BfnlRPWbluK0cxKQ0ctWQ0gdPRFXmrBFsosY
	eNNXSrOg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1okKGh-008Mqj-PP; Mon, 17 Oct 2022 07:10:35 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1okKGD-008MZm-1v
	for barebox@lists.infradead.org; Mon, 17 Oct 2022 07:10:10 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1okKGB-0004xt-C9; Mon, 17 Oct 2022 09:10:03 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1okKGA-0021UZ-Mk; Mon, 17 Oct 2022 09:10:02 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1okKG8-0067Og-PF; Mon, 17 Oct 2022 09:10:00 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 17 Oct 2022 09:09:55 +0200
Message-Id: <20221017071000.1458292-4-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20221017071000.1458292-1-a.fatoum@pengutronix.de>
References: <20221017071000.1458292-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221017_001005_356058_4E81514A 
X-CRM114-Status: GOOD (  23.09  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 3/8] restart: add reset -w for warm bootrom reset
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

We currently support reboot mode communication with BootROMs of the
i.MX6Q/DL, i.MX8MM and STM32MP15x. For each of these, the user must
take care to use the correct reset as the highest priority reset often
clears the non-volatile register mapped by the syscon holding the reboot
mode. As we only have one BootROM, we can improve usability by adding a
global flag that describes whether a restart handler is suitable for
use after a bootrom reboot mode write. Add a flag bit describing this
and allow populating it from the device tree as well as from drivers.

Existing i.MX/STM32 drivers will be moved onto this in follow-up
commits.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 Documentation/boards/imx.rst                    |  2 +-
 .../devicetree/bindings/power/restart.rst       |  5 +++++
 Documentation/user/reboot-mode.rst              |  7 ++++++-
 commands/reset.c                                | 16 ++++++++++------
 common/restart.c                                | 17 +++++++++++++----
 include/restart.h                               |  5 ++++-
 6 files changed, 39 insertions(+), 13 deletions(-)

diff --git a/Documentation/boards/imx.rst b/Documentation/boards/imx.rst
index 4ce9d9808cc1..6c16923340a8 100644
--- a/Documentation/boards/imx.rst
+++ b/Documentation/boards/imx.rst
@@ -105,7 +105,7 @@ that BootROM should select after a warm reset::
           mode-serial = <0x10 0x40000000>;
   };
 
-  barebox@FSL i.MX8MM EVK board:/ gpr.reboot_mode.next=serial reset -r imxwd-warm
+  barebox@FSL i.MX8MM EVK board:/ gpr.reboot_mode.next=serial reset -w
 
 This will cause barebox to fall into serial download mode on an i.MX8MM.
 
diff --git a/Documentation/devicetree/bindings/power/restart.rst b/Documentation/devicetree/bindings/power/restart.rst
index 8c866f6e0ded..42b87f7e9c65 100644
--- a/Documentation/devicetree/bindings/power/restart.rst
+++ b/Documentation/devicetree/bindings/power/restart.rst
@@ -8,3 +8,8 @@ Optional properties:
 - ``restart-priority`` : Overrides the priority set by the driver. Normally,
   the device with the biggest reach should reset the system.
   See :ref:`_system_reset` for more information.
+
+- ``barebox,restart-warm-bootrom`` : Restart will not cause loss to non-volatile
+  registers sampled by the bootrom at startup. This is a necessary precondition
+  for working :ref:`reboot_mode` communication between barebox and the SoC's
+  BootROM.
diff --git a/Documentation/user/reboot-mode.rst b/Documentation/user/reboot-mode.rst
index 83d4136b8592..1929a67e0bc9 100644
--- a/Documentation/user/reboot-mode.rst
+++ b/Documentation/user/reboot-mode.rst
@@ -47,7 +47,9 @@ Reboot mode providers have priorities. The provider with the highest
 priority has its parameters aliased as ``$global.system.reboot_mode.prev``
 and ``$global.system.reboot_mode.next``. After executing the init scripts,
 barebox startup will ``source /env/bmode/${global.system.reboot_mode.prev}``
-if available.
+if available. Example usage::
+
+	gpr.reboot_mode=serial reset -w
 
 Reset
 =====
@@ -60,6 +62,9 @@ If such reboot mode storage is used, users must take care to use the correct
 reset provider. In barebox, multiple reset providers may co-exist. The
 ``reset`` command allows listing and choosing a specific reboot mode.
 
+For communication with the SoC's BootROM, a warm reset can be triggered
+with ``reset -w`` if a suitable reset handler has been registered.
+
 Disambiguation
 ==============
 
diff --git a/commands/reset.c b/commands/reset.c
index fe54e2f9b472..88e677afab34 100644
--- a/commands/reset.c
+++ b/commands/reset.c
@@ -12,12 +12,12 @@
 static int cmd_reset(int argc, char *argv[])
 {
 	struct restart_handler *rst;
-	int opt, shutdown_flag;
+	int opt, shutdown_flag, flags = 0;
 	const char *name = NULL;
 
 	shutdown_flag = 1;
 
-	while ((opt = getopt(argc, argv, "flr:")) > 0) {
+	while ((opt = getopt(argc, argv, "flwr:")) > 0) {
 		switch (opt) {
 		case 'f':
 			shutdown_flag = 0;
@@ -25,6 +25,9 @@ static int cmd_reset(int argc, char *argv[])
 		case 'l':
 			restart_handlers_print();
 			return 0;
+		case 'w':
+			flags |= RESTART_FLAG_WARM_BOOTROM;
+			break;
 		case 'r':
 			name = optarg;
 			break;
@@ -33,9 +36,9 @@ static int cmd_reset(int argc, char *argv[])
 		}
 	}
 
-	rst = restart_handler_get_by_name(name);
-	if (!rst && name) {
-		printf("reset '%s' does not exist\n", name);
+	rst = restart_handler_get_by_name(name, flags);
+	if (!rst && (name || flags)) {
+		printf("No matching restart handler found\n");
 		return COMMAND_ERROR;
 	}
 
@@ -57,13 +60,14 @@ BAREBOX_CMD_HELP_START(reset)
 BAREBOX_CMD_HELP_TEXT("Options:")
 BAREBOX_CMD_HELP_OPT("-f",  "force RESET, don't call shutdown")
 BAREBOX_CMD_HELP_OPT("-l",  "list reset handlers")
+BAREBOX_CMD_HELP_OPT("-w",  "only consider warm BootROM reboot-mode-preserving resets")
 BAREBOX_CMD_HELP_OPT("-r RESET",  "use reset handler named RESET")
 BAREBOX_CMD_HELP_END
 
 BAREBOX_CMD_START(reset)
 	.cmd		= cmd_reset,
 	BAREBOX_CMD_DESC("perform RESET of the CPU")
-	BAREBOX_CMD_OPTS("[-flr]")
+	BAREBOX_CMD_OPTS("[-flrw]")
 	BAREBOX_CMD_GROUP(CMD_GRP_BOOT)
 	BAREBOX_CMD_HELP(cmd_reset_help)
 	BAREBOX_CMD_COMPLETE(empty_complete)
diff --git a/common/restart.c b/common/restart.c
index 9e988838bc60..0294b36eccca 100644
--- a/common/restart.c
+++ b/common/restart.c
@@ -30,6 +30,9 @@ int restart_handler_register(struct restart_handler *rst)
 	if (rst->of_node) {
 		of_property_read_u32(rst->of_node, "restart-priority",
 				     &rst->priority);
+		if (of_property_read_bool(rst->of_node,
+					  "barebox,restart-warm-bootrom"))
+			rst->flags |= RESTART_FLAG_WARM_BOOTROM;
 	}
 
 	list_add_tail(&rst->list, &restart_handler_list);
@@ -73,7 +76,7 @@ int restart_handler_register_fn(const char *name,
 /**
  * restart_handler_get_by_name() - reset the whole system
  */
-struct restart_handler *restart_handler_get_by_name(const char *name)
+struct restart_handler *restart_handler_get_by_name(const char *name, int flags)
 {
 	struct restart_handler *rst = NULL, *tmp;
 	unsigned int priority = 0;
@@ -81,6 +84,8 @@ struct restart_handler *restart_handler_get_by_name(const char *name)
 	list_for_each_entry(tmp, &restart_handler_list, list) {
 		if (name && tmp->name && strcmp(name, tmp->name))
 			continue;
+		if (flags && (tmp->flags & flags) != flags)
+			continue;
 		if (tmp->priority > priority) {
 			priority = tmp->priority;
 			rst = tmp;
@@ -97,7 +102,7 @@ void __noreturn restart_machine(void)
 {
 	struct restart_handler *rst;
 
-	rst = restart_handler_get_by_name(NULL);
+	rst = restart_handler_get_by_name(NULL, 0);
 	if (rst) {
 		pr_debug("%s: using restart handler %s\n", __func__, rst->name);
 		console_flush();
@@ -114,6 +119,10 @@ void restart_handlers_print(void)
 {
 	struct restart_handler *tmp;
 
-	list_for_each_entry(tmp, &restart_handler_list, list)
-		printf("%-20s %6d\n", tmp->name, tmp->priority);
+	list_for_each_entry(tmp, &restart_handler_list, list) {
+		printf("%-20s %6d ", tmp->name, tmp->priority);
+		if (tmp->flags & RESTART_FLAG_WARM_BOOTROM)
+			putchar('W');
+		putchar('\n');
+	}
 }
diff --git a/include/restart.h b/include/restart.h
index 330b50a53ab2..15f30bb7ad4d 100644
--- a/include/restart.h
+++ b/include/restart.h
@@ -4,18 +4,21 @@
 
 #include <linux/compiler.h>
 #include <linux/types.h>
+#include <linux/bitops.h>
 
 struct device_node;
 
 void restart_handlers_print(void);
 void __noreturn restart_machine(void);
-struct restart_handler *restart_handler_get_by_name(const char *name);
+struct restart_handler *restart_handler_get_by_name(const char *name, int flags);
 
 struct device_node;
 
 struct restart_handler {
 	void (*restart)(struct restart_handler *);
 	int priority;
+#define RESTART_FLAG_WARM_BOOTROM	BIT(0)
+	int flags;
 	struct device_node *of_node;
 	const char *name;
 	struct list_head list;
-- 
2.30.2



