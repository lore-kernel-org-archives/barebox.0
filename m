Delivery-date: Tue, 25 Aug 2026 01:54:33 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wyeUr-006sQl-0V
	for lore@lore.pengutronix.de;
	Tue, 25 Aug 2026 01:54:33 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 602B5201BD1
	for <lore@pengutronix.de>; Tue, 25 Aug 2026 01:54:29 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=4tUFrQEr;
	dkim=pass header.d=gmail.com header.s=20251104 header.b="U78e/xnu";
	dmarc=pass (policy=none) header.from=gmail.com;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org"
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=AdFMSzcv59HwqblvyrxWA0+JjEB6wAKHfcyK9l7CsUg=; b=4tUFrQErQ0wnsJinDqNpptXvRJ
	RSC+EBA/eq/0eifiemQtj6zVxH0ck2HgjbamLZ3fLn+jmMT+kZvYVzvKH8tBNq0tvz+gymiDZFcwd
	nCaB3wMhEvs5vJIGfIfV09cTFyx42iDa0znQRHfooCreKejPSKVIfKJnFYqpiMA1EchYRkPPUtTiw
	5fPzO2PL0jkaG1OCR7PyOx7dKBOLtvDFL0fWneWV5afUwrxbqVEeTFFbkCkXsFT/vp72Yhgm9YG0Z
	eZmrtRfRz7jdVvAFHn4U5nn6ZWlKi1TXezCCArMMqvuSNSkph/8+ctX3T6j1HLb36eH6eNZDUFL4U
	IIIxGDnw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wyeTY-0000000HVYM-0fi0;
	Mon, 24 Aug 2026 23:53:12 +0000
Received: from mail-wm1-x32d.google.com ([2a00:1450:4864:20::32d])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wyeTV-0000000HVWG-0Wjr
	for barebox@lists.infradead.org;
	Mon, 24 Aug 2026 23:53:10 +0000
Received: by mail-wm1-x32d.google.com with SMTP id 5b1f17b1804b1-496bb7cdf51so23347105e9.2
        for <barebox@lists.infradead.org>; Mon, 24 Aug 2026 16:53:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1787615587; x=1788220387; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=AdFMSzcv59HwqblvyrxWA0+JjEB6wAKHfcyK9l7CsUg=;
        b=U78e/xnux/cz0YwnA8mhb50wvjyKSjehgAAdg2kZdDLARYyaL2xdAdqa2PtUUxDEk6
         2Z9H/Te0JxYJqf64Y6X7GKJ6EeuyqmN4h+DDHcD9u2r1CWuoD9e8pIbeA6pvyUx678tE
         vEn3cc7SVhcpAmjFeA16EYxlptMZc0QQmwuE1C/DqTGAaS45yd3SXFJf7yetijn47mho
         cVMkT/ug0/cY1dbgNI+LJKpABDrpGfll3UXkKvPPgRgLlsTLaAvvjoVZuOiKyW425d6a
         IwnGJaKwEPkY9WjsXBTEt7ldf17xFRBGG/Z3hcyfFkYDrnXpV7FFPHTNd9Ln2/7fFZMf
         6bpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1787615587; x=1788220387;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=AdFMSzcv59HwqblvyrxWA0+JjEB6wAKHfcyK9l7CsUg=;
        b=J7CvcjUcwHfPZNaPdsCX20HDYIdUs6zBFSkcJ+7MnzTkG9jCzos1BgtGyu74kj21Yt
         Oj1vj2J79CzJhxt7aMwBCbds63CtAz1IYfjIQJSJ3rIJq2YkkDcBG2caV3sNh20HSKlh
         wk7Z6eJpPBPgJo2SlaW3R0qKEtAnKWJeIM8JEvAKoMY9/aYKAT+Kes28NU8ZwPZTWJe7
         fFWip0Wz/tzCuCD+2Cy1yIPeXJbKh3owTiYDYWlK1rqllI75rvT7Jw9bIY7q/EZF2I10
         vq7XRwiUXLtOoLAT8pfiT4WjO7rIxY4XhzmDMow8CQJkhrwYvArUGUT0z7zMjz2Qn+RB
         +3GA==
