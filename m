Delivery-date: Fri, 11 Apr 2025 09:44:24 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u393o-00BA4M-0E
	for lore@lore.pengutronix.de;
	Fri, 11 Apr 2025 09:44:24 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u393m-00066x-02
	for lore@pengutronix.de; Fri, 11 Apr 2025 09:44:23 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=fJYxdEKWZ98+AZ5LdQJxsElz9Li82nCFVkgQ5c5YWes=; b=yktbvcEJ3mLdF8knwgEja2m4Yw
	KhNBCCzJFWxNM4zWp3UCoxoUncJhzEAxCqNxZyW0ZWwfltcnEQUTOPCVURdhZlrLP3d8Igq+uwyZf
	WVqnlpCdjnECbqS3xxhwOaVqfnJz+vKIMhoD3GPaxi5qz8W7u45unNxBYhrlfLNyYSoT1Plf4hAGE
	UI0MV4KLzPRPd1GC1Qvhs8W5w6hhlkx6iGcbBn0s24LOra8mwrgV9d0l22C/UkU/VGriLlGQSfQ4p
	qyucoORyf5ZYCq1RP+7N3agEmVycjaiN6UaWl9wQKhykD+ybI7VqESCll4BCMFfTvCwlKzGOJSywV
	+VxdrzVg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u393G-0000000Cv8k-4B9N;
	Fri, 11 Apr 2025 07:43:51 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u390U-0000000CuLb-04W0
	for barebox@bombadil.infradead.org;
	Fri, 11 Apr 2025 07:40:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=fJYxdEKWZ98+AZ5LdQJxsElz9Li82nCFVkgQ5c5YWes=; b=Rdii6inkXQpGt2jT8WsbfnmDQz
	unur/ooQs+MXufCgPR+w9RRt66++IKdSqjWtCyEEc5B/Z4KHYx0Vp7vV+sY99yT21hlu+BoVKJks/
	Jj+nwvzMRpTrisxifjg18rNQQRyuQ2WXP1k1lWBR0n6adhbnyaeROVGSDBjCziSm0RldHpAhJTsSb
	XGzjCN/ve9lGKY8K9RetNopoiatNclVIhSAb0U3prYdZaXNLrwYNUJzwNx/7bFXZpTpf9NjTBjEvB
	GPWJufZ5yFbbX6ADINMtTHrH5+2eHluomuwSTDMSJQcmh+2Ky4nkxBVWPJUgVi++YnkQky9ydVBxW
	5JG5ODEA==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u390R-00000008y3C-1HR9
	for barebox@lists.infradead.org;
	Fri, 11 Apr 2025 07:40:57 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u390I-0004uV-RD; Fri, 11 Apr 2025 09:40:46 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u390I-004OjI-23;
	Fri, 11 Apr 2025 09:40:46 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u390I-008WBo-1k;
	Fri, 11 Apr 2025 09:40:46 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 11 Apr 2025 09:40:38 +0200
Message-Id: <20250411074045.2019372-4-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250411074045.2019372-1-a.fatoum@pengutronix.de>
References: <20250411074045.2019372-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250411_084055_504586_7FCD094F 
X-CRM114-Status: GOOD (  12.10  )
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
X-Spam-Status: No, score=-5.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 03/10] common: add optional systemd.hostname generation
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
index 1e04d0403ad0..2d2be0f7c4f6 100644
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
index 5370e1485bc6..a26ea82684a6 100644
--- a/common/bootm.c
+++ b/common/bootm.c
@@ -864,6 +864,7 @@ int bootm_boot(struct bootm_data *bootm_data)
 
 	if (bootm_data->provide_hostname) {
 		const char *hostname = getenv_nonempty("global.hostname");
+		const char *suffix = NULL;
 		char *hostname_bootarg;
 
 		if (!hostname) {
@@ -878,7 +879,13 @@ int bootm_boot(struct bootm_data *bootm_data)
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



