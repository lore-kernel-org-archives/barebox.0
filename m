Delivery-date: Mon, 26 Oct 2026 13:13:15 +0100
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xLJZi-003VEE-2m
	for lore@lore.pengutronix.de;
	Mon, 26 Oct 2026 13:13:15 +0100
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id B67902008F0
	for <lore@pengutronix.de>; Mon, 26 Oct 2026 13:13:14 +0100 (CET)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=vDbt8kAU;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=f0ZJLQbY;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1793016795; a=rsa-sha256;
	cv=pass;
	b=MtCUdsLNF3Nd8gWGn9I33jyzyUpbJpBRQb7zfYP5KzQcUjfan7TAUFrhwuZ2NY05mFDkBy
	Jov6Y+wZj/n/Gv+H4bFK79nQi2nZ01UbYOxzKiUFHdFgPOBgf12YgJ9nzW8LzTANOBtSaT
	umO+4HkZrQeSsEb2yqohaoyOToGqwF88uYTInXtdNSBdA3UpsuB48Elkly0CjW8JstOfSs
	LuEocfBweayP5SoKfsLobSLcV3VA3QDA54jfbvxcrrB/Pn+YiPyzMBKqUNAcXvDf0p59km
	6OgYfCobTKlpTRWYyH+tiRyHQlaDZONK8NnR4XHMIEVwp0XjdxvCjdc/cY5O+w==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=vDbt8kAU;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=f0ZJLQbY;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793016795;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=ixomtGWix7F5xeDFH6ttqOBWae3IqLsnURhgelX4Aog=;
	b=ArB1YEVyU0Ye2pzJQ75dumXLovYt2hLdkkD78nySYsr0cicGtGenwxBSd+emwgd+zdU/61
	yZnk2NAnnZXsJTHISzLcwl3Mz/4uRAtApFXl0wLHxwMgGmNoOHCb9hbPDXhzdvifWjWTKQ
	rWQjmA0HPpUFn2ReNJkfvtLiIISM4jsNQKCrrqSb3O4nQDFO5VSXsxETa/6RFpvhtGRQvV
	V7ufurbZdahganHcGtw48FhY5fZJTaedzV6ba0H+gKsvUmo3wCDVxGfz2FOa9XNHtowC2v
	RCrKBNuU9R7nep3bCvkACNvdRGkIVmZlgLDNu+F0zk21iizgI7uziT6RQMa5rA==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Unsubscribe-Post:
	List-Owner; bh=ixomtGWix7F5xeDFH6ttqOBWae3IqLsnURhgelX4Aog=; b=vDbt8kAUEHTfN8
	rnuDse8wLU2wMRo/MrQLHZb1dPQJO9rrF592O0+Yn208sp1FRGw7SdRDzwsaVoi2orSRi3VSwZBmY
	212BQZDIKCWogpvy2ksHyIo1ApE0/h/seEedm50/Fwajhj1HQo3m0pAfWT7EsKCmONpaRaUd0hI14
	VGfja6V5+BCTMw6TdFOJpkNd7x89eBuXf2Rl0lgW272ZN1aDaQlTcNlEBcXFdzjECFt7g2xxqhQhr
	sdnSwisaNm/BdPwR0JcK7Od3i5euigagawo2EjXhvZdLE/jVAz6xr3IwiCCXVWXn+wpTDb64kh8ER
	PgKU7965SxUelvWRaIKQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLJYZ-00000002TCD-0gdZ;
	Mon, 26 Oct 2026 12:12:03 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLJYV-00000002TA1-2DOj
	for barebox@lists.infradead.org;
	Mon, 26 Oct 2026 12:12:01 +0000
