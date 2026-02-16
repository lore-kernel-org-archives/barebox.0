Delivery-date: Mon, 16 Feb 2026 09:42:26 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vruBV-002G1u-0q
	for lore@lore.pengutronix.de;
	Mon, 16 Feb 2026 09:42:26 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vruBV-0000sN-Ha
	for lore@pengutronix.de; Mon, 16 Feb 2026 09:42:26 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=I96pJf3i8NnjAXN7nPJMNY3osYFRWGcMpF6BRGuRC7M=; b=FSIFu7SWszjzr6ckWBghuLLed5
	ilfoeTK3UYtWGwJYZKDj6IdQghx8thl5bBYb7Ug6A9Cp3nQ0sjgwxxBQIIux6eVD8gYUm52jh8G/P
	PMok4pMdzKRYizxKHaWZqKbkgDdFRIeBD4bUWRJTdARamwqsZHYKsYi4CFm3HXARHcF9TcLpnu6yd
	000a3kxGgbpR8WyyoVfyhME6g604ndceQTMJvcIJRv3F18YtqpNTVRsqBP4w5qNW8WlPc2ja6Us/K
	KiKIoFW/BgEhfVZT2bReZkLHSdqqb4ACGgiM4pCHCKFzoZnQTyn7NHFKdhCOoOPtucRMvXV+64sPZ
	4m25Ilog==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vruB8-00000006AWJ-2Oq3;
	Mon, 16 Feb 2026 08:42:02 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vruAr-00000006APP-0eTN
	for barebox@lists.infradead.org;
	Mon, 16 Feb 2026 08:41:59 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vruAp-0000dt-H5; Mon, 16 Feb 2026 09:41:43 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vruAn-0012Ba-35;
	Mon, 16 Feb 2026 09:41:43 +0100
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vruAp-0000000EsaY-0sgT;
	Mon, 16 Feb 2026 09:41:43 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>,
	"Claude Opus 4.6" <noreply@anthropic.com>
Date: Mon, 16 Feb 2026 09:41:39 +0100
Message-ID: <20260216084142.3546363-4-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260216084142.3546363-1-a.fatoum@pengutronix.de>
References: <20260216084142.3546363-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260216_004157_861146_A620C103 
X-CRM114-Status: GOOD (  10.48  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH master 4/4] of: overlay: initialize ret to fix garbage return value
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

If the FIT image has no valid overlay configuration nodes, the
for_each_child_of_node loop never executes and ret is returned
uninitialized. Initialize it to 0 since having no overlay
configurations to apply is not an error.

Reported-by: GCC 14.2 -fanalyzer
Co-Authored-By: Claude Opus 4.6 <noreply@anthropic.com>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/of/overlay.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/of/overlay.c b/drivers/of/overlay.c
index d2cf2fa3f371..f0c3c783dd58 100644
--- a/drivers/of/overlay.c
+++ b/drivers/of/overlay.c
@@ -537,7 +537,7 @@ static int of_overlay_global_fixup_fit(struct device_node *root,
 	enum bootm_verify verify = bootm_get_verify_mode();
 	struct device_node *conf_node;
 	struct fit_handle *fit;
-	int ret;
+	int ret = 0;
 
 	if (!IS_ENABLED(CONFIG_FITIMAGE)) {
 		pr_err("FIT based overlay handling requested while CONFIG_FITIMAGE=n\n");
-- 
2.47.3



