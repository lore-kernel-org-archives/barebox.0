Delivery-date: Wed, 17 Sep 2025 16:19:09 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uyt01-0046Qo-2M
	for lore@lore.pengutronix.de;
	Wed, 17 Sep 2025 16:19:09 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uyt00-0003oa-E0
	for lore@pengutronix.de; Wed, 17 Sep 2025 16:19:09 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:
	References:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:
	Subject:Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=IhLb3JWdacoj7s+3FSL3lH/VMlCaLaCY2sSYsUO/ZuI=; b=EI4oYcQUz6brepTZhwOLha8hyz
	oTH54eDFcS653eMga44vt00Xbc6upeOM0e5Q/gpECtttM096ciHj0Sn5+qIjj+crnows58mM4t73E
	UqjCYtbGMp7iZAt36TnxytSoD47Ege3ptmaBYk+CNyjT9oqIqVxUCq7s/iwO++7CB4BeSAqL2zIX9
	VZkEqpe++t0Q2+4N3S0sxSKOtr0KWr7Xc1liBoKxYj5fmy+DDQyCrb/GL/MqhyDUFngc4z1DYaf5V
	hlCX3xwHXw/sCH1uldT0GTYWpPmrtUKzU5z8lNbc7ufC6eu4P0zxMQqPLlNRJrvuYTP7y3/mjJXbs
	ixUUgfJA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uyszS-0000000C8SD-21sI;
	Wed, 17 Sep 2025 14:18:34 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uyszL-0000000C8DG-3apk
	for barebox@bombadil.infradead.org;
	Wed, 17 Sep 2025 14:18:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=IhLb3JWdacoj7s+3FSL3lH/VMlCaLaCY2sSYsUO/ZuI=; b=qG9nodl5hYFILPzidMOzXp+ky3
	4nBlUgrR7IorI7JMMFjysIK4Zzo3LP8gJ42kmWUCexZbRmJ11dIi7ODDpXY2HBNdnNlAgj6DZdr/6
	xvwmBAG5KjtpbYl3QfDq/OZJTX85s3tNlgv05wHhv2dmYhrjtK5Wp5DNp+R+flXJRXrGZKDRtoxI+
	uuRomva4f0PVQeZGEQT9g/7dIZhOktAMhoCoeGJBDlyKFN1nFJdP73i2psY82tbLmLewVudzghy7i
	9v7s2qCAb5f34lme3BX0LyHWi9rntCVlvmunVT8Z5NnG8OCgfD3ip8D1npc9g+ViBYvxVN029fiNo
	GsJ1k3pQ==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uyszI-00000007PGG-2DLd
	for barebox@lists.infradead.org;
	Wed, 17 Sep 2025 14:18:26 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uyszG-00033w-Di; Wed, 17 Sep 2025 16:18:22 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uyszG-001mH7-0h;
	Wed, 17 Sep 2025 16:18:22 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uysbA-0000000CZtI-32u8;
	Wed, 17 Sep 2025 15:53:28 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 17 Sep 2025 15:53:32 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250917-security-policies-v2-12-f30769a3ff51@pengutronix.de>
References: <20250917-security-policies-v2-0-f30769a3ff51@pengutronix.de>
In-Reply-To: <20250917-security-policies-v2-0-f30769a3ff51@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1758117208; l=2473;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=M5SfEGasgybobtLTYhoS5qCmOybYmn5h6q6MICXZ1k0=;
 b=rLhPEYJnKtkzJg1lGsJxgPhP+GtEheAyE1e4N8KXF+NwVWjD2mf3pn8d3/tbm2Nsl16TMbpu9
 LhSwv4G1E8lDh3KdExN7DyZTks2qdYi5K4ya7l6wF0TqOeoZYUzkwnA
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250917_151824_706257_7CC46D0E 
X-CRM114-Status: GOOD (  13.69  )
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
X-Spam-Status: No, score=-4.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 12/24] bootm: support calling
 bootm_optional_signed_images at any time
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
2.47.3



