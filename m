Delivery-date: Tue, 25 Aug 2026 02:08:36 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wyeiR-006sbC-2q
	for lore@lore.pengutronix.de;
	Tue, 25 Aug 2026 02:08:36 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 0C541200FF9
	for <lore@pengutronix.de>; Tue, 25 Aug 2026 02:08:32 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b="BOVCmUZ/";
	dkim=pass header.d=gmail.com header.s=20251104 header.b=YRjIh2Az;
	dmarc=pass (policy=none) header.from=gmail.com;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org"
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=PUA+j9Eu0I+5rMHFywMsDescagTPNk7BsFVcXouxcsU=; b=BOVCmUZ/cVF8913auLyQ9xt08l
	KhNKuVFN6u/fPtDcXQQzidEvd5i1GA2J9GzneFX0K6KDpvty3KqqrxtRJjVi5vaGIybi3VY2fi/oF
	Ni5A1cLab41zDK8rDfehudoxO3QY0wFFD3muBoEdgszHF0LQK5Ts0cC5GkryUQ3y69/+tnPUGQ0xL
	mfrsBdMvkGfcfrbXEji3Q+jKOP8tb5215VIyj33jukPWK/XFb0BiSGyBs1a06+zmfTvUMuXLT1U5c
	nvP+ddqcyBmGD0s8GU+eTdmjCJ9QkuPOxdFfeRl1mVnTC6fdQ0GCDjD3b9MygHOILqpQowAvYa1Vb
	txaHQRtA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wyeh1-0000000HW6x-128y;
	Tue, 25 Aug 2026 00:07:07 +0000
Received: from mail-wm1-x32e.google.com ([2a00:1450:4864:20::32e])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wyegu-0000000HW3s-350J
	for barebox@lists.infradead.org;
	Tue, 25 Aug 2026 00:07:01 +0000
Received: by mail-wm1-x32e.google.com with SMTP id 5b1f17b1804b1-4921eed3fa2so31322285e9.0
        for <barebox@lists.infradead.org>; Mon, 24 Aug 2026 17:07:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1787616419; x=1788221219; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=PUA+j9Eu0I+5rMHFywMsDescagTPNk7BsFVcXouxcsU=;
        b=YRjIh2AzweTO9VHR2nEold6SVECLEkpzBnsId8+k+ic9wydkyjpzfiHQuGVxRmfHcF
         QX07Yns0LmdmZGC9ISwHPHgQI9E6cpZ+4d8uDLaWfOoHF5zaHZs+eamINcgsGi3I+et7
         CpNo96AViGE8ra5LNL4pcDp3OMVRIrD3qP/jJh8LybAyOxb8d3zsDbV04MBvk5yJvMv4
         cfvMhSyye216Jl79ljnEHXPjx4dSpHGvoo/ML7mC1sW9YJb7OfvmRuFOgXs7tOzF6OKP
         5wyZ0bHCwc7lwCJ97ndyzLWejbpB7DtgZ3g3kYyX8C7J11O1bYBWpkvGulaSP9lbgcev
         chQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1787616419; x=1788221219;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=PUA+j9Eu0I+5rMHFywMsDescagTPNk7BsFVcXouxcsU=;
        b=IUpiBWPa80Ix27qEAFPMR30vZ4+1YSlnk7gM0Xfqu999b9HoXkTEPe2oXeNZInS1Ya
         3+h5Nb2G1/OYuZl7hJykqRUoWB9WClz0H30cG57DnC4qBBLIBm+CjTGl3AxsPeOWaqM9
         Qda9eBBKN0Q45ZSqmBOAMuJxKLNsSXUFUXGPlDBSpKW8avvnkBEGz9e8f985liQRuXnt
         L9mYjTAqe8Q2pde0jBipBOJYhlOv0N8n9R0VIMt8+8ppJS58WbxUwmD/Kx75uG+c3l+t
         eZacY5Qr/QgNInW0UlnyttzbG/vHNLgjZ17knO9Q17r8EGfOmmbhAWwz2oPGc6ng7gIl
         b47w==
