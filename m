Delivery-date: Thu, 21 Sep 2023 11:58:13 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qjGRq-005jxA-LL
	for lore@lore.pengutronix.de; Thu, 21 Sep 2023 11:58:13 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qjGRn-0003z7-NG
	for lore@pengutronix.de; Thu, 21 Sep 2023 11:58:13 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=CSKSPadUapv65yCx4hZC8qHBrRjIdAqKYg56sOXfndE=; b=roq1VucfdYaFgsBYYzLJywYlof
	zDJW3doHOiPMhg2q6+YvrAkE/0NwAmk3TESaAr3J2oAjfQo8ya36HtQleOEUo4NA5BvOz0zelhdT2
	Ba9mbCO6Mf+ehLABsl+0daJ2wC8SiCufMJKgl6bNY0jHzYZS8g6+H6E92giA3djhDeHeTyfClXSZI
	xD8dS21t6sAkbRROrkisB9ltkMBO1asTXDoHMX4n/QAu3Xj6CK9tGRTiBrFwkMxHcl6yEqZdi85wm
	nr7lMWc0vAKes5XgF2LzRPhcM7JI8xl2zqbWMqbQjxSq/QP9ZxbdXeONr6eHdG/q6D0Dy47v1+ghp
	2iKBOejg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qjGQp-005e0g-01;
	Thu, 21 Sep 2023 09:57:11 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qjGQm-005dzD-38
	for barebox@lists.infradead.org;
	Thu, 21 Sep 2023 09:57:10 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1qjGQa-0003ST-Rz; Thu, 21 Sep 2023 11:56:56 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1qjGQa-007tX4-Er; Thu, 21 Sep 2023 11:56:56 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <afa@pengutronix.de>)
	id 1qjGQa-001Ipv-1H;
	Thu, 21 Sep 2023 11:56:56 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: rcz@pengutronix.de,
	mfe@pengutronix.de,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 21 Sep 2023 11:56:48 +0200
Message-Id: <20230921095649.310666-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230921095649.310666-1-a.fatoum@pengutronix.de>
References: <20230921095649.310666-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230921_025709_011872_2630E005 
X-CRM114-Status: GOOD (  11.21  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 3/4] hab: habv4: align config/state at 64 byte boundary
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We do manual cache maintenance for &config and &state, because they are
passed as arguments to a secure monitor call. Before the SMC, they are
flushed and afterwards, they are invalidated, but still, we should keep
data we do manual cache maintenance for separate from usual local
variables. Do this by using the new __dma_aligned attribute.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/hab/habv4.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/hab/habv4.c b/drivers/hab/habv4.c
index 38f464fbf978..bbceb0e985b6 100644
--- a/drivers/hab/habv4.c
+++ b/drivers/hab/habv4.c
@@ -12,6 +12,7 @@
 #include <init.h>
 #include <types.h>
 #include <mmu.h>
+#include <dma.h>
 #include <zero_page.h>
 #include <linux/sizes.h>
 #include <linux/arm-smccc.h>
@@ -547,8 +548,8 @@ static int habv4_get_status(const struct habv4_rvt *rvt)
 	uint32_t len;
 	int i;
 	enum hab_status status;
-	enum hab_config config = 0x0;
-	enum habv4_state state = 0x0;
+	__dma_aligned enum hab_config config = 0x0;
+	__dma_aligned enum habv4_state state = 0x0;
 
 	if (rvt->header.tag != HAB_TAG_RVT) {
 		pr_err("ERROR - RVT not found!\n");
-- 
2.39.2



