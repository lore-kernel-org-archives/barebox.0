Delivery-date: Mon, 26 Oct 2026 14:24:38 +0100
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xLKgo-003WSU-0d
	for lore@lore.pengutronix.de;
	Mon, 26 Oct 2026 14:24:38 +0100
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id D3FB4200318
	for <lore@pengutronix.de>; Mon, 26 Oct 2026 14:24:37 +0100 (CET)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=gOqtLlr6;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=G4nv6jG8;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1793021078; a=rsa-sha256;
	cv=pass;
	b=g9dzMaaWNG9KWMl3gJP7+qGYLuxiWB4alk7yKQozwUctfKJHEjwnoO3bphhTLfSCgmTW/K
	uTnYfPicnKnVhrk+kXxC2vitta8WH7GITrc8+4e57QKScD+uicHpoX2jVlOPohnziXDyBF
	XsLaHsSDzyhUOstRHf0ZpoeQLBN2NuOB7altPAsDA6ACo4zvg6DTTk5Y0UEOx2IYiXIyCf
	6U0JpysNgj4MAJDIVh/6CWRYr2m+73xrcq0caT6bJUtOiIIZQj/eBq5i0bdtpCQNa6oDBB
	XRJ9EDpiHv4pozcWqecyVrXspq9OZBJJ8zRf4a6kxq/x0rcOorMHrhUTNeaTNg==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=gOqtLlr6;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=G4nv6jG8;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793021078;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=h0/bixRPKL7dlKuFRnhpUSqFCpE/qFH22qVeuK0ARMA=;
	b=C7kZoAT/axc7Jz8QTvIgoWzE3kADINSCvkq13msYk+Av3xlEBVyvKrNgV5G/4hx01rxLCx
	23g6NA2RWPXQvmNeffiMhDfeyd1pT+dTB7xCq1feuVTHmx0YuI9hLurrVnFm8UdNsCxJTX
	SIFd9APGtwFd7gPFCl1f75qs7S5oylfJ2XgjcUJd2DqH9reEg6SHGiwBQsXcEQ7fDGTQOb
	/zyMrA63Zp8DAy88Ejzn3+kPJh4dmeb08kBCIXmodlmQ4Cj0NU1i7BIdKOh5mT+nE7Bsg8
	4xiGnw4vx8vyLJRjM6S7u9r/+aq3WEMY9hLtOW2v3VrS3VNFKcJJJBHQzIR7TA==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Unsubscribe-Post:
	List-Owner; bh=h0/bixRPKL7dlKuFRnhpUSqFCpE/qFH22qVeuK0ARMA=; b=gOqtLlr6quEDPn
	8Y4ZliQa7wUjWd3wemUQ4n86ADme3/QVE9gzjJA6OVMDflOx2bT57hBWFeTfUwnvRc+tNgQuY27Zw
	eG9/ChOqwQF25e9IGx1pHS/tDWSkkXJT0jXJF2hXHrT2gMuEmQaClVnNlWYspqrbUvr6GOvgiq5kR
	yArmOOEfXg9HqTRoaejPy5UD0dSDDoDTmCAqALmoK3iKhLEgPsgIKyxoaPyNlVG2GXefbek4mRW3o
	Q9gtcQcmKRhsc8wfiYt38mIyvKqXHZlTq5YamJxk3aJ9WRKfWa2XWYaHsinQPWS9SHy6yjM6namD1
	b7AVu00WslAVvW39o5XA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLJYe-00000002TJ1-0Amh;
	Mon, 26 Oct 2026 12:12:08 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLJYZ-00000002TBu-2Uce
	for barebox@lists.infradead.org;
	Mon, 26 Oct 2026 12:12:06 +0000
