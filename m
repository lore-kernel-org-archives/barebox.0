Delivery-date: Thu, 09 Nov 2023 13:12:13 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r13tM-004A6f-2Z
	for lore@lore.pengutronix.de;
	Thu, 09 Nov 2023 13:12:13 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r13tM-0008Sp-Sz
	for lore@pengutronix.de; Thu, 09 Nov 2023 13:12:13 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=ztehiLWspgb9XeQqTMCK9sLn5WeXJRIWhStuRHlr54Q=; b=ue6iyO1zpfMvhQ25aHV3Db41ic
	6IT0GJ1oCLuuoBafOuSNrjYborvvSeKVv0H+/y8H19yuddknS5zA0comewJQQDHIxk/Iod4j2p+r6
	lYc9Lrp/D2LwJnBR5wgcfY+fcdMBEngEb826Ev8Mt0cJtETeCiQg3bpQ2wZYjjdedGQobSkEnTaK/
	U7TBLfpVYtavsEEAicujQwUXdzqrAX/ifJ8HOaFK2ypCe4ECi7jx2pAGlRIqypd3w/MRbc21h+DTw
	EpVgyzik4Tqog4SVgToY6o07nXhwdQoAgzFmqSZXrCUMmySVYO+DY2Nd2/ZayXZD0kp1BLL0Mznju
	PFgi6r8w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r13sP-006IBi-2n;
	Thu, 09 Nov 2023 12:11:13 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r13sM-006IBG-2e
	for barebox@lists.infradead.org;
	Thu, 09 Nov 2023 12:11:11 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r13sL-0008Db-LC; Thu, 09 Nov 2023 13:11:09 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r13sL-007m6w-8T; Thu, 09 Nov 2023 13:11:09 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r13sL-006Bu9-0X;
	Thu, 09 Nov 2023 13:11:09 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu,  9 Nov 2023 13:11:08 +0100
Message-Id: <20231109121108.1475657-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231109_041110_862793_8F19F8BC 
X-CRM114-Status: UNSURE (   9.00  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] include: pm_domain.h: make header self-contained
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

pm_domain.h so far included no headers and only worked, because it was
included in a "correct" order in other files. Fix this by including the
header it depends on.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/pm_domain.h | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/include/pm_domain.h b/include/pm_domain.h
index a7e46c86b9cb..ac0ec477b6b1 100644
--- a/include/pm_domain.h
+++ b/include/pm_domain.h
@@ -3,6 +3,9 @@
 #ifndef _PM_DOMAIN_H
 #define _PM_DOMAIN_H
 
+#include <linux/list.h>
+#include <of.h>
+
 enum gpd_status {
 	GPD_STATE_ACTIVE = 0,	/* PM domain is active */
 	GPD_STATE_POWER_OFF,	/* PM domain is off */
-- 
2.39.2



