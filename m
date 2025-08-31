Delivery-date: Sun, 31 Aug 2025 08:41:30 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1usbkp-006SdZ-1H
	for lore@lore.pengutronix.de;
	Sun, 31 Aug 2025 08:41:30 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1usbkn-0004fO-Qo
	for lore@pengutronix.de; Sun, 31 Aug 2025 08:41:30 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=4LbnlF1DeVDyxjiVNBp4uh2cvpn3t6IJ+M/t/M37E/k=; b=SDiArnk3sjKyC8IzPxRLG6pZ46
	a7r9Z+rrckEaPfB7CSxjzZA5CzZGTbBSCqFfqr0qRefZZovuNr8nTLwQT0Fn7KcTnIgcy1RY2PrEx
	VGYI3XSac1RXQZ39TtRsBDYxhNsfCCgOzrFrdwzHFzhu1BkN3rx9VX1WEybV6d3h2yruSDfwzZYTQ
	SmC5zgsY4IETlhFnb9hP9Zt69WrubXfI3Vtywt9FoZUC/6pbh24kdl0QzTgEBGIZ7zLHYmf2vOPCI
	ZiHus2Nac9mDcp3pkAGMB/B8GDYIuh/leaQM7/HLZv5fbnT78R9uF17rXgkR2aFUDxdVJqcn3+WOM
	RfbI0XWg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1usbjz-00000009pKS-2cy2;
	Sun, 31 Aug 2025 06:40:39 +0000
Received: from vs10.datenmanufaktur-hosting.net ([213.160.73.65] helo=vs81.iboxed.net)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1usbjw-00000009pJo-2Am5
	for barebox@lists.infradead.org;
	Sun, 31 Aug 2025 06:40:37 +0000
Received: from blala.de (localhost [127.0.0.1])
	by vs81.iboxed.net (8.15.2/8.15.2/Debian-14~deb10u1) with ESMTP id 57V6jrMl030655;
	Sun, 31 Aug 2025 06:45:53 GMT
Received: (from akurz@localhost)
	by blala.de (8.15.2/8.15.2/Submit) id 57V6jrNN030654;
	Sun, 31 Aug 2025 06:45:53 GMT
From: Alexander Kurz <akurz@blala.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, barebox@lists.infradead.org
Cc: Alexander Kurz <akurz@blala.de>
Date: Sun, 31 Aug 2025 06:45:51 +0000
Message-Id: <20250831064551.30611-1-akurz@blala.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250830_234036_843052_86FF7A5D 
X-CRM114-Status: GOOD (  16.56  )
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
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] ARM: boards: kindle mx50: extend vendor ATAGs
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Board and device specific details are passed to the factory-shipped
kernel as ATAG, e.g. board type and device serial number.
Extend the list of vendor specific ATAGs with wifi and bootmode
parameters to improve compatibility with the factory shipped
installation, e.g. to get the wifi MAC address correctly set.

Signed-off-by: Alexander Kurz <akurz@blala.de>
---
 arch/arm/boards/kindle-mx50/board.c | 155 +++++++++++++++++++---------
 1 file changed, 109 insertions(+), 46 deletions(-)

diff --git a/arch/arm/boards/kindle-mx50/board.c b/arch/arm/boards/kindle-mx50/board.c
index a5c81ac8e7..81fda48248 100644
--- a/arch/arm/boards/kindle-mx50/board.c
+++ b/arch/arm/boards/kindle-mx50/board.c
@@ -21,87 +21,150 @@
 #include <mach/imx/imx5.h>
 #include <mach/imx/revision.h>
 
-/* 16 byte id for serial number */
+/* 16 byte id for the device serial number */
 #define ATAG_SERIAL16   0x5441000a
 /* 16 byte id for a board revision */
 #define ATAG_REVISION16 0x5441000b
