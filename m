Delivery-date: Mon, 26 Oct 2026 13:16:58 +0100
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xLJdK-003VIu-0h
	for lore@lore.pengutronix.de;
	Mon, 26 Oct 2026 13:16:58 +0100
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 1F402202292
	for <lore@pengutronix.de>; Mon, 26 Oct 2026 13:16:58 +0100 (CET)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=vHi2h9e4;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=IYv+Dd+o;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1793017018; a=rsa-sha256;
	cv=pass;
	b=fL61JDiR74+CGvsszJ9rOSlKweVn1b3hx6FiawP8iT2due/I+M7c/aDJQ8a90p4jS64B8l
	Q1gTmb8aubKj1sHr+rp+Y+uNWEDLJPTiGqYJqHS+BQtxnZg/fASsO624/zO3jGcsevKiZP
	yt/Jrs2QNpIxhlGJXFvqGeTsQzBXA7mvhQhCGleDDhv+awMcVydSsJn8v4+0pmzh2n3/+4
	sD+XLd2RdaLOLSE9EChi2Wj5b0Md3e4kVmjf5WJryWC9J0A+49dFbviQleOoGLc8DtKUIi
	UyaMxyf3n9Y+Co6Y4MGcj4SveY7aZhC1jJHktIMWu7s3EYbpgybG5sICHD3S8g==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=vHi2h9e4;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=IYv+Dd+o;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793017018;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=CQGt3Ly2QcfB8GafZAaI3CxAnP8949dq7T1Yx2BcqDM=;
	b=PRjGjfr5tJPCCnSGILJhVEOXAwwfc2qMEAA8/LWRN42FuabNrOYQvV6e+ROGUP7/ZCVjPe
	M9D5Y+OGjmDu216TqijQ/Gpyv8FLKieQ+kGWrKxwadL72YCCnATuFPjSRykPYbWrqCaRr2
	04dFt115rpQeKg8K3baX8ahu9Lz6/IToaDTYG8ezPJ1XX34xneSPT/IaWivQI/TpwW8ZXk
	W2THE1qL049qfkeEbRGJucLaO0HynG4zaSVddoJKCa0crqs6uBY7c39+33nlXmV4kQoxqi
	0rWvPrzd+eb4cLlxNIokGnXSRyVmezt21FNhMQ09EsUmq0HUwrNKNS9GTYMbCA==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Unsubscribe-Post:
	List-Owner; bh=CQGt3Ly2QcfB8GafZAaI3CxAnP8949dq7T1Yx2BcqDM=; b=vHi2h9e4qugLd7
	zG8oFBzpmE1A1TnHmvlHgjge989cbuwxl6txTyMGFjNrAB6a6pqhojL/4ENvhXlvY9fjE+vsuPCZh
	g29m91tcsQvkNeGhkRdGohjzgx5YHIX1eGCE3GyNwD58g1ncUet18j/cUU0DFeInydxZ4sq0xdfrR
	aA+gh7pCrQKKywA/SCA8CdC8vDLBAKBWD9lM3xVf2f4+O1CP+uxQyllIvZJLOmlGe0TCs1nf9G0SO
	X/XcyLMkxenbyAcJSII4JELh+r1ShhpR1dQCBYK/NxnkkJFcZ5PrV+OGhiap0ltkoNxl0dHXPAaJQ
	d4JAywAVAgYzZbCyJDEA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLJYd-00000002THm-1z4U;
	Mon, 26 Oct 2026 12:12:07 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLJYZ-00000002TBt-2JZV
	for barebox@lists.infradead.org;
	Mon, 26 Oct 2026 12:12:05 +0000
