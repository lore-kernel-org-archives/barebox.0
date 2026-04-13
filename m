Delivery-date: Mon, 13 Apr 2026 12:07:51 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wCECt-00BgF6-0l
	for lore@lore.pengutronix.de;
	Mon, 13 Apr 2026 12:07:51 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wCECs-0000Qt-HX
	for lore@pengutronix.de; Mon, 13 Apr 2026 12:07:51 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=D8ZQUCDrwTcKbnVCGKpgThC2XOm+ldqQ+NNanTk3P8o=; b=h/rRyBtrjqhe+m/+/oM8wWYtvQ
	/vkc6elkIKpCVeZuSVxDxjrS29//Bt8ocK8TmzzfeQ2uLqWCQ6e0WMr5sLmNqWOuUoqghihRW2bPk
	YGr/ptgtbP030NuuU5u7+F1IModUXestMtBfi411NvdJgHy6ybZloiqILImn5jptkR1QTrb0f1BN/
	pXnZQ4lxpe9Np0vAduBgFJ5gGrvhDUFmpIWV3awm9yk+++e+JBVa0dMaRYbGU300pwotcz1TYkDlK
	TkjvyPlC4cinxSNfZNh31YMnhJMSRz2scQ+qs/8KGjXtsggNNUP89h0jtsh+Vs9GDCj1bwFilq69x
	i6XUkEog==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCECR-0000000FPat-3yQP;
	Mon, 13 Apr 2026 10:07:23 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCECN-0000000FPYr-2GZv
	for barebox@bombadil.infradead.org;
	Mon, 13 Apr 2026 10:07:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=D8ZQUCDrwTcKbnVCGKpgThC2XOm+ldqQ+NNanTk3P8o=; b=jhn2DgpbbYNx6mWuElOpsqMKQ7
	WyAXj17xlzQTP8nvejsyYDuAC0kLAVtUe4dUAmxd1NFT6Z7Z0jd4l+q1EBZi8SZfNsxvpa0UQMPjV
	mxzH78a/k4LwuG6HzdIfF5prHItTB+YQXYBOvUGtI+I+PSjdN2LvNlnrJuoOwvcozQR9N4XYjW0WW
	udnMQCpF9Opnhwe9fd3VT7pxIdE872Qv3KDYaRqcn+f7yDF7ucdWWGv1461hvRqUZIqVcyCVouIWb
	PGzYiQBalzvyweAJO+s6LLtVLfeGp7f4ajoCKp0v7O7B/0uBNWe71kVFc23MEwey7nxg9wByznLth
	LqFzl0Ew==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCECJ-0000000GY28-3AJr
	for barebox@lists.infradead.org;
	Mon, 13 Apr 2026 10:07:18 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1wCECI-00008e-Vm; Mon, 13 Apr 2026 12:07:15 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Mon, 13 Apr 2026 12:06:59 +0200
Message-ID: <20260413100710.1459468-4-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260413100710.1459468-1-a.fatoum@barebox.org>
References: <20260413100710.1459468-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260413_110715_932121_5DACB2B4 
X-CRM114-Status: GOOD (  20.60  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 4/5] video: simplefb-fixup: add stdout-path mode to register_simplefb param
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Replace the boolean register_simplefb parameter with a three-value enum:

  disabled    - no simplefb DT node (previous value 0)
  enabled     - create simplefb DT node (previous value 1)
  stdout-path - create simplefb DT node and set /chosen/stdout-path

The stdout-path mode tells the OS to use the framebuffer as its boot
console.

On OpenBSD arm64, fdt_find_cons("simple-framebuffer") reads
/chosen/stdout-path, resolves it to the node, and if compatible matches,
passes it to simplefb_init_cons() which calls wsdisplay_cnattach().
Without stdout-path being set, OpenBSD's bootloader efi_console() never
writes it because efi_cons (CN_MIDPRI) wins the cninit() probe over
efi_fb (CN_LOWPRI), leaving the kernel without a console path.

Assisted-by: Claude:claude-opus-4-6
Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 .../migration-guides/migration-master.rst     | 11 +++++
 drivers/video/simplefb-fixup.c                | 46 ++++++++++++++++---
 include/fb.h                                  |  4 +-
 3 files changed, 52 insertions(+), 9 deletions(-)

diff --git a/Documentation/migration-guides/migration-master.rst b/Documentation/migration-guides/migration-master.rst
index 2833c12081fb..6324e940c2ba 100644
--- a/Documentation/migration-guides/migration-master.rst
+++ b/Documentation/migration-guides/migration-master.rst
@@ -1,5 +1,16 @@
 :orphan:
 
