Delivery-date: Wed, 18 Feb 2026 13:15:17 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vsgSa-0032li-1R
	for lore@lore.pengutronix.de;
	Wed, 18 Feb 2026 13:15:17 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vsgSa-0002RJ-Pe
	for lore@pengutronix.de; Wed, 18 Feb 2026 13:15:17 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:
	References:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:
	Subject:Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=d5OO7smckuzg8j5eKn0nLnSCepLN1ZIL6NHLMWOKmU4=; b=n+8s5FBlaQUgy805aH9yxjsJNK
	2Bucs3JReNFX7LXLxMBtxsx4N9sZHM0LPAlH9ecbpLlwKAjfZjO2spZZUjOVJ2Hx+D2Fe2kceJlGu
	50HK1K+ITeMVg/XBNWWYyo7uQuTI1jfv1YQJKe4UGL3dN9uCiSXhFZgDSozeOrlfEmfAyeT+mbo3a
	DyCAxEf1JIvp6vJ3rtiY57J2uWrJKq/tEALm/jXlKZSXNnjuwBGinCkc+Zse4HBC4kKe46UbbuK4s
	O6BG8epa+9TOQx9/5a6Q1s6ROyrfMb7hExMGEP2zx4XKjEpXlQpoN6i7No0Wd2hB1jhiWUiX4YFxe
	U88B+M6g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vsgRy-00000009l7s-13P3;
	Wed, 18 Feb 2026 12:14:38 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vsgRw-00000009l6u-0Ayu
	for barebox@lists.infradead.org;
	Wed, 18 Feb 2026 12:14:37 +0000
Received: from dude04.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::ac])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <jre@pengutronix.de>)
	id 1vsgRs-0002FH-Bz; Wed, 18 Feb 2026 13:14:32 +0100
From: Jonas Rebmann <jre@pengutronix.de>
Date: Wed, 18 Feb 2026 13:14:26 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260218-keytoc-multi-env-v2-2-3ea146c95d18@pengutronix.de>
References: <20260218-keytoc-multi-env-v2-0-3ea146c95d18@pengutronix.de>
In-Reply-To: <20260218-keytoc-multi-env-v2-0-3ea146c95d18@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.15-dev-7abec
X-Developer-Signature: v=1; a=openpgp-sha256; l=1401; i=jre@pengutronix.de;
 h=from:subject:message-id; bh=z4nhsDzlYxpO96Ico/NILpAWCjRGQhotUcF9GvcUwyk=;
 b=owGbwMvMwCV2ZcYT3onnbjcwnlZLYsiculZ9fcsy6X6OXXPXzJkaHlaU8mz1zzZ934S2ohCvz
 43PnX0NO0pZGMS4GGTFFFli1eQUhIz9r5tV2sXCzGFlAhnCwMUpABP5VsLIcPyf187ehB8T3W8G
 nAnY+Oe9Vk3LyQTrxMgr8p9TE086P2VkuPvPXt6D3+0oW7X8wR2eW6/e4D0sEmwTv+3r9dNbFV/
 MYAIA
X-Developer-Key: i=jre@pengutronix.de; a=openpgp;
 fpr=0B7B750D5D3CD21B3B130DE8B61515E135CD49B5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260218_041436_090492_4A7D0F60 
X-CRM114-Status: UNSURE (   7.74  )
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
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>, Jonas Rebmann <jre@pengutronix.de>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v2 2/2] Documentation: migration-guides: Document change in
 keyspec env vars
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Only users providing complete keyspecs containing backslashes or spaces
via an environment variable are affected by this change in the handling
of keytoc's command line arguments.

Signed-off-by: Jonas Rebmann <jre@pengutronix.de>
---
 Documentation/migration-guides/migration-master.rst | 17 +++++++++++++++++
 1 file changed, 17 insertions(+)

diff --git a/Documentation/migration-guides/migration-master.rst b/Documentation/migration-guides/migration-master.rst
index 28d418dee1..97e7b7173b 100644
--- a/Documentation/migration-guides/migration-master.rst
+++ b/Documentation/migration-guides/migration-master.rst
@@ -1,5 +1,22 @@
 :orphan:
 
+CONFIG_CRYPTO_PUBLIC_KEYS
+-------------------------
+
+The syntax of keytoc keyspecs when fully provided via an environment variable
+was slightly changed to allow any number of keyspecs to be provided via an
+environment variable. Such environment variables are now split at spaces to be
+interpreted as multiple keyspecs. Any literal spaces and backslashes contained
+in such keyspecs need to be escaped with a backslash.
+
+This only applies to the form:
+
+  CONFIG_CRYPTO_PUBLIC_KEYS="__ENV__A"
+
+While the interpretation of environment variables specifying hint or URI remains unchanged:
+
+  CONFIG_CRYPTO_PUBLIC_KEYS="keyring=kr:__ENV__B"
+
 ARM NXP i.MX8MP
 ---------------
 

-- 
2.51.2.535.g419c72cb8a



