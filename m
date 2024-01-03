Delivery-date: Wed, 03 Jan 2024 20:46:57 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rL7Cc-002V0p-0b
	for lore@lore.pengutronix.de;
	Wed, 03 Jan 2024 20:46:57 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rL7Ca-00045G-KC
	for lore@pengutronix.de; Wed, 03 Jan 2024 20:46:57 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=yjYTCKXZe5Wl2HeWJ5c25x09PcgnAkHhknLjt/p6lUg=; b=kXftgKjZEa8zYsMuiW2zJWztMR
	xu5/gyVpFepRhxgQ925RabZbQYgzed7kbQhRs2npdI6FN6V01ibzDNlgDpNYGidPPrpysFWyCSr//
	I8pvD4t0ODPTLpwaF1i1A5mKtxxNitYo2BjQyXeGQGzDyiMub+RlaFSYNZyTfUH4ty7ikseTBtFR0
	CvErQtcSUAUn6GLF4UrpZNr8/ov2B9FnZao7f/ChXRm9EKL+u3ndQHmaI1ud3ZggjsgQkIQJD8REc
	d8znlmWV1AmEOb/eVgy7hPK/1AeFg/pr2DB7DUEDjGiWZaECPgw3sz1nnxJhRc4b44GTKYwl97j0A
	TOYyXDHg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rL7BT-00Bw5f-2H;
	Wed, 03 Jan 2024 19:45:47 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rL60z-00Bh1E-28
	for barebox@lists.infradead.org;
	Wed, 03 Jan 2024 18:30:56 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rL60y-0001O5-Gx; Wed, 03 Jan 2024 19:30:52 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rL60y-000AsG-3U; Wed, 03 Jan 2024 19:30:52 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rL5k1-001j4X-1S;
	Wed, 03 Jan 2024 19:13:21 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  3 Jan 2024 19:11:31 +0100
Message-Id: <20240103181312.409668-12-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240103181312.409668-1-a.fatoum@pengutronix.de>
References: <20240103181312.409668-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240103_103053_712482_EC0B7DAA 
X-CRM114-Status: GOOD (  12.56  )
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
X-Spam-Status: No, score=-6.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 011/112] efi: payload: make missing state reporting less verbose
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
index caab28741cc5..b0612276654e 100644
--- a/efi/payload/init.c
+++ b/efi/payload/init.c
@@ -385,28 +385,31 @@ postcore_initcall(efi_postcore_init);
 
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



