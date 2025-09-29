Delivery-date: Mon, 29 Sep 2025 10:05:16 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v38sl-002Lb7-3B
	for lore@lore.pengutronix.de;
	Mon, 29 Sep 2025 10:05:16 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v38sk-0000hr-D0
	for lore@pengutronix.de; Mon, 29 Sep 2025 10:05:15 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=DkXjanFly1X3UQsLl+JsHg1fcJ/cAzgp3ty3SbSW6sc=; b=tgU2pFUoW02KV4goiB6FwixDAz
	TQ8gxYO5FQ9J7arZIJkrVPIR65k21Nnis/pkxkrVWme99Zu5KZPpoxekGNRYzL3fQ/pXOa1Olabfj
	nBplbnhzT+wUP1cGf9ntC+9C6yv8TSXSNS+ZzIbRRlJ6CJ2S5Bb5pLXvwoeYiTIupmKL0ssCm4GH6
	NrmEiDKosFooaxLQ5xeBUJvJKhJ9cNCoqDGzlbPnbZARWWvXJP8Cdpy1YC4OI9+OILZZY5tp2xLpb
	JlKMXH/3abVDIWaQ0pJOTFdLc9huURmQq+un8nE+cIXUQuVw+S1/SCDCR5b6AJ4ANB0N1dfAe5fgl
	Cdm9UQdQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v38sG-00000001iPs-3K7h;
	Mon, 29 Sep 2025 08:04:44 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v38s9-00000001iGv-1EZA
	for barebox@lists.infradead.org;
	Mon, 29 Sep 2025 08:04:40 +0000
Received: from dude04.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::ac])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <jre@pengutronix.de>)
	id 1v38s6-000070-FX; Mon, 29 Sep 2025 10:04:34 +0200
From: Jonas Rebmann <jre@pengutronix.de>
Date: Mon, 29 Sep 2025 10:03:59 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250929-tlv-integration-v2-8-55f75da7e670@pengutronix.de>
References: <20250929-tlv-integration-v2-0-55f75da7e670@pengutronix.de>
In-Reply-To: <20250929-tlv-integration-v2-0-55f75da7e670@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Tobias Waldekranz <tobias@waldekranz.com>, 
 Jonas Rebmann <jre@pengutronix.de>
X-Mailer: b4 0.15-dev-7abec
X-Developer-Signature: v=1; a=openpgp-sha256; l=1569; i=jre@pengutronix.de;
 h=from:subject:message-id; bh=1umKJo4viJCv+Hb7uteJ7B5M4hMP/QjVjoOHRSMJENI=;
 b=owGbwMvMwCV2ZcYT3onnbjcwnlZLYsi4ZTvxjUvQhchL1/csjleY/kp/uiPv7UNFv/TXCh3qL
 Z97c1OxcEcpC4MYF4OsmCJLrJqcgpCx/3WzSrtYmDmsTCBDGLg4BWAigTMY/geWarjvFr37Re9O
 yIPA9CUKZrcMftVd0nyScHX5dtP8s9KMDBPNrzkGL/wt1jfhzS6P5pC7qkEFywL27oj5VdGSUWH
 cxgcA
X-Developer-Key: i=jre@pengutronix.de; a=openpgp;
 fpr=0B7B750D5D3CD21B3B130DE8B61515E135CD49B5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250929_010437_357255_C1860C07 
X-CRM114-Status: UNSURE (   7.49  )
X-CRM114-Notice: Please train this message.
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
X-Spam-Status: No, score=-4.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 8/9] configs: enable tlv command for multi_v7 and
 multi_v8
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Required for TLV integration tests

Signed-off-by: Jonas Rebmann <jre@pengutronix.de>
---
 arch/arm/configs/multi_v7_defconfig | 2 ++
 arch/arm/configs/multi_v8_defconfig | 2 ++
 2 files changed, 4 insertions(+)

diff --git a/arch/arm/configs/multi_v7_defconfig b/arch/arm/configs/multi_v7_defconfig
index f198a1ddac..93f79c79d2 100644
--- a/arch/arm/configs/multi_v7_defconfig
+++ b/arch/arm/configs/multi_v7_defconfig
@@ -121,6 +121,7 @@ CONFIG_PARTITION_DISK_EFI=y
 # CONFIG_PARTITION_DISK_EFI_GPT_COMPARE is not set
 CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=y
 CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW_REBOOT_MODE=y
+CONFIG_TLV=y
 CONFIG_STATE=y
 CONFIG_BOOTCHOOSER=y
 CONFIG_RESET_SOURCE=y
@@ -203,6 +204,7 @@ CONFIG_CMD_OF_FIXUP_STATUS=y
 CONFIG_CMD_OF_OVERLAY=y
 CONFIG_CMD_OFTREE=y
 CONFIG_CMD_TIME=y
+CONFIG_CMD_TLV=y
 CONFIG_NET=y
 CONFIG_NET_NETCONSOLE=y
 CONFIG_NET_FASTBOOT=y
diff --git a/arch/arm/configs/multi_v8_defconfig b/arch/arm/configs/multi_v8_defconfig
index bd6fceb941..2cb0256f86 100644
--- a/arch/arm/configs/multi_v8_defconfig
+++ b/arch/arm/configs/multi_v8_defconfig
@@ -66,6 +66,7 @@ CONFIG_PBL_CONSOLE=y
 CONFIG_CONSOLE_RATP=y
 CONFIG_PARTITION_DISK_EFI=y
 CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=y
+CONFIG_TLV=y
 CONFIG_STATE=y
 CONFIG_BOOTCHOOSER=y
 CONFIG_RESET_SOURCE=y
@@ -147,6 +148,7 @@ CONFIG_CMD_OF_FIXUP_STATUS=y
 CONFIG_CMD_OF_OVERLAY=y
 CONFIG_CMD_OFTREE=y
 CONFIG_CMD_TIME=y
+CONFIG_CMD_TLV=y
 CONFIG_NET=y
 CONFIG_NET_NETCONSOLE=y
 CONFIG_NET_SNTP=y

-- 
2.51.0.297.gca2559c1d6



