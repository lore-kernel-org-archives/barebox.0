Delivery-date: Mon, 31 May 2021 09:14:44 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lnc8K-0002vx-Tb
	for lore@lore.pengutronix.de; Mon, 31 May 2021 09:14:44 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lnc8J-0003rz-OW
	for lore@pengutronix.de; Mon, 31 May 2021 09:14:44 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=2XOS7+EYs7OrDTlATS9ZkORuCKoeZJR60CZ+79WrKHU=; b=ezGNCWKTBOO178
	jJ5MIvrpkpL9tFLXvxzqdLy+YiPWvIYOjKZYDwD/6b7Na4JYJmO43POBo5u91RLLiO8oceKXVeTWr
	RdiD3EXG2qyMB90zOEOPaXYmYgmSyL0JVPVMZgfU81Bpn2Y5UxOakeDyDKzYpTh22AxPYKcEjdJQz
	HFju5WPPry5IiMy/7QUed65FjHGudX3kFz5lwsqEymI1j+vOHaxT8ZSG2yWPWNV1j9ZjighPfs3BP
	BTAWte06ebKq0wgaIYR3fYBego2y6P+3em521TYFNRvSiT4d5B1fIf4NSf0DwZRZMh56jVdl3+jb7
	N59IL16xaPcwmX8ChMAA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lnc77-00B7zO-Kd; Mon, 31 May 2021 07:13:29 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lnc6z-00B7vk-Qa
 for barebox@lists.infradead.org; Mon, 31 May 2021 07:13:23 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lnc6y-0003Nv-Ik; Mon, 31 May 2021 09:13:20 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lnc6y-0008SQ-9l; Mon, 31 May 2021 09:13:20 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 31 May 2021 09:13:19 +0200
Message-Id: <20210531071319.32459-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210531_001321_899995_AB19CE1C 
X-CRM114-Status: GOOD (  13.23  )
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
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] watchdog: add option to provide fall-back restart handler
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Some barebox ports may have a watchdog, but no restart handler, e.g.
reset happens via PMIC, which has no driver yet, but watchdog controls
reset line going to PMIC. Accommodate such setups by allowing
registration of watchdog as fall back restart handler.

As reset handling can't be disabled, this is made a default n option
to conserve binary size unless explicitly enabled.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/watchdog/Kconfig   |  7 +++++++
 drivers/watchdog/wd_core.c | 26 ++++++++++++++++++++++++++
 2 files changed, 33 insertions(+)

diff --git a/drivers/watchdog/Kconfig b/drivers/watchdog/Kconfig
index b785181c59db..542659825045 100644
--- a/drivers/watchdog/Kconfig
+++ b/drivers/watchdog/Kconfig
@@ -16,6 +16,13 @@ config WATCHDOG_POLLER
 	help
 	  Provides support for periodic watchdog feeder.
 
+config WATCHDOG_RESTART_FALLBACK
+	bool "Use Watchdog as fall-back restart handler"
+	help
+	  Say y here if you have a system without a restart handler, but which
+	  has a functional watchdog. Note that $global.system.reset will most
+	  probably not indicate RST when using this handler.
+
 config WATCHDOG_AR9344
 	bool "QCA AR9344"
 	depends on SOC_QCA_AR9344 || SOC_QCA_AR9331 || COMPILE_TEST
diff --git a/drivers/watchdog/wd_core.c b/drivers/watchdog/wd_core.c
index 4b0ee31d5b35..55ab023d8368 100644
--- a/drivers/watchdog/wd_core.c
+++ b/drivers/watchdog/wd_core.c
@@ -18,6 +18,7 @@
 #include <errno.h>
 #include <linux/ctype.h>
 #include <watchdog.h>
+#include <restart.h>
 
 static LIST_HEAD(watchdog_list);
 
@@ -177,6 +178,24 @@ static int seconds_to_expire_get(struct param_d *p, void *priv)
 	return 0;
 }
 
+static void __noreturn watchdog_restart_handle(struct restart_handler *this)
+{
+	struct watchdog *wd = watchdog_get_default();
+	int ret = -ENODEV;
+
+	if (wd)
+		ret = watchdog_set_timeout(wd, 1);
+
+	BUG_ON(ret);
+	mdelay(2000);
+	__builtin_unreachable();
+}
+
+static struct restart_handler restart_handler = {
+	.restart = watchdog_restart_handle,
+	.name = "watchdog-restart",
+};
+
 int watchdog_register(struct watchdog *wd)
 {
 	struct param_d *p;
@@ -247,6 +266,13 @@ int watchdog_register(struct watchdog *wd)
 		goto error_unregister;
 	}
 
+	if (IS_ENABLED(CONFIG_WATCHDOG_RESTART_FALLBACK) && !restart_handler.priority) {
+		restart_handler.priority = 10; /* don't override others */
+		ret = restart_handler_register(&restart_handler);
+		if (ret)
+			dev_warn(&wd->dev, "failed to register restart handler\n");
+	}
+
 	list_add_tail(&wd->list, &watchdog_list);
 
 	pr_debug("registering watchdog %s with priority %d\n", watchdog_name(wd),
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

