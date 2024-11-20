Delivery-date: Wed, 20 Nov 2024 14:07:28 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tDkQa-004En0-2F
	for lore@lore.pengutronix.de;
	Wed, 20 Nov 2024 14:07:28 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tDkQa-0001Ss-4D
	for lore@pengutronix.de; Wed, 20 Nov 2024 14:07:28 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=K5FUQgKds0rXJ1SxnouKeU8K69wZ5/tzW8r4eV2YFs8=; b=hFHYMfC0aWEvgisj2N9l6kHApQ
	1m0AbrR3cR4hNLVZmBEWBQK9hOJcbncRnB31CiJCGMrp/JOwYNmcgO3E2f7K7/3/M37KZe2cSrsnI
	yPEzH0A1weiVISIWRFGNYD3dIoxZIAmtZP/PM/ujApQ1oKMMDc7dg7FHO7lQPsdfyIRrBSYj3p/d7
	4sWP46+kKvxKkGExYUTUp/DadZLBbaQVz7iX6G+5DYc/uRJEVhnAfFoCHfLmVWXN13Z+AcVxC+cxJ
	1Sc1UBXYAkZXL0HKhXSZJ9Rax+UqKtTaMpn3ILPGsn1fNSZax6ni/XIrwHkqwMrFrZ5Mk7Z1c7GSE
	3bX9glgQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tDkPz-0000000FNQd-2sCT;
	Wed, 20 Nov 2024 13:06:51 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tDkPt-0000000FNP4-0aID
	for barebox@lists.infradead.org;
	Wed, 20 Nov 2024 13:06:46 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tDkPq-0001DK-EZ; Wed, 20 Nov 2024 14:06:42 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tDkPq-001kP9-0r;
	Wed, 20 Nov 2024 14:06:42 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tDkPq-00GDq2-0a;
	Wed, 20 Nov 2024 14:06:42 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 20 Nov 2024 14:06:38 +0100
Message-Id: <20241120130640.3866362-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241120_050645_191075_E277CBD5 
X-CRM114-Status: GOOD (  10.90  )
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
Subject: [PATCH 1/3] reset_source: have reset_source_set_device actually set device
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

reset_source_set_device is given a device pointer as argument and it
passes it to __reset_source_set, but the latter function discards the
argument and unconditionally stores a NULL into the reset_source_device.

Fix this by actually making use of the argument.

Fixes: a0748840c104 ("reset_source: implement helper to set a device as reset source")
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/reset_source.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/common/reset_source.c b/common/reset_source.c
index f28be90dcbb4..495f3d527a84 100644
--- a/common/reset_source.c
+++ b/common/reset_source.c
@@ -61,7 +61,7 @@ static void __reset_source_set(struct device *dev,
 	reset_source = st;
 	reset_source_priority = priority;
 	reset_source_instance = instance;
-	reset_source_device = NULL;
+	reset_source_device = dev;
 
 	pr_debug("Setting reset source to %s with priority %d\n",
 			reset_src_names[reset_source], priority);
-- 
2.39.5



