Delivery-date: Wed, 20 Aug 2025 12:30:21 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uog5G-002aPh-12
	for lore@lore.pengutronix.de;
	Wed, 20 Aug 2025 12:30:21 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uog5D-0007Uv-VX
	for lore@pengutronix.de; Wed, 20 Aug 2025 12:30:21 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=4YWII6RWpxvmiHxaZwrEo/hbUgtV3E9+33XB1Jx2JNE=; b=Iq7mCHNImjLxwmT5I3r8yFZxSL
	pBc/dETUqtQ28eT6NECIdnqB6ZeKBeokThzKdEMXhJM8jZVyoDVWvAiudhlEXu5NZ/Ul0Yn0tuHk4
	+MT9E4wF8hJcNfHGEOiP4vtoCO2Kg2spEyclE/wHYPlbt86OWr+7aGsZ0EedDL42tHKoQIQWBoZmw
	bAFzXeTsBrAU4Vd9VEjOFOzAIz/TinLPREO3cgKgRXAke/VqK22i8dGigw+UV15/MH3qD8SgrjPX5
	HLFEP6xbvZrMKEZYndiuA1IrHFTCfNHCay1+zkWD8Fisb/qi+B8MHLzRbT1NuKzEfxVLhUwG/5beM
	ceWO8ACg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uog4g-0000000D9Fj-3Cnp;
	Wed, 20 Aug 2025 10:29:46 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uofQw-0000000D0pr-37y1
	for barebox@bombadil.infradead.org;
	Wed, 20 Aug 2025 09:48:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=4YWII6RWpxvmiHxaZwrEo/hbUgtV3E9+33XB1Jx2JNE=; b=pim01s3Nlv8mnNguasqrNPB1qc
	eLa04AwVos1U6Dc472arflGzuXOV+l0e8acFkRw3P1jxzLZsF2Gj3K6ShCIvPtVnyZTbZ4zUIHMOg
	imTkcipGWuritn50ZoIGYg20MzssDIH0CstOxEAnzjumFhxjMm4D6SRrFuruhP4AVNRMA7ByN7L80
	0KCDrRCGs66NZcbxDHgxq1qfi+lm1RsDq9GZPiKYUe7fWPZwv7mqtkRZfgd+1gpbb+PkU8zdONYGU
	/PY463wNlZtKcc4qiFcTXoCvxv4tBnolthDM0jsNwiFghEF26jAY6MJq7y48eCeIK4RMHcpRps+BS
	eWU/b4qw==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uofQt-00000000HWX-09ih
	for barebox@lists.infradead.org;
	Wed, 20 Aug 2025 09:48:41 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1uofQq-0000DY-EK; Wed, 20 Aug 2025 11:48:36 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
Date: Wed, 20 Aug 2025 11:48:36 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250820-v2024-05-0-topic-fit-overlay-v6-4-9d1b3bab2ee2@pengutronix.de>
References: <20250820-v2024-05-0-topic-fit-overlay-v6-0-9d1b3bab2ee2@pengutronix.de>
In-Reply-To: <20250820-v2024-05-0-topic-fit-overlay-v6-0-9d1b3bab2ee2@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Marco Felsch <m.felsch@pengutronix.de>
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250820_104839_366030_D6D3813A 
X-CRM114-Status: GOOD (  11.91  )
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
Subject: [PATCH v6 04/12] of: overlay: make search dir more generic
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Rename global.of.overlay.dir to global.of.overlay.path to prepare the
codebase to handle FIT image overlays as well because *.path doesn't
imply that it have to be a directory.

Keep the backward compatibility by providing the of.overlay.dir variable
but mark it as deprecated.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 Documentation/user/devicetree.rst |  2 +-
 drivers/of/overlay.c              | 15 ++++++++-------
 2 files changed, 9 insertions(+), 8 deletions(-)

diff --git a/Documentation/user/devicetree.rst b/Documentation/user/devicetree.rst
index ef04e14f7c0dde579493425073f1ee01395f0d8c..30a15a8865c154f8afe23d641da10d0afa84423b 100644
--- a/Documentation/user/devicetree.rst
+++ b/Documentation/user/devicetree.rst
@@ -108,7 +108,7 @@ Device tree overlays on the kernel device tree
 Overlays can be applied to the kernel device tree before it is handed over to
 the kernel. The behaviour is controlled by different variables:
 
-``global.of.overlay.dir``
+``global.of.overlay.path``
   Overlays are read from this directory. barebox will try to apply all overlays
   found here if not limited by one of the other variables below. When the path
   given here is an absolute path it is used as is. A relative path is relative
diff --git a/drivers/of/overlay.c b/drivers/of/overlay.c
index a63cca1b47e74615d4453a27a55fb15d1f706fae..bc3fdff0cd277b3460981769c2b220adfced6e80 100644
--- a/drivers/of/overlay.c
+++ b/drivers/of/overlay.c
@@ -408,7 +408,7 @@ int of_register_overlay(struct device_node *overlay)
 }
 
 static char *of_overlay_pattern;
-static char *of_overlay_dir;
+static char *of_overlay_path;
 static char *of_overlay_basedir;
 
 /**
@@ -468,13 +468,13 @@ static int of_overlay_global_fixup(struct device_node *root, void *data)
 	char *dir;
 	int ret;
 
-	if (*of_overlay_dir == '/')
-		return of_overlay_apply_dir(root, of_overlay_dir, true);
+	if (*of_overlay_path == '/')
+		return of_overlay_apply_dir(root, of_overlay_path, true);
 
-	if (*of_overlay_dir == '\0')
+	if (*of_overlay_path == '\0')
 		return 0;
 
-	dir = concat_path_file(of_overlay_basedir, of_overlay_dir);
+	dir = concat_path_file(of_overlay_basedir, of_overlay_path);
 
 	ret = of_overlay_apply_dir(root, dir, true);
 
@@ -616,9 +616,10 @@ static int of_overlay_init(void)
 	globalvar_add_simple_string("of.overlay.compatible", &of_overlay_compatible);
 	globalvar_add_simple_string("of.overlay.pattern", &of_overlay_pattern);
 	globalvar_add_simple_string("of.overlay.filter", &of_overlay_filter);
-	globalvar_add_simple_string("of.overlay.dir", &of_overlay_dir);
+	globalvar_add_simple_string("of.overlay.path", &of_overlay_path);
 
 	globalvar_alias_deprecated("of.overlay.filepattern", "of.overlay.pattern");
+	globalvar_alias_deprecated("of.overlay.dir", "of.overlay.path");
 
 	of_overlay_register_filter(&of_overlay_pattern_filter);
 	of_overlay_register_filter(&of_overlay_filepattern_filter);
@@ -632,5 +633,5 @@ device_initcall(of_overlay_init);
 
 BAREBOX_MAGICVAR(global.of.overlay.compatible, "space separated list of compatibles an overlay must match");
 BAREBOX_MAGICVAR(global.of.overlay.pattern, "space separated list of filepatterns an overlay must match");
-BAREBOX_MAGICVAR(global.of.overlay.dir, "Directory to look for dt overlays");
+BAREBOX_MAGICVAR(global.of.overlay.path, "Path to look for dt overlays");
 BAREBOX_MAGICVAR(global.of.overlay.filter, "space separated list of filters");

-- 
2.39.5



