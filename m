Delivery-date: Wed, 07 Jan 2026 13:58:41 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vdT7Z-002FpT-13
	for lore@lore.pengutronix.de;
	Wed, 07 Jan 2026 13:58:41 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vdT7Y-00047b-P5
	for lore@pengutronix.de; Wed, 07 Jan 2026 13:58:41 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=xUmtx4sbGHiImQSRmwTtCCZBXkQprd54DLam4z7tq6s=; b=VlHUcdLbCFAWjV+i9vTxxftW8Z
	6fxoiPv5eeC0YBT/tZpVXRzjidWx4XYiQlnb9Z0JUyru8uDK52neeqpr35+1HMz6vubh6AW/YuswF
	MHZGBQIKNbCQEHOkcuxWYpuop1DfczUAZnJqeDiWIs0mH0hqx9/XoeR1L13XXfbMlRtehxlTqcipW
	pAsBYd5XTT5KHMW/2PaBWRUFxHN5sS1Bh9jFZerQbtRotzngpOLTFUi2v811ZRl4db4WOTnsVYDJk
	LwjBm/rw1BaEFQGGGgkaz1MDo7PcGGHaterMSIumUG5Hu1zQC+DlSYZpumV53Nnejch4CbEcqi9OP
	sC/RB62g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdT71-0000000EwYR-29rf;
	Wed, 07 Jan 2026 12:58:07 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdT6y-0000000EwX7-42SI
	for barebox@lists.infradead.org;
	Wed, 07 Jan 2026 12:58:06 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vdT6v-0003w2-OP; Wed, 07 Jan 2026 13:58:01 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vdT6v-009VqB-1n;
	Wed, 07 Jan 2026 13:58:01 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vdT6w-0000000GYrf-0aJM;
	Wed, 07 Jan 2026 13:58:01 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: mtr@pengutronix.de,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  7 Jan 2026 13:57:57 +0100
Message-ID: <20260107125800.3947255-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260107_045805_005116_E00F032A 
X-CRM114-Status: UNSURE (   7.66  )
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
Subject: [PATCH 1/3] fixup! tee: drivers: add driver for Rockchip Secure Boot PTA
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

tee: rksecure: add missing header for ARRAY_SIZE

When compiling for sandbox allyesconfig in CI, build fails due to
missing include for <linux/array_size.h>.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/tee/optee/rksecure.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/tee/optee/rksecure.c b/drivers/tee/optee/rksecure.c
index 6bc9a61571c2..3a5cb0cb7be1 100644
--- a/drivers/tee/optee/rksecure.c
+++ b/drivers/tee/optee/rksecure.c
@@ -5,6 +5,7 @@
 
 #include <linux/tee_drv.h>
 #include <linux/uuid.h>
+#include <linux/array_size.h>
 #include <uapi/linux/tee.h>
 
 #include <rk_secure_boot.h>
-- 
2.47.3