Received: from dude05.red.stw.pengutronix.de (dude05.red.stw.pengutronix.de [IPv6:2a0a:edc0:0:1101:1d::54])
	(Authenticated sender: relay-from-dude05.red.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 8A0EE2022EC;
	Mon, 26 Oct 2026 13:11:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793016716;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=ixomtGWix7F5xeDFH6ttqOBWae3IqLsnURhgelX4Aog=;
	b=f0ZJLQbYxbdmqmw92F7ldUnypTRhYKn0i7xDiqSuzDGwFnbtEQix5Sjuy9UCCWxb6UOwgS
	bCMGnHN/LWfpNUSsQ7LYK5mHDM6Y18dzz+KpWJjzXsCnwwMuMtPXIlfdWnrxnbiNZLa+EV
	A3HHS7kHuoxg145kv1UbOqgNZp/dNgKp0izXBdNUwhj2Wx/Y44clTFSqbc4S0jqOXskui3
	PTGEAafdwywPgX8dGd36ITbcU6Qnftxvocm8pD92Rrqjk6Vzdxox2a8vbuCpi4KQ6JfHR2
	jCd/6+bvKGW3T/zPy3aBoSLvjGFgbKTfeP2Cno0QBptaef96TQY8fLcqTMLeFA==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1793016716; a=rsa-sha256;
	cv=none;
	b=FDCht1xW5c1wSsA9IXhqbyWF0xAPxIm1LjfQubzwtUFLTWI8gcVMWHbYIVxviBVMQN+XsZ
	0SAy1MrGrR1qnk26XrKHtJH8p3fC2aNBfavSdoW0AwK5sMTB3yG7yG+lkgOY0ZrC1p6xsv
	OMU875KlcSvjsb8IKH3DE4jvruDbEk74T9sJPGTUIsu1gQDscBnJjDMitlvm4b7VKqHHW7
	GdOXtfiXFB10xoQqMxvwJQwskOwK49IMNB+IcYENMNusfMapeiHak4Co9MKIsXpxlq5TR2
	QGa+kKwOwdBAeC6EWPB7pwhohsW2VIyabDUEAs8VGo6CSkxdKhdLp+uu1qbESg==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-dude05.red.stw.pengutronix.de smtp.mailfrom=a.fatoum@pengutronix.de
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793016716;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=ixomtGWix7F5xeDFH6ttqOBWae3IqLsnURhgelX4Aog=;
	b=OFH1LecdevJbZsTSCb21IvpgjuoOGmIMEOBlpJWC4L3hZyiX2bMex56ivdG9skUEDomVrF
	Q0FMde7jI094m7Gbj7wgkboUheE/+r8q1+H2j9HZw5wqulxENxhXsRRbpdtPF3sVpUSXTr
	w7WHfwohl8VPfDHllIDHFdHQmZtz05krebEekzklBt4gKTrGcARk7ZYFQpbGGAmBdjBA6S
	YvkMBbyMYw1xt3z5u0jpXtfD/inRA6bqVrffGA89JWDMJ1Kx2L2U54Ub/eKxGt8pnwdy6a
	BmDPKQ1+YSnZh+rkxgpRGBtO+UvS82V5KCE65Wf4TX2W0EDQI25HjViw1jKDRw==
Received: from dude05.red.stw.pengutronix.de (localhost [IPv6:::1])
	by dude05.red.stw.pengutronix.de (Postfix) with ESMTP id 69557743959;
	Mon, 26 Oct 2026 13:11:56 +0100 (CET)
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Subject: [PATCH v3 01/12] efi: treat EFI zboot Linux images like other EFI-stubbed kernels
Date: Mon, 26 Oct 2026 13:09:52 +0100
Message-ID: <20261026121150.455510-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20261026121150.455510-1-a.fatoum@pengutronix.de>
References: <20261026121150.455510-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261026_051159_737569_E2287DE6 
X-CRM114-Status: GOOD (  16.01  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  From: Ahmad Fatoum <a.fatoum@barebox.org> Linux kernels built
    with CONFIG_EFI_ZBOOT are EFI applications that decompress the actual kernel
    and hand it to the EFI stub. They carry "zimg" at offset 4 and LINUX_PE_MAGIC
    at offset 0x38, but none [...] 
 
 Content analysis details:   (-2.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
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
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: B67902008F0
X-Spamd-Result: default: False [-59.11 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[100.00%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	ARC_ALLOW_TRUSTED(-2.00)[pengutronix.de:s=20260414:i=1];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[pengutronix.de:s=20260414:i=1];
	R_MISSING_CHARSET(0.50)[];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2607:7c80:54:3::133:from,2a0a:edc0:0:1101:1d::54:received];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,pengutronix.de:s=20260414];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWO(0.00)[2];
	TO_DN_SOME(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+,pengutronix.de:+];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	FROM_NEQ_ENVFROM(0.00)[a.fatoum@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Stat-Signature: 7nb3ptnkrhxddnqd5ebpa5fhbb1g5epa

From: Ahmad Fatoum <a.fatoum@barebox.org>

Linux kernels built with CONFIG_EFI_ZBOOT are EFI applications that
decompress the actual kernel and hand it to the EFI stub. They carry
"zimg" at offset 4 and LINUX_PE_MAGIC at offset 0x38, but none of the
architecture-specific magics barebox looks for, so they have been
detected as plain MS-DOS executables so far.

bootm thus started them like any other EFI application: The Linux
bootargs weren't passed as load options and, as EFI payload, barebox
provided neither initrd nor device tree and didn't shut itself down.

Let's add a filetype for them, count it as Linux EFI image and register
image handlers and a binfmt hook, so they are booted the same way as the
EFI-stubbed kernels barebox already knows.

Tested with an arm64 Linux v7.2 zboot kernel and initrd on barebox as
EFI loader and as EFI payload running on top of it.

Assisted-by: Claude:opus-5.5
Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 common/filetype.c   | 5 ++++-
 efi/loader/bootm.c  | 7 +++++++
 efi/payload/bootm.c | 7 +++++++
 efi/payload/image.c | 6 ++++++
 include/filetype.h  | 8 ++++++++
 5 files changed, 32 insertions(+), 1 deletion(-)

diff --git a/common/filetype.c b/common/filetype.c
index a25be6e2fc7e..439f0529be69 100644
--- a/common/filetype.c
+++ b/common/filetype.c
@@ -92,6 +92,7 @@ static const struct filetype_str filetype_str[] = {
 	[filetype_x86_linux_image] = { "x86 Linux image", "x86-linux" },
 	[filetype_x86_efi_linux_image] = { "x86 Linux/EFI image", "x86-efi-linux" },
 	[filetype_pxa_ntim] = { "Marvell PXA3xx NTIM image", "pxa-ntim" },
+	[filetype_zboot_efi_linux_image] = { "Linux/EFI zboot image", "zboot-efi-linux" },
 };
 
 static const char *file_type_to_nr_string(enum filetype f)
@@ -460,7 +461,8 @@ enum filetype file_detect_type(const void *_buf, size_t bufsize)
 		return is_dos_exe(buf8) ? filetype_arm_efi_zimage : filetype_arm_zimage;
 
 	if (is_dos_exe(buf8))
-		return filetype_exe;
+		return is_zboot_efi_linux_image(buf) ?
+			filetype_zboot_efi_linux_image : filetype_exe;
 
 	if (bufsize < 256)
 		return filetype_unknown;
@@ -605,6 +607,7 @@ bool filetype_is_linux_efi_image(enum filetype ft)
 	case filetype_arm64_efi_linux_image:
 	case filetype_riscv_efi_linux_image:
 	case filetype_x86_efi_linux_image:
+	case filetype_zboot_efi_linux_image:
 		return true;
 	default:
 		return false;
diff --git a/efi/loader/bootm.c b/efi/loader/bootm.c
index a68db742e173..4129441a47de 100644
--- a/efi/loader/bootm.c
+++ b/efi/loader/bootm.c
@@ -353,6 +353,12 @@ static struct image_handler arm32_linux_efi_handler = {
 	.filetype = filetype_arm_efi_zimage,
 };
 
+static struct image_handler zboot_linux_efi_handler = {
+	.name = "Linux/EFI zboot image",
+	.bootm = efi_loader_bootm,
+	.filetype = filetype_zboot_efi_linux_image,
+};
+
 static struct image_handler efi_image_loader = {
 	.name = "EFI Application",
 	.bootm = efi_loader_bootm,
@@ -367,6 +373,7 @@ static int efiloader_bootm_register(void)
 		register_image_handler(&aarch64_linux_efi_handler);
 	if (IS_ENABLED(CONFIG_RISCV))
 		register_image_handler(&riscv_linux_efi_handler);
+	register_image_handler(&zboot_linux_efi_handler);
 	return register_image_handler(&efi_image_loader);
 }
 late_initcall(efiloader_bootm_register);
diff --git a/efi/payload/bootm.c b/efi/payload/bootm.c
index 2f9cc3cbf76b..d074709e3975 100644
--- a/efi/payload/bootm.c
+++ b/efi/payload/bootm.c
@@ -258,12 +258,19 @@ static struct image_handler efi_arm64_handle_tr = {
 	.filetype = filetype_arm64_efi_linux_image,
 };
 
+static struct image_handler efi_zboot_handle_tr = {
+	.name = "EFI zboot Linux kernel",
+	.bootm = do_bootm_efi_stub,
+	.filetype = filetype_zboot_efi_linux_image,
+};
+
 BAREBOX_MAGICVAR(global.linux.efi.handover,
 		 "Use legacy x86 handover protocol instead of StartImage BootService");
 
 static int efi_register_bootm_handler(void)
 {
 	register_image_handler(&efi_app_handle_tr);
+	register_image_handler(&efi_zboot_handle_tr);
 
 	if (IS_ENABLED(CONFIG_X86)) {
 		if (IS_ENABLED(CONFIG_EFI_HANDOVER_PROTOCOL))
diff --git a/efi/payload/image.c b/efi/payload/image.c
index c5a04d7967a9..76aca1c43cec 100644
--- a/efi/payload/image.c
+++ b/efi/payload/image.c
@@ -200,9 +200,15 @@ static struct binfmt_hook binfmt_x86_efi_hook = {
 	.hook = efi_execute,
 };
 
+static struct binfmt_hook binfmt_zboot_efi_hook = {
+	.type = filetype_zboot_efi_linux_image,
+	.hook = efi_execute,
+};
+
 static int efi_register_image_handler(void)
 {
 	binfmt_register(&binfmt_efi_hook);
+	binfmt_register(&binfmt_zboot_efi_hook);
 
 	if (IS_ENABLED(CONFIG_X86)) {
 		register_image_handler(&non_efi_handle_linux_x86);
diff --git a/include/filetype.h b/include/filetype.h
index 91dc37b71c13..281f467abcb2 100644
--- a/include/filetype.h
+++ b/include/filetype.h
@@ -73,6 +73,7 @@ enum filetype {
 	filetype_x86_linux_image,
 	filetype_x86_efi_linux_image,
 	filetype_pxa_ntim,
+	filetype_zboot_efi_linux_image,
 	filetype_max,
 };
 
@@ -182,6 +183,13 @@ static inline bool is_barebox_riscv_head(const void *header)
 	       !memcmp(header + 48, "barebox", 8);
 }
 
+/* "zimg" image type and LINUX_PE_MAGIC, see Linux zboot-header.S */
+static inline bool is_zboot_efi_linux_image(const void *header)
+{
+	return !memcmp(header + 4, "zimg", 4) &&
+	       le32_to_cpup(header + 56) == 0x818223cd;
+}
+
 static inline bool is_x86_linux_bootimage(const void *header)
 {
 	return get_unaligned_le32(header + 0x202) == 0x53726448;
-- 
2.47.3



