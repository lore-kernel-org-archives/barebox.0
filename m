Delivery-date: Mon, 15 Dec 2025 09:51:18 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vV4IY-00BgQA-1o
	for lore@lore.pengutronix.de;
	Mon, 15 Dec 2025 09:51:18 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vV4IY-0003CH-0I
	for lore@pengutronix.de; Mon, 15 Dec 2025 09:51:18 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=Z1VEhFLZ4gZe9mhREwrirnAAcq1ATl9KEflJ84o/oLE=; b=Zio7nqvprGPZmisWIUckItmCUr
	LVZPkZLbN+9Yqqpye7wvSRwAWRAJea9aZ1Qbtbd4ATOkgEWAAZniWAIRHPiVdWwG48yEY1qROItkA
	Usmlb1zbNaiG5pSgl5zMtR+f/HoEKcNcoQ+33xhwWcTuR1NG+1yvqVM3ejkkFQSuBLsdx81svoFEo
	Qftt+bOF8m3zDfTWjtv90kmo+METRUgUXILmIu1KnmB+5h4SkEIMkKPVshIQ6zKLjIp4XTbjRk/1g
	u4PuOG7nneDJ8VkNzy4tTM8hiUSB2EBTljzgvjuh4r1l7Qas80SNkh+NOb+FSYSvTUHc3av5cItTv
	jrPrxAtQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vV4I0-00000003Ii2-2TXg;
	Mon, 15 Dec 2025 08:50:44 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vV4Hx-00000003IhB-1WRp
	for barebox@lists.infradead.org;
	Mon, 15 Dec 2025 08:50:42 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vV4Hv-00034n-Iu; Mon, 15 Dec 2025 09:50:39 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vV4Hv-005kc9-1I;
	Mon, 15 Dec 2025 09:50:39 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vV4Hv-0000000BTan-1HBR;
	Mon, 15 Dec 2025 09:50:39 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 15 Dec 2025 09:50:38 +0100
Message-ID: <20251215085038.2734779-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251215_005041_483998_7D069F2D 
X-CRM114-Status: UNSURE (   8.07  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] poweroff: make header self-contained
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Make LSP happy and allow including the file as first header by making it
self-contained.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/poweroff.h | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/include/poweroff.h b/include/poweroff.h
index df2d3125a98d..3e86003563a9 100644
--- a/include/poweroff.h
+++ b/include/poweroff.h
@@ -2,6 +2,9 @@
 #ifndef __INCLUDE_POWEROFF_H
 #define __INCLUDE_POWEROFF_H
 
+#include <linux/compiler.h>
+#include <linux/types.h>
+
 void __noreturn poweroff_machine(unsigned long poweroff_flags);
 
 struct poweroff_handler {
@@ -19,6 +22,7 @@ int poweroff_handler_register_fn(void (*poweroff_fn)(struct poweroff_handler *,
 #define POWEROFF_DEFAULT_PRIORITY 100
 #define POWEROFF_DEFAULT_NAME "default"
 
+struct device_node;
 unsigned int of_get_poweroff_priority(struct device_node *node);
 
 #endif /* __INCLUDE_POWEROFF_H */
-- 
2.47.3