+/* mac address / secret */
+#define ATAG_MACADDR    0x5441000d
+/* 2x 16 byte /proc/bootmode */
+#define ATAG_BOOTMODE   0x5441000f
 
-struct char16_tag {
+struct tag_char16 {
 	char data[16];
 };
 
+struct tag_macaddr {
+	char address[12];
+	char secret[20];
+};
+
+struct tag_bootmode {
+	char boot[16];
+	char post[16];
+};
+
 static struct tag *setup_16char_tag(struct tag *params, uint32_t tag,
 				    const char *value)
 {
-	struct char16_tag *target;
-	target = ((void *) params) + sizeof(struct tag_header);
+	struct tag_char16 *target;
+
+	target = (void *)params + sizeof(struct tag_header);
+	params->hdr.tag = tag;
+	params->hdr.size = tag_size(tag_char16);
+	memset(target->data, 0, sizeof(target->data));
+	/* don't care for missing null terminators */
+	strncpy(target->data, value, sizeof(target->data));
+	return tag_next(params);
+}
+
+static struct tag *setup_macaddr_tag(struct tag *params, uint32_t tag,
+				    const char *addr, const char *secret)
+{
+	struct tag_macaddr *target;
+
+	target = (void *)params + sizeof(struct tag_header);
+	params->hdr.tag = tag;
+	params->hdr.size = tag_size(tag_macaddr);
+	memset(target->address, 0, sizeof(target->address));
+	memset(target->secret, 0, sizeof(target->secret));
+	strncpy(target->address, addr, sizeof(target->address));
+	strncpy(target->secret, secret, sizeof(target->secret));
+	return tag_next(params);
+}
+
+static struct tag *setup_bootmode_tag(struct tag *params, uint32_t tag,
+				    const char *bootmode, const char *postmode)
+{
+	struct tag_bootmode *target;
+
+	target = (void *) params + sizeof(struct tag_header);
 	params->hdr.tag = tag;
-	params->hdr.size = tag_size(char16_tag);
-	memcpy(target->data, value, sizeof target->data);
+	params->hdr.size = tag_size(tag_macaddr);
+	memset(target->boot, 0, sizeof(target->boot));
+	memset(target->post, 0, sizeof(target->post));
+	strncpy(target->boot, bootmode, sizeof(target->boot));
+	strncpy(target->post, postmode, sizeof(target->post));
 	return tag_next(params);
 }
 
-static const char *get_env_16char_tag(const char *tag)
+static const char *get_env_char_tag(const char *tag, const char *defaultval)
 {
-	static const char *default16 = "0000000000000000";
 	const char *value;
 	value = getenv(tag);
 	if (!value) {
-		pr_err("env var %s not found, using default\n", tag);
-		return default16;
+		printf("env var %s not found, using default\n", tag);
+		return defaultval;
 	}
-	if (strlen(value) != 16) {
-		pr_err("env var %s: expecting 16 characters, using default\n",
-			tag);
-		return default16;
-	}
-	pr_info("%s: %s\n", tag, value);
 	return value;
 }
 
 BAREBOX_MAGICVAR(global.board.serial16,
-	"Pass the kindle Serial as vendor-specific ATAG to linux");
+	"The device serial in ATAG_SERIAL16, visible in /proc/cpuinfo");
 BAREBOX_MAGICVAR(global.board.revision16,
-	"Pass the kindle BoardId as vendor-specific ATAG to linux");
+	"The boardid in ATAG_REVISION16 to fill /proc/boardid");
+BAREBOX_MAGICVAR(global.board.mac,
+	"The wifi MAC in ATAG_MACADDR visible as /proc/mac_addr");
+BAREBOX_MAGICVAR(global.board.sec,
+	"The sec code in ATAG_MACADDR visible as /proc/mac_sec");
+BAREBOX_MAGICVAR(global.board.bootmode,
+	"The bootmode in ATAG_BOOTMODE to fill /proc/bootmode");
+BAREBOX_MAGICVAR(global.board.postmode,
+	"The postmode in ATAG_BOOTMODE to fill /proc/postmode");
+
+static struct envdata {
+	size_t offset;
+	size_t size;
+	const char *env_name;
+	char *data;
+} kindle_mx50_boardinfo[] = {
+	{ 0x0,  16, "board.serial16" },
+	{ 0x60, 16, "board.revision16" },
+	{ 0x30, 16, "board.mac" },
+	{ 0x40, 20, "board.sec" },
+	{ 0x1000, 16, "board.bootmode" },
+	{ 0x1010, 16, "board.postmode" },
+};
 
