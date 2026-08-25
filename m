Delivery-date: Tue, 25 Aug 2026 05:07:22 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wyhVR-006vbE-1P
	for lore@lore.pengutronix.de;
	Tue, 25 Aug 2026 05:07:22 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id AAD3F2018C1
	for <lore@pengutronix.de>; Tue, 25 Aug 2026 05:07:21 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=zTqcYcj8;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=cYUyAYet;
	dmarc=pass (policy=none) header.from=gmail.com;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org"
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ENQneSJVo0z6FgTquzj0xnOrMjQBzV/tjlYZxbYKl3M=; b=zTqcYcj8lzw44TKsu9XjAF5+e9
	gGtqjSaaXuxTMToS1fCbKT1/B8wLtdAF4VbRZxyEKart0zlSh7ApK16iL9RNTLjpUh1406QgJjqHr
	HE//sYw1SMPsdVXvy1qMkIDEBrx1IoyRJFnNE3GEW7ubuQCpnnFXsm/A6EE7GxmpiqCGpK6AdCVkH
	q3gRgAfhb7/7NmMRYIkJHwIpmuFj2m+re9WQlklT8Bof5ng27U7+5PWU/6mub1j6wcrPdtY/KZyNn
	cw8Zzdn0by7GxpeAqkoAlfkRH+1pXWEb4EVfBPW3vks88snP3Cf9j78oeLBDE8ly4GoTVq9i1DLRR
	WYk3ql4Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wyhUI-0000000050s-1ELo;
	Tue, 25 Aug 2026 03:06:10 +0000
Received: from mail-wm1-x331.google.com ([2a00:1450:4864:20::331])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wyhUG-000000004zT-01gP
	for barebox@lists.infradead.org;
	Tue, 25 Aug 2026 03:06:09 +0000
Received: by mail-wm1-x331.google.com with SMTP id 5b1f17b1804b1-499b2981a7bso25440795e9.3
        for <barebox@lists.infradead.org>; Mon, 24 Aug 2026 20:06:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1787627166; x=1788231966; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=ENQneSJVo0z6FgTquzj0xnOrMjQBzV/tjlYZxbYKl3M=;
        b=cYUyAYetN4xr2FtsKr9SNqQaPyr8wehXqxuvj43ULvcE/tcx7zwOp0idsRd05qczp8
         SKiWxFNVMY3O8GDfPiprjAh/R043lcXrM8pmjG6zii1itze8KeO7l8ihgn1mtc06p8lD
         kbhvtzqPA72u6lvm9GRvcMuAxD9QWaKSnXCtl97UzzVkjbGoSUKAuU7pafvb++F7NSN8
         ax+HmehZ7YjbqlEjK3s981SsKr9fxq9Y36Vh2CHGBXT71ez4leSeMGA0TrMrY8KxDWDJ
         7nkyVoyBKRVuYwtUxFOw6g7kNo1R6I5gLedPDyVS+1pxp8TtwyreY0SfhSi48t0hg88a
         q1fA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1787627166; x=1788231966;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=ENQneSJVo0z6FgTquzj0xnOrMjQBzV/tjlYZxbYKl3M=;
        b=Y7qZogOjcijX5/OGDbvgHkNOjUpHlTzOUL0ID1CKTdLq67hmOxQ55hctQEX7mVmx/E
         f9bfZchKrYNDRwpypyDee0272sdFidPbkVG3JDZm2crosmzMm1+pbGeLI45+keGAS9UH
         HnxURl1D9QwswhhLjRPgW1kJw0s/F+VR+GCGS9NSUK64KuEePMTxnvrNJFjvpIgmKSPa
         gHdjHdW50mJZLcMcLKeUJHcipITVDHYFP1+6DmaZ4XOz0CfppyLMKu8/zm7k7taHoEGx
         ZHxFyuFn7NkzSTJCRiUH+/NF1FREuemGF7Lf2/DjW9Fe7f8DwMpxi8dljqjTH7df4qek
         U3qQ==
X-Gm-Message-State: AFuF++lLECHgx6KXKlW5MLDHBFvMLNK6e4oB6kZ3jCxaXzoGVTW3+KKx
	OnV9XKiTLRp3qXQDv9hpkHXBi9wdBkct2spbdhFYyOovEzLE+2vLgCYfMh15QA==
X-Gm-Gg: AR+sD12s6TzOnxPmcSS7NAa2YV9LSqn09eRAJvwcAwMdRc/JRG/X+GRWg1+HbY+xV3M
	6KIw5pF/x7e/GyS5F7owRzUQ6CNgDtC44xrD+LeAiSETVUlgpStjnItT/pHc6eG3cJGoN2kZVKj
	vWo0rTmb15nq/vbBkSLDTPKUzt+l8ikdR63Lu0SBO72M9kQiEhCY13IGy+RYBqISuCWSD2lGsCb
	K0/DIy2v7vCVBTDaNh5WM4UxnzvPgYBEkeLEW/KyuZMchYGQ4OUzPHDtajGv6pv5UARbX1JHs+d
	2kdCIaQXTz/6FsjeCr8ZshfvsmEJ7KR3WoLZvYRHM+GOgd3+gXj9GYi4r067wft03laCEkOPAGb
	sdaQH9V8DNffGy9aosr2zvD6c85yMv8l4yhzzV60qryQYyk6RM+nJg+YY2IorPBTcygV34u01iV
	FjvAXLbsTkpHhIDHQX2QHmmLfuC5oA0/E8qWIgBk5XePGLkCfy8SP4Cf4r2/cU7u51SQctt8Gof
	QZBtIN3ORCFjg48HBkFZP3VJ93RRYMmZGNv/4T/l+a1BJXwmOmcmaRf35nVIyHt2rW8JHTMzPs/
	Bw7HLtl4MA==