X-Gm-Message-State: AFuF++lfkvWN/IOoY0KhPiDyP8jsRPVrl7aaefxEjy6hhy0ncOkBvqU1
	JKSsNkHsTbyL0Wl9wy2hNwkPi8GSbHWbbiRPCNtdjs64x7IfAAkIcc4k
X-Gm-Gg: AR+sD11hpHyxFLH7a9hQmb7W/RNcvO95EZHeSAT7W5XhsshDVtTd4dW593H3ydekqNg
	N7aS/kulxL+iyCPBksALTH8GbjhVcWVx4JqEMhEypS1r2WqaJnZnU2ciqSeP3/6GMQQ0qvw3uj2
	Qfeflgyh6XG7kvW6KzFEjmBPBKQAybqAYYO0AiyMP6atDslqCh0fttrfUVyeVmpf2tS3boc1UNx
	A6BvCvWxP3p97X/BXhkdC8Dx+2RSFHrJveWzaEPHkU/xQsVz/ABtfcoPG5/KS/DqsQe9YcsBBpH
	iJmhJn01Q0zVjM8QNMbDvIv5FRtF86Vx3McwBVTZCnmD7H1xaqDvwzTPdTj0HSuKna2wctgvSKT
	DgiUwt55TMPoxq9iJBQXXl6facU/L4LCPgRc6dDkIhnY99mj/9zaHNH7bgUWeesoTIcD0naEAlh
	cUxz17pc14U6iTbsTaEZppBU6sIBBsbXbtsufQIKIyi/88N2ax+z1auWormMm5qdw5Uw2G6lSVp
	Hk2ipZYKtQ/hr/T+U/GNUBXICQ9CwYJ0YExSYNubSksacmK8dE5grtf/DrQHCNrbExXnzoNPuCh
	l7zK/AlOeQ==
X-Received: by 2002:a05:600c:638d:b0:497:fecd:5b00 with SMTP id 5b1f17b1804b1-499b8457084mr427890375e9.9.1787616418597;
        Mon, 24 Aug 2026 17:06:58 -0700 (PDT)
Received: from CNCMK0001D007E ([213.195.92.95])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-499d636efa8sm10181285e9.14.2026.08.24.17.06.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 24 Aug 2026 17:06:57 -0700 (PDT)
From: chalianis1@gmail.com
To: s.hauer@pengutronix.de
Cc: barebox@lists.infradead.org,
	Chali Anis <chalianis1@gmail.com>
