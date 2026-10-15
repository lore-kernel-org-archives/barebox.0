Delivery-date: Thu, 15 Oct 2026 11:24:37 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xHHhU-00DrOQ-38
	for lore@lore.pengutronix.de;
	Thu, 15 Oct 2026 11:24:36 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id A0F4C202012
	for <lore@pengutronix.de>; Thu, 15 Oct 2026 11:24:35 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=W8JwhpdP;
	dkim=fail ("headers rsa verify failed") header.d=infradead.org header.s=desiato.20200630 header.b=DYNPCa4+;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=MR2U5p0w;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("pengutronix.de:s=20260414:i=1");
	dmarc=none
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1792056276; a=rsa-sha256;
	cv=pass;
	b=FjQETnmuYY6V5JcAta7dV7YklxUbUc02Q2EUCBnt6KwhzggOSe9T9cGyhYd3oqeMEo2ter
	XfkTrz8/MyjjU8wMw3jVDn7ngkGpMDrw2Ybw5uG2aWY7NUy8JVyUwyZpNnaAVGR9xy/jg0
	ZDaG7Y+LtL2tn4mR6yfl9JdPv0M1ZcnZa0x6lmVlc5ln1i2rosMwC2WNMhYYuqCULzG+Vu
	qlL7WebqaGvpORRsxFWSKz8CM16lLP57kGaJ6RXdutOMtfO0AvxeGrZyK77gjrtuLKso22
	cdn5G5aEVxBxTfFewut/YyPJy09lCvCz73io9KDrFOfVTNp7FKsBaVquTYroTg==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=W8JwhpdP;
	dkim=fail ("headers rsa verify failed") header.d=infradead.org header.s=desiato.20200630 header.b=DYNPCa4+;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=MR2U5p0w;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("pengutronix.de:s=20260414:i=1");
	dmarc=none
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792056276;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=eGK4gFfNXSuiGIXbTnLYXbTiZAqbyUTPw+5gPRqo9gY=;
	b=MlWV56sBCVxduSCcTl3pfGeIhLCq/nI5Jhy7VIX2Poplua5zofA5tvkaxE7DJmCh3ZCPSD
	c2g1kfkmcBMQZXIjn3I3O7sgejY6IyC4ECqVWLrimTm0S5VmQjySJmPrrUm4m783X8UAot
	43LX01rz6cPqQWjW7XQeM5sZB//+202D669aJPTlvPDuvWz83vC8OoyRuOdLS1d+gWq06s
	nUax1qfgkBnrQP1tbx89LVFWlAka6lpg61Wsqsto+kbWGX2KTImY3GnoI3eDSqoczvFilr
	JiZVL6vRNC7Bz7c7jUC8mNm1wySuF92+6zYLnl6Hi6Emd/xgWS5yKCl1jFT1Fg==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=eGK4gFfNXSuiGIXbTnLYXbTiZAqbyUTPw+5gPRqo9gY=; b=W8JwhpdPqZCXDjAursDcD9sv67
	6x/FDyWVEhHUYw4Kzyqb8mpi8UpT4BJHPEwS+x1FXX9RZvPCbVEomi2Vy+pMR7oc256cOYEr5nQ+s
	0vmSzrSUIf7WyMOFDa0AXQQkrcUYJ5yzK69muskIxahClJlWff5S0OvBB4YRnP/frpLIMYM526IGT
	EsoUx2OzQLwgbzuZqynyMNBanFYP6ZVEDzGJtP+R3eO/Y59s0lrfE9+IFBOugJQZXroiZw5QlJWfZ
	W4358eFR0o9pYME7nKTuaLUngF8tm+eGu0rzzdUJjBRdoDpeAV+eZehkqapfxJcgtFJmT4+5PRL8n
	C0c0BRjA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHHgM-0000000HFc4-2JpK;
	Thu, 15 Oct 2026 09:23:26 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHHgH-0000000HFZY-26IK
	for barebox@bombadil.infradead.org;
	Thu, 15 Oct 2026 09:23:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=eGK4gFfNXSuiGIXbTnLYXbTiZAqbyUTPw+5gPRqo9gY=; b=DYNPCa4+DRVAhNTgFC5XUgcHnd
	+yju0ZjLBiyZe4pUk+ZnpWH1nfPgTs4VKlXz6UK+YOg8SxQ7Vkx7K4u48ADrH2D6xjY911dnI8Iqk
	s8hR5KrkL+NqQEJu8tPc7TCL7Pm3tlFgDcW5d2QEX8zgP8n5l/icgIQfVvE+KnZ9khS3xCpd55gkJ
	GNQQYhx+nAvSRx0bi1fY9Y9wOFmSBWuWiynmkxx4iuCeD9g5hw9sSih6It62mo65VPfCZHCGv293f
	Jb+S2N9lCdBUTg1y5uimZ4erFCD/MHd0YozmOfbTnDgZ2x6NVkosCHCA8naoveyFtKa24R6yw1oL1
	/k8QAktA==;
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by desiato.infradead.org with esmtps (Exim 4.99.5 #2 (Red Hat Linux))
	id 1xHHgC-00000000AOZ-2I8O
	for barebox@lists.infradead.org;
	Thu, 15 Oct 2026 09:23:20 +0000
Received: from dude05.red.stw.pengutronix.de (dude05.red.stw.4.pengutronix.de [10.17.1.19])
	(Authenticated sender: relay-from-dude05.red.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id B61542027D4;
	Thu, 15 Oct 2026 11:23:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792056191;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=eGK4gFfNXSuiGIXbTnLYXbTiZAqbyUTPw+5gPRqo9gY=;
	b=MR2U5p0wlC20aMF+d2Zzaryf/lIHtaGUd/M5M2g8i5tbMd3qM0LkxWyZGSPcn0wya2O7qC
	PCST+QtHRHYyIudQM0o9VenSFMtQA+IwttxQl6CgTqnxuTvBf3pYMuesJtXppD30tIcnnQ
	Xm+CamVSjvCbYyD90UZs3NQR8lQvN/IW/oyKpLKYfYQbcCEKCIwRUF6FAlTM3BjhF6+dF0
	h0O4ih/X2zWbuHaFEG16rKp1jVz/FtnlPdjnrpi1+K7pZHn6xcYk451FmC4ZoxgPfz9i3H
	qov3PUzofsdJ/jf+9LKfd5oOdcn7f+WDkT1MpwCah4AYPCT/6L0QVpBwdWf8+A==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1792056191; a=rsa-sha256;
	cv=none;
	b=dJr0tvAbBcpfCjNL2tn/cKWuEuahxBTq8UzfEHtd8tg4kD9yq45MJVrlFaE6pnHjSYZinu
	GbkuxycAPyTv/6aM50p4sXIsVXFSYZ38Zmv6mQOReNz+3Hh2dxng42XZ/39MjpNaW1uiH9
	jKM/f7VpR7pL3sWVhJyjYTaea18VIkBQeyHY9x06bbZmWMB3xDQIpKwjyJfb7284CEKTPM
	0hiyFdHt6TShSFMyQ0gVFQgPvrRu9HC5cUTGX4VvsGoaPKnT23uRjkTDT+QlWCOavQos3q
	zeXsjPEhnF1FU2+f8OFrbfan1KZ0MJYfFTTXTYheP0rJ15jo7R6lBultu0roBg==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-dude05.red.stw.pengutronix.de smtp.mailfrom=a.fatoum@pengutronix.de
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792056191;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=eGK4gFfNXSuiGIXbTnLYXbTiZAqbyUTPw+5gPRqo9gY=;
	b=WHxjp0aUCdHbcfLgP+mScVLID7GF7TCu1+gfrx5vekmrk+ZbvOOjkbfeDsjBIpzfbv3uv/
	fYDTCdg/zAFtNkl3PegHTmoR18oM7oIOzzSqFEAd2SJyY1HLveOfY/ZL01im+zEJM/8yq/
	NUri3Fzmx6UzqzsHzM4BuUp6eX1t3rVXderRO8xDx17HTE5i+G52IuUH93xECNHFPaWjcj
	/nQqbDsXw7xFv+Yr+qQjABBbJKisVG1Ib924BFzFa0QA7ELuUJ9mjV72rSh2ITlB8bCYVa
	638ej60bvg85HGNOuH/nkdDUldVCvR7pnLLZijGXKbZShuMqj7lMkknMjBrTLw==
Received: from dude05.red.stw.pengutronix.de (localhost [IPv6:::1])
	by dude05.red.stw.pengutronix.de (Postfix) with ESMTP id 9CEB17415DA;
	Thu, 15 Oct 2026 11:23:11 +0200 (CEST)
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: fpg@pengutronix.de,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Subject: [PATCH v2 08/10] efi: add global.efi.bootargs for bootm'd EFI applications
Date: Thu, 15 Oct 2026 11:18:50 +0200
Message-ID: <20261015092308.146516-9-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20261015092308.146516-1-a.fatoum@pengutronix.de>
References: <20261015092308.146516-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261015_102317_386869_0416A4A2 
X-CRM114-Status: GOOD (  28.31  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software, running on the system "desiato.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  The load options of an EFI application booted via bootm can
    so far only be influenced for EFI-stubbed Linux kernels and only via the
   Linux bootargs. There is no way to pass options to a generic EFI ap [...] 
 
 Content analysis details:   (-0.2 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
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
	BAYES_HAM(-3.00)[100.00%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	ARC_ALLOW_TRUSTED(-2.00)[pengutronix.de:s=20260414:i=1];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[pengutronix.de:s=20260414:i=1];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_MISSING_CHARSET(0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2607:7c80:54:3::133:from,2001:8b0:10b:1:d65d:64ff:fe57:4e05:received];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,pengutronix.de:s=20260414];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER(0.00)[a.fatoum@pengutronix.de,barebox-bounces@lists.infradead.org];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	FORWARDED(0.00)[barebox@bombadil.infradead.org];
	TO_DN_SOME(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	MIME_TRACE(0.00)[0:+];
	DKIM_MIXED(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+,infradead.org:-,pengutronix.de:+];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[a.fatoum@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	R_DKIM_REJECT(0.00)[infradead.org:s=desiato.20200630];
	RCPT_COUNT_THREE(0.00)[3];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: A0F4C202012
X-Stat-Signature: f3guh7n641fshfap8qmjt96iyqoo4c53

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
 efi/bootargs.c         | 65 ++++++++++++++++++++++++++++++++++++++++++
 efi/loader/bootm.c     | 27 ++++++++++++------
 efi/payload/bootm.c    | 23 ++++++++++-----
 include/efi/bootargs.h |  9 ++++++
 test/py/test_shell.py  | 26 +++++++++++++++++
 7 files changed, 136 insertions(+), 17 deletions(-)
 create mode 100644 efi/bootargs.c
 create mode 100644 include/efi/bootargs.h

diff --git a/common/boot.c b/common/boot.c
index 39c7c79b2cce..f0c6976b1921 100644
--- a/common/boot.c
+++ b/common/boot.c
@@ -210,6 +210,7 @@ int boot_entry(struct bootentry *be, int verbose, int dryrun)
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
index 000000000000..4a238388ef3f
--- /dev/null
+++ b/efi/bootargs.c
@@ -0,0 +1,65 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * bootargs.c - load options for EFI applications started via bootm
+ *
+ * Copyright (C) 2026 Ahmad Fatoum <a.fatoum@pengutronix.de>
+ */
+#include <common.h>
+#include <init.h>
+#include <malloc.h>
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
+	const char *linux_args = NULL;
+	char *efi_args, *options;
+
+	efi_args = globalvar_get_match("efi.bootargs.", " ");
+	if (efi_args && !*efi_args) {
+		free(efi_args);
+		efi_args = NULL;
+	}
+
+	if (linux_image)
+		linux_args = linux_bootargs_get();
+	if (linux_args && !*linux_args)
+		linux_args = NULL;
+
+	if (efi_args && linux_args)
+		options = xasprintf("%s %s", efi_args, linux_args);
+	else if (linux_args)
+		options = xstrdup(linux_args);
+	else
+		options = efi_args;
+
+	if (options != efi_args)
+		free(efi_args);
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
index a68db742e173..e3d654774831 100644
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
index fe2d27b7ff10..491bafb66898 100644
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
@@ -223,14 +227,19 @@ static int efi_app_execute(struct image_data *data)
 
 	type = file_detect_type(loaded_image->image_base, PAGE_SIZE);
 
+	options = efi_bootargs_get(filetype_is_linux_efi_image(type));
+
 	if (data->dryrun) {
 		BS->unload_image(handle);
+		free(options);
 		return 0;
 	}
 
-	return efi_execute_image(handle, loaded_image, true, type,
-				 filetype_is_linux_efi_image(type) ?
-				 linux_bootargs_get() : NULL);
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



