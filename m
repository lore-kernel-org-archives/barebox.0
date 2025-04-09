Delivery-date: Wed, 09 Apr 2025 16:13:50 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u2WBa-00ARPW-0E
	for lore@lore.pengutronix.de;
	Wed, 09 Apr 2025 16:13:50 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u2WBZ-0001ao-A6
	for lore@pengutronix.de; Wed, 09 Apr 2025 16:13:49 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=nMGsFR5w/ZNVxIVFa8mLSbdIoP284uphvXVXgsiGEBs=; b=yX8CVRzPRonUFEvlq1wYSftzIz
	imKZd8Fl3aC6Ip8SJhlfLYCX6O46t+wyW2/JhAv0XoeEYXVmNdTqOSNvlqISoHX3QhQuV25ayNftv
	8RuS1sdaP+1wZZa2ENw7+AxowOnrwV2I6WW336LEuIAl32p85IHFQGLZXMcsJ18+5O3Z5pgdSh9wk
	F1jAS/Alhp2KfoR6VZfnxfAoI2bHUZLrpUPSkcLjBHJc86bUsW0MJkwE1ScupXtq8PyP5vE8KkOpI
	Vcs/pbW76ukyxeA6mSASqIqBsgALXCSi+StixmJda8964/HGX00IMz/SAZDygMMsLNcJT0aBYYkc0
	8HLiowbA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u2WAz-00000007PEi-1ros;
	Wed, 09 Apr 2025 14:13:13 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u2VKz-00000007Gxr-0DI6
	for barebox@lists.infradead.org;
	Wed, 09 Apr 2025 13:19:31 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u2VKx-0006kq-Rr; Wed, 09 Apr 2025 15:19:27 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u2VKx-0046qT-28;
	Wed, 09 Apr 2025 15:19:27 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u2VKx-008BGB-1o;
	Wed, 09 Apr 2025 15:19:27 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  9 Apr 2025 15:19:26 +0200
Message-Id: <20250409131926.1949805-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250409131926.1949805-1-a.fatoum@pengutronix.de>
References: <20250409131926.1949805-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250409_061929_102628_CFFF715E 
X-CRM114-Status: GOOD (  19.58  )
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
X-Spam-Status: No, score=-5.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/2] bootsource: add optional read of /chosen/bootsource
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

barebox currently /chosen properties like bootsource and earlycon,
although they can be useful in a second-stage boot scenario.

For example, on the STM32MP15, the TAMP register used to communicate
boot source from the BootROM is also used to override the reboot mode
prior to a warm reboot. As reboot modes are automatically cleared after
readout, this means that a chainloaded barebox will not be able to
determine the bootsource if the reboot mode driver is enabled.

To address this limitation, teach barebox to consume /chosen/bootsource.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/Kconfig       | 17 +++++++++++++++++
 common/bootsource.c  | 28 ++++++++++++++++++++++++++++
 drivers/of/base.c    | 21 +++++++++++++++++++--
 include/bootsource.h |  1 +
 4 files changed, 65 insertions(+), 2 deletions(-)

diff --git a/common/Kconfig b/common/Kconfig
index 8134e13bbeb2..1e04d0403ad0 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -1210,6 +1210,23 @@ config BOOT_DEFAULTS
 	  target, which will expand to the device that barebox has
 	  booted from if that could be determined.
 
+config BAREBOX_DT_2ND
+	bool "Consume DT bindings relevant only when barebox is booted by barebox"
+	depends on OFDEVICE
+	default BOARD_GENERIC_DT
+	help
+	  Barebox fixes up a number of device tree properties into the kernel
+	  device tree that it does not itself consume.
+	  Say y here for barebox to not only provide, but also consume
+	  these device tree bindings.
+
+	  This is currently:
+
+	    /chosen/bootsource: Maintain the bootsource, even if SoC
+	    bootsource info is lost.
+
+	  If unsure, say n.
+
 config RESET_SOURCE
 	bool "detect Reset cause"
 	depends on GLOBALVAR
diff --git a/common/bootsource.c b/common/bootsource.c
index 14e6565e3789..f608019bb758 100644
--- a/common/bootsource.c
+++ b/common/bootsource.c
@@ -9,6 +9,7 @@
 #include <bootsource.h>
 #include <environment.h>
 #include <magicvar.h>
+#include <string.h>
 #include <init.h>
 
 static const char *bootsource_str[BOOTSOURCE_MAX] = {
@@ -153,6 +154,33 @@ void bootsource_set_raw_instance(int instance)
 		pr_setenv("bootsource_instance", "%d", instance);
 }
 
+int bootsource_of_node_set(struct device_node *np)
+{
+	const char *alias;
+
+	alias = of_alias_get(np);
+	if (!alias)
+		return -EINVAL;
+
+	for (int bootsrc = 0; bootsrc < ARRAY_SIZE(bootsource_str); bootsrc++) {
+		int ret, instance;
+		size_t prefixlen;
+
+		prefixlen = str_has_prefix(alias, bootsource_str[bootsrc]);
+		if (!prefixlen)
+			continue;
+
+		ret = kstrtoint(alias + prefixlen, 10, &instance);
+		if (ret)
+			return ret;
+
+		bootsource_set_raw(bootsrc, instance);
+		return 0;
+	}
+
+	return -ENODEV;
+}
+
 int bootsource_of_alias_xlate(enum bootsource src, int instance)
 {
 	char chosen[sizeof("barebox,bootsource-harddisk4294967295")];
diff --git a/drivers/of/base.c b/drivers/of/base.c
index dfe4861c9eb6..324565068771 100644
--- a/drivers/of/base.c
+++ b/drivers/of/base.c
@@ -14,6 +14,7 @@
 #include <malloc.h>
 #include <init.h>
 #include <memory.h>
+#include <bootsource.h>
 #include <linux/sizes.h>
 #include <of_graph.h>
 #include <string.h>
@@ -3591,13 +3592,29 @@ const char *of_get_machine_compatible(void)
 }
 EXPORT_SYMBOL(of_get_machine_compatible);
 
-static int of_init_hostname(void)
+static void of_init_bootsource(void)
+{
+	struct device_node *bootsource;
+
+	if (!IS_ENABLED(CONFIG_BAREBOX_DT_2ND))
+		return;
+
+	bootsource = of_find_node_by_chosen("bootsource", NULL);
+	if (!bootsource)
+		return;
+
+	bootsource_of_node_set(bootsource);
+}
+
+static int of_init_vars(void)
 {
 	const char *name;
 
 	name = of_get_machine_compatible();
 	barebox_set_hostname_no_overwrite(name ?: "barebox");
 
+	of_init_bootsource();
+
 	return 0;
 }
-late_initcall(of_init_hostname);
+late_initcall(of_init_vars);
diff --git a/include/bootsource.h b/include/bootsource.h
index 1b3df84f4ddb..ce0c92d0fef9 100644
--- a/include/bootsource.h
+++ b/include/bootsource.h
@@ -33,6 +33,7 @@ const char *bootsource_to_string(enum bootsource src);
 const char *bootsource_get_alias_stem(enum bootsource bs);
 int bootsource_of_alias_xlate(enum bootsource bs, int instance);
 struct device_node *bootsource_of_node_get(struct device_node *root);
+int bootsource_of_node_set(struct device_node *np);
 struct cdev *bootsource_of_cdev_find(void);
 
 /**
-- 
2.39.5