X-Received: by 2002:a05:6000:25fe:b0:47f:86af:8fe7 with SMTP id ffacd0b85a97d-482c0ba220fmr45292122f8f.22.1787627165968;
        Mon, 24 Aug 2026 20:06:05 -0700 (PDT)
Received: from CNCMK0001D007E ([213.195.92.95])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-482c9c146f1sm9944021f8f.33.2026.08.24.20.06.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 24 Aug 2026 20:06:03 -0700 (PDT)
From: chalianis1@gmail.com
To: s.hauer@pengutronix.de
Cc: barebox@lists.infradead.org,
	Chali Anis <chalianis1@gmail.com>
Subject: [PATCH v3 3/4] efi: payload: export resolved state as a BareboxState UEFI variable
Date: Tue, 25 Aug 2026 05:05:47 +0200
Message-ID: <20260825030548.473672-4-chalianis1@gmail.com>
X-Mailer: git-send-email 2.55.0
In-Reply-To: <20260825030548.473672-1-chalianis1@gmail.com>
References: <20260825030548.473672-1-chalianis1@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260824_200608_067477_038DD4A9 
X-CRM114-Status: GOOD (  16.74  )
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
                             [2a00:1450:4864:20:0:0:0:331 listed in]
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
X-Stat-Signature: 3gzuiyq8hzosd57ghh4hkweufwgxj4br
X-Spamd-Result: default: False [-6.41 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	MID_CONTAINS_FROM(1.00)[];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,gmail.com:s=20251104];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER(0.00)[chalianis1@gmail.com,barebox-bounces@lists.infradead.org];
	ARC_NA(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORWARDED(0.00)[barebox@lists.infradead.org];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	RCVD_IN_DNSWL_NONE(0.00)[2a00:1450:4864:20::331:received];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_NEQ_ENVFROM(0.00)[chalianis1@gmail.com,barebox-bounces@lists.infradead.org];
	FREEMAIL_FROM(0.00)[gmail.com];
	RECEIVED_SPAMHAUS_PBL(0.00)[213.195.92.95:received];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	PREVIOUSLY_DELIVERED(0.00)[barebox@lists.infradead.org];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	FROM_NO_DN(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	FORGED_SENDER_FORWARDING(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+,gmail.com:+];
	DWL_DNSWL_NONE(0.00)[gmail.com:dkim];
	FREEMAIL_CC(0.00)[lists.infradead.org,gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Queue-Id: AAD3F2018C1

From: Chali Anis <chalianis1@gmail.com>

When a "barebox,state" node is already reachable via barebox's live
devicetree (statically compiled in, or injected by
CONFIG_STATE_OVERLAY), render its fully resolved description - backend
phandle included - with of_state_fixup() and publish it as a
"BareboxState" UEFI variable, so an OS-side consumer can locate the
state layout without needing a separate state.dtb file on the ESP.

state_to_efivars_export() and efi_late_init() are both late_efi_initcall,
and within one initcall level, execution follows definition order in the
object file, so state_to_efivars_export() must be defined after
efi_late_init(): on boards with no state node in their own static
devicetree, efi_late_init() is what loads and registers
/boot/EFI/barebox/state.dtb, and only once that has had a chance to run
does state_by_alias() have anything to find. Defined the other way
around, state_to_efivars_export() would always run first and never see
a state.dtb efi_late_init() had not loaded yet - it would only have
happened to work when CONFIG_STATE_OVERLAY had already registered the
node much earlier, at postcore_initcall, a narrower case than the
state.dtb fallback efi_late_init() exists to support.

Look the state instance up via the state_by_alias() helper
(common/state/state.c) rather than open-coding the equivalent
of_find_node_by_alias() + state_by_node(). This also means state not
being set up yet is just a clean no-op, rather than the -ENODEV that
open-coded version returned, which would've been logged as an initcall
failure for what is an entirely ordinary condition.

Assisted-by: Claude Sonnet 5
Signed-off-by: Chali Anis <chalianis1@gmail.com>
---
 efi/payload/init.c | 51 +++++++++++++++++++++++++++++++++++++++++++++-
 1 file changed, 50 insertions(+), 1 deletion(-)

diff --git a/efi/payload/init.c b/efi/payload/init.c
index f0ce2a82cefc..cdb73afffa2c 100644
--- a/efi/payload/init.c
+++ b/efi/payload/init.c
@@ -287,7 +287,6 @@ core_efi_initcall(efi_register_firmware_nodes_fixup);
 #define EFI_LOADER_FEATURE_SECUREBOOT_ENROLL       (1LL << 11)
 #define EFI_LOADER_FEATURE_RETAIN_SHIM             (1LL << 12)
 
-
 static int efi_postcore_init(void)
 {
 	const struct efi_device_path *parent_image_dp, *loaded_image_dp;
@@ -404,6 +403,56 @@ static int efi_late_init(void)
 }
 late_efi_initcall(efi_late_init);
 
+/*
+ * Must run after efi_late_init(): on boards with no state node compiled
+ * into their own devicetree, efi_late_init() is what loads and registers
+ * /boot/EFI/barebox/state.dtb (or, on CONFIG_STATE_OVERLAY targets, that
+ * already happened much earlier). Only once that has had a chance to run
+ * does state_by_alias() have anything to find here.
+ */
+static int state_to_efivars_export(void)
+{
+	struct device_node *np;
+	struct state *state;
+	void *fdt;
+	size_t size;
+	int ret;
+
+	if (!IS_ENABLED(CONFIG_STATE))
+		return 0;
+
+	state = state_by_alias("state");
+	if (!state)
+		return 0;
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
 static int do_efiexit(int argc, char *argv[])
 {
 	if (!BS)


