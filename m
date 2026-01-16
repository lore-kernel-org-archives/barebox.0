Delivery-date: Fri, 16 Jan 2026 18:16:22 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vgnQt-0022JH-0m
	for lore@lore.pengutronix.de;
	Fri, 16 Jan 2026 18:16:22 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vgnQs-0008Qs-8B
	for lore@pengutronix.de; Fri, 16 Jan 2026 18:16:22 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:Message-ID:Date:Subject:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=HnN5coeIlquagwJgLmXKJ6SF58SCUz+pp20MXB8yyXk=; b=kSydg7RpqiWRBj
	GGIIWMogs/+M/xqWvxfEnAYHQiQzlZSw3ZN2laSIW5YU+n2b4qJdRVdcNKHLwKPdkQicx8QJE6ra3
	QIRwVP5z7dnEfdtwlA72krxk1qI3in/+k+43OHhhQlVtjomx6zn2zElSmBkddfC7SZzjVlmTtTJ8b
	OgrC71qA/Ccvwp73mcqcIlYrQXMjBJ2zvNYHju9skqIhNLbntOJI83Tnhzajjxbh/ofOnYIhGT6HO
	mPOSKdukir61THq2n6a+LpZmQe15Za5KcVCwBZgDEOCYcmobmHrABpR3v3jaCSBU10FfEXXiQ0cU8
	+vKyq9g4RAUm33570MZg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vgnQG-0000000EYjQ-1ejQ;
	Fri, 16 Jan 2026 17:15:44 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vgnQC-0000000EYiG-0IaQ
	for barebox@lists.infradead.org;
	Fri, 16 Jan 2026 17:15:42 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vgnQ6-0008Hh-I1; Fri, 16 Jan 2026 18:15:34 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vgnQ7-000xQp-07;
	Fri, 16 Jan 2026 18:15:34 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vgnQ6-0000000AM7C-40hj;
	Fri, 16 Jan 2026 18:15:34 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Fri, 16 Jan 2026 18:15:13 +0100
Message-ID: <20260116171530.2467685-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260116_091540_110521_8D7E449B 
X-CRM114-Status: UNSURE (   8.57  )
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
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
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
Subject: [PATCH 1/2] boards: qemu-virt: drop unused __dtb_fitimage_pubkey_start
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Commit f018a6e4606e ("boards: qemu-virt: drop fitimage-pubkey.dts") has
removed the reference to this symbol, so remove the unused/unusable
left-over declaration as well.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/boards/qemu-virt/board.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/common/boards/qemu-virt/board.c b/common/boards/qemu-virt/board.c
index 0c9cc1a75d3b..1e3b647f11e5 100644
--- a/common/boards/qemu-virt/board.c
+++ b/common/boards/qemu-virt/board.c
@@ -38,7 +38,6 @@ static inline void arm_virt_init(void) {}
 #endif
 
 extern char __dtbo_qemu_virt_flash_start[];
-extern char __dtb_fitimage_pubkey_start[];
 
 static const struct of_device_id virt_of_match[] = {
 	{ .compatible = "linux,dummy-virt", .data = arm_virt_init },
-- 
2.47.3



