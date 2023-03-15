Delivery-date: Wed, 15 Mar 2023 19:35:14 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pcVxx-001ts5-RJ
	for lore@lore.pengutronix.de; Wed, 15 Mar 2023 19:35:14 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pcVxx-000384-Ds
	for lore@pengutronix.de; Wed, 15 Mar 2023 19:35:13 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=xuUyBgDLBqpoEmStMtLx1WPg2q5dEoGE70J2m4qUFkY=; b=0qGWwtmIWjF9cEHVr/bpI9mVSv
	Ay+NR1jWNUime5gG9fiGlWkMVviYojkEtTa8mV5MMBNEnLxOMKGN3gNMGs9eEvVN9FlNfiXYJM2rG
	qK/dpoPsHZcOGuVkx9/PCU7Zhvqz04XXFuHKnkvth+dvN/ssJHuOxqYXabIlpSdqXr/zTQJwtb4L/
	WTkV2Gf+yyYdjdotbV1xn+5brTH5FIMZZzv7tS5PR4djFCZZJPM5hTjRGcBDqiuWjDVsfF89xjX/l
	Ut3gzjVGS0V+5kScRN6R/olfMxZyQRUvkKkD7BGkXE2Ss8MjPYZ9mEtv+VBkLvgBWr7pUz5arJhbL
	Z7HZ1a7g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pcVwd-00EEqk-1e;
	Wed, 15 Mar 2023 18:33:51 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pcVwZ-00EEpc-0p
	for barebox@lists.infradead.org;
	Wed, 15 Mar 2023 18:33:49 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ukl@pengutronix.de>)
	id 1pcVwV-0002uD-1x; Wed, 15 Mar 2023 19:33:43 +0100
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1pcVwU-004MrM-6c; Wed, 15 Mar 2023 19:33:42 +0100
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1pcVwT-005Abz-Iq; Wed, 15 Mar 2023 19:33:41 +0100
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: barebox@lists.infradead.org
Date: Wed, 15 Mar 2023 19:33:38 +0100
Message-Id: <20230315183338.78433-1-u.kleine-koenig@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
X-Developer-Signature: v=1; a=openpgp-sha256; l=1317; i=u.kleine-koenig@pengutronix.de; h=from:subject; bh=JY+ao8KBRhB2z1mOWF0QaCiolFrGQUyz2icV3JQsR9c=; b=owEBbQGS/pANAwAKAcH8FHityuwJAcsmYgBkEg92PDFWaCH/Tt29unqSPCbrsVg1dHEkKhJoA wbBtvSmgZKJATMEAAEKAB0WIQR+cioWkBis/z50pAvB/BR4rcrsCQUCZBIPdgAKCRDB/BR4rcrs CVBqB/9iIrrWl7NoES0fcFTA6cX9YWKKm9OOpKyI3a5NDiLEeG23WeEbCtwXGeyWQJulbDAm2fx Qe/IXRhvUku7mJr3JM8VgZgVxq5Dxb1Ctl0Nh4a5HaeOiWPg8ZbRS0uGYE5dyLXPK0moZrte1X/ 3d6H3qdj4FyTipBKYch39rNBNkzbql1kIi/oGk4ecXOBNRDMFzFlQe0SqCbyJtPOCUNUi+peOlF 9l7MU9Djr6eAC4iDgp1GU5ksjmyL62RpR+dL2QDNI8Cf1/D9+MzoJMAc8OChGUKFQ/cvD/oH6BJ 8q/yi0Tm5HkVB7N0z1cjvE2oAiBiEReavWbNuPsEGMtlyp+8
X-Developer-Key: i=u.kleine-koenig@pengutronix.de; a=openpgp; fpr=0D2511F322BFAB1C1580266BE2DCDD9132669BD6
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230315_113347_298143_A24F3DAC 
X-CRM114-Status: GOOD (  12.39  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] imx-usb-loader: Don't try to transfer more data than contained in the image
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On platforms that don't have a 2nd stage (in my case i.MX25) it usually
happens the transfer limit for the first (and only) upload is bigger than
the actual file length. Then it's the right thing to load the complete
image (minus its header), but not more.

This fixes a failure to boot via USB on i.MX25 that ends in

	dl_command err=-1, last_trans=0

Fixes: 3367ebc55ebe ("scripts: imx-usb-loader: simplify code flow for file size calculations")
Signed-off-by: Uwe Kleine-König <u.kleine-koenig@pengutronix.de>
---
 scripts/imx/imx-usb-loader.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/scripts/imx/imx-usb-loader.c b/scripts/imx/imx-usb-loader.c
index a98ab0e33f8a..4bcb4cbab6fe 100644
--- a/scripts/imx/imx-usb-loader.c
+++ b/scripts/imx/imx-usb-loader.c
@@ -1403,7 +1403,7 @@ static int do_irom_download(struct usb_work *curr, int verify)
 	printf("loading binary file(%s) to 0x%08x, firststage_len=%zu type=%d, hdroffset=%u...\n",
 			curr->filename, header_addr, firststage_len, type, header_offset);
 
-	ret = load_file(image, firststage_len, header_addr, type, false);
+	ret = load_file(image, min(fsize, firststage_len), header_addr, type, false);
 	if (ret < 0)
 		goto cleanup;
 

base-commit: e3b5c9b60447eb266cb4895ee4662b1b613545b4
-- 
2.39.2



