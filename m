Delivery-date: Wed, 26 Aug 2026 14:17:31 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wzCZP-007QjM-0B
	for lore@lore.pengutronix.de;
	Wed, 26 Aug 2026 14:17:31 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 40F7120203F
	for <lore@pengutronix.de>; Wed, 26 Aug 2026 14:17:27 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=NYeHamDi;
	dmarc=none;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org"
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=akYdvgPLiQaYy/vAeNHCMiYEQjyNkvQswn+uU/CKIVE=; b=NYeHamDiieyB07FoEQMA3GFDNt
	FRb5PvlsUSjlL0GgGxVBPg95tHqhve/u46mQH8X3Oo7yZcK/Pp+aO8Wo9RPPdwaGWrkAs5Uhsgjn+
	P2/GU5l88YFzxvWvXlqvdzqAqINTrgsHuqDTZSydNdPWZZrGlywaoUVGBYd674SP7VNE8vgKBBjR7
	j0TBwyfc/9JerS/o5saDnsQ3v1TR6g6xsQrNgah8OZBeCGGLR+IYnPy3VI8Ef5wIfqaZrhdv7NFoY
	EZa+Yt/magqQNREPKdZAJmP73lj7zjDRD51PeVAiiFqs4w8yGVQxzWa0ol3ieQ3jdWBkTIDFO/xl8
	Pyb3lU8g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wzCYv-00000002PIb-0YQh;
	Wed, 26 Aug 2026 12:17:01 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wzCYe-00000002PDT-1YOV
	for barebox@lists.infradead.org;
	Wed, 26 Aug 2026 12:16:47 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 7885F2021AD;
	Wed, 26 Aug 2026 14:16:42 +0200 (CEST)
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wzCYc-003RAT-1J;
	Wed, 26 Aug 2026 14:16:42 +0200
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wzCYc-0000000CJpx-1F2H;
	Wed, 26 Aug 2026 14:16:42 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: fpg@pengutronix.de,
	chalianis1@gmail.com,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Subject: [PATCH RFT 3/4] efi: payload: export device tree in barebox-dtb EFI variable
Date: Wed, 26 Aug 2026 14:15:31 +0200
Message-ID: <20260826121640.2936023-4-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260826121640.2936023-1-a.fatoum@pengutronix.de>
References: <20260826121640.2936023-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260826_051644_652034_E001E68D 
X-CRM114-Status: GOOD (  16.65  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  An operating system booted by barebox on an EFI system doesn't
    necessarily have a device tree, so we elected so far to provide a state.dtb
    file on the ESP. This is cumbersome and, in a secure-booting system, has
   the state DT parser process untrusted input, which on all other platforms
   is not case: The data itself may be untrusted, but the layout descript [...]
    
 
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
	RCVD_IN_DNSWL_MED(-0.40)[2a0a:edc0:0:1101:1d::54:received,2607:7c80:54:3::133:from];
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
	NEURAL_HAM(-0.00)[-0.993];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Stat-Signature: b7tkqzsonghi4mfutuqum3jtyr8efzpu
X-Rspamd-Queue-Id: 40F7120203F

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

The export happens right before control is handed over to the next image,
same as LoaderTimeExecUSec, so the only consumer, which runs after the
handover, sees the final device tree, including a state description read
from the EFI system partition at late init. Exporting before every
StartImage also covers chainloaded EFI bootloaders.

Assisted-by: Claude:opus-5
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 efi/payload/fdt.c      | 28 ++++++++++++++++++++++++++++
 efi/payload/handover.c |  2 ++
 efi/payload/image.c    |  2 ++
 include/efi/payload.h  |  6 ++++++
 4 files changed, 38 insertions(+)

diff --git a/efi/payload/fdt.c b/efi/payload/fdt.c
index f98fd86bfbd6..4ab8c197af2b 100644
--- a/efi/payload/fdt.c
+++ b/efi/payload/fdt.c
@@ -9,6 +9,7 @@
 #include <efi/payload.h>
 #include <efi/payload/init.h>
 #include <efi/guid.h>
+#include <efi/variable.h>
 
 extern char __dtb_fallback_start[];
 
@@ -67,3 +68,30 @@ static int efi_fdt_probe(void)
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
index 378709b6de95..6485bc2f2d68 100644
--- a/efi/payload/image.c
+++ b/efi/payload/image.c
@@ -109,6 +109,8 @@ int efi_execute_image(efi_handle_t handle,
 	is_driver = (loaded_image->image_code_type == EFI_BOOT_SERVICES_CODE) ||
 		(loaded_image->image_code_type == EFI_RUNTIME_SERVICES_CODE);
 
+	efi_export_dtb();
+
 	if (filetype_is_linux_efi_image(filetype)) {
 		options = linux_bootargs_get();
 		printf("Booting kernel via StartImage");
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