-/* The Kindle Kernel expects two custom ATAGs, ATAG_REVISION16 describing
- * the board and ATAG_SERIAL16 to identify the individual device.
- */
+/* The original kernel expects multiple custom ATAGs. */
 static struct tag *kindle_mx50_append_atags(struct tag *params)
 {
 	params = setup_16char_tag(params, ATAG_SERIAL16,
-				get_env_16char_tag("global.board.serial16"));
+			get_env_char_tag("global.board.serial16",
+				"0000000000000000"));
 	params = setup_16char_tag(params, ATAG_REVISION16,
-				get_env_16char_tag("global.board.revision16"));
+			get_env_char_tag("global.board.revision16",
+				"0000000000000000"));
+	params = setup_macaddr_tag(params, ATAG_MACADDR,
+			get_env_char_tag("global.board.mac",
+				"000000000000"),
+			get_env_char_tag("global.board.sec",
+				"00000000000000000000"));
+	params = setup_bootmode_tag(params, ATAG_BOOTMODE,
+			get_env_char_tag("global.board.bootmode", ""),
+			get_env_char_tag("global.board.postmode", ""));
 	return params;
 }
 
-static char *serial16;
-static char *revision16;
-static char *mac;
-
-static void kindle_rev_init(void)
+static void kindle_rev_init(const char *part, struct envdata *env, size_t num)
 {
-	int ret;
 	void *buf;
-	const char userdata[] = "/dev/mmc2.boot0.userdata";
-	ret = read_file_2(userdata, NULL, &buf, 128);
+
+	int ret = read_file_2(part, NULL, &buf, 0x1060);
 	if (ret && ret != -EFBIG) {
-		pr_err("Could not read board info from %s\n", userdata);
+		pr_err("Could not read board info from %s\n", part);
 		return;
 	}
-
-	serial16 = xzalloc(17);
-	revision16 = xzalloc(17);
-	mac = xzalloc(17);
-
-	memcpy(serial16, buf, 16);
-	memcpy(revision16, buf + 96, 16);
-	memcpy(mac, buf + 48, 16);
-
-	globalvar_add_simple_string("board.serial16", &serial16);
-	globalvar_add_simple_string("board.revision16", &revision16);
-	globalvar_add_simple_string("board.mac", &mac);
+	for (int i = 0; i < num; i++) {
+		size_t offset = env[i].offset;
+		size_t size = env[i].size;
+		const char *name = env[i].env_name;
+
+		env[i].data = xzalloc(size + 1);
+		env[i].data[size] = 0;
+		memcpy(env[i].data, buf + offset, size);
+		globalvar_add_simple_string(name, &env[i].data);
+	}
 
 	free(buf);
 }
@@ -121,8 +184,8 @@ static int kindle_mx50_late_init(void)
 	armlinux_set_revision(0x50000 | imx_silicon_revision());
 	/* Compatibility ATAGs for original kernel */
 	armlinux_set_atag_appender(kindle_mx50_append_atags);
-
-	kindle_rev_init();
+	kindle_rev_init("/dev/mmc2.boot0.userdata", kindle_mx50_boardinfo,
+		ARRAY_SIZE(kindle_mx50_boardinfo));
 
 	return 0;
 }
-- 
2.39.5



