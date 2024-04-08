Delivery-date: Mon, 08 Apr 2024 16:32:16 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rtq2i-002nac-16
	for lore@lore.pengutronix.de;
	Mon, 08 Apr 2024 16:32:16 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rtq2h-0003k7-Ng
	for lore@pengutronix.de; Mon, 08 Apr 2024 16:32:16 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=UI7XU8P9jWuFLDoIdfpVo1eUdRz5BYt4O9Ey+oQGoKc=; b=1G/2FEMYuYWUqpkfKn9/5RrBEp
	+YccGUAtfk/htavFb/D7CYSnLeIL4+IitA+b2sNmI4iBrQXY27JiRl5DRqiVM+dJWleFxI5nfafaE
	VG8F4TNNnNJbkDIIE378m1W0Liuxhijlh0boGFnQQ07xooUxeIqy9TPk75WzIBDucTIXMhY7mLM4u
	rkT4GDTC/qdettqQjWQsAh36qMicIpcQroGXJqYmVczWRHNlm+8EqBRizy6rxCulZ6tNLmXMRffsj
	4QV9/Voh7ctZvTP46/PX2HpqSEn6u32mMHHJKLBto8j+AGVIcqLlbmb7OBl6N8OAsFjlI7QQpw3Nd
	9hOMMPkw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rtq2A-0000000Ft7p-2iu0;
	Mon, 08 Apr 2024 14:31:42 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rtq25-0000000Ft6n-0Uf0
	for barebox@lists.infradead.org;
	Mon, 08 Apr 2024 14:31:38 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1rtq23-0003Ta-Qw; Mon, 08 Apr 2024 16:31:35 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  8 Apr 2024 16:31:31 +0200
Message-Id: <20240408143131.3630347-2-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240408143131.3630347-1-m.felsch@pengutronix.de>
References: <20240408143131.3630347-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240408_073137_196668_548E3F68 
X-CRM114-Status: GOOD (  11.31  )
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
X-Spam-Status: No, score=-5.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 2/2] bootm: add support for dynamically forcing signature verification
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Ahmad Fatoum <a.fatoum@pengutronix.de>

So far, secure booting systems statically configured
CONFIG_BOOTM_FORCE_SIGNED_IMAGES=y to restrict bootm to signed images.

This remains the recommended way, but some systems require the ability
to decide at runtime whether to enforce secure boot or to disable it,
e.g. after verifying a JSON web token with the appropriate claim.

For such systems, provide a bootm_force_signed_images() function.
There's intentionally no unforce counterpart as this is meant to be
non-reversible.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
Changelog:
v2:
- fix commit message typo
- add my s-o-b tag
v1:
- https://lore.barebox.org/barebox/20231023162748.533468-1-a.fatoum@pengutronix.de/

 common/bootm.c  | 16 ++++++++++++++++
 include/bootm.h |  1 +
 2 files changed, 17 insertions(+)

diff --git a/common/bootm.c b/common/bootm.c
index 3cd4aa1528a7..c851ab0456b8 100644
--- a/common/bootm.c
+++ b/common/bootm.c
@@ -89,6 +89,22 @@ static const char * const bootm_verify_names[] = {
 
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
index e4d59b566edf..98ac5e5a9374 100644
--- a/include/bootm.h
+++ b/include/bootm.h
@@ -153,6 +153,7 @@ enum bootm_verify bootm_get_verify_mode(void);
 void bootm_set_verify_mode(enum bootm_verify mode);
 
 bool bootm_signed_images_are_forced(void);
+void bootm_force_signed_images(void);
 
 #define UIMAGE_SOME_ADDRESS (UIMAGE_INVALID_ADDRESS - 1)
 
-- 
2.39.2



