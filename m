Delivery-date: Wed, 09 Oct 2024 15:10:08 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1syWS8-002Edr-2W
	for lore@lore.pengutronix.de;
	Wed, 09 Oct 2024 15:10:08 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1syWS7-00076S-V4
	for lore@pengutronix.de; Wed, 09 Oct 2024 15:10:08 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=zMdT7ySjxcudfAxr/Uq42N1pJ5wsIY45frmuUMdYeCE=; b=go6yo3tVUZhtBPElPLlY/TlLnJ
	qhMb8mnyoj/QtcP7qxthLKepntzMZ2HSL3SChSPiyR1MShdd5IUdDhenSCy3Iu9Nk37f+W+UBf9OD
	5tfAg4GKDzENsyiqswnQIMhdVF1h4G9rxaW8IevPqJsRiqVecaY989XK/nzv91we3ZC/73HjJuab9
	dfeTxnFppdi3KCWRvPe/snvgXjOc7iVpez4ZxKcGO3IL2CNAeu7Z2x1+5ew6vmhMNDWeLfSbcnC1E
	MtPeI33f6og7LOYgaczHhG4u94j1hWlte5l5UuLPpjb4zMwv/Ld37S4TAQNpIrA7hWaZNbyt3CdMK
	8Ylxb43g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1syWRQ-00000009LnU-1DHg;
	Wed, 09 Oct 2024 13:09:24 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1syWNz-00000009L8R-3jJT
	for barebox@lists.infradead.org;
	Wed, 09 Oct 2024 13:05:56 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1syWNx-0006mv-7g; Wed, 09 Oct 2024 15:05:49 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1syWNw-000boY-RS; Wed, 09 Oct 2024 15:05:48 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1syWNw-00H9Su-2Q;
	Wed, 09 Oct 2024 15:05:48 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: uol@pengutronix.de,
	ejo@pengutronix.de,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  9 Oct 2024 15:05:46 +0200
Message-Id: <20241009130546.3913672-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241009_060551_998837_29F4E49B 
X-CRM114-Status: GOOD (  11.60  )
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
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] FIT: improve error message when uncompressing non-compressed files
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

If due to user error, an uncompressed kernel is added into a FIT image,
but compression = "gzip" is specified, a quite cryptic message results:

  ERROR: FIT: cannot handle filetype ARM aarch64 Linux image
  ERROR: FIT: data couldn't be decompressed
  ERROR: Loading dtb image failed with: Function not implemented

Adapt the error messages a bit, so it says instead:

  ERROR: FIT: unsupported compression filetype "aarch64 Linux image"
  ERROR: FIT: gzip data couldn't be decompressed
  ERROR: Loading FIT image failed with: Function not implemented

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/bootm.c     | 10 ++++++++--
 common/image-fit.c |  2 +-
 lib/uncompress.c   |  2 +-
 3 files changed, 10 insertions(+), 4 deletions(-)

diff --git a/common/bootm.c b/common/bootm.c
index 2de68a0b5e1a..b6ab358426f6 100644
--- a/common/bootm.c
+++ b/common/bootm.c
@@ -761,8 +761,14 @@ int bootm_boot(struct bootm_data *bootm_data)
 	}
 
 	if (ret) {
-		pr_err("Loading %s image failed with: %pe\n",
-		       file_type_to_short_string(os_type), ERR_PTR(ret));
+		const char *os_type_str;
+
+		if (os_type == filetype_oftree)
+			os_type_str = "FIT";
+		else
+			os_type_str = file_type_to_short_string(os_type);
+
+		pr_err("Loading %s image failed with: %pe\n", os_type_str, ERR_PTR(ret));
 		goto err_out;
 	}
 
diff --git a/common/image-fit.c b/common/image-fit.c
index c5d2196bda34..9e3dbe9ae054 100644
--- a/common/image-fit.c
+++ b/common/image-fit.c
@@ -598,7 +598,7 @@ static int fit_handle_decompression(struct device_node *image,
 	ret = uncompress_buf_to_buf(*data, *data_len, &uc_data,
 				    fit_uncompress_error_fn);
 	if (ret < 0) {
-		pr_err("data couldn't be decompressed\n");
+		pr_err("%s data couldn't be decompressed\n", compression);
 		return ret;
 	}
 
diff --git a/lib/uncompress.c b/lib/uncompress.c
index 11f55c8f9fd1..0aaeb066b674 100644
--- a/lib/uncompress.c
+++ b/lib/uncompress.c
@@ -131,7 +131,7 @@ int uncompress(unsigned char *inbuf, long len,
 		break;
 #endif
 	default:
-		err = basprintf("cannot handle filetype %s",
+		err = basprintf("unsupported compression filetype \"%s\"",
 				  file_type_to_string(ft));
 		error_fn(err);
 		free(err);
-- 
2.39.5



