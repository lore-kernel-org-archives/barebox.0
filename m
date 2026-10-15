Delivery-date: Thu, 15 Oct 2026 11:44:56 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xHI1A-00Drml-06
	for lore@lore.pengutronix.de;
	Thu, 15 Oct 2026 11:44:56 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 7E6E0202012
	for <lore@pengutronix.de>; Thu, 15 Oct 2026 11:44:55 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=L1vs6h6o;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=CxAQzdZ4;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("pengutronix.de:s=20260414:i=1");
	dmarc=none
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1792057495; a=rsa-sha256;
	cv=pass;
	b=XzuS+m9OtyhMEOLp6+/ogqK7CN4N5uDBcpuPVAO0d/O4Jmz4RnTyoOPDbH0RE0EmT7z7iy
	WJUMs+gGWPnU63kSh3wsYrIiMXhML0j3QKs/IzAlIAxlCEAf+teyg4x7FyCFAk455kjsGN
	iXaHkZ7O9JGkU2CwFTrk9Whmv/47thKRjFx9Ao5jlnrirQiyY1odPGawesdzwmhAMXiWu3
	8OVpUSNlmtLzEauN057Jqbpx24FuJ9Q8SuO96HgFkJjgzrOiswHXzMs04qhtdPDDgsCYzR
	rbCTOz/aJWysgXzvXt8LkaCWBSv7ZckE/Mwf5ujVq7UJbKqqEHuHAGH+yKIvGw==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=L1vs6h6o;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=CxAQzdZ4;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("pengutronix.de:s=20260414:i=1");
	dmarc=none
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792057495;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=FLlFGMcP9B1X/YaHmGwx7IGs9+aGfC0DXuxu1BoWFtg=;
	b=ZFlxdnjygOjTp7fg6BTDjmy2UaK1uy1bc5Qi3pbMFRBGoWWLqVFbFDe03XaKivFTzpEFP3
	c4eeqQ6MN3ROGH3iIO3UNFoAe2ZR/HDv4jzT9ATvHLk9NXcI9APIbmbnb3Stk2FUiyN/nM
	W2nvVYTUZJdB0MZcXReQXT8VmwlfkmN91P5+jv454DBqRihFweVf9+RIJeetugkTAlKofR
	n/JjcPwGtVWe0lbmZfNR2wqwyXyPGq0UKZyRoJ7k+EmOJmP09JxmGpl2nJT1pkwKw9ZVW6
	cNBwPEF8c9brG/DNMmmx0EIMPyLpTojRCbiRuZnYN2Zf8ebZwkNK1CTBC1oaUQ==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=FLlFGMcP9B1X/YaHmGwx7IGs9+aGfC0DXuxu1BoWFtg=; b=L1vs6h6oc64hgLbPJcXOwZrSmN
	DE3A4AxhTiW5+5/76lqy17LnEmrG6N51P+4jsYnyW1oRkI9palw+C1iWxFj4CzNljJbjhtus5BGNi
	9aZ1WMi4wniu/JX9xCos/0Ims/tZhRUEApIDPJgxUYv/AWWuyIb+p73Yq1JeiVZyuW0f2LkBwbr5o
	yYpjsfcxi9/oVeH+XNlq8Ezjzio80RE2peE03FwuUA6Qygc1+L/HmzcMcEp7u82Rnk+C5NIf5oKS5
	1JIjC1MNRQwcTm9OPMmC+3ule11162VLYD35EIZxYH7Nk65WUr0SnDQt+GXovHHlnZqVfq7M37C12
	Zir6lZoQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHHgG-0000000HFYb-1WBR;
	Thu, 15 Oct 2026 09:23:20 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHHgC-0000000HFW2-37E9
	for barebox@lists.infradead.org;
	Thu, 15 Oct 2026 09:23:18 +0000
