Delivery-date: Mon, 25 Nov 2024 09:38:21 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tFUbs-00085k-3A
	for lore@lore.pengutronix.de;
	Mon, 25 Nov 2024 09:38:21 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tFUbs-0002dj-V6
	for lore@pengutronix.de; Mon, 25 Nov 2024 09:38:21 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=DapjVIALKdbXBkSCwANii5KZqY0nh1T6pDX4Nj9bnj0=; b=m/T3oVd/1yrRihuHIhtHz+iKdx
	J/4Ipz9LqUFBrw7mFx3WFisSUqdjvyynaqs630F0lO3mvJX7JYHm2QZcucDEIXoJFev7uIcaPSIJs
	E117xI72VGqYiyiwGuYoR/aFe74gJKHJYqVAXj3g1UfMNCtDgdV7n4Q2hcSf0J2g+lW+GA1FWoMGx
	PMex10rfKLiCnSe4w/ufu6WRmb39FsIxBIua53k/vuY6CNcEs2r3RrIG7g7iDqmP4k2n3JOi5kVXd
	VKQzcICJGcbgbHoA7oUv7oHNLGpnr5ec+ZIEB1U41ifEh4f721DsO9/bx9UC5s5LY9nhqNIu/bGpA
	PFfuMsOQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tFUbU-00000007PVA-3oeu;
	Mon, 25 Nov 2024 08:37:56 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tFUUY-00000007Nu9-2r2P
	for barebox@lists.infradead.org;
	Mon, 25 Nov 2024 08:30:48 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tFUUV-0001SK-QV; Mon, 25 Nov 2024 09:30:43 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tFUUU-00033N-2n;
	Mon, 25 Nov 2024 09:30:43 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tFUUU-002IvD-2x;
	Mon, 25 Nov 2024 09:30:43 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 25 Nov 2024 09:30:40 +0100
Message-Id: <20241125083042.482415-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241125_003046_732642_A090EEE8 
X-CRM114-Status: GOOD (  11.98  )
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
Subject: [PATCH v2 1/3] reset_source: have reset_source_set_device actually set device
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

reset_source_set_device is given a device pointer as argument and it
passes it to __reset_source_set, but the latter function discards the
argument and unconditionally stores a NULL into the reset_source_device.

Fix this by actually making use of the argument.

Fixes: a0748840c104 ("reset_source: implement helper to set a device as reset source")
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v1 -> v2:
  - no change
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



