Delivery-date: Wed, 22 Oct 2025 11:38:57 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vBVJ3-00AYno-24
	for lore@lore.pengutronix.de;
	Wed, 22 Oct 2025 11:38:57 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vBVJ3-0000DG-3t
	for lore@pengutronix.de; Wed, 22 Oct 2025 11:38:57 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=/Cc83ibQhfbFd0P5dqlAXXjwQoskpsuJ5P65V/O1Vok=; b=NALvaM1AwVmbvsrLUNeX8i2tBD
	ZaTagLOdtYL6RneGRdGtSK6cUirIwu4s+w+eXE1ePPyR3ClbQApf/9mctyvfUS2j63CecZ99kzh6t
	M+JoCCr2bD9Iic8rU7RrimxP/t/iZ8FJK9nZKINVigZmKpZShaWwUD+kNp4a4BON3VGLAnklIXoSC
	IJq7VUJ41cnpvKCaDjdFofXmdzngw5CtMSUYwvm/BN9N3V3xYRc66xb8GNOSclS/xKIGc7Q9uuQpU
	JKlnXehyRtleZ2wBE52b5LfpRKebq/CocY9vbvDMGbUjzci2xz54N72dOrbuPvpDWmKVvj/sGwAsz
	xYyxH3gw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBVIV-00000002Hw8-28M9;
	Wed, 22 Oct 2025 09:38:23 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBVIS-00000002HtH-1Ymw
	for barebox@lists.infradead.org;
	Wed, 22 Oct 2025 09:38:22 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vBVIN-0008Vm-HA; Wed, 22 Oct 2025 11:38:15 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vBVIN-004rvo-17;
	Wed, 22 Oct 2025 11:38:15 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vBVIN-0000000HamO-12ez;
	Wed, 22 Oct 2025 11:38:15 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Marco Felsch <m.felsch@pengutronix.de>,
	Jonas Rebmann <jre@pengutronix.de>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 22 Oct 2025 11:38:06 +0200
Message-ID: <20251022093813.4191649-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251022_023820_432535_1BF3EB4A 
X-CRM114-Status: GOOD (  10.92  )
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
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] fixup! FIT: compare key name hint with streq_ptr for clarity
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

FIT: fix use of multiple FIT keys

streq_ptr returns true if both arguments are NULL. This can happen if we
have no FIT key name hints at all and shouldn't lead to ignoring keys,
so add the check for the hint.

Cc: Marco Felsch <m.felsch@pengutronix.de>
Reported-by: Jonas Rebmann <jre@pengutronix.de>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/image-fit.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/common/image-fit.c b/common/image-fit.c
index 3017ccb5048f..22f768e7a070 100644
--- a/common/image-fit.c
+++ b/common/image-fit.c
@@ -290,8 +290,8 @@ static int fit_check_signature(struct fit_handle *handle, struct device_node *si
 	for_each_public_key(key) {
 		fail_reason = "verification failed";
 
-		/* Don't recheck with same key as before */
-		if (streq_ptr(key->key_name_hint, key_name))
+		/* Don't recheck with same key_name as before */
+		if (key_name && streq_ptr(key->key_name_hint, key_name))
 			continue;
 
 		ret = public_key_verify(key, sig_value, sig_len, hash, algo);
-- 
2.47.3