Received: from dude05.red.stw.pengutronix.de (dude05.red.stw.pengutronix.de [IPv6:2a0a:edc0:0:1101:1d::54])
	(Authenticated sender: relay-from-dude05.red.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 9F9892027D0;
	Thu, 15 Oct 2026 11:23:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792056191;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=FLlFGMcP9B1X/YaHmGwx7IGs9+aGfC0DXuxu1BoWFtg=;
	b=CxAQzdZ4akb1ttIJO4oSPgmGJl1a46bom61X+QODTMZxvutpSzcotcO9ypwi0TdQN56tD2
	G1nYL3sEVcxIoy8RL1fEPV0xfktvId/BYbQ43KTXF8tsRJhWG30jSYiqWC2DYTZNLgQNkJ
	HZRb0h5/Ss6HAwNJcLHYEK14BKZA5fKKQp5hMrnSG7NYns4C/wmYewVdMmLxmSUM3uHDIG
	tsjE69fuS5uY3tjhnWkjnwpDiXMunvEWXRuDRAKb9kBGSLhsWiZ5qsbXneiVJ7voBz/e/j
	E3EovUSzcUPaOEwuZy/fH4h5HdAa9fRoyyE2Ph1Lp9tzU8PgMn6omzP2xdI2kg==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1792056191; a=rsa-sha256;
	cv=none;
	b=O89g5G/VouEhTm5Dij6dYKkDtlv4b1BNVbVwJTQ10pVsfU7p/7I3s7nhIGEW325lPxVzU5
	By1xdWLNUu+sEG1oPXAq/HNj3G3s0K8MRec1KWv7XFz3Bcd/3foenkaYikfKiPigqBdOX2
	U3j2SSH6lIW9nb5FZPS7i5YawRDBWjVsW7cTlboDo8jND6l0ZeOZLiUoGzitKxoXAmGrUL
	8WnRzWhnvbv65uf4pEnIXnx9DQz0tcce8rPSokKctF1/dOZMsbEEh+VlenD+KEfo+ur8U9
	mH+xSvvpcSESwUNiEaxKHnLP9RQlCoaoTqXuNfit+hGQDvTyFNju7W5n47ghVQ==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-dude05.red.stw.pengutronix.de smtp.mailfrom=a.fatoum@pengutronix.de
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792056191;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=FLlFGMcP9B1X/YaHmGwx7IGs9+aGfC0DXuxu1BoWFtg=;
	b=fvtnat3eOSuSM0SaGT5BAmmIqWQcXI5aWO5CTn/hj6qEqhZC996AjQgxQQq3E82PXlO9+E
	GZRV1W8+1+TZ+b+X8UbzgKFPyAZUDr8k6mbcSH1Y7e68KCI6Apj2EIskOLGe4+DoSYoeGd
	Gd1J5z8BaEBSqQ8Y3tfDAeHnr5pL/4lDb69t8B362AUqy3E5o14Dd3y72zJlK1kmOd2eaQ
	yvsXSdI/dP3WVlfXzFCMFADO2W/sjK11rLmgxL7exTOk0LM7AgGW9MfIQMXCl3dW3+CA6N
	WpVfNfbImjD9sa3o/q/cV5vmPiwIwJR2U7siK5D/nHcwlPU3prSs63WYYqWeiQ==
Received: from dude05.red.stw.pengutronix.de (localhost [IPv6:::1])
	by dude05.red.stw.pengutronix.de (Postfix) with ESMTP id 854717415BD;
	Thu, 15 Oct 2026 11:23:11 +0200 (CEST)
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: fpg@pengutronix.de,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Subject: [PATCH v2 06/10] efi: payload: always shutdown barebox when booting
Date: Thu, 15 Oct 2026 11:18:48 +0200
Message-ID: <20261015092308.146516-7-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20261015092308.146516-1-a.fatoum@pengutronix.de>
References: <20261015092308.146516-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261015_022316_935719_221A04EF 
X-CRM114-Status: GOOD (  17.45  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  When barebox is about to boot a kernel image, it calls shutdown_barebox
    and then starts the image. When the kernel image is wrapped in a UKI, barebox
    will not detect it as a kernel image and will thus [...] 
 
 Content analysis details:   (-2.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
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
X-Spamd-Result: default: False [-59.11 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	ARC_ALLOW_TRUSTED(-2.00)[pengutronix.de:s=20260414:i=1];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[pengutronix.de:s=20260414:i=1];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_MISSING_CHARSET(0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2607:7c80:54:3::133:from,2a0a:edc0:0:1101:1d::54:received];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,pengutronix.de:s=20260414];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	DMARC_NA(0.00)[pengutronix.de];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+,pengutronix.de:+];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	FROM_NEQ_ENVFROM(0.00)[a.fatoum@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: 7E6E0202012
X-Stat-Signature: 4gcrxe3oske8bxnxc8h5g5465jo84ksk

When barebox is about to boot a kernel image, it calls shutdown_barebox
and then starts the image. When the kernel image is wrapped in a UKI,
barebox will not detect it as a kernel image and will thus not call
shutdown_barebox beforehand, which can mean that e.g. state is not
flushed.

We do not want to treat UKIs completely like kernels (e.g. we do not
want to override their built-in bootargs), but we still want to properly
shutdown barebox.

Resolve this by shutting down barebox whenever we are in a bootm handler,
no matter which kind of image is about to be started: bootm is the point
of no return. Images run from the shell via binfmt keep returning to
barebox afterwards, with the exception of EFI-stubbed kernels, which take
over the machine and thus continue to shut barebox down as before.

Assisted-by: Claude:opus-5
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 efi/payload/bootm.c |  4 ++--
 efi/payload/image.c | 21 +++++++++++++++------
 efi/payload/image.h |  1 +
 3 files changed, 18 insertions(+), 8 deletions(-)

diff --git a/efi/payload/bootm.c b/efi/payload/bootm.c
index 3168e07a3dc1..2bcfd90e42fa 100644
--- a/efi/payload/bootm.c
+++ b/efi/payload/bootm.c
@@ -185,7 +185,7 @@ static int do_bootm_efi_stub(struct image_data *data)
 	if (data->dryrun)
 		goto unload_ramdisk;
 
-	ret = efi_execute_image(handle, loaded_image, type);
+	ret = efi_execute_image(handle, loaded_image, true, type);
 
 	/* efi_execute_image takes care to unload the image on error,
 	 * so we set image_freed and fall through to freeing ramdisk
@@ -225,7 +225,7 @@ static int efi_app_execute(struct image_data *data)
 		return 0;
 	}
 
-	return efi_execute_image(handle, loaded_image, type);
+	return efi_execute_image(handle, loaded_image, true, type);
 }
 
 static int linux_efi_handover = true;
diff --git a/efi/payload/image.c b/efi/payload/image.c
index 378709b6de95..3668a6a04cac 100644
--- a/efi/payload/image.c
+++ b/efi/payload/image.c
@@ -100,15 +100,24 @@ int efi_load_image(const char *file, struct efi_loaded_image **loaded_image,
 
 int efi_execute_image(efi_handle_t handle,
 		      struct efi_loaded_image *loaded_image,
+		      bool is_bootm,
 		      enum filetype filetype)
 {
 	efi_status_t efiret;
 	const char *options;
-	bool is_driver, is_kernel = false;
+	bool is_driver;
+	bool no_return;
 
 	is_driver = (loaded_image->image_code_type == EFI_BOOT_SERVICES_CODE) ||
 		(loaded_image->image_code_type == EFI_RUNTIME_SERVICES_CODE);
 
+	/*
+	 * A bootm handler is the point of no return, but an EFI-stubbed kernel
+	 * started from the shell takes over the machine just the same, so
+	 * barebox needs to be shut down in both cases.
+	 */
+	no_return = is_bootm || filetype_is_linux_efi_image(filetype);
+
 	if (filetype_is_linux_efi_image(filetype)) {
 		options = linux_bootargs_get();
 		printf("Booting kernel via StartImage");
@@ -119,11 +128,11 @@ int efi_execute_image(efi_handle_t handle,
 				(strlen(options) + 1) * sizeof(wchar_t);
 		}
 		printf("...\n");
+	}
 
+	if (no_return) {
 		efi_set_variable_usec("LoaderTimeExecUSec", &efi_systemd_vendor_guid,
 				      ktime_to_us(ktime_get()));
-
-		is_kernel = true;
 		shutdown_barebox();
 	}
 
@@ -133,8 +142,8 @@ int efi_execute_image(efi_handle_t handle,
 
 	efi_continue_devices();
 
-	if (is_kernel) {
-		pr_emerg("Kernel image has unexpectedly returned\n");
+	if (no_return) {
+		pr_emerg("Boot image has unexpectedly returned\n");
 		BS->exit(efi_parent_image, efiret, 0, NULL);
 	}
 
@@ -160,7 +169,7 @@ static int efi_execute(struct binfmt_hook *b, char *file, int argc, char **argv)
 	if (ret)
 		return ret;
 
-	return efi_execute_image(handle, loaded_image, b->type);
+	return efi_execute_image(handle, loaded_image, false, b->type);
 }
 
 static struct binfmt_hook binfmt_efi_hook = {
diff --git a/efi/payload/image.h b/efi/payload/image.h
index bab1be368c21..33f7e1a21b30 100644
--- a/efi/payload/image.h
+++ b/efi/payload/image.h
@@ -13,6 +13,7 @@ int efi_load_image(const char *file, struct efi_loaded_image **loaded_image,
 
 int efi_execute_image(efi_handle_t handle,
 		      struct efi_loaded_image *loaded_image,
+		      bool is_bootm,
 		      enum filetype filetype);
 
 extern struct image_handler efi_x86_linux_handle_tr;
-- 
2.47.3



