Delivery-date: Mon, 23 Oct 2023 18:29:31 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1quxo3-001OAL-KH
	for lore@lore.pengutronix.de; Mon, 23 Oct 2023 18:29:31 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1quxo2-0007is-3H
	for lore@pengutronix.de; Mon, 23 Oct 2023 18:29:30 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=WOuo2H+0cbsoX875gKuC/HAKja0zTQyahL2YqGbU3mc=; b=FjNQKSz4tHPxlUQXdGqaAR6PU2
	XUoT3PSX+VdtDLBDPbsvGRky03p9tAnZd9hIfmIV7YKGYVG64s7Wh9UJVgOn+iXeuqkZILofAVmxm
	Hx8oeCTGCbFmhBFdk6lF4U3S8JBdad+wr7Yh1E2QGJGdkp/H12c+o6kMUGC5aGgVD6wT2d7+Z/6xm
	bwaMR2nYGmnKnzr62zxg6eXv4kv5P01ij3O49PBma+iwtYtO9D37GaRtiCiGX12bVQgj4AU7Lw0jR
	GoGDsbQuq7f9nqRTud4dOtqEjWlm/hVi35CsbASVHbQvqRS5CZd2mzatOm/Ncpyw/Gi05ePF0Xfxj
	a2+PCnsA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1quxmh-007ped-2n;
	Mon, 23 Oct 2023 16:28:07 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1quxmd-007pdr-2x
	for barebox@lists.infradead.org;
	Mon, 23 Oct 2023 16:28:05 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1quxmb-0007VM-7o; Mon, 23 Oct 2023 18:28:01 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1quxma-003kjJ-RY; Mon, 23 Oct 2023 18:28:00 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <afa@pengutronix.de>)
	id 1quxma-002G1s-2c;
	Mon, 23 Oct 2023 18:28:00 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 23 Oct 2023 18:27:48 +0200
Message-Id: <20231023162748.533468-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231023162748.533468-1-a.fatoum@pengutronix.de>
References: <20231023162748.533468-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231023_092803_992865_4B66FBBC 
X-CRM114-Status: GOOD (  11.18  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/2] bootm: add support for dynamically forcing signature verification
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

So far, secure bootint g systems statically configured
CONFIG_BOOTM_FORCE_SIGNED_IMAGES=y to restrict bootm to signed images.

This remains the recommended way, but some systems require the ability
to decide at runtime whether to enforce secure boot or to disable it,
e.g. after verifying a JSON web token with the appropriate claim.

For such systems, provide a bootm_force_signed_images() function.
There's intentionally no unforce counterpart as this is meant to be
non-reversible.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/bootm.c  | 16 ++++++++++++++++
 include/bootm.h |  1 +
 2 files changed, 17 insertions(+)

diff --git a/common/bootm.c b/common/bootm.c
index dd5f26dd83e2..f7e1ff335181 100644
--- a/common/bootm.c
+++ b/common/bootm.c
@@ -87,6 +87,22 @@ static const char * const bootm_verify_names[] = {
 
 static bool force_signed_images = IS_ENABLED(CONFIG_BOOTM_FORCE_SIGNED_IMAGES);
 
+void bootm_force_signed_images(void)
+{
+	static unsigned int verify_mode = 0;
+
+	if (force_signed_images)
+		return;
+
+	/* recreate bootm.verify with a single enumeration as option */
+	globalvar_remove("bootm.verify");
+	globalvar_add_simple_enum("bootm.verify", &verify_mode,
+				  &bootm_verify_names[BOOTM_VERIFY_SIGNATURE], 1);
+
+	bootm_verify_mode = BOOTM_VERIFY_SIGNATURE;
+	force_signed_images = true;
+}
+
 bool bootm_signed_images_are_forced(void)
 {
 	return force_signed_images;
diff --git a/include/bootm.h b/include/bootm.h
index 25308d43a30e..d20f82b8f5a7 100644
--- a/include/bootm.h
+++ b/include/bootm.h
@@ -148,6 +148,7 @@ enum bootm_verify bootm_get_verify_mode(void);
 void bootm_set_verify_mode(enum bootm_verify mode);
 
 bool bootm_signed_images_are_forced(void);
+void bootm_force_signed_images(void);
 
 #define UIMAGE_SOME_ADDRESS (UIMAGE_INVALID_ADDRESS - 1)
 
-- 
2.39.2



