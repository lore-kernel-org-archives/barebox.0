Delivery-date: Fri, 29 Apr 2022 09:32:17 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nkL6w-001m8F-Vi
	for lore@lore.pengutronix.de; Fri, 29 Apr 2022 09:32:17 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nkL6u-0001B1-B9
	for lore@pengutronix.de; Fri, 29 Apr 2022 09:32:17 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KIz1D+jZKAc4HkQ9cGovEdjL3EubVLkWCLqzxWkZLrU=; b=pjTQeiRVU3sypJ
	UPEGysoD8vH9+aMrr62LBDQxtcIuv1RwibN0CkiU5zXtO8JIdOREsJLu5McT6EIqKT+4HshJDoig3
	fyQAOjD/d0TLqxJdX1aWFyhGR72Cuk6E/IJwplL64wrV1ySgy7yLYYV6TyAuTwBMtjLhY1WI+mp/k
	miB0O5IAtrc2p1tsQrtETxOUjWy6QnzKXgj5Fc3x9FsGhk/+xkg30FoLMwWILiFvFy72majpLXz1o
	X7MAajFFsYn1S6g1Mluv39Fgdy4z7GL5Id0jiimOCnL162gj0qD+g/j6tr5g5P/1BJH3hsEdizMzk
	h2ZFlA5/Qosc6mdQfljA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nkL5d-009yW5-82; Fri, 29 Apr 2022 07:30:57 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nkL5L-009yRs-FO
 for barebox@lists.infradead.org; Fri, 29 Apr 2022 07:30:45 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ore@pengutronix.de>)
 id 1nkL5K-0000gH-8a; Fri, 29 Apr 2022 09:30:38 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
 by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
 (envelope-from <ore@pengutronix.de>)
 id 1nkL5K-005u6V-7l; Fri, 29 Apr 2022 09:30:36 +0200
Received: from ore by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <ore@pengutronix.de>)
 id 1nkL5H-000pMA-SG; Fri, 29 Apr 2022 09:30:35 +0200
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>,
 Oleksij Rempel <o.rempel@pengutronix.de>
Date: Fri, 29 Apr 2022 09:30:30 +0200
Message-Id: <20220429073034.197362-2-o.rempel@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220429073034.197362-1-o.rempel@pengutronix.de>
References: <20220429073034.197362-1-o.rempel@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220429_003039_560996_33FB62E2 
X-CRM114-Status: GOOD (  16.20  )
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
Subject: [PATCH v4 1/5] common: add $global.serial_number with device tree
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
index f7a6a96e87..e77e0c78c5 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -1066,6 +1066,11 @@ config MACHINE_ID
 	  Note: if no hashable information is available no machine id will be passed
 	  to the kernel.
 
+config SERIAL_NUMBER_FIXUP
+	bool "fix up board serial number"
+	help
+	  fixup serial number supplied by board code into device tree
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

