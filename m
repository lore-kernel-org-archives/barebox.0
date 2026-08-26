Delivery-date: Wed, 26 Aug 2026 14:21:52 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wzCdb-007QpW-1l
	for lore@lore.pengutronix.de;
	Wed, 26 Aug 2026 14:21:52 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id BDDC420227E
	for <lore@pengutronix.de>; Wed, 26 Aug 2026 14:21:47 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=VU+jZp8N;
	dmarc=none;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org"
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=B/eZg11xpYXyNKM8GE6IsZ/t7hYBCr9VxNNd4hX4T7U=; b=VU+jZp8NYXomZTzKRcO7YK1SkP
	xyKV/FhZ0tf1VDNyTeesyFuoIpIEjLX37+nwxAXN2mr8dlB4mQXv87kasTWMhhXFR5lAbibfsnDzw
	0nEp+yz6ThyOtKYcvLCAOmGKUE3qRorVjrwIr3X3/6WjPHuA3L0AdDFz34B9nHnmpuaS5EjDwHIfU
	2PE4VP2AanMx5dbiBdderw2svn3001MqCsDNsFejW9U8RJ0OCadTYiw/5Rr7UIiP0eEERG7x9NuD1
	rUAJRq8fP1ezd7ADtCUkw9QoTLLbEQZl1JlfErnJGKagGUouhI0uB+bVnKZGcpKDoUAgUlEOO+FAi
	23bRZEwA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wzCc8-00000002Pto-0Zie;
	Wed, 26 Aug 2026 12:20:20 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wzCbu-00000002PkH-1lHY
	for barebox@lists.infradead.org;
	Wed, 26 Aug 2026 12:20:12 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 33CFE2021CF;
	Wed, 26 Aug 2026 14:19:57 +0200 (CEST)
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wzCbl-003RBD-0J;
	Wed, 26 Aug 2026 14:19:57 +0200
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wzCbk-0000000CK1K-4A20;
	Wed, 26 Aug 2026 14:19:57 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: fpg@pengutronix.de,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Subject: [PATCH RFT 5/9] efi: payload: pass shell arguments as load options to executed images
