Delivery-date: Tue, 16 Dec 2025 11:25:02 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vVSEo-00C4if-0z
	for lore@lore.pengutronix.de;
	Tue, 16 Dec 2025 11:25:02 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vVSEn-0004pv-Od
	for lore@pengutronix.de; Tue, 16 Dec 2025 11:25:02 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:Message-Id:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=ez4EZRzMFI+5qQ3WJYiKFL+E0Mal12ftNIlvO0Gt/TA=; b=vu7hkxPHKXvOhtLpOUMFMYRmYc
	dBwy8yPA8E4QAY5zQc7YMFB2PqlZbvStKSGkGklZNUUxy9IsoDSIPZg9iSaZJPYmpN2xPe7kAouAJ
	yn6gpR9qOdiZGj53/uxiKpUnsI09EdT0MdeUrld7TRCAvvZRVlFk17MaXOrU1LWIKizqEvHcpSslD
	PAiqxk0oewfpUGx0eHGeSdbanHXNfXc/kYBqf+hOQOAEpfV8ZVKxliIdvHGE0zHJZnqGCfnNQw3f7
	OXNQEyxzEsvhQ77Yka6CVaH5W9oXo7WTarpqDWOOTwB/YiQLHulLkQdQN8NiHl4zdnyTaqQiUlkDN
	dyhzvX3g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vVSE6-0000000521V-01l7;
	Tue, 16 Dec 2025 10:24:18 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vVSE4-00000005219-11lH
	for barebox@lists.infradead.org;
	Tue, 16 Dec 2025 10:24:17 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 031B940A22;
	Tue, 16 Dec 2025 10:24:15 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D80F2C4CEF1;
	Tue, 16 Dec 2025 10:24:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765880654;
	bh=vxQ7zKOX5ASH5U0Ht9TV1USBcFZW1mIrhyZfip5JhAo=;
	h=From:Date:Subject:To:Cc:Reply-To:From;
	b=k4iOBWHdFseFl43NShWdvBmzZjYm+oLYTC6odeT097MXzi6meUxonDGKA/dGU55zj
	 3ViMOQTnnx6KaAmyg2Z/8F1DwEcUrBxa8Wf781DjmJFK3ds74DiTbyMrws05OIgFFM
	 tSljVWZKq1zA929erCOMQIl7RaDyE6SjUuRyU2wBiTIG2Q2GgcEsZTHhaBShfMl2C3
	 WUhjeitKwEnv2sAAkoYG7MI862VLCH3O/K/hl245zn+suxUTutQVm+yldXRLueZoUM
	 ruxSYAIZOjX8KE0oUQi+3zg9hUU0bcCleFxV1N5/qqXolkx66ssZONVLTPSS/NDuDI
	 aGzxcmuVGVn5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CE1F3D5CCA8;
	Tue, 16 Dec 2025 10:24:14 +0000 (UTC)
From: Maud Spierings via B4 Relay <devnull+maudspierings.gocontroll.com@kernel.org>
Date: Tue, 16 Dec 2025 11:24:11 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251216-genpd_fix-v1-1-b4ca268d3b31@gocontroll.com>
X-B4-Tracking: v=1; b=H4sIAEozQWkC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDI1NDI0Mz3fTUvIKU+LTMCl2DNMPUFPMUi+SkJCMloPqColSgMNis6NjaWgB
 HqCQ9WwAAAA==
X-Change-ID: 20251216-genpd_fix-0f1ed7d8cbb2
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Maud Spierings <maudspierings@gocontroll.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1765880654; l=1145;
 i=maudspierings@gocontroll.com; s=20250214; h=from:subject:message-id;
 bh=tneaB0lP0sY2e7FnhYQtjMqwPpBtlkHTVuC1952xZu0=;
 b=bmwIfDYw7JrnGxba3qJ0nKLcj0IjvXzg/H0KGlSMXdlaETiNW1x1Mwpego20zPKEIQhOBx4c/
 TiePAGCJmZTC58PegjaGdL7lyiRjpncn0DhyM70CHuQHhVXO1L2cCqN
X-Developer-Key: i=maudspierings@gocontroll.com; a=ed25519;
 pk=7chUb8XpaTQDvWhzTdHC0YPMkTDloELEC7q94tOUyPg=
X-Endpoint-Received: by B4 Relay for maudspierings@gocontroll.com/20250214
 with auth_id=341
X-Original-From: Maud Spierings <maudspierings@gocontroll.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251216_022416_315637_61A0B005 
X-CRM114-Status: GOOD (  10.12  )
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
Reply-To: maudspierings@gocontroll.com
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-103.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE,USER_IN_WELCOMELIST,
	USER_IN_WHITELIST autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] pmdomain: fix collision in names when registering
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Maud Spierings <maudspierings@gocontroll.com>

After adding the imx8m-blk-ctrl driver errors started appearing about
the genpd device already being registered.

incorperate some extra device details in the device name so this
possible collision goes away.

Signed-off-by: Maud Spierings <maudspierings@gocontroll.com>
---
It wasn't just errors, it started crashing but that is a seperate issue.
It at least loads normally with this change
---
 drivers/base/power.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/base/power.c b/drivers/base/power.c
index c71389422a..af06f984c0 100644
--- a/drivers/base/power.c
+++ b/drivers/base/power.c
@@ -506,7 +506,7 @@ struct device *genpd_dev_pm_attach_by_id(struct device *dev,
 	if (!virt_dev)
 		return ERR_PTR(-ENOMEM);
 
-	dev_set_name(virt_dev, "genpd");
+	dev_set_name(virt_dev, "genpd:%u:%s", index, dev_name(dev));
 	virt_dev->bus = &genpd_bus_type;
 	virt_dev->parent = dev;
 	virt_dev->of_node = dev->of_node;

---
base-commit: 63898c48611dfe51409ff1f4e1c30de4b2737c48
change-id: 20251216-genpd_fix-0f1ed7d8cbb2

Best regards,
-- 
Maud Spierings <maudspierings@gocontroll.com>