+register_simplefb parameter
+---------------------------
+
+The ``register_simplefb`` parameter on framebuffer devices has changed from
+boolean to an enum with values ``disabled``, ``enabled``, and ``stdout-path``.
+
+Scripts that **read** the parameter will now receive ``"disabled"`` or
+``"enabled"`` instead of ``"0"`` or ``"1"``.
+
+Scripts that **write** ``"0"`` or ``"1"`` continue to work.
+
 CONFIG_CRYPTO_PUBLIC_KEYS
 -------------------------
 
diff --git a/drivers/video/simplefb-fixup.c b/drivers/video/simplefb-fixup.c
index ab85d2282efc..694131631850 100644
--- a/drivers/video/simplefb-fixup.c
+++ b/drivers/video/simplefb-fixup.c
@@ -25,6 +25,16 @@
  */
 static const struct simplefb_format simplefb_formats[] = SIMPLEFB_FORMATS;
 
+enum simplefb_mode {
+	SIMPLEFB_DISABLED,
+	SIMPLEFB_ENABLED,
+	SIMPLEFB_STDOUT_PATH,
+};
+
+static const char * const simplefb_mode_names[] = {
+	"disabled", "enabled", "stdout-path",
+};
+
 static bool simplefb_bitfield_cmp(const struct fb_bitfield *a,
 					const struct fb_bitfield *b)
 {
@@ -64,7 +74,8 @@ static const struct simplefb_format *simplefb_find_mode(const struct fb_info *fb
 }
 
 static int simplefb_create_node(struct device_node *root,
-				const struct fb_info *fbi, const char *format)
+				const struct fb_info *fbi, const char *format,
+				bool set_stdout_path)
 {
 	struct device_node *node;
 	phys_addr_t screen_base;
@@ -124,7 +135,27 @@ static int simplefb_create_node(struct device_node *root,
 	if (ret < 0)
 		return ret;
 
-	return of_property_write_string(node, "status", "okay");
+	ret = of_property_write_string(node, "status", "okay");
+	if (ret < 0)
+		return ret;
+
+	/*
+	 * Set stdout-path in /chosen to point to this framebuffer if not
+	 * already set.  This lets the OS (e.g. OpenBSD) know to use
+	 * the framebuffer as its boot console rather than falling back to
+	 * serial.
+	 */
+	if (set_stdout_path) {
+		struct device_node *chosen;
+
+		chosen = of_create_node(root, "/chosen");
+		if (!chosen)
+			return -ENOMEM;
+
+		of_property_write_string(chosen, "stdout-path", "/framebuffer");
+	}
+
+	return 0;
 }
 
 static int simplefb_of_fixup(struct device_node *root, void *ctx)
@@ -134,7 +165,7 @@ static int simplefb_of_fixup(struct device_node *root, void *ctx)
 	int ret;
 
 	/* only create node if we are requested to */
-	if (!info->register_simplefb)
+	if (info->register_simplefb == SIMPLEFB_DISABLED)
 		return 0;
 
 	/* do not create node for disabled framebuffers */
@@ -147,7 +178,8 @@ static int simplefb_of_fixup(struct device_node *root, void *ctx)
 		return -EINVAL;
 	}
 
-	ret = simplefb_create_node(root, info, mode->name);
+	ret = simplefb_create_node(root, info, mode->name,
+				   info->register_simplefb == SIMPLEFB_STDOUT_PATH);
 	if (ret)
 		dev_err(&info->dev, "failed to create node: %d\n", ret);
 	else
@@ -158,8 +190,10 @@ static int simplefb_of_fixup(struct device_node *root, void *ctx)
 
 int fb_register_simplefb(struct fb_info *info)
 {
-	dev_add_param_bool(&info->dev, "register_simplefb",
-			NULL, NULL, &info->register_simplefb, NULL);
+	dev_add_param_enum(&info->dev, "register_simplefb",
+			   NULL, NULL, &info->register_simplefb,
+			   simplefb_mode_names, ARRAY_SIZE(simplefb_mode_names),
+			   NULL);
 
 	return of_register_fixup(simplefb_of_fixup, info);
 }
diff --git a/include/fb.h b/include/fb.h
index 1e3b330ab725..c2826ae9f261 100644
--- a/include/fb.h
+++ b/include/fb.h
@@ -186,9 +186,7 @@ struct fb_info {
 
 	int enabled;
 	int p_enable;
-	int register_simplefb;		/* If true a simplefb device node will
-					 * be created.
-					 */
+	int register_simplefb;		/* enum simplefb_mode */
 	int shadowfb;
 
 	struct fb_info *base_plane;
-- 
2.47.3