Date: Wed, 26 Aug 2026 14:17:09 +0200
Message-ID: <20260826121956.2936414-6-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260826121956.2936414-1-a.fatoum@pengutronix.de>
References: <20260826121956.2936414-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260826_052007_835026_F98A25C6 
X-CRM114-Status: GOOD (  21.61  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  EFI applications executed directly from the shell via the
   binfmt hook, e.g. "/boot/shell.efi -nostartup", currently have their arguments
    silently dropped: the only load options ever set are the Linux [...] 
 
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
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_IN_DNSWL_LOW(-0.10)[2a0a:edc0:0:c01:1d::a2:received];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	FROM_NEQ_ENVFROM(0.00)[a.fatoum@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	RCVD_COUNT_FIVE(0.00)[5];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Stat-Signature: 655gi94d4koppoph53rcncpg1efywmub
X-Rspamd-Queue-Id: BDDC420227E

EFI applications executed directly from the shell via the binfmt hook,
e.g. "/boot/shell.efi -nostartup", currently have their arguments silently
dropped: the only load options ever set are the Linux bootargs and only if
the image was detected as an EFI-stubbed kernel.

Serialize the arguments following the image path into the load options
instead and leave it to the caller of efi_execute_image() to decide what
the load options should be. bootm keeps passing the Linux bootargs for
kernel images, but executing a kernel image directly from the shell now
passes exactly what was typed on the command line, which makes the
documentation's claim that only bootm passes the kernel command line true
again.

The firmware unloads an application as soon as it returns, as does barebox'
own loader in efi_exit() and EDK2 in CoreStartImage(), so the load options
may only be cleared for a driver that started successfully and is thus
still around. The buffer itself belongs to barebox and is freed either way.

While at it, add the missing space in the "Booting kernel via StartImage
with options" message.

Assisted-by: Claude:fable-5
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 efi/payload/bootm.c |  9 ++++++--
 efi/payload/image.c | 51 ++++++++++++++++++++++++++++++++++-----------
 efi/payload/image.h |  2 +-
 3 files changed, 47 insertions(+), 15 deletions(-)

diff --git a/efi/payload/bootm.c b/efi/payload/bootm.c
index 2bcfd90e42fa..fe2d27b7ff10 100644
--- a/efi/payload/bootm.c
+++ b/efi/payload/bootm.c
@@ -22,6 +22,7 @@
 #include <string.h>
 #include <linux/err.h>
 #include <boot.h>
+#include <bootargs.h>
 #include <bootm.h>
 #include <fs.h>
 #include <libfile.h>
@@ -185,7 +186,9 @@ static int do_bootm_efi_stub(struct image_data *data)
 	if (data->dryrun)
 		goto unload_ramdisk;
 
-	ret = efi_execute_image(handle, loaded_image, true, type);
+	ret = efi_execute_image(handle, loaded_image, true, type,
+				filetype_is_linux_efi_image(type) ?
+				linux_bootargs_get() : NULL);
 
 	/* efi_execute_image takes care to unload the image on error,
 	 * so we set image_freed and fall through to freeing ramdisk
@@ -225,7 +228,9 @@ static int efi_app_execute(struct image_data *data)
 		return 0;
 	}
 
-	return efi_execute_image(handle, loaded_image, true, type);
+	return efi_execute_image(handle, loaded_image, true, type,
+				 filetype_is_linux_efi_image(type) ?
+				 linux_bootargs_get() : NULL);
 }
 
 static int linux_efi_handover = true;
diff --git a/efi/payload/image.c b/efi/payload/image.c
index e3fe3d5afe34..e553c4573ebe 100644
--- a/efi/payload/image.c
+++ b/efi/payload/image.c
@@ -18,7 +18,6 @@
 #include <malloc.h>
 #include <string.h>
 #include <linux/err.h>
-#include <bootargs.h>
 #include <bootm.h>
 #include <fs.h>
 #include <libfile.h>
@@ -101,10 +100,10 @@ int efi_load_image(const char *file, struct efi_loaded_image **loaded_image,
 int efi_execute_image(efi_handle_t handle,
 		      struct efi_loaded_image *loaded_image,
 		      bool is_bootm,
-		      enum filetype filetype)
+		      enum filetype filetype, const char *options)
 {
 	efi_status_t efiret;
-	const char *options;
+	wchar_t *load_options = NULL;
 	bool is_driver;
 	bool no_return;
 
@@ -120,16 +119,20 @@ int efi_execute_image(efi_handle_t handle,
 
 	efi_export_dtb();
 
+	if (options && *options) {
+		load_options = xstrdup_char_to_wchar(options);
+		loaded_image->load_options = load_options;
+		loaded_image->load_options_size =
+			(strlen(options) + 1) * sizeof(wchar_t);
+	}
+
 	if (filetype_is_linux_efi_image(filetype)) {
-		options = linux_bootargs_get();
 		printf("Booting kernel via StartImage");
-		if (options) {
-			printf("with options '%s'", options);
-			loaded_image->load_options = xstrdup_char_to_wchar(options);
-			loaded_image->load_options_size =
-				(strlen(options) + 1) * sizeof(wchar_t);
-		}
+		if (load_options)
+			printf(" with options '%s'", options);
 		printf("...\n");
+	} else if (load_options) {
+		pr_debug("Starting image with options '%s'\n", options);
 	}
 
 	if (no_return) {
@@ -152,8 +155,24 @@ int efi_execute_image(efi_handle_t handle,
 	if (EFI_ERROR(efiret))
 		pr_err("failed to StartImage: %s\n", efi_strerror(efiret));
 
-	if (!is_driver)
+	/*
+	 * The firmware unloads an application as soon as it returns, as well as
+	 * a driver that failed to start, freeing the loaded image protocol with
+	 * it. Only a still loaded driver's protocol may be touched here, and it
+	 * must be, as it references the load options we are about to free.
+	 * Unloading an application that already returned just fails, but is
+	 * still needed when StartImage failed before running it.
+	 */
+	if (is_driver) {
+		if (!EFI_ERROR(efiret)) {
+			loaded_image->load_options = NULL;
+			loaded_image->load_options_size = 0;
+		}
+	} else {
 		BS->unload_image(handle);
+	}
+
+	free(load_options);
 
 	efi_connect_all();
 	efi_register_devices();
@@ -165,13 +184,21 @@ static int efi_execute(struct binfmt_hook *b, char *file, int argc, char **argv)
 {
 	struct efi_loaded_image *loaded_image;
 	efi_handle_t handle;
+	char *options;
 	int ret;
 
 	ret = efi_load_image(file, &loaded_image, &handle);
 	if (ret)
 		return ret;
 
-	return efi_execute_image(handle, loaded_image, false, b->type);
+	/* argv[0] is the image itself, the rest become the load options */
+	options = strjoin(" ", &argv[1], argc - 1);
+
+	ret = efi_execute_image(handle, loaded_image, false, b->type, options);
+
+	free(options);
+
+	return ret;
 }
 
 static struct binfmt_hook binfmt_efi_hook = {
diff --git a/efi/payload/image.h b/efi/payload/image.h
index 33f7e1a21b30..54494c71626a 100644
--- a/efi/payload/image.h
+++ b/efi/payload/image.h
@@ -14,7 +14,7 @@ int efi_load_image(const char *file, struct efi_loaded_image **loaded_image,
 int efi_execute_image(efi_handle_t handle,
 		      struct efi_loaded_image *loaded_image,
 		      bool is_bootm,
-		      enum filetype filetype);
+		      enum filetype filetype, const char *options);
 
 extern struct image_handler efi_x86_linux_handle_tr;
 extern struct image_handler efi_x86_linux_handle_handover;
-- 
2.47.3



