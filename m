Delivery-date: Mon, 16 Feb 2026 09:43:24 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vruCR-002GAN-1s
	for lore@lore.pengutronix.de;
	Mon, 16 Feb 2026 09:43:24 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vruCR-0001TH-SQ
	for lore@pengutronix.de; Mon, 16 Feb 2026 09:43:24 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=8xZSc7x/zYPVB66oIosQnv/6AbDICHwr7gSJ/vzhdkU=; b=4/uKsYFyJmbkk3TecsC/O1uDc5
	SCvWoitpCuj21+A5n3co2pKl+uept9jK9OuYeCbTdFgGAAnnk7O4Gk9L4DsZRNfwKSHfMffCDA7RJ
	fexC/6rkyi80NfrBBqeKenZi14rtpSy2R2pCOy3TJzXscnVk4yqnO8jwcJvQ3/LLIrwxvrYnj7KEB
	20I9XCB0C6GfNH+aeRyW/ehVH/hnzkMR8vyktLK4u63coCDpdy8C61vyvhhY0N3L/DcCBDvDGrit3
	wZCYrDwJB8EJY1UW74FCLVbNETHGSJdAQc8/YKa+Qd2l/KaC41JrgcwFsGY1UfU3XSSE9PUOZxC6c
	Uw56TZDg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vruC4-00000006Aoi-3m3u;
	Mon, 16 Feb 2026 08:43:00 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vruC0-00000006Ajl-00WO
	for barebox@lists.infradead.org;
	Mon, 16 Feb 2026 08:42:58 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vruBy-00011b-DF; Mon, 16 Feb 2026 09:42:54 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vruBw-0012Bz-2e;
	Mon, 16 Feb 2026 09:42:54 +0100
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vruBy-0000000Esrv-0FH9;
	Mon, 16 Feb 2026 09:42:54 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>,
	"Claude Opus 4.6" <noreply@anthropic.com>
Date: Mon, 16 Feb 2026 09:42:21 +0100
Message-ID: <20260216084253.3547270-5-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260216084253.3547270-1-a.fatoum@pengutronix.de>
References: <20260216084253.3547270-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260216_004256_065225_C3AB32B5 
X-CRM114-Status: GOOD (  11.78  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 05/12] bootm: android: fix PTR_ERR called after clearing error pointer
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Both the kernel and initrd error paths set the pointer to NULL before
calling PTR_ERR(), which always yields 0 (apparent success) instead of
the actual error code from aimage_copy_component().

Swap the order so PTR_ERR() captures the error code before the pointer
is cleared.

Co-Authored-By: Claude Opus 4.6 <noreply@anthropic.com>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/bootm-android-image.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/common/bootm-android-image.c b/common/bootm-android-image.c
index cb86123659ba..828400fef772 100644
--- a/common/bootm-android-image.c
+++ b/common/bootm-android-image.c
@@ -101,8 +101,8 @@ static int do_bootm_aimage(struct image_data *img_data)
 	if (hdr->kernel.size) {
 		kernel = aimage_copy_component(fd, ofs, hdr->kernel.size);
 		if (IS_ERR(kernel)) {
-			kernel = NULL;
 			ret = PTR_ERR(kernel);
+			kernel = NULL;
 			goto err_close;
 		}
 	}
@@ -112,8 +112,8 @@ static int do_bootm_aimage(struct image_data *img_data)
 	if (hdr->ramdisk.size) {
 		initrd = aimage_copy_component(fd, ofs, hdr->ramdisk.size);
 		if (IS_ERR(initrd)) {
-			initrd = NULL;
 			ret = PTR_ERR(initrd);
+			initrd = NULL;
 			goto err_close;
 		}
 	}
-- 
2.47.3



