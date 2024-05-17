Delivery-date: Fri, 17 May 2024 09:49:02 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s7sKs-0014Db-2z
	for lore@lore.pengutronix.de;
	Fri, 17 May 2024 09:49:02 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s7sKs-0007tT-B2
	for lore@pengutronix.de; Fri, 17 May 2024 09:49:02 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=sN3DlS0mwn6Q1sNrwD82llkCL/b98VDy7B5DmmJeTlw=; b=h3awvdBh/bkiN5fjNrsxi7V4cu
	cWbW4/t4tKvLuVkbQWBH9MYaPndhk2c/g2diOeLPYUw4ofT6QEBdpnWoF7J9hFYiTNoQnV1PhqkqD
	IwWq+dp7Oi7F6vOgyf/TMCRtZZyaeCu2ragTd0xZzY459CHsBpuxx/85thAYofV3JcltZ+FRgnzXz
	NcsrI8y4zUwiTmUn6N8ZtvmunYjPoet8f94k0g59wk4mJwOMDMf4r0ckzuqHKAh19D4JM9gFyZKK3
	Hbs+kedZ6DryOPvcDKGIzizyy+aXMmVE/G7N7upRqxpIEZ034R+TT35RQgAnb69p+XRmsECTfoIzT
	vO79Io8A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s7sKT-000000076pW-3PiS;
	Fri, 17 May 2024 07:48:37 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s7sKJ-000000076ha-1JzV
	for barebox@lists.infradead.org;
	Fri, 17 May 2024 07:48:29 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1s7sKH-0007P0-DW; Fri, 17 May 2024 09:48:25 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1s7sKH-001q0U-0o; Fri, 17 May 2024 09:48:25 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1s7sKG-003DkZ-32;
	Fri, 17 May 2024 09:48:24 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 17 May 2024 09:48:19 +0200
Message-Id: <20240517074824.767767-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240517074824.767767-1-a.fatoum@pengutronix.de>
References: <20240517074824.767767-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240517_004827_519767_0BFC9FB7 
X-CRM114-Status: UNSURE (   8.22  )
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
X-Spam-Status: No, score=-5.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/7] of: overlay: do not leak fixed up path
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

new_path is freshly allocated in every iteration and then leaked
after of_property_write_string() takes a copy from it.

Fix the leak by freeing it before it goes out of scope.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/of/overlay.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/of/overlay.c b/drivers/of/overlay.c
index 91b88c3f1b57..867a7a369739 100644
--- a/drivers/of/overlay.c
+++ b/drivers/of/overlay.c
@@ -151,6 +151,7 @@ static int of_overlay_apply_symbols(struct device_node *root,
 		pr_debug("add symbol %s with new path %s\n",
 			 prop->name, new_path);
 		of_property_write_string(root_symbols, prop->name, new_path);
+		free(new_path);
 	}
 
 	return 0;
-- 
2.39.2



