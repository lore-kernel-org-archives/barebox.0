Delivery-date: Mon, 26 Oct 2026 13:13:13 +0100
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xLJZg-003VDT-2M
	for lore@lore.pengutronix.de;
	Mon, 26 Oct 2026 13:13:13 +0100
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 952002022EC
	for <lore@pengutronix.de>; Mon, 26 Oct 2026 13:13:12 +0100 (CET)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=sGECRnmC;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b="A1XSDN7/";
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1793016792; a=rsa-sha256;
	cv=pass;
	b=D4uCN3QElvI4KHYb4qb63ntNp58s2SaBUzmp2bgcKgrPFZY0/3tEYDQtbiXATja8bcSQUg
	RIWjYL3wBRL2V4+I03iIVI6G4Y2cZq61gIbg+EwjG7nU9+T3S68v063OuKzd+Lfqx/sy40
	jTeO+zervOG5tjHgwBRHWTlrbZxofVIk8X+bL29JvxH2KwWAd/QsMUhfG6NBzgd2Wee9wp
	1si++7iWDf8BdV0wBFi3Urr2teTr4EJbHtaIc9zNTYtXOeCPh+skT5VZysH5wTz5YVW8Mh
	DMLlAIw0Sk6i4LAEafWH5Ojjl/WgD8zg7bamIQ8EfOpRNMrHTkwBL1i2iAETYw==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=sGECRnmC;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b="A1XSDN7/";
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793016792;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=KrjJ2vrIEu8Sm5/eE2alY8Z+edhVIWdTtJSUgnAIv1M=;
	b=ZX1ULuzvaNhz34+j0/ale2FVOoTugIAbxmn+kqncFq3PVObWMewxZ1z8OBaKzXfVOMERuz
	FJ664ZTw/jFBYhwbbpdju5jmQMNRdrgx8gd+7ytEf38tMiY9A8kEIqABkSokgLxvj78pjG
	sHRhrR3UKtIpR+ZHfztt+8/Sk02YPrfgeQUsAso39eBr4nj7VmxVwspuDxSrpSQ6YLuwle
	ycBI+Gcr76rtDAuegky9yRDt9H6iwbYPVJVZDxacb6hQ2iLdGfIRIBT9bIzG8a93mkpLAv
	tlxwynUMArZ3dHMC+JBzNlH1A8Kd5NNDJBO/K5ANQGIka3u+WJZBaJnsRUb21w==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Unsubscribe-Post:
	List-Owner; bh=KrjJ2vrIEu8Sm5/eE2alY8Z+edhVIWdTtJSUgnAIv1M=; b=sGECRnmCKsqzb3
	xJgA8d4h/jecfeb+Z8p0k/Gdg9mUcr0xKuttVGTgmTlZqaL7LJ7/jf86A9WMoKnKdb3fIVUyE4Hp6
	/WrSVuJXVUf2WJc4qq9I+wwxVHXSR+EYDpbCsP+XHU3Y0ogqhG4MzxkZGpuPZpmcRz3Yh5LbaPYIY
	9fl3CJ27rF3gbBtozxmmVrg8oGf12GdMRHHftnTrVapXb8qku45auQUwDwcwI4QTmMc6BT6Pciw9a
	j0QEv1q9sL74jf5YiNH1o1h86DnMoZ7kvTmGpbTzeqBG7HC2KMJib+t75Noti6M6Shf856qrAP3lG
	2uJNnl3fQ+QJwz78TGVw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLJYd-00000002TIh-3nlI;
	Mon, 26 Oct 2026 12:12:07 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLJYZ-00000002TC8-3sxy
	for barebox@lists.infradead.org;
	Mon, 26 Oct 2026 12:12:06 +0000
