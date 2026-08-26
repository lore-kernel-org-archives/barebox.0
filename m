Delivery-date: Wed, 26 Aug 2026 15:35:49 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wzDnB-007Ru4-08
	for lore@lore.pengutronix.de;
	Wed, 26 Aug 2026 15:35:49 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 923642017D4
	for <lore@pengutronix.de>; Wed, 26 Aug 2026 15:35:45 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=s2qBoN4W;
	dmarc=none;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org"
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=xRLHMLzwuVYS9VD/x0mbykKPvmphujDKxVHGwoibkpg=; b=s2qBoN4WOO3OuBU4h/HvEXt6kH
	4CN1OdF+24U/GF4DleYc6dP6QFWwvPCqjP8SVBU3piuPu48UyWzSnqJo7IY/C6qiJ8j6MTFnhTuXQ
	ffh8nRsVMUg8E/0hE5VNmMM7V9PiCJ7yi5HZsq9ecP6zkm7fUHkRzp4DmLBLJpr9g6kzbMwxDiKxA
	T4lFhMhz0B4uAG37qNOjgLIgaGcjbBY8jTunLLFNzVlm9OR4W66Usy/qwB22/QVBjZyV+Ouj1Y/cr
	Mzp3F6cRxcB591R1zsj0xdm4sNOqed2UJad9J9D1WprKOIAItWWhs6PIqQvrnlL1HOGRRTuZDg4uU
	C9ai9kBA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wzCYv-00000002PIN-0Ct1;
	Wed, 26 Aug 2026 12:17:01 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wzCYe-00000002PDR-1YOO
	for barebox@lists.infradead.org;
	Wed, 26 Aug 2026 12:16:46 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 69536202101;
	Wed, 26 Aug 2026 14:16:42 +0200 (CEST)
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wzCYc-003RAO-10;
	Wed, 26 Aug 2026 14:16:42 +0200
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wzCYc-0000000CJpx-0r2z;
	Wed, 26 Aug 2026 14:16:42 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: fpg@pengutronix.de,
	chalianis1@gmail.com,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Subject: [PATCH RFT 1/4] efi: payload: ignore ESP state.dtb if device tree is populated
Date: Wed, 26 Aug 2026 14:15:29 +0200
Message-ID: <20260826121640.2936023-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260826121640.2936023-1-a.fatoum@pengutronix.de>
References: <20260826121640.2936023-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260826_051644_630044_EE3ADAB5 
X-CRM114-Status: GOOD (  11.97  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  In preparation for allowing the state nodes to ship inside
    the barebox binary (as we do for non-EFI-payload already), add provisions
    to skip the external file if barebox already has a populated DT. Also for
    the case that a state had already been set up, skip manual creation of the
    state node. 
 
 Content analysis details:   (-1.9 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
                             [score: 0.0000]
  0.0 DMARC_MISSING          Missing DMARC policy
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
X-Spamd-Result: default: False [-56.21 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[100.00%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	MID_CONTAINS_FROM(1.00)[];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_MISSING_CHARSET(0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2607:7c80:54:3::133:from,2a0a:edc0:0:1101:1d::54:received];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_IN_DNSWL_LOW(-0.10)[2a0a:edc0:0:c01:1d::a2:received];
	HAS_LIST_UNSUB(-0.01)[];
	ARC_NA(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	TO_DN_SOME(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	FREEMAIL_CC(0.00)[pengutronix.de,gmail.com];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[a.fatoum@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	NEURAL_HAM(-0.00)[-0.994];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Stat-Signature: 9zzwctmxzcbofgwqn8h9ibfnw9jbojse
X-Rspamd-Queue-Id: 923642017D4

In preparation for allowing the state nodes to ship inside the barebox
binary (as we do for non-EFI-payload already), add provisions to skip
the external file if barebox already has a populated DT.

Also for the case that a state had already been set up, skip manual
creation of the state node.

Assisted-by: Claude:opus-5
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 efi/payload/init.c | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/efi/payload/init.c b/efi/payload/init.c
index 1e5f2eb8cf56..db4bc25682a3 100644
--- a/efi/payload/init.c
+++ b/efi/payload/init.c
@@ -284,6 +284,7 @@ static int efi_late_init(void)
 {
 	const char *state_desc = "/boot/EFI/barebox/state.dtb";
 	struct device_node *state_root = NULL;
+	struct device_node *root;
 	size_t size;
 	void *fdt;
 	int ret;
@@ -303,6 +304,17 @@ static int efi_late_init(void)
 		return 0;
 	}
 
+	/*
+	 * A device tree built into barebox takes precedence: any state it
+	 * describes has been instantiated by the state driver already.
+	 */
+	root = of_get_root_node();
+	if (root && !list_empty(&root->children)) {
+		pr_warn("device tree is populated, ignoring %s\n", state_desc);
+		free(fdt);
+		return 0;
+	}
+
 	state_root = of_unflatten_dtb(fdt, size);
 	free(fdt);
 
@@ -320,6 +332,10 @@ static int efi_late_init(void)
 			return 0;
 		}
 
+		/* probing the registered tree may have instantiated it already */
+		if (state_by_node(np))
+			return 0;
+
 		state = state_new_from_node(np, false);
 		if (IS_ERR(state))
 			return PTR_ERR(state);
-- 
2.47.3



