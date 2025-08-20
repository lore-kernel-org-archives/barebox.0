Delivery-date: Wed, 20 Aug 2025 16:32:27 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uojrX-002eFr-2O
	for lore@lore.pengutronix.de;
	Wed, 20 Aug 2025 16:32:27 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uojrU-0006PH-Hz
	for lore@pengutronix.de; Wed, 20 Aug 2025 16:32:26 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:
	References:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:
	Subject:Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=VW/Nxtv8cfYU4N9CZ/oLWK0SIAl6Q7r4u6Jg6XdC/Ms=; b=pzngfKtJOJr1JAZeR+ajcDo8HB
	DRzvomEW9Ym1khgF+jo8vkBON6BjpGCjDUC6wl3RApIVvVQawRzzFg3Kf22y73UrUH2hoKWbGT7gK
	nNz33VP9WPCu4sIc406drlnVjB6xIPg+7a1gea6OiV4Bqw7Sfe7b2NDd0ODpNiQZJlACXMZi8R52M
	TNEdwuhyaKz7CKyWzSxgncFXY6cP13+UreEeOj8xx0O1QgFNBltfoj7vL27VrcA/XHc4gbLRqpRq7
	Vkji2q8LCt5sbXCvqEnMFoxX98pgnT/l9vV7fc0hSRlXOPeWJKWpp3TBa7HfTBfgNwyoJfmucc8hj
	b5JZBTKQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uojqt-0000000E4LJ-33B9;
	Wed, 20 Aug 2025 14:31:47 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uoixJ-0000000DoZd-0Mlw
	for barebox@lists.infradead.org;
	Wed, 20 Aug 2025 13:34:23 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uoixH-0003Eq-Sj; Wed, 20 Aug 2025 15:34:19 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uoixH-001Frg-2C;
	Wed, 20 Aug 2025 15:34:19 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uoihK-004jSI-1i;
	Wed, 20 Aug 2025 15:17:50 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 20 Aug 2025 15:17:56 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250820-security-policies-v1-12-76fde70fdbd8@pengutronix.de>
References: <20250820-security-policies-v1-0-76fde70fdbd8@pengutronix.de>
In-Reply-To: <20250820-security-policies-v1-0-76fde70fdbd8@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1755695870; l=2473;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=MBllvlltsRWm2c2beAT8bNvIKoEzYA8+yGLUbpWMtag=;
 b=a0r3pe3vU1/UEOLAhlRTD2E4i0RMuDRvv5p/5UkPHcQXGmeeuIRtm29KB30/mGEViBRnyrWoP
 7QhBE5jm4I0DBHuxNV8y+q98Yl8TNW0c7syKuekZ8IcA0KWToOqf8lK
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250820_063421_163356_CCA579ED 
X-CRM114-Status: GOOD (  13.53  )
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
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
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
Subject: [PATCH 12/24] bootm: support calling bootm_optional_signed_images
 at any time
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Ahmad Fatoum <a.fatoum@pengutronix.de>

bootm_init is a late initcall and thus the code has the implicit
assumption that bootm_force_signed_images is called after it runs.

Rework the code to allow calling the function at any time.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/bootm.c | 32 +++++++++++++++++++++++---------
 1 file changed, 23 insertions(+), 9 deletions(-)

diff --git a/common/bootm.c b/common/bootm.c
index 15b18c12faa1856e08e30f59a5c2151558f20ec3..755c9358ce3a17c8ce37a9db13cf18d0aea1b5e7 100644
--- a/common/bootm.c
+++ b/common/bootm.c
@@ -116,12 +116,22 @@ static const char * const bootm_verify_names[] = {
 
 static bool force_signed_images = IS_ENABLED(CONFIG_BOOTM_FORCE_SIGNED_IMAGES);
 
-void bootm_force_signed_images(void)
+static void bootm_optional_signed_images(void)
 {
-	static unsigned int verify_mode = 0;
+	/* This function should not be exported */
+	BUG_ON(force_signed_images);
 
-	if (force_signed_images)
-		return;
+	globalvar_remove("bootm.verify");
+	/* recreate bootm.verify with a single enumeration as option */
+	globalvar_add_simple_enum("bootm.verify", (unsigned int *)&bootm_verify_mode,
+				  bootm_verify_names, ARRAY_SIZE(bootm_verify_names));
+
+	bootm_verify_mode = BOOTM_VERIFY_AVAILABLE;
+}
+
+static void bootm_require_signed_images(void)
+{
+	static unsigned int verify_mode = 0;
 
 	/* recreate bootm.verify with a single enumeration as option */
 	globalvar_remove("bootm.verify");
@@ -129,6 +139,11 @@ void bootm_force_signed_images(void)
 				  &bootm_verify_names[BOOTM_VERIFY_SIGNATURE], 1);
 
 	bootm_verify_mode = BOOTM_VERIFY_SIGNATURE;
+}
+
+void bootm_force_signed_images(void)
+{
+	bootm_require_signed_images();
 	force_signed_images = true;
 }
 
@@ -1086,14 +1101,13 @@ static int bootm_init(void)
 		globalvar_add_simple("bootm.initrd.loadaddr", NULL);
 	}
 
-	if (bootm_signed_images_are_forced())
-		bootm_verify_mode = BOOTM_VERIFY_SIGNATURE;
-
 	globalvar_add_simple_bool("bootm.dryrun", &bootm_dryrun);
 	globalvar_add_simple_int("bootm.verbose", &bootm_verbosity, "%u");
 
-	globalvar_add_simple_enum("bootm.verify", (unsigned int *)&bootm_verify_mode,
-				  bootm_verify_names, ARRAY_SIZE(bootm_verify_names));
+	if (bootm_signed_images_are_forced())
+		bootm_require_signed_images();
+	else
+		bootm_optional_signed_images();
 
 	if (IS_ENABLED(CONFIG_ROOTWAIT_BOOTARG))
 		globalvar_add_simple_int("linux.rootwait",

-- 
2.39.5