Received: from dude05.red.stw.pengutronix.de (dude05.red.stw.pengutronix.de [IPv6:2a0a:edc0:0:1101:1d::54])
	(Authenticated sender: relay-from-dude05.red.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id D7F5A2027D5;
	Mon, 26 Oct 2026 13:11:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793016716;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=KrjJ2vrIEu8Sm5/eE2alY8Z+edhVIWdTtJSUgnAIv1M=;
	b=A1XSDN7/CebgKMz2b0p56CFBqeizD+CNvCdZzR9vdc8PeGe5ng6Q8PgtcTFjSThzF8EeAX
	VjGBWC+9UdktYfMBFQzReqFBwKIVP52XxzGYrrsPPIVVNRavqzlbyBjx9Z99Rs5N2vLXiZ
	kzRDLF81MvuHi6rC7VTchKWiBqyw6Ef07jmNyZS+COCX/bnFRsUXLLDaCxCeX/Kjhvbvy+
	ublFZuJITb2s1Gi7dSKk07QEI/OO/KLAgDQJ6UJda4X3dZgo4mkSa/M/1P+b8+BibnpBHY
	YNJgWaKdHoeubLox4wfNOUzv1kCtgtS46llJwtG3ZhYmuZsVTAv1eDlxn0oDug==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1793016716; a=rsa-sha256;
	cv=none;
	b=BI4SJFijtLLMZCmAi58g2sN9N2k1imOiBOuFx4JzkyyS7IFXSUds753ZwpRdPCet4yu61i
	mLwBNuX1wTVZE0QHnVY8X6BgyF6U07IrIPLQz08C2e9+gY9TZj9lCrVcjYhCB+yIFcR+nf
	IC7smuHIFtx/M9HBHn4RGaTJiXXaYACgNx5Ho5Od94USzOoyKsS0XZ1uDnOhhYsuA+o+z1
	C+Tskrk1hrt8dk/XPPx0PQPDwFFfy8v8but9leGI5AZZaPE0yP+VGB/uBLzYgAltPgAhQ3
	75epn13bBs+te2rldk6lNEahAWv3I43GY2yF/rkS+hHsq6iqng1eEefzqt/gMw==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-dude05.red.stw.pengutronix.de smtp.mailfrom=a.fatoum@pengutronix.de
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793016716;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=KrjJ2vrIEu8Sm5/eE2alY8Z+edhVIWdTtJSUgnAIv1M=;
	b=FB7/hf6upQDRdtkS6sdAfap/WBjzCOjAJsjhwQvrgRa8Bicx7dZpvmfZGlDUdYbZw/Cnow
	/oLQ7OxVcL+Ihv+Y3Dh+v9mcitT3UFYa4K3HnV/BaOc8749veQJ2mXvM65AFnmH+TNF0qL
	pGuGGQiaDowLbNgNpzYX3UtggXuAEQdqrIq/8xRXHTiO6LhWa5abeBBT2+3fqq1UhZNDOB
	ViprtAnAxTE8Fq8K3gHPnulSTlPxRoGyv68mil2BV3UvYL8UPuOxE1oOLTKmKg6iChZyMn
	+5i7vKBkGIMVBw4IIsONYewzdPoN6YqBRHfQ+YRynu2nUZNh1zCxD7qTtMMd+Q==
Received: from dude05.red.stw.pengutronix.de (localhost [IPv6:::1])
	by dude05.red.stw.pengutronix.de (Postfix) with ESMTP id BF665743959;
	Mon, 26 Oct 2026 13:11:56 +0100 (CET)
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Subject: [PATCH v3 09/12] efi: add global.efi.bootargs for bootm'd EFI applications
Date: Mon, 26 Oct 2026 13:10:00 +0100
Message-ID: <20261026121150.455510-10-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20261026121150.455510-1-a.fatoum@pengutronix.de>
References: <20261026121150.455510-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261026_051204_301195_D82A792B 
X-CRM114-Status: GOOD (  28.09  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  The load options of an EFI application booted via bootm can
    so far only be influenced for EFI-stubbed Linux kernels and only via the
   Linux bootargs. There is no way to pass options to a generic EFI ap [...] 
 
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
X-Rspamd-Queue-Id: 952002022EC
X-Spamd-Result: default: False [-59.11 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[100.00%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	ARC_ALLOW_TRUSTED(-2.00)[pengutronix.de:s=20260414:i=1];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	ARC_ALLOW(-1.00)[pengutronix.de:s=20260414:i=1];
	MID_CONTAINS_FROM(1.00)[];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_MISSING_CHARSET(0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2a0a:edc0:0:1101:1d::54:received,2607:7c80:54:3::133:from];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,pengutronix.de:s=20260414];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWO(0.00)[2];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	RCVD_COUNT_THREE(0.00)[4];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+,pengutronix.de:+];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	FROM_NEQ_ENVFROM(0.00)[a.fatoum@pengutronix.de,barebox-bounces@lists.infradead.org];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Stat-Signature: 84pdaese9kk4wf1zq1f34e1cbpdoixon

The load options of an EFI application booted via bootm can so far only be
influenced for EFI-stubbed Linux kernels and only via the Linux bootargs.
There is no way to pass options to a generic EFI application like a shell
or a boot loader, and no way to pass EFI-stub-specific options like initrd=
or efi= to a kernel separately from what goes into the Linux bootargs.

Add a global.efi.bootargs.* family of variables that works like
global.linux.bootargs.*: all variables with that prefix are concatenated in
lexicographical order and become the load options of any EFI application
booted via bootm. For EFI-stubbed Linux kernels, the Linux bootargs are
appended, so the kernel command line becomes
"$global.efi.bootargs $global.linux.bootargs".

The helper lives outside efi/payload and efi/loader, as the variable is
meant to be used identically when barebox runs as EFI payload and when it
runs as EFI loader. Executing an application directly from the shell keeps
passing only the shell arguments and the legacy x86 handover protocol is
unaffected, because it bypasses the EFI stub that would interpret the load
options.

Assisted-by: Claude:fable-5
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/boot.c          |  1 +
 efi/Makefile           |  2 +-
 efi/bootargs.c         | 62 ++++++++++++++++++++++++++++++++++++++++++
 efi/loader/bootm.c     | 27 ++++++++++++------
 efi/payload/bootm.c    | 22 ++++++++++-----
 include/efi/bootargs.h |  9 ++++++
 test/py/test_shell.py  | 26 ++++++++++++++++++
 7 files changed, 132 insertions(+), 17 deletions(-)
 create mode 100644 efi/bootargs.c
 create mode 100644 include/efi/bootargs.h

diff --git a/common/boot.c b/common/boot.c
index 149bfeca000c..c7fa170224b1 100644
--- a/common/boot.c
+++ b/common/boot.c
@@ -212,6 +212,7 @@ int boot_entry(struct bootentry *be, int verbose, int dryrun)
 		pr_err("Booting entry '%s' failed: %pe\n", be->title, ERR_PTR(ret));
 
 	globalvar_set_match("linux.bootargs.dyn.", "");
+	globalvar_set_match("efi.bootargs.dyn.", "");
 
 	return ret;
 }
diff --git a/efi/Makefile b/efi/Makefile
index 7693085c7141..f330c1416dbf 100644
--- a/efi/Makefile
+++ b/efi/Makefile
@@ -6,4 +6,4 @@ obj-$(CONFIG_EFI_RUNTIME)	+= runtime/
 obj-$(CONFIG_EFI_GUID)		+= guid.o
 obj-$(CONFIG_EFI_DEVICEPATH)	+= devicepath.o
 obj-$(CONFIG_EFI)		+= errno.o handle.o efivar.o efivar-filename.o
-obj-$(CONFIG_EFI)		+= initrd.o
+obj-$(CONFIG_EFI)		+= initrd.o bootargs.o
diff --git a/efi/bootargs.c b/efi/bootargs.c
new file mode 100644
index 000000000000..58760b581e75
--- /dev/null
+++ b/efi/bootargs.c
@@ -0,0 +1,62 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * bootargs.c - load options for EFI applications started via bootm
+ *
+ * Copyright (C) 2026 Ahmad Fatoum <a.fatoum@pengutronix.de>
+ */
+#include <common.h>
+#include <init.h>
+#include <malloc.h>
+#include <string.h>
+#include <magicvar.h>
+#include <globalvar.h>
+#include <bootargs.h>
+#include <efi/bootargs.h>
+
+/**
+ * efi_bootargs_get() - compute load options for an EFI application
+ * @linux_image: whether the image is an EFI-stubbed Linux kernel
+ *
+ * All variables beginning with "global.efi.bootargs." are concatenated in
+ * lexicographical order. For Linux kernels, the Linux bootargs are appended,
+ * so the EFI stub sees them as the kernel command line.
+ *
+ * Return: newly allocated string to be freed by the caller or NULL
+ */
+char *efi_bootargs_get(bool linux_image)
+{
+	char *efi_args, *options = NULL;
+	char *args[2];
+	int nargs = 0;
+
+	efi_args = globalvar_get_match("efi.bootargs.", " ");
+	if (!isempty(efi_args))
+		args[nargs++] = efi_args;
+
+	if (linux_image) {
+		const char *linux_args = linux_bootargs_get();
+
+		if (!isempty(linux_args))
+			args[nargs++] = (char *)linux_args;
+	}
+
+	if (nargs)
+		options = strjoin(" ", args, nargs);
+
+	free(efi_args);
+
+	return options;
+}
+
+static int efi_bootargs_init(void)
+{
+	globalvar_add_simple("efi.bootargs.base", NULL);
+
+	return 0;
+}
+late_initcall(efi_bootargs_init);
+
+BAREBOX_MAGICVAR(global.efi.bootargs.*,
+		 "Load options of EFI applications started via bootm. Linux bootargs are appended for EFI-stubbed kernels");
+BAREBOX_MAGICVAR(global.efi.bootargs.dyn.*,
+		 "Load options set by boot entries. Cleared after each boot entry");
diff --git a/efi/loader/bootm.c b/efi/loader/bootm.c
index 4129441a47de..4bea88029ab9 100644
--- a/efi/loader/bootm.c
+++ b/efi/loader/bootm.c
@@ -13,7 +13,6 @@
 #include <init.h>
 #include <driver.h>
 #include <io.h>
-#include <bootargs.h>
 #include <malloc.h>
 #include <string.h>
 #include <linux/err.h>
@@ -34,6 +33,7 @@
 #include <efi/services.h>
 #include <efi/error.h>
 #include <efi/initrd.h>
+#include <efi/bootargs.h>
 #include <efi/devicepath.h>
 
 /**
@@ -199,6 +199,7 @@ static int efi_loader_bootm(struct image_data *data)
 	resource_size_t start, end;
 	void *load_option = NULL;
 	u32 load_option_size = 0;
+	char *options;
 	efi_handle_t handle;
 	struct efi_device_path *file_path = NULL;
 	struct efi_event *evt;
@@ -215,19 +216,19 @@ static int efi_loader_bootm(struct image_data *data)
 	if (IS_ERR(os_res))
 		return PTR_ERR(os_res);
 
-	if (filetype_is_linux_efi_image(data->kernel_type)) {
-		const char *options;
-
-		options = linux_bootargs_get();
-		if (options) {
-			load_option = xstrdup_char_to_wchar(options);
-			load_option_size = (strlen(options) + 1) * sizeof(wchar_t);
-		}
+	options = efi_bootargs_get(filetype_is_linux_efi_image(data->kernel_type));
+	if (options) {
+		load_option = xstrdup_char_to_wchar(options);
+		load_option_size = (strlen(options) + 1) * sizeof(wchar_t);
 	}
 
 	file_path = efi_dp_from_file(AT_FDCWD, data->os_file);
 
 	pr_info("Loading %pD\n", file_path);
+	if (data->verbose && options)
+		pr_info("Load options: %s\n", options);
+
+	free(options);
 
 	/* Initialize EFI drivers */
 	efiret = efi_init_obj_list();
@@ -321,6 +322,14 @@ static int efi_loader_bootm(struct image_data *data)
 	/* Control is returned to us, disable EFI watchdog */
 	efi_set_watchdog(0);
 
+	/*
+	 * A still loaded driver would keep referencing the load options.
+	 * efi_set_load_options() tolerates the already deleted handle of an
+	 * application.
+	 */
+	efi_set_load_options(handle, 0, NULL);
+	free(load_option);
+
 	return -efi_errno(efiret);
 
 out:
diff --git a/efi/payload/bootm.c b/efi/payload/bootm.c
index 1eec73a13dd0..7a90aab7309b 100644
--- a/efi/payload/bootm.c
+++ b/efi/payload/bootm.c
@@ -22,7 +22,6 @@
 #include <string.h>
 #include <linux/err.h>
 #include <boot.h>
-#include <bootargs.h>
 #include <bootm.h>
 #include <fs.h>
 #include <libfile.h>
@@ -32,6 +31,7 @@
 #include <efi/payload/driver.h>
 #include <efi/error.h>
 #include <efi/initrd.h>
+#include <efi/bootargs.h>
 
 #include "image.h"
 
@@ -167,6 +167,7 @@ static int do_bootm_efi_stub(struct image_data *data)
 	bool image_freed = false;
 	efi_handle_t handle = NULL; /* silence compiler warning */
 	enum filetype type;
+	char *options;
 	int ret;
 
 	ret = efi_load_os(data, &loaded_image, &handle);
@@ -186,9 +187,11 @@ static int do_bootm_efi_stub(struct image_data *data)
 	if (data->dryrun)
 		goto unload_ramdisk;
 
-	ret = efi_execute_image(handle, loaded_image, true, type,
-				filetype_is_linux_efi_image(type) ?
-				linux_bootargs_get() : NULL);
+	options = efi_bootargs_get(filetype_is_linux_efi_image(type));
+
+	ret = efi_execute_image(handle, loaded_image, true, type, options);
+
+	free(options);
 
 	/* efi_execute_image takes care to unload the image on error,
 	 * so we set image_freed and fall through to freeing ramdisk
@@ -215,6 +218,7 @@ static int efi_app_execute(struct image_data *data)
 	struct efi_loaded_image *loaded_image;
 	efi_handle_t handle;
 	enum filetype type;
+	char *options;
 	int ret;
 
 	ret = efi_load_image(data->os_file, &loaded_image, &handle);
@@ -228,9 +232,13 @@ static int efi_app_execute(struct image_data *data)
 		return 0;
 	}
 
-	return efi_execute_image(handle, loaded_image, true, type,
-				 filetype_is_linux_efi_image(type) ?
-				 linux_bootargs_get() : NULL);
+	options = efi_bootargs_get(filetype_is_linux_efi_image(type));
+
+	ret = efi_execute_image(handle, loaded_image, true, type, options);
+
+	free(options);
+
+	return ret;
 }
 
 static int linux_efi_handover = true;
diff --git a/include/efi/bootargs.h b/include/efi/bootargs.h
new file mode 100644
index 000000000000..dfd17261ff9d
--- /dev/null
+++ b/include/efi/bootargs.h
@@ -0,0 +1,9 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+#ifndef __EFI_BOOTARGS_H
+#define __EFI_BOOTARGS_H
+
+#include <linux/types.h>
+
+char *efi_bootargs_get(bool linux_image);
+
+#endif /* __EFI_BOOTARGS_H */
diff --git a/test/py/test_shell.py b/test/py/test_shell.py
index be746ca205ba..7a3330b16466 100644
--- a/test/py/test_shell.py
+++ b/test/py/test_shell.py
@@ -153,3 +153,29 @@ def test_barebox_test_var_exists(barebox, barebox_config):
 
     # Clean up
     barebox.run_check('rm /tmp/testvars')
+
+
+def test_boot_bootargs_dyn_cleared(barebox, barebox_config):
+    skip_disabled(barebox_config, "CONFIG_CMD_BOOT", "CONFIG_CMD_GLOBAL",
+                  "CONFIG_CMD_ECHO")
+
+    barebox.run_check("echo -o /env/boot/dyntest '#!/bin/sh'")
+    barebox.run_check("echo -a /env/boot/dyntest "
+                      "'global linux.bootargs.dyn.test=linux-dyn'")
+    barebox.run_check("echo -a /env/boot/dyntest "
+                      "'global efi.bootargs.dyn.test=efi-dyn'")
+    barebox.run_check("echo -a /env/boot/dyntest "
+                      "'global efi.bootargs.nodyntest=efi-static'")
+
+    # Run the script, but don't actually boot anything
+    barebox.run("boot -d -d dyntest")
+
+    # .dyn. variables must not leak into subsequent boot entries
+    assert barebox.run_check("echo ${global.linux.bootargs.dyn.test}") == [""]
+    assert barebox.run_check("echo ${global.efi.bootargs.dyn.test}") == [""]
+    # ... but other variables are left alone
+    assert barebox.run_check("echo ${global.efi.bootargs.nodyntest}") == \
+        ["efi-static"]
+
+    barebox.run_check("global -r efi.bootargs.nodyntest")
+    barebox.run_check("rm /env/boot/dyntest")
-- 
2.47.3



