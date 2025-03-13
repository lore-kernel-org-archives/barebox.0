Delivery-date: Thu, 13 Mar 2025 11:18:18 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tsfdq-00DWex-2M
	for lore@lore.pengutronix.de;
	Thu, 13 Mar 2025 11:18:18 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tsfdp-0006oC-FQ
	for lore@pengutronix.de; Thu, 13 Mar 2025 11:18:18 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=/R7rNQyppcjgmtaBrBn/m41yYDvfwTGPLrekUqs2ECQ=; b=C1q823j+VegBioXbHCC1rS3G7s
	hKe/CD+c4IErKvf17Lzy7q0vIhknQfPXL3BsLDKTbKpj3bLZaREmE7DAdCN6DA6q/admrRx06mcKr
	8GctwsnneS8tGPx+WfGqHZSliGue9M4X3gAUrKH4/8iY3s3B6/DZwhMW9PBZuovqBEZR5DundKZz3
	igmwTsawcAyXZOELmpV7oKIa0dthfVRCv57lHpdP8K8B7w8/aCN3oYyYRkwntwCSJmBkOUZesC4YX
	qk1SGRZXavmeWQsDtM0tk8i7ZYZzzMHTcF7xAZIOk3NetQlAPSbuM8uJcJj04Pw94Vf4WxVD+PwFQ
	7v1RWLRw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tsfdC-0000000Apng-3cvo;
	Thu, 13 Mar 2025 10:17:38 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tsfd9-0000000AplK-0k7i
	for barebox@lists.infradead.org;
	Thu, 13 Mar 2025 10:17:36 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tsfd5-0006G4-2p; Thu, 13 Mar 2025 11:17:31 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tsfd4-005WBk-0Y;
	Thu, 13 Mar 2025 11:17:30 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tsfd4-00Gch5-0C;
	Thu, 13 Mar 2025 11:17:30 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Adrian Negreanu <adrian.negreanu@nxp.com>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 13 Mar 2025 11:17:23 +0100
Message-Id: <20250313101728.3546902-7-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250313101728.3546902-1-a.fatoum@pengutronix.de>
References: <20250313101728.3546902-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250313_031735_222549_A8F5C405 
X-CRM114-Status: UNSURE (   8.84  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 06/11] firmware: qemu_fw_cfg: register at device initcall level
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Registration at postmmu_initcall is too early for automounts to be
created.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/firmware/qemu_fw_cfg.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/firmware/qemu_fw_cfg.c b/drivers/firmware/qemu_fw_cfg.c
index 8928cc5bf2aa..ab34f999ceaa 100644
--- a/drivers/firmware/qemu_fw_cfg.c
+++ b/drivers/firmware/qemu_fw_cfg.c
@@ -313,4 +313,4 @@ static int qemu_fw_cfg_init(void)
 
 	return of_devices_ensure_probed_by_dev_id(qemu_fw_cfg_of_match);
 }
-postmmu_initcall(qemu_fw_cfg_init);
+device_initcall(qemu_fw_cfg_init);
-- 
2.39.5



