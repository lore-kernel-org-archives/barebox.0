Delivery-date: Thu, 15 Oct 2026 11:27:07 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xHHjv-00DrSN-24
	for lore@lore.pengutronix.de;
	Thu, 15 Oct 2026 11:27:07 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 28141202657
	for <lore@pengutronix.de>; Thu, 15 Oct 2026 11:27:07 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b="h7/xtgJz";
	dkim=fail ("headers rsa verify failed") header.d=infradead.org header.s=desiato.20200630 header.b=OrXH5TL4;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=eIw3AkZw;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("pengutronix.de:s=20260414:i=1");
	dmarc=none
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1792056427; a=rsa-sha256;
	cv=pass;
	b=e9a8wtBDCNUODsfq1tTSiGnw0b3UCsLTRxhPQox0V2mWzAYCHY3emMxd6rbFLDbdppa8BX
	R5qYGbTnkjz6Nv3zU4z7PFqD5y7njQ2nvMbyHlHRV9CNcx+Pf4B0cc83yoOm7nyPZ/dCkI
	1xjJfgLkUz628PDUTVHxNXjV/BDmMu1IBKFHwAWdHXfuMWhIFVtOe2JiwE3iBMH0BgA474
	ETOuOb/K7FcpyQwotDT1BW41oiRYitLT20Pr9rxbgJUPWr6LHUToAQXEPx4V1aB7XEg0UB
	KdNEKt3+iM7S7aFcpHvSJX2Eow8hxVVa0ScKW0Q6UkcO7S+RPG/YJNOVLERtog==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b="h7/xtgJz";
	dkim=fail ("headers rsa verify failed") header.d=infradead.org header.s=desiato.20200630 header.b=OrXH5TL4;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=eIw3AkZw;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("pengutronix.de:s=20260414:i=1");
	dmarc=none
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792056427;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=u43pFvQfkXv7K/kV3Q5hMtq7YrtKwU0z53v3j22OXm4=;
	b=dh/LGXRZ/TXY3BI4Blv/EqawxpROmSofMogk/whtOiYFHPW+utdwzdDsbaebKLX41KzHRi
	Jy5I2uzhbM+1OCSZDttV/1cYFeohxtgd+E1lY9AuS1iQAXnKPhE/yoMGzkn56KW36lMtMs
	VAIKkfpVLw9WmzIQG0UftfWmnd1FRnIJJMtGd7lBazvhbuJ+LquClNs2qKzE47N/gy4/DX
	ahTxCFEFl5B5eJjnV8P3Z0CWl7a5x5+Op+9tWDFxyfjw04/kkJbZtFhmfgSANgGZda2qtx
	7T2uD0dvwwenaL0xBMy1Wv+ZhVStTGkRlVQSR/ZCzCcRlFpnbjo1vv/kelYzpA==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=u43pFvQfkXv7K/kV3Q5hMtq7YrtKwU0z53v3j22OXm4=; b=h7/xtgJz3tTUMB0h0PISjPxNyQ
	JpQqGvGmT6l0nKK4R0SMSNslHM3EMxQ69MIPo9YiU9dN0aAQDEVB48S6TsFjWKN2GtBycl17kK1tS
	nvH8eOMOdUrLR+FONS7hEaSNQvv9KVOwzGVE7WmN2xaTzQ8n20RfMY7+PGiWluxRjcE5Zth5rEyTm
	jxjB/D+R441+SDwQc4tUbCi26fba1KB1ZBBRo0QZi30qICIob+4sqB3jqPQ4NPktetXessWyYRRcv
	5vm8agBd1sfU4tydmxx92LB7dw/oSCpkwOQgun4uNyNLycGQbRPJwZvknyTWmMOQCO4wWCnQamETp
	DoXdO74w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHHit-0000000HGCY-2RY2;
	Thu, 15 Oct 2026 09:26:03 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHHir-0000000HGBm-33Qb
	for barebox@bombadil.infradead.org;
	Thu, 15 Oct 2026 09:26:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=u43pFvQfkXv7K/kV3Q5hMtq7YrtKwU0z53v3j22OXm4=; b=OrXH5TL4mjOqaLUpVS5jNm5bNj
	6s5WrCnlrKzOH31gnOlfYuw8SvnItevqqqEOzHu6CdenzuLHXnG4DBzvtmKKX10H0qB8mUgsMrB0F
	Qd0Dqz7MD14zgx0MZVQwIWnvKSTnPi1aal9jlGUy35fLeBK2dhXJcQThWSjF1yT7J9qcO01xBINos
	ygfhhqK6ObnvQm780LzlsP0y4hL32/qWDFomn2dUxU+pFBcLbY8cmRZpaTnrcwCQxmP9Yj3qSC+g6
	Rvih5Vx1mbyhKCnKTP5dwcPnpKOWNNA97VNqKVq5JoRgYGcAb0l7EJcelSfZn0aubrftm1535nxiW
	VjuYnvcw==;
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by desiato.infradead.org with esmtps (Exim 4.99.5 #2 (Red Hat Linux))
	id 1xHHio-00000000Aat-3cv3
	for barebox@lists.infradead.org;
	Thu, 15 Oct 2026 09:26:00 +0000
Received: from dude05.red.stw.pengutronix.de (dude05.red.stw.4.pengutronix.de [10.17.1.19])
	(Authenticated sender: relay-from-dude05.red.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id C9702202657;
	Thu, 15 Oct 2026 11:25:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792056357;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=u43pFvQfkXv7K/kV3Q5hMtq7YrtKwU0z53v3j22OXm4=;
	b=eIw3AkZwm0fpw8zzdL7yLg9ZiRr54hu+046LrEEtLFuovyENS1opM+iVVxGdgD/9QxObak
	tcYZZFpYIuvF8ib42t5ySzT4MHhYkNgz8rjsf7RMG2J7b2oOzb+ka60fXM+CWau5Rh/1Ud
	RLPcCdcpYNOVRJ35hfQCofxNmD3t6OaKB3uRPvacara2aju1F6JyKe3ZAhakHlX83XtKWn
	TrH17q2wsdF5vDDUnBNiaJptSyx7O1dh107Z1zX2y+E237IbcYRG3DWx7DZzdAqTnxzjV5
	54kTtR+zSycKSSuZfDXFP5t/+Mvqsg1NDMfqUowUZmHdmACDbscJFNz+cR3fxg==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1792056357; a=rsa-sha256;
	cv=none;
	b=W7deGfJ6SM8saqDc67Ym6lMDdU+bwjN0u1RAjDCETSoV5dXyi5RC8q5GU1MROdUnZkJvlq
	nCl1g/GIZYgjkS4MrAHcRcQMz7oGdcbpk85rVIc4YcrOROfVwacDH06dog4UpAEcGr6ajU
	oaWQCxuIco5VsXCdy9GCQgk5Yogalv6C/F8sdchp/OAdiVKu8yyfEvkDHFmmBGTmCKnQl3
	DFchVbqOW9MnEReL9MQRukt2AwxwZONNgNTYODz5AJmSWAzMtOcgn7Etq3XMeUCZV8KQH+
	YNqMkeyXQL012A6QvKWz0+CdKkPyK1jvkPo7+atxpKTNOa3csp5t5ZQ/Yz1SXg==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-dude05.red.stw.pengutronix.de smtp.mailfrom=a.fatoum@pengutronix.de
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792056357;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=u43pFvQfkXv7K/kV3Q5hMtq7YrtKwU0z53v3j22OXm4=;
	b=HrZw5ddd7vnDz19l0kACUlVQ6DrJ4h3WCItbIHahA53dEqkgPl9CxZzajIV7iz/KtIhaat
	hlZQBc1DpaNS1wgB77AdtxH9fceuAq7uhViXybWNRSG9bIXEzMRX27EO35YB4GRL1ZG82W
	+pKDndWomH1Tm+eFvhxogG6faHrkLp0oT/IghrGhEbT2jmWeNY5TQdXccoOFmKs0TKyc+T
	HV5HfgBGt7Vab7ovzO0bHCfrvZAa5xPDWO3e4R1MqxTBN964p4I/PFGyyfHObZwlatotil
	Jm0a9LwvXzGBqcI7hPpH6fHF3fIH6Db0sHVQaI996KhFxTJyfonVanN9+m5G5A==
Received: from dude05.red.stw.pengutronix.de (localhost [IPv6:::1])
	by dude05.red.stw.pengutronix.de (Postfix) with ESMTP id AD7377415DA;
	Thu, 15 Oct 2026 11:25:57 +0200 (CEST)
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: fpg@pengutronix.de,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Subject: [PATCH v2 3/4] efi: payload: export device tree in barebox-dtb EFI variable
Date: Thu, 15 Oct 2026 11:23:29 +0200
Message-ID: <20261015092554.210438-4-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20261015092554.210438-1-a.fatoum@pengutronix.de>
References: <20261015092554.210438-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261015_102559_137297_2FA71677 
X-CRM114-Status: GOOD (  18.28  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software, running on the system "desiato.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  An operating system booted by barebox on an EFI system doesn't
    necessarily have a device tree, so we elected so far to provide a state.dtb
    file on the ESP. This is cumbersome and, in a secure-booting system, has
   the state DT parser process untrusted input, which on all other platforms
   is not case: The data itself may be untrusted, but the layout descript [...]
    
 
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
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	ARC_ALLOW_TRUSTED(-2.00)[pengutronix.de:s=20260414:i=1];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[pengutronix.de:s=20260414:i=1];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_MISSING_CHARSET(0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2001:8b0:10b:1:d65d:64ff:fe57:4e05:received,2607:7c80:54:3::133:from];
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
X-Rspamd-Queue-Id: 28141202657
X-Stat-Signature: h5c7p8qzj5due6px54ir9nhfrok64hp1

An operating system booted by barebox on an EFI system doesn't
necessarily have a device tree, so we elected so far to provide a
state.dtb file on the ESP.

This is cumbersome and, in a secure-booting system, has the state DT
parser process untrusted input, which on all other platforms is not
case: The data itself may be untrusted, but the layout description is
verified as part of barebox and passed along.

To allow the same in the EFI payload case, export barebox' device tree
in flattened form in the barebox-dtb EFI variable under the barebox
vendor GUID, next to the bootloader interface variables barebox sets
already.

Under Linux, it can be read out of efivarfs. The variable is volatile
like the others, so it always describes the barebox instance that
booted the system.

Any existing barebox-dtb variable is deleted first: SetVariable()
refuses to rewrite a variable with different attributes, so a
non-volatile one created via efivarfs would otherwise survive and be
read in place of the exported device tree.

The export happens right before control is handed over to the next image,
same as LoaderTimeExecUSec, so the only consumer, which runs after the
handover, sees the final device tree, including a state description read
from the EFI system partition at late init. Exporting before every
StartImage also covers chainloaded EFI bootloaders.

Assisted-by: Claude:opus-5
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 efi/payload/fdt.c      | 31 +++++++++++++++++++++++++++++++
 efi/payload/handover.c |  2 ++
 efi/payload/image.c    |  2 ++
 include/efi/payload.h  |  6 ++++++
 4 files changed, 41 insertions(+)

diff --git a/efi/payload/fdt.c b/efi/payload/fdt.c
index f98fd86bfbd6..f3e659052dc2 100644
--- a/efi/payload/fdt.c
+++ b/efi/payload/fdt.c
@@ -9,6 +9,7 @@
 #include <efi/payload.h>
 #include <efi/payload/init.h>
 #include <efi/guid.h>
+#include <efi/variable.h>
 
 extern char __dtb_fallback_start[];
 
@@ -67,3 +68,33 @@ static int efi_fdt_probe(void)
 	return 0;
 }
 late_efi_initcall(efi_fdt_probe);
+
+/*
+ * Export barebox' device tree, so the OS can learn about barebox-specific
+ * configuration like the state partition layout. Called just before handing
+ * over control, so the variable describes the final device tree.
+ */
+void efi_export_dtb(void)
+{
+	struct fdt_header *fdt;
+	int ret;
+
+	/* SetVariable() won't change attributes, so drop any existing variable */
+	efi_set_variable("barebox-dtb", &efi_barebox_vendor_guid, 0, NULL, 0);
+
+	if (!of_get_root_node())
+		return;
+
+	fdt = of_get_flattened_tree(NULL, false);
+	if (!fdt)
+		return;
+
+	ret = efi_set_variable("barebox-dtb", &efi_barebox_vendor_guid,
+			       EFI_VARIABLE_BOOTSERVICE_ACCESS |
+			       EFI_VARIABLE_RUNTIME_ACCESS,
+			       fdt, fdt32_to_cpu(fdt->totalsize));
+	if (ret)
+		pr_warn("Cannot export device tree: %pe\n", ERR_PTR(ret));
+
+	free(fdt);
+}
diff --git a/efi/payload/handover.c b/efi/payload/handover.c
index 544fdfb3c6ad..669d88c722b6 100644
--- a/efi/payload/handover.c
+++ b/efi/payload/handover.c
@@ -183,6 +183,8 @@ static int do_bootm_efi(struct image_data *data)
 		goto err_free;
 	}
 
+	efi_export_dtb();
+
 	efi_set_variable_usec("LoaderTimeExecUSec", &efi_systemd_vendor_guid,
 			      ktime_to_us(ktime_get()));
 
diff --git a/efi/payload/image.c b/efi/payload/image.c
index 445eaaa587d9..e553c4573ebe 100644
--- a/efi/payload/image.c
+++ b/efi/payload/image.c
@@ -117,6 +117,8 @@ int efi_execute_image(efi_handle_t handle,
 	 */
 	no_return = is_bootm || filetype_is_linux_efi_image(filetype);
 
+	efi_export_dtb();
+
 	if (options && *options) {
 		load_options = xstrdup_char_to_wchar(options);
 		loaded_image->load_options = load_options;
diff --git a/include/efi/payload.h b/include/efi/payload.h
index 381598ba59f2..9e4e8c5ce0ae 100644
--- a/include/efi/payload.h
+++ b/include/efi/payload.h
@@ -27,6 +27,12 @@ extern struct efi_loaded_image *efi_loaded_image;
 void *efi_earlymem_alloc(const struct efi_system_table *sys_table,
 			 size_t memsize, enum efi_memory_type mem_type);
 
+#ifdef CONFIG_OFTREE
+void efi_export_dtb(void);
+#else
+static inline void efi_export_dtb(void) {}
+#endif
+
 __attribute__((noreturn)) void efi_main(efi_handle_t, struct efi_system_table *);
 
 #define for_each_efi_config_table(t) \
-- 
2.47.3



