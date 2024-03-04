Delivery-date: Mon, 04 Mar 2024 20:07:51 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rhDfD-008dSh-1J
	for lore@lore.pengutronix.de;
	Mon, 04 Mar 2024 20:07:51 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rhDfC-0002nV-At
	for lore@pengutronix.de; Mon, 04 Mar 2024 20:07:51 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=x704bu+s4mlNhVrnReqfN627zKzpyx9A1sDSVx2kNu4=; b=W0kNyB05XFJ2rsQle/pd8Okw+W
	an66/nFnUjLSKCpWQd+l61MAvVV7OLL2tFJz2lnqW/3+LAvdp4cKlaVKO8yjpgHFQ/GWh1uLvlr8w
	JNdIBwU8BliZN9J9zorz2QpuHFMcmhOCqFYAuMUBuz34071MzBSowkuEhRgIuDrMyC4D4h+COHtye
	FrvyV6MrOSoq9TDw+vUaDHaPooSE14f4a1hCtWqFo/0fXCIYhNCcMUp5EktFR8C4Qkj9Uwq9jKB0H
	FeT7LdAJH8fOkBLBqAAuI/p1bGd6KyWv5TR1B4BMewz6GKzKUVmoEJ0ogg9eBg6fL9SEoTDaDg85g
	prt884Vg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhDeN-0000000ALEH-2GBZ;
	Mon, 04 Mar 2024 19:07:00 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhDaO-0000000AIHR-3UTg
	for barebox@lists.infradead.org;
	Mon, 04 Mar 2024 19:03:00 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rhDaF-00065F-Fd; Mon, 04 Mar 2024 20:02:43 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rhDaF-004PIg-0t; Mon, 04 Mar 2024 20:02:43 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rhDYJ-00Ed9V-1q;
	Mon, 04 Mar 2024 20:00:44 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  4 Mar 2024 19:58:56 +0100
Message-Id: <20240304190038.3486881-12-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240304190038.3486881-1-a.fatoum@pengutronix.de>
References: <20240304190038.3486881-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240304_110252_996728_D7E62CC1 
X-CRM114-Status: GOOD (  13.07  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v2 011/113] efi: payload: make missing state reporting less verbose
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

A non-existing state may not be a problem if barebox state is unused.
An error message is printed in that case inside of_read_file and failing
the initcall results in a second error message, which is annoying.

Change this to only print an info message and move along.
of_unflatten_dtb() will report errors to parse the file on its own.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 efi/payload/init.c | 23 +++++++++++++----------
 1 file changed, 13 insertions(+), 10 deletions(-)

diff --git a/efi/payload/init.c b/efi/payload/init.c
index 6e5ddfd22beb..9afb11fd94a5 100644
--- a/efi/payload/init.c
+++ b/efi/payload/init.c
@@ -386,28 +386,31 @@ postcore_initcall(efi_postcore_init);
 
 static int efi_late_init(void)
 {
-	char *state_desc;
+	const char *state_desc = "/boot/EFI/barebox/state.dtb";
+	struct device_node *state_root = NULL;
+	size_t size;
+	void *fdt;
 	int ret;
 
 	if (!IS_ENABLED(CONFIG_STATE))
 		return 0;
 
-	state_desc = xasprintf("/boot/EFI/barebox/state.dtb");
+	fdt = read_file(state_desc, &size);
+	if (!fdt) {
+		pr_info("unable to read %s: %m\n", state_desc);
+		return 0;
+	}
 
-	if (state_desc) {
-		struct device_node *root = NULL;
+	state_root = of_unflatten_dtb(fdt, size);
+	if (!IS_ERR(state_root)) {
 		struct device_node *np = NULL;
 		struct state *state;
 
-		root = of_read_file(state_desc);
-		if (IS_ERR(root))
-			return PTR_ERR(root);
-
-		ret = barebox_register_of(root);
+		ret = barebox_register_of(state_root);
 		if (ret)
 			pr_warn("Failed to register device-tree: %pe\n", ERR_PTR(ret));
 
-		np = of_find_node_by_alias(root, "state");
+		np = of_find_node_by_alias(state_root, "state");
 
 		state = state_new_from_node(np, false);
 		if (IS_ERR(state))
-- 
2.39.2



