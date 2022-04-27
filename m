Delivery-date: Wed, 27 Apr 2022 09:39:09 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1njcGU-00GlbM-La
	for lore@lore.pengutronix.de; Wed, 27 Apr 2022 09:39:09 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1njcGS-0006j6-71
	for lore@pengutronix.de; Wed, 27 Apr 2022 09:39:08 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=515cJ0ocQqzyvc/7VSmmhdQqmPLCoWax7VoQDAe4Sz4=; b=u4230rDaJcHkA7
	9GqYyPNg4Im3s+kZLFSiapd+KQbDn8SRBxEis45ktFOusNPxF1NrM7jE8Zyhr/O4CvM8dh99VPRnz
	CHs+FTQlB65hn69gLJnpk8FeYNiPZm9B2yMAfsg9VJcWaMSh43k6/JC7t3Na+YX/p2A75Umce0e3J
	UZW+5Y3RhYqPMQyiYGgB1nzSWy+Xu7x3F95eP/swDtfWd9xCellpDzeUEcNHPbaQDhM3xxui6+KhT
	pgn3YPrQmTrD7LPBrKFrMhE9iNVMIM/SX087ZzzYIQ7bFFfweoWEoXKKrJGrr6aYX+MBmrLuYrDHZ
	AuQv9VvQdPEQnhTYOJNA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1njcFG-000KtY-MW; Wed, 27 Apr 2022 07:37:54 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1njcEr-000Kg6-Ed
 for barebox@lists.infradead.org; Wed, 27 Apr 2022 07:37:32 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ore@pengutronix.de>)
 id 1njcEq-0006HB-5g; Wed, 27 Apr 2022 09:37:28 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
 by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
 (envelope-from <ore@pengutronix.de>)
 id 1njcEq-005VuA-Tl; Wed, 27 Apr 2022 09:37:27 +0200
Received: from ore by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <ore@pengutronix.de>)
 id 1njcEo-00D7Nu-Ai; Wed, 27 Apr 2022 09:37:26 +0200
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>,
 Oleksij Rempel <o.rempel@pengutronix.de>
Date: Wed, 27 Apr 2022 09:37:20 +0200
Message-Id: <20220427073724.3126601-1-o.rempel@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220427_003729_639142_691FC376 
X-CRM114-Status: GOOD (  16.10  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v1 1/5] common: add $global.serial_number with device tree
 fixup
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

From: Ahmad Fatoum <a.fatoum@pengutronix.de>

This new variable can be set by boards from C code or from the
environment to change the serial number fixed up into the kernel device
tree.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 common/Kconfig   |  5 +++++
 common/misc.c    | 16 ++++++++++++++++
 common/oftree.c  |  9 +++++++++
 include/common.h |  3 +++
 4 files changed, 33 insertions(+)

diff --git a/common/Kconfig b/common/Kconfig
index f7a6a96e87..d08302a573 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -1066,6 +1066,11 @@ config MACHINE_ID
 	  Note: if no hashable information is available no machine id will be passed
 	  to the kernel.
 
+config SERIAL_NUMBER_FIXUP
+	bool "fix up board serial number"
+	help
+	  fixup serial number supplied by board code info device tree
+
 config SYSTEMD_OF_WATCHDOG
 	bool "inform devicetree-enabled kernel of used watchdog"
 	depends on WATCHDOG && OFTREE && FLEXIBLE_BOOTARGS
diff --git a/common/misc.c b/common/misc.c
index 226635f0d4..3b3bc05bfd 100644
--- a/common/misc.c
+++ b/common/misc.c
@@ -149,6 +149,7 @@ EXPORT_SYMBOL(barebox_get_model);
 BAREBOX_MAGICVAR(global.model, "Product name of this hardware");
 
 static char *hostname;
+static char *serial_number;
 
 /*
  * The hostname is supposed to be the shortname of a board. It should
@@ -179,6 +180,21 @@ EXPORT_SYMBOL(barebox_set_hostname_no_overwrite);
 BAREBOX_MAGICVAR(global.hostname,
 		"shortname of the board. Also used as hostname for DHCP requests");
 
+void barebox_set_serial_number(const char *__serial_number)
+{
+	globalvar_add_simple_string("serial_number", &serial_number);
+
+	free(serial_number);
+	serial_number = xstrdup(__serial_number);
+}
+
+const char *barebox_get_serial_number(void)
+{
+	return serial_number;
+}
+
+BAREBOX_MAGICVAR(global.serial_number, "Board serial number");
+
 void __noreturn panic(const char *fmt, ...)
 {
 	va_list args;
diff --git a/common/oftree.c b/common/oftree.c
index bce0ff09d6..c6d75055cc 100644
--- a/common/oftree.c
+++ b/common/oftree.c
@@ -207,6 +207,15 @@ static int of_fixup_bootargs(struct device_node *root, void *unused)
 	int instance = reset_source_get_instance();
 	struct device_d *dev;
 
+	if (IS_ENABLED(CONFIG_SERIAL_NUMBER_FIXUP)) {
+		const char *serialno;
+
+		serialno = getenv("global.serial_number");
+		if (serialno)
+			of_property_write_string(root, "serial-number", serialno);
+
+	}
+
 	node = of_create_node(root, "/chosen");
 	if (!node)
 		return -ENOMEM;
diff --git a/include/common.h b/include/common.h
index 4167d4676e..967502a7ab 100644
--- a/include/common.h
+++ b/include/common.h
@@ -126,4 +126,7 @@ const char *barebox_get_hostname(void);
 void barebox_set_hostname(const char *);
 void barebox_set_hostname_no_overwrite(const char *);
 
+const char *barebox_get_serial_number(void);
+void barebox_set_serial_number(const char *);
+
 #endif	/* __COMMON_H_ */
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