Received: from dude05.red.stw.pengutronix.de (dude05.red.stw.pengutronix.de [IPv6:2a0a:edc0:0:1101:1d::54])
	(Authenticated sender: relay-from-dude05.red.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id CD442202601;
	Mon, 26 Oct 2026 13:11:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793016716;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=h0/bixRPKL7dlKuFRnhpUSqFCpE/qFH22qVeuK0ARMA=;
	b=G4nv6jG8ocDDh6CP14AElgY2m/SUi1WuEDRaQDg+43zHgcsWCHsU5+GHvOdqnzIZV+UYFI
	LEYKxV9BGMknUVkraRss8KdP8Afpf+3gAwAh1btoEOOlr25+sDMilbb6zBi6+KAezBItDB
	f4PGhWuAjKYtsciY8S+2TfGabUDCTTvfqyzYlic2jJ3KM2SJVIRNK9bpYt09BS6SaEGW3v
	Ccnb2NeODUHF7hQNyuarPBAJT6dACL0eSc4uDDjLpV1uSI/Kd2A4CFAPLFLKqXr9/rVLxm
	R7WIwKYNf0glR2MZfv2jlQB/3JqgAD3cDiOIpHVRFIZ/iOqc1a4HwWDXXRGAuQ==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1793016716; a=rsa-sha256;
	cv=none;
	b=G9/88ATBavsL7/PmLl8ivWSQWDrKYpURyGRhiCEnZ/PsBeSM6gCoMNznOVvDm5jXtxNfH9
	UcAW+Aixp/30AnAfeL0thghEpmWakaguFYOIx57xRGVrSuDsVznYqiNxsbj7UGkjNKmByX
	EHDpd3oUiyhWda8PWE5DLnAINrYIFfLRBhaitZxBRMSpLjDFfWXo7aAe5ykC3ibpBOwgPr
	I17DCV17DgSc6JTBDwg2v5ExISzxNVrZcB0uPiNpnbDDVm72GHb6w3gFPrEuxeDIsQDHZA
	+YJcpdi/SWFT1LE/ajp2K04wHnPqHKkc01vaQ5wwUtteFBn14K/6ZoKbLF5rDg==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-dude05.red.stw.pengutronix.de smtp.mailfrom=a.fatoum@pengutronix.de
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793016716;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=h0/bixRPKL7dlKuFRnhpUSqFCpE/qFH22qVeuK0ARMA=;
	b=DpNKMpm2jdbW4lmZbAjoTPCwGMpU14CXzU6QCKkaR0SG3fYE8uAsp3a7FmWGlRhaIUtERS
	VjyvSMGo1s2I3ev3YveRTKJQaDdfJkIp1aZ+EdGo0gUu496cEI1+ntLqbVGkKKHH6I6rEJ
	CPWfL0ejBql7PgaR9tk1bZJwPbkpI4M9D2YIkqmNI3TWm1VxXonCfHCAWj3g3z9Fc7on2T
	dP75w0azZ39/gsBX0UpQYjIdmHIxwLcOx7YFnHsoqygsnH8Ia80zOjxk8Iv2yEvtXYkaen
	5p16ElIDcZnoS+IniyPShIW+tt2xRdPXxTYbPYMscHfBRr6Z3/V1NWqg8kGwrA==
Received: from dude05.red.stw.pengutronix.de (localhost [IPv6:::1])
	by dude05.red.stw.pengutronix.de (Postfix) with ESMTP id B4897745F30;
	Mon, 26 Oct 2026 13:11:56 +0100 (CET)
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Subject: [PATCH v3 08/12] efi: payload: pass shell arguments as load options to executed images
Date: Mon, 26 Oct 2026 13:09:59 +0100
Message-ID: <20261026121150.455510-9-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20261026121150.455510-1-a.fatoum@pengutronix.de>
References: <20261026121150.455510-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261026_051203_942709_E4292E6E 
X-CRM114-Status: GOOD (  23.00  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  EFI applications executed directly from the shell via the
   binfmt hook, e.g. "/boot/shell.efi -nostartup", currently have their arguments
    silently dropped: the only load options ever set are the Linux [...] 
 
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
X-Rspamd-Queue-Id: D3FB4200318
X-Spamd-Result: default: False [-59.11 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[99.99%];
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
X-Stat-Signature: gi9wqo5ecqnj1gwstwz1c6qxiy9ahjyd

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

While at it, print the "Booting ... with options" message for all
images, not only for EFI-stubbed kernels, and add the missing space in it.

Assisted-by: Claude:fable-5
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 efi/payload/bootm.c |  9 ++++++--
 efi/payload/image.c | 54 ++++++++++++++++++++++++++++++++-------------
 efi/payload/image.h |  2 +-
 3 files changed, 47 insertions(+), 18 deletions(-)

diff --git a/efi/payload/bootm.c b/efi/payload/bootm.c
index 58b7dd5ea779..1eec73a13dd0 100644
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
index 4e59c7b4ea10..003433ebb4ad 100644
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
 
@@ -120,18 +119,19 @@ int efi_execute_image(efi_handle_t handle,
 	 */
 	no_return = is_bootm || filetype_is_linux_efi_image(filetype);
 
-	if (filetype_is_linux_efi_image(filetype)) {
-		options = linux_bootargs_get();
-		printf("Booting kernel via StartImage");
-		if (options) {
-			printf("with options '%s'", options);
-			loaded_image->load_options = xstrdup_char_to_wchar(options);
-			loaded_image->load_options_size =
-				(strlen(options) + 1) * sizeof(wchar_t);
-		}
-		printf("...\n");
+	if (options && *options) {
+		load_options = xstrdup_char_to_wchar(options);
+		loaded_image->load_options = load_options;
+		loaded_image->load_options_size =
+			(strlen(options) + 1) * sizeof(wchar_t);
 	}
 
+	printf("Booting %s", filetype_is_linux_efi_image(filetype) ?
+	       "kernel via StartImage" : "EFI image");
+	if (load_options)
+		printf(" with options '%s'", options);
+	printf("...\n");
+
 	if (no_return) {
 		efi_set_variable_usec("LoaderTimeExecUSec", &efi_systemd_vendor_guid,
 				      ktime_to_us(ktime_get()));
@@ -152,8 +152,24 @@ int efi_execute_image(efi_handle_t handle,
 	if (EFI_ERROR(efiret))
 		pr_err("failed to StartImage: %s\n", efi_strerror(efiret));
 
-	if (!is_driver)
+	/*
+	 * load_options is freed below, so a driver that started successfully
+	 * and thus stays loaded must drop its reference to it. The firmware
+	 * already unloaded an application that returned and a driver that
+	 * failed to start, so their loaded image protocol must not be touched.
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
@@ -165,13 +181,21 @@ static int efi_execute(struct binfmt_hook *b, char *file, int argc, char **argv)
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



