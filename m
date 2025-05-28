Delivery-date: Wed, 28 May 2025 16:35:58 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uKHss-001DcP-0z
	for lore@lore.pengutronix.de;
	Wed, 28 May 2025 16:35:58 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uKHsr-0001uN-5z
	for lore@pengutronix.de; Wed, 28 May 2025 16:35:58 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=0BYuL7cbuoSn4DOol6QL5rb2SrkeYBsXrllbacOIr3w=; b=Ev9+zBXaETnRIiOQlQFGvX6q2O
	yDHb1EJC7c4NxQzQasWtFbEOSqNvCU8gK+kNua/WHqbbHTtcYOp/XSI/lC20+xy1QJBZg/WMLC5/D
	2yL6dp29pwu7v46mb9LG9fYgyYYwZoTOcj/bQtbzGoYxHy9k8nDXxm/iv4kg4IZOM9EvjaZ9izpPn
	XtjseVlvd+JpbWh2wpy1xY+zu2TBeT4/7dTNzF88ZLQL/dMvDDQ6AZCv8vvaLMnw3aosy7qizNhlS
	25Ex8CI+S6G38Q7Py0kg50odOYCYXTznkPXAXcKlDVCKqGUFn+AIgwV45YL5aHPPwIL6u7mGI7mrz
	cKI4zmyQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uKHsL-0000000DQCX-2XNW;
	Wed, 28 May 2025 14:35:25 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uKHns-0000000DPDa-0WNh
	for barebox@lists.infradead.org;
	Wed, 28 May 2025 14:30:50 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uKHnp-0006Ez-EM; Wed, 28 May 2025 16:30:45 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uKHnp-000bXj-0m;
	Wed, 28 May 2025 16:30:45 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uKHnp-001qOC-0U;
	Wed, 28 May 2025 16:30:45 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 28 May 2025 16:30:36 +0200
Message-Id: <20250528143043.434446-4-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250528143043.434446-1-a.fatoum@pengutronix.de>
References: <20250528143043.434446-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250528_073048_170328_6E270684 
X-CRM114-Status: GOOD (  12.35  )
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
X-Spam-Status: No, score=-6.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 03/10] common: add optional systemd.hostname generation
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

To maintain unique hostnames, having barebox fix up its own hostname
appended by "-${global.serial_number} is a sane default. Add a Kconfig
option to enable this.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/Kconfig | 10 ++++++++++
 common/bootm.c |  9 ++++++++-
 2 files changed, 18 insertions(+), 1 deletion(-)

diff --git a/common/Kconfig b/common/Kconfig
index fe50da8f3084..7bb1e1d452da 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -1254,6 +1254,16 @@ config MACHINE_ID
 	  Note: if no hashable information is available no machine id will be passed
 	  to the kernel.
 
+config SERIAL_NUMBER_FIXUP_SYSTEMD_HOSTNAME
+	bool "append board serial number to systemd.hostname= fixup"
+	depends on FLEXIBLE_BOOTARGS
+	help
+	  When a systemd.hostname= kernel command line argument is
+	  fixed up, append a `-${global.serial_number}' suffix.
+
+	  This option without effect if global.bootm.provide_hostname
+	  is unset.
+
 config SYSTEMD_OF_WATCHDOG
 	bool "inform devicetree-enabled kernel of used watchdog"
 	depends on WATCHDOG && OFTREE && FLEXIBLE_BOOTARGS
diff --git a/common/bootm.c b/common/bootm.c
index 4c5913ffb95c..5c19e633972f 100644
--- a/common/bootm.c
+++ b/common/bootm.c
@@ -862,6 +862,7 @@ int bootm_boot(struct bootm_data *bootm_data)
 
 	if (bootm_data->provide_hostname) {
 		const char *hostname = getenv_nonempty("global.hostname");
+		const char *suffix = NULL;
 		char *hostname_bootarg;
 
 		if (!hostname) {
@@ -876,7 +877,13 @@ int bootm_boot(struct bootm_data *bootm_data)
 			goto err_out;
 		}
 
-		hostname_bootarg = basprintf("systemd.hostname=%s", hostname);
+		if (IS_ENABLED(CONFIG_SERIAL_NUMBER_FIXUP_SYSTEMD_HOSTNAME))
+			suffix = barebox_get_serial_number();
+
+		hostname_bootarg = basprintf("systemd.hostname=%s%s%s",
+					     hostname, suffix ? "-" : "",
+					     suffix ?: "");
+
 		globalvar_add_simple("linux.bootargs.hostname", hostname_bootarg);
 		free(hostname_bootarg);
 	}
-- 
2.39.5