Subject: [PATCH v2 3/3] efi: payload: export resolved state as a BareboxState UEFI variable
Date: Tue, 25 Aug 2026 02:06:45 +0200
Message-ID: <20260825000645.122086-4-chalianis1@gmail.com>
X-Mailer: git-send-email 2.55.0
In-Reply-To: <20260825000645.122086-1-chalianis1@gmail.com>
References: <20260825000645.122086-1-chalianis1@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260824_170700_794074_EF1BBEC1 
X-CRM114-Status: GOOD (  13.19  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  From: Chali Anis When a "barebox,state" node is already reachable
    via barebox's live devicetree (statically compiled in, or injected by CONFIG_STATE_OVERLAY),
    render its fully resolved description - backend phandle in [...] 
 
 Content analysis details:   (-1.9 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
                             trust
                             [2a00:1450:4864:20:0:0:0:32e listed in]
                             [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
                             [score: 0.0000]
  0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends in
                             digit
                             [chalianis1(at)gmail.com]
  0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail provider
                             [chalianis1(at)gmail.com]
 -0.0 DMARC_PASS             DMARC pass policy
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
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Stat-Signature: 9hpk4wsjk7u1f8yy365ew86fbudfnhcr
X-Spamd-Result: default: False [-6.41 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,gmail.com:s=20251104];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DWL_DNSWL_NONE(0.00)[gmail.com:dkim];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_IN_DNSWL_NONE(0.00)[2a00:1450:4864:20::32e:received];
	FREEMAIL_FROM(0.00)[gmail.com];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[barebox@lists.infradead.org];
	FORGED_SENDER(0.00)[chalianis1@gmail.com,barebox-bounces@lists.infradead.org];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FROM_NEQ_ENVFROM(0.00)[chalianis1@gmail.com,barebox-bounces@lists.infradead.org];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RECEIVED_SPAMHAUS_PBL(0.00)[213.195.92.95:received];
	PREVIOUSLY_DELIVERED(0.00)[barebox@lists.infradead.org];
	RCVD_TLS_LAST(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	RCPT_COUNT_THREE(0.00)[3];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NO_DN(0.00)[];
	FREEMAIL_CC(0.00)[lists.infradead.org,gmail.com];
	DKIM_TRACE(0.00)[lists.infradead.org:+,gmail.com:+];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Queue-Id: 0C541200FF9

From: Chali Anis <chalianis1@gmail.com>

When a "barebox,state" node is already reachable via barebox's live
devicetree (statically compiled in, or injected by
CONFIG_STATE_OVERLAY), render its fully resolved description - backend
phandle included - with of_state_fixup() and publish it as a
"BareboxState" UEFI variable, so an OS-side consumer can locate the
state layout without needing a separate state.dtb file on the ESP.

Since a state node reachable this way makes the standalone
/boot/EFI/barebox/state.dtb loading path redundant, skip it whenever
a "state" alias is already present in the live devicetree.

Assisted-by: Claude Sonnet 5
Signed-off-by: Chali Anis <chalianis1@gmail.com>
---
 efi/payload/init.c | 46 +++++++++++++++++++++++++++++++++++++++++++++-
 1 file changed, 45 insertions(+), 1 deletion(-)

diff --git a/efi/payload/init.c b/efi/payload/init.c
index f0ce2a82cefc..7c1cb21d9ecd 100644
--- a/efi/payload/init.c
+++ b/efi/payload/init.c
@@ -287,6 +287,50 @@ core_efi_initcall(efi_register_firmware_nodes_fixup);
 #define EFI_LOADER_FEATURE_SECUREBOOT_ENROLL       (1LL << 11)
 #define EFI_LOADER_FEATURE_RETAIN_SHIM             (1LL << 12)
 
+static int state_to_efivars_export(void)
+{
+	struct device_node *np, *state_root;
+	struct state *state;
+	void *fdt;
+	size_t size;
+	int ret;
+
+	state_root = of_find_node_by_alias(NULL, "state");
+	if (!IS_ENABLED(CONFIG_STATE) || !state_root)
+		return 0;
+
+	state = state_by_node(state_root);
+	if (!state)
+		return -ENODEV;
+
+	np = of_new_node(NULL, NULL);
+	if (!np)
+		return -ENOMEM;
+
+	ret = of_state_fixup(np, state);
+	if (ret)
+		goto out;
+
+	fdt = of_flatten_dtb(np);
+	if (!fdt) {
+		ret = -ENOMEM;
+		goto out;
+	}
+
+	size = fdt_totalsize(fdt);
+
+	efi_set_variable("BareboxState", &efi_barebox_vendor_guid,
+			  EFI_VARIABLE_BOOTSERVICE_ACCESS |
+			  EFI_VARIABLE_RUNTIME_ACCESS,
+			  fdt, size);
+
+	free(fdt);
+	ret = 0;
+out:
+	of_delete_node(np);
+	return ret;
+}
+late_efi_initcall(state_to_efivars_export);
 
 static int efi_postcore_init(void)
 {
@@ -356,7 +400,7 @@ static int efi_late_init(void)
 	void *fdt;
 	int ret;
 
-	if (!IS_ENABLED(CONFIG_STATE))
+	if (!IS_ENABLED(CONFIG_STATE) || of_find_node_by_alias(NULL, "state"))
 		return 0;
 
 	if (!get_mounted_path("/boot")) {


