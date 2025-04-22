Delivery-date: Tue, 22 Apr 2025 10:38:33 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u799F-003yW2-1z
	for lore@lore.pengutronix.de;
	Tue, 22 Apr 2025 10:38:33 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u799B-0001V9-7e
	for lore@pengutronix.de; Tue, 22 Apr 2025 10:38:33 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=DCzRt6aXapMZeP8HU8PwXX4I3qcsMllzZZ4WBLWar7w=; b=ZoiuFKIeCIpXn0cy8Q2ZELe9E6
	lHfJ25/VRitnk0qPlWyYOYPcJqiGM/QdIe7uWBLigxXB5tjm2LVtmrWipc5wjgYY2w1CBlOOdRgkY
	64eKSMeLSK9AhsfkIs/Q605YosSXavQWgo33jMuiRPGqH4qzEwUo04JytRVeeY3zdo94/zRJeMmaA
	Wult6KS7/5CiFC5e43b7uv1QL6r8Z/GLss6AgMxAER7JlvlNxgvIRBsYiJwENrugAUmdXP2rhuxyC
	aU8Z/OwN3hyFOA17Xc8QQSYQJNzN2kurC0IpCN1ZiP9D/3rcv/3D1NzHLkB00d82rv2t9bzxCeb8e
	NgKdnJdg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u798g-00000006M9K-0gJD;
	Tue, 22 Apr 2025 08:37:58 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u78Td-00000006C6D-1E3q
	for barebox@lists.infradead.org;
	Tue, 22 Apr 2025 07:55:34 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u78Tc-0000Wl-6f
	for barebox@lists.infradead.org; Tue, 22 Apr 2025 09:55:32 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u78Tc-001VvR-01
	for barebox@lists.infradead.org;
	Tue, 22 Apr 2025 09:55:32 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u78Tb-000v3v-2x
	for barebox@lists.infradead.org;
	Tue, 22 Apr 2025 09:55:31 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Tue, 22 Apr 2025 09:55:31 +0200
Message-Id: <20250422075531.219284-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250422075531.219284-1-a.fatoum@pengutronix.de>
References: <20250422075531.219284-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250422_005533_330770_83924F98 
X-CRM114-Status: UNSURE (   7.52  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/2] dma: make header self-contained
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Ahmad Fatoum <a.fatoum@barebox.org>

There are barebox-specific types used in the file, which are defined
outside. Fix this.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 include/dma-devices.h | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/include/dma-devices.h b/include/dma-devices.h
index dbc6759496e5..bbb25770f86b 100644
--- a/include/dma-devices.h
+++ b/include/dma-devices.h
@@ -2,6 +2,8 @@
 #ifndef __DMA_DEVICES_H
 #define __DMA_DEVICES_H
 
+#include <linux/types.h>
+
 /**
  * enum dma_transfer_direction - dma transfer mode and direction indicator
  * @DMA_MEM_TO_MEM: Async/Memcpy mode
-- 
2.39.5



