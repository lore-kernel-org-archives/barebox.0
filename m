Delivery-date: Tue, 23 May 2023 11:42:10 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q1OWx-00Acl2-TU
	for lore@lore.pengutronix.de; Tue, 23 May 2023 11:42:10 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q1OWv-0007Ss-G0
	for lore@pengutronix.de; Tue, 23 May 2023 11:42:09 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Yxek/ECbm2SWxVTM4qPFSZnlxIxMuFdanlvaE/ub1ds=; b=36Tfppe7WBKGfRj8qLa/jF0Enf
	8d4WoxKdLgD2RDYehK5U/RblNDIirDg5CioZDFlBPOCu2XYVwq7fu396tDEqBMha93PgyKiQxXMWS
	9syaPECdUY3zpcTscIO+5eHVfnQoLRP53SjAkKHyez/c6W5qxJOVk45z60fE5O2TNCcesCanm93sY
	8f13UpIuCAOPObpsFP2mC7qKe0WKpC8MMSoBUh7TmvKQVg2bslW59IiSCQ8Ac13r277pDzxH8EGd5
	HF0+XJx83JY1lmi8zP0WuIzq3tfrGb670UdgQ99YC/TDHsYdbgfS/lyrbA82Y7c7HNGp9a7+TMOKI
	TI2jf75Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q1OVb-009dyj-1e;
	Tue, 23 May 2023 09:40:47 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q1OVW-009dwN-2D
	for barebox@lists.infradead.org;
	Tue, 23 May 2023 09:40:44 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1q1OVT-0007FB-1k; Tue, 23 May 2023 11:40:39 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1q1OVS-002DLX-CB; Tue, 23 May 2023 11:40:38 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1q1OVR-00EU90-Mx; Tue, 23 May 2023 11:40:37 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 23 May 2023 11:40:35 +0200
Message-Id: <20230523094035.3452447-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230523094035.3452447-1-a.fatoum@pengutronix.de>
References: <20230523094035.3452447-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230523_024042_742561_3ADECA6C 
X-CRM114-Status: UNSURE (   9.04  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 2/2] block: efi: add commented out #define DEBUG 1
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The code uses __is_defined, which only works for undefined macros and
defined ones with a value. This is different than the debugging prints
that accept empty defined DEBUG, so add a commented out #define DEBUG 1
to alert those seeking to debug the code.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/block/efi-block-io.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/block/efi-block-io.c b/drivers/block/efi-block-io.c
index eb4981e86298..668eac9d75f0 100644
--- a/drivers/block/efi-block-io.c
+++ b/drivers/block/efi-block-io.c
@@ -1,4 +1,6 @@
 // SPDX-License-Identifier: GPL-2.0-only
+
+// #define DEBUG 1
 #include <common.h>
 #include <driver.h>
 #include <init.h>
-- 
2.39.2



