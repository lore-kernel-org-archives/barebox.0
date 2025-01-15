Delivery-date: Wed, 15 Jan 2025 19:21:08 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tY80n-000ISE-1e
	for lore@lore.pengutronix.de;
	Wed, 15 Jan 2025 19:21:08 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tY80n-0003M8-Lo
	for lore@pengutronix.de; Wed, 15 Jan 2025 19:21:06 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=fkhYw1Hm6V3UXwEZpEch0Z7YIu2ZMfjvlY1HJkRYWdI=; b=2qpJIvYivbGzI6jySAceageQ19
	ufnBXZQizgmcmJEX7XeDS+2sljZ5/k6kzcfK1VET9KtgVUHu33rTknhaHWfewXsVtHhmvaLGil8tz
	mtD0IOp3Iizcmda9YWa09s0PkvcoLrok7x8lDz7QdiegZsFUkGvYJci5ITMjsuoWbOd69+AI+NqMM
	RMfeOTpB5lcWDtllCb/e2K75Z3/R3A/vRr93yTYgGIvIhryMO7lyWh/EEulgn/PL+UGB2hDyZLQAg
	GVKoL8O+bTHDchK6RscXd8r9/cxCFRyqx+Z4VgbAbrME+JOOBDYWS6fWGBkXOC3ExOuYMIjaLaOoT
	/gE5c/ZQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tY804-0000000Ck24-2moT;
	Wed, 15 Jan 2025 18:20:20 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tY801-0000000Ck1Q-3AZ2
	for barebox@lists.infradead.org;
	Wed, 15 Jan 2025 18:20:18 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <uol@pengutronix.de>)
	id 1tY7zz-0003HZ-5u; Wed, 15 Jan 2025 19:20:15 +0100
Received: from dude03.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::39])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <uol@pengutronix.de>)
	id 1tY7zy-0007kt-3C;
	Wed, 15 Jan 2025 19:20:15 +0100
Received: from uol by dude03.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <uol@pengutronix.de>)
	id 1tY7zy-00FNnN-2i;
	Wed, 15 Jan 2025 19:20:14 +0100
From: =?UTF-8?q?Ulrich=20=C3=96lmann?= <u.oelmann@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Wed, 15 Jan 2025 19:20:12 +0100
Message-Id: <20250115182012.3666379-1-u.oelmann@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250115_102017_798260_854C4598 
X-CRM114-Status: UNSURE (   9.59  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] bootm: add missing spaces in error messages
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Signed-off-by: Ulrich Ölmann <u.oelmann@pengutronix.de>
---
 common/bootm.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/common/bootm.c b/common/bootm.c
index bc917081d7d1..2c7d3691407b 100644
--- a/common/bootm.c
+++ b/common/bootm.c
@@ -275,7 +275,7 @@ int bootm_load_initrd(struct image_data *data, unsigned long load_address)
 				initrd_size);
 		if (!data->initrd_res) {
 			pr_err("unable to request SDRAM region for initrd at"
-					"0x%08llx-0x%08llx\n",
+					" 0x%08llx-0x%08llx\n",
 				(unsigned long long)load_address,
 				(unsigned long long)load_address + initrd_size - 1);
 			return -ENOMEM;
@@ -494,7 +494,7 @@ int bootm_load_devicetree(struct image_data *data, void *fdt,
 			fdt_size);
 	if (!data->oftree_res) {
 		pr_err("unable to request SDRAM region for device tree at"
-				"0x%08llx-0x%08llx\n",
+				" 0x%08llx-0x%08llx\n",
 			(unsigned long long)load_address,
 			(unsigned long long)load_address + fdt_size - 1);
 		return -ENOMEM;
-- 
2.39.5



