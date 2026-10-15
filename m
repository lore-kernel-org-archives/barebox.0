Delivery-date: Thu, 15 Oct 2026 11:23:49 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xHHgi-00DrKs-36
	for lore@lore.pengutronix.de;
	Thu, 15 Oct 2026 11:23:48 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 6EB76201BBB
	for <lore@pengutronix.de>; Thu, 15 Oct 2026 11:23:48 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=lsqEVhEL;
	dkim=fail ("headers rsa verify failed") header.d=infradead.org header.s=desiato.20200630 header.b=m61yUO06;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=c9NsZiRC;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("pengutronix.de:s=20260414:i=1");
	dmarc=none
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1792056228; a=rsa-sha256;
	cv=pass;
	b=CcoPsSXiiV0EbyrcR4HlH5gRShI0khu6YazpzcI6quF0VktFYtyePn5mX8MtjuSkSqDh1D
	0tsQuI86OxS0nJ2IG+ZCf/pxMhBg4/75oLecCJGO6qCK2w9OE2d31k7C+1CFVV5BecF9Ka
	9GhsTUhUFO59PbRSPkNeBRHW+pPvZ9LQ9OHiE1auEfvuwZ+VA1u+0FVBeZs6NjzNQk6KQn
	lyr1HxszpTxQDAWZP50xmob/zCUh2Tx76VGSm7RHGsQGTjiSEK+oksyDnzYJBMeNdgQtuq
	miHcjj2AMm5KDM2upff1cpvbRb9BeuKjHv/1sVkob8P8HBm3deWLt7CAbr+wKA==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=lsqEVhEL;
	dkim=fail ("headers rsa verify failed") header.d=infradead.org header.s=desiato.20200630 header.b=m61yUO06;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=c9NsZiRC;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("pengutronix.de:s=20260414:i=1");
	dmarc=none
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792056228;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=hRgApo36MWI1xPNHqFMF6wPgFRZOgZgeanHHb3ChK+s=;
	b=WggFhgL/oUce51kAqIUsOSYRivYn72DmF7j8IEfKkrWfj990mUfonfySqTn0SWTfwx5g6x
	lLog0z+7qZnSWuQPYXpnyw18/uiEe6kmODMqgWr8kJpebGzOykw1QQv3qZFffp1naDJX4o
	M4Mi4ZiwTXL5TJpBF6zzOOkYFQdgrPgBa24LL05FO/qVVl5sQSx4JiS+ynIqo8k7KpzWnO
	tlT5ErRIO0pyJCUp9kiQ3k/zxdZEL0+KKpwI6McaLpvBnV1PqNoizIwXnFH1/3hTVm/Paj
	IHHA/As+S3rWMkyxhfHZm/9UWmYridZILRukkYCdfzBrFkSsoDzh9vesV3WDDg==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=hRgApo36MWI1xPNHqFMF6wPgFRZOgZgeanHHb3ChK+s=; b=lsqEVhELbAlgAksaUUitNfTz/N
	f3ny5PDUWlP7mlPYdyxp8iSne2EPTTSeeYm14LNwbVh6u+ADabpdVUtc7JN50NvrMycEmlcNdQH7x
	hPhIy4xaavORJRTsnghKiakUUoGzRB/DMJsXxap8PB9/OAhLM+PZGa1Ddewbo9JVq3N2ACgpNOunK
	lVnM+ZAnF8c9UnUzGvEcgniOBtJFk+lJi8i2VxPagqojayyBJMgu8wWVyFJbHNF6Sh0T098ZdaCA9
	MA2NE6Riwj02k+Lt9tiU1HpevBtnbw1KFWz386qSPix2J4fnweWvKRXfAylGDpj13Cf0m5s8qat9a
	kA8+DJnQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHHgI-0000000HFaI-0CBv;
	Thu, 15 Oct 2026 09:23:22 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHHgG-0000000HFYm-48OW
	for barebox@bombadil.infradead.org;
	Thu, 15 Oct 2026 09:23:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=hRgApo36MWI1xPNHqFMF6wPgFRZOgZgeanHHb3ChK+s=; b=m61yUO06P45q++65ffGuQYXJwm
	rPlITmJyMhrUpoaGkM24rwUaek4U83OO3n20x7fHa15eiCQ265zDTpCcoZAe1xpxQTNFcEicVXOlQ
	sNhtlZdIPU9TAC27u1D7T8ueVyNq3Z5eFLt/IiQlcp9RMxopO8XksS2mKuY1g9R/dZVPHZwvgjn4Y
	Casb40eFrtpuk237Os4lSJSCBqWT/2focfluG6THMbxdRk1RXNGbU+LNYTcX04G9wNDvG6bmnprEE
	t64OQE2fXCma3eJridhfuFwcXHHlzxeEjhL511TE4cwFhvkbXxGvl+ndf50IMzQWXNVpp2T0zBRL5
	/LWI/c+A==;
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by desiato.infradead.org with esmtps (Exim 4.99.5 #2 (Red Hat Linux))
	id 1xHHgC-00000000AOY-29nZ
	for barebox@lists.infradead.org;
	Thu, 15 Oct 2026 09:23:19 +0000
Received: from dude05.red.stw.pengutronix.de (dude05.red.stw.pengutronix.de [IPv6:2a0a:edc0:0:1101:1d::54])
	(Authenticated sender: relay-from-dude05.red.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id AB1952027D2;
	Thu, 15 Oct 2026 11:23:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792056191;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=hRgApo36MWI1xPNHqFMF6wPgFRZOgZgeanHHb3ChK+s=;
	b=c9NsZiRC3MN2wbVNVPkGvUdDtW/rwjpbTycLwjhuWt2gLU3nqvnBUZW7CYhDWTHWvErk3Q
	6VKA//SzAV9H9iXxfd3GoD6mNQO+E46YhhcNjdGpWrU1t6z4cu5UolwIiptUTWH5giQ9ci
	/hJOg4wYgvrGWokyI2+OLhRPaViemGE07JLWt8fUvNL5owhb0PJd9IaJC4MmgfhcN+DDdd
	afqM+BQi8pe6zxf6EsJIl1Ww8uQltKtMTNabfZsWrLdj+k04nN1BHELz0qTbjhE8MuLYQr
	w6uSzt5xt0SaDZ2QRFFf2DU6eFTGQaKJ2sGLDdnG9eIlxtC52gWHya8zGovs2w==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1792056191; a=rsa-sha256;
	cv=none;
	b=SE5S9IFQL7lx6F9C8F/vBslTVnp0IOfSgdUQVqQHKyrU2L9gUdI9bwFaMnBJJB9DArRNFv
	qA/M8klBF/RaeNrO6bNLm/WPE4VB2BlB3/ABU9JNZa/6M+sn7OwuOC73DGjUk5ZBP7NwIO
	mvGII2Z0BoCPqN23CUztPAxvn3m2FIe1IMKRdHLT3FntSysDAEGaWcGJ01EkaWhKirFnuX
	UsLs3mlL+rT3E0ehH6jWoQjKHWAQh4BLIoc1v2NIEGKxnKxFY4HZjU+pTmD+N1F5we61D8
	4KowjJaLHtRsivjt/O+PskEkI+mgddiMs6CiefPmT979+ZVT/Ze6k5vIJ4oopg==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-dude05.red.stw.pengutronix.de smtp.mailfrom=a.fatoum@pengutronix.de
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792056191;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=hRgApo36MWI1xPNHqFMF6wPgFRZOgZgeanHHb3ChK+s=;
	b=Xf0ZdGT8/Dg7aqg0Mwl61tsgZFawfe+1fZAHCbLPSN7DaKbg8o0l2tJhlwII3Big335fVq
	+EOHLqO2sQkv3zFSrGNF5A+3HNFH+0FNIDG0gAFczONgtdaVQT9uZd2fO1iygGAU/djL59
	nbXlAt1uOrHXLMPXx1R4C8smUYWdNImJWGkyFMGzPAl4IeJZvJNhSUEI8B0RnsCv666YAn
	yZJjwjkfErW4CAP2U9VALMi8EApxaE5FVQ3EPY8Wyz6O+oQ2px4Y37xQs0xCjCnwe1Og6a
	EuYZd7fBFW/2w0qIuzZcrtjPO1iSh/z4MknzCvzbZhcEgrrK1D/CjmPJ8Bwgag==
Received: from dude05.red.stw.pengutronix.de (localhost [IPv6:::1])
	by dude05.red.stw.pengutronix.de (Postfix) with ESMTP id 914917409AB;
	Thu, 15 Oct 2026 11:23:11 +0200 (CEST)
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: fpg@pengutronix.de,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Subject: [PATCH v2 07/10] efi: payload: pass shell arguments as load options to executed images
Date: Thu, 15 Oct 2026 11:18:49 +0200
Message-ID: <20261015092308.146516-8-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20261015092308.146516-1-a.fatoum@pengutronix.de>
References: <20261015092308.146516-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261015_102317_332349_9124AC81 
X-CRM114-Status: GOOD (  22.62  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software, running on the system "desiato.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  EFI applications executed directly from the shell via the
   binfmt hook, e.g. "/boot/shell.efi -nostartup", currently have their arguments
    silently dropped: the only load options ever set are the Linux [...] 
 
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
X-Spamd-Result: default: False [-59.31 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[99.99%];
	ARC_ALLOW_TRUSTED(-2.00)[pengutronix.de:s=20260414:i=1];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	MID_CONTAINS_FROM(1.00)[];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	ARC_ALLOW(-1.00)[pengutronix.de:s=20260414:i=1];
	RCVD_IN_DNSWL_MED(-0.60)[2a0a:edc0:0:1101:1d::54:received,2001:8b0:10b:1:d65d:64ff:fe57:4e05:received,2607:7c80:54:3::133:from];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,pengutronix.de:s=20260414];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	TO_DN_SOME(0.00)[];
	FORWARDED(0.00)[barebox@bombadil.infradead.org];
	DMARC_NA(0.00)[pengutronix.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[a.fatoum@pengutronix.de,barebox-bounces@lists.infradead.org];
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
X-Rspamd-Queue-Id: 6EB76201BBB
X-Stat-Signature: wcjq96wmuow78p4podrr5frwoo446j38

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
index 3668a6a04cac..445eaaa587d9 100644
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
 
@@ -118,16 +117,20 @@ int efi_execute_image(efi_handle_t handle,
 	 */
 	no_return = is_bootm || filetype_is_linux_efi_image(filetype);
 
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
@@ -150,8 +153,24 @@ int efi_execute_image(efi_handle_t handle,
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
@@ -163,13 +182,21 @@ static int efi_execute(struct binfmt_hook *b, char *file, int argc, char **argv)
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