Received: from dude05.red.stw.pengutronix.de (dude05.red.stw.4.pengutronix.de [10.17.1.19])
	(Authenticated sender: relay-from-dude05.red.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id C3F732023A9;
	Mon, 26 Oct 2026 13:11:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793016716;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=CQGt3Ly2QcfB8GafZAaI3CxAnP8949dq7T1Yx2BcqDM=;
	b=IYv+Dd+obNT95C5J/ISxON533LFBigqlRdD4JW1t552oUQb9K/GAtMBmaPAVkxXaIYuV7N
	BTEfjjcXq/bSt8M9LCWWJc5t1FLAKx4eoXOvaRysV4viu6WDRkCeHB5YvjyIaRCQoMKhw0
	0WrPrlCMI0qim5jRbcOFsWooUGzi+r+/V62F1DaTNcvsd2cb4pHuKS07ghHhky+VfCinyQ
	6MJvSjy1ebDePtkLPSLzNuBghymU6iACGTclqp6T9pCJavyxbbsoJyUMlENBt3e50Tc/EC
	DPJ+j1GHv3RX4LBNSvrbXHNAru9nY6/UO24XQkOE4Hf8mWHs58SI0nGdiuQyIA==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1793016716; a=rsa-sha256;
	cv=none;
	b=YYeWQAIzRaOtNpGVhLfvzUx5xjKOR2mrbxu/EF7Hzp3cOQhlsGQEVOpIOoSBlbRZINKDF8
	irbjrxywaOV6wRS1nh8cV9Di4pAhugbk2auhN91l/+LklqM/oR9f587F0jKJ9djqa/vLUZ
	hbC6J/mKViIwPnRjqlvYXKCfC7R2Lq6FhcBiXbCrrb1pd8FWGziE6Hq17wHKbVxuGz0p96
	QYU5GA2LqZeSbTu1hTPffZGdH1tFpjwcr+O2AjlquUp4w1Wyu8cVR/f75T11L9BQPe/7Vd
	ncUrxfgxNQqC/Ri43kE0tAlzG1VXKp5XHtRsDXPN0mKLy13rZ9jVPNuuQ2e5BQ==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-dude05.red.stw.pengutronix.de smtp.mailfrom=a.fatoum@pengutronix.de
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793016716;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=CQGt3Ly2QcfB8GafZAaI3CxAnP8949dq7T1Yx2BcqDM=;
	b=g9Oxw9bkZniU+yasyAlWsInA62cu/mVXFsqXRVyb7nbeJMm9uLa6lMA0oyvWDQzx/ur3rT
	sxqv9WRxIYS+qeSl8MEByOsRdMXdjpVbA3RJ8sLMN0nCEU0r07ZzozwPs8bzRcKpvFgY0Q
	XBUjW/0EodZp0d/q7nnbplHhMgAl1nnY256aikyVzb5Cuikoh80fyNxmc4r/srddRkTtM5
	qxHd/40iMK3LW/Arke5myFIm6MkBwhwWR8KWcVRWdWRfQrzlLvjF+AvZCel1algMlauX7w
	idvfniX3ZWtaFPoeYx4seBieuxCNksu8JCKdDABlgN7/jc0WsI/G8vFG64T10A==
Received: from dude05.red.stw.pengutronix.de (localhost [IPv6:::1])
	by dude05.red.stw.pengutronix.de (Postfix) with ESMTP id A9C9B740A5B;
	Mon, 26 Oct 2026 13:11:56 +0100 (CET)
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Subject: [PATCH v3 07/12] efi: payload: always shutdown barebox when booting
Date: Mon, 26 Oct 2026 13:09:58 +0100
Message-ID: <20261026121150.455510-8-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20261026121150.455510-1-a.fatoum@pengutronix.de>
References: <20261026121150.455510-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261026_051203_755182_2AD0A7DA 
X-CRM114-Status: GOOD (  22.90  )
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
X-Rspamd-Queue-Id: 1F402202292
X-Spamd-Result: default: False [-58.91 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[100.00%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	ARC_ALLOW_TRUSTED(-2.00)[pengutronix.de:s=20260414:i=1];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	ARC_ALLOW(-1.00)[pengutronix.de:s=20260414:i=1];
	MID_CONTAINS_FROM(1.00)[];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,pengutronix.de:s=20260414];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	MIME_TRACE(0.00)[0:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FROM_HAS_DN(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	RCPT_COUNT_TWO(0.00)[2];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	DKIM_TRACE(0.00)[lists.infradead.org:+,pengutronix.de:+];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	FROM_NEQ_ENVFROM(0.00)[a.fatoum@pengutronix.de,barebox-bounces@lists.infradead.org];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Stat-Signature: q1rnygkrd1zodihrmhbdsaqsdf7u4ked

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
 .../efi-payload-bootm-shutdown.rst            | 10 +++++++++
 efi/payload/bootm.c                           |  4 ++--
 efi/payload/image.c                           | 21 +++++++++++++------
 efi/payload/image.h                           |  1 +
 4 files changed, 28 insertions(+), 8 deletions(-)
 create mode 100644 Documentation/migration-guides/migration-master/efi-payload-bootm-shutdown.rst

diff --git a/Documentation/migration-guides/migration-master/efi-payload-bootm-shutdown.rst b/Documentation/migration-guides/migration-master/efi-payload-bootm-shutdown.rst
new file mode 100644
index 000000000000..2e0a84b536e6
--- /dev/null
+++ b/Documentation/migration-guides/migration-master/efi-payload-bootm-shutdown.rst
@@ -0,0 +1,10 @@
+EFI applications booted via bootm no longer return to barebox
+-------------------------------------------------------------
+
+When barebox runs as EFI payload, :ref:`command_bootm` now shuts down
+barebox before starting any EFI application, not only EFI-stubbed Linux
+kernels. If the application returns, barebox exits to the firmware instead
+of returning to the shell or trying the next boot entry.
+
+EFI applications that are expected to return, like an EFI shell, should be
+executed directly from the shell instead.
diff --git a/efi/payload/bootm.c b/efi/payload/bootm.c
index d6a79f0c7795..58b7dd5ea779 100644
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
index 76aca1c43cec..4e59c7b4ea10 100644
--- a/efi/payload/image.c
+++ b/efi/payload/image.c
@@ -100,17 +100,26 @@ int efi_load_image(const char *file, struct efi_loaded_image **loaded_image,
 
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
  
 	efi_export_dtb();
 
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
@@ -121,11 +130,11 @@ int efi_execute_image(efi_handle_t handle,
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
 
@@ -135,8 +144,8 @@ int efi_execute_image(efi_handle_t handle,
 
 	efi_continue_devices();
 
-	if (is_kernel) {
-		pr_emerg("Kernel image has unexpectedly returned\n");
+	if (no_return) {
+		pr_emerg("Boot image has unexpectedly returned\n");
 		BS->exit(efi_parent_image, efiret, 0, NULL);
 	}
 
@@ -162,7 +171,7 @@ static int efi_execute(struct binfmt_hook *b, char *file, int argc, char **argv)
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