X-Gm-Message-State: AFuF++nHfCudyCxMutC987idvcpjvRpAcrMBTbAwRLsM6oSwWuZxS17y
	c6+etZ1CquGwWsoZqTtaZb9oTJDXpjuRJhPAKe+LB5FLqRpt8Vux3zIReJLFlA==
X-Gm-Gg: AR+sD11qKyE+1U9g4i8CnSeNG8mty0H1+iZytnDZLF3ORkgqA9YravGXkuwela9KLNB
	IR+D8EOg8oaq/1SnAUx0Rxl0PoeaExEidJLhQ/oabZPYcVWncfa+uNNCouBeNPbE/8KINDZKEwi
	qDTnqsYr1UrrRXOcgYUJmTmSvA9vgu2D3OWwV1+W7eM/73DAAGuqfVOMolR/xZZNoax6tD2qwSK
	dUxHOFOnasa6/osGgC2pabxV+YL5ogBHPuBtlVHDs5CPc3SBd4xMwSrqDbWLx7dSIet6juU/RdK
	zZz3IYKvbyrn4KpIMt+nZjwjcKdOMsDRZkVasJ9D9FwSU+iWeLvxt90VL57gKYQKzYVbDWKWlV8
	kNi6Ln52DMiPXnzrTAGi+6MnKGaEO2ju0/LcOW6QBzXs81qb6qEjXha45VRsVa5SqMJOfSY9Qeu
	+zLrlWBcHTzF4L4rkSHOkmXxKD1PgD2GCuDi3Ef89CeO/BLqj6zlyDKK2AcYxPpWnHJYy6VDkvk
	AXqZ+jDZ9a7+xLfRZ0iMGatk7TJAOti7DSq2g7cMcRpfAP80U4TsxTjLF0wJGCnwSBFNo8LuQhP
	rsfIYlkOtQ==
X-Received: by 2002:a5d:64c6:0:b0:47f:8f8f:db74 with SMTP id ffacd0b85a97d-482c0b87e35mr38607770f8f.12.1787615587142;
        Mon, 24 Aug 2026 16:53:07 -0700 (PDT)
Received: from CNCMK0001D007E ([213.195.92.95])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-482c9b69a60sm9845153f8f.1.2026.08.24.16.53.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 24 Aug 2026 16:53:05 -0700 (PDT)
From: chalianis1@gmail.com
To: s.hauer@pengutronix.de
Cc: barebox@lists.infradead.org,
	Chali Anis <chalianis1@gmail.com>
Subject: [PATCH v2 3/3] efi: payload: export resolved state as a BareboxState UEFI variable
Date: Tue, 25 Aug 2026 01:52:50 +0200
Message-ID: <20260824235250.94681-4-chalianis1@gmail.com>
X-Mailer: git-send-email 2.55.0
In-Reply-To: <20260824235250.94681-1-chalianis1@gmail.com>
References: <20260824235250.94681-1-chalianis1@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260824_165309_182312_08DDD77A 
X-CRM114-Status: GOOD (  13.11  )
X-Spam-Score: -0.8 (/)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  From: Chali Anis When a "barebox,state" node is already reachable
    via barebox's live devicetree (statically compiled in, or injected by CONFIG_STATE_OVERLAY),
    render its fully resolved description - backend phandle in [...] 
 
 Content analysis details:   (-0.8 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
                             trust
                             [2a00:1450:4864:20:0:0:0:32d listed in]
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
  1.0 FORGED_GMAIL_RCVD      'From' gmail.com does not match 'Received' headers
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
X-Stat-Signature: ouwcs13t6tjnr6n8joq8tmiy8utg4ed8
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
	RCVD_IN_DNSWL_NONE(0.00)[2a00:1450:4864:20::32d:received];
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
X-Rspamd-Queue-Id: 602B5201BD1

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
index f0ce2a82cefc..eabebafb3774 100644
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
+	efi_set_variable("BareboxState", &efi_systemd_vendor_guid,
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


