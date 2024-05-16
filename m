Delivery-date: Thu, 16 May 2024 09:09:13 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s7VEn-00GuSR-0g
	for lore@lore.pengutronix.de;
	Thu, 16 May 2024 09:09:13 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s7VEm-0006Tj-9A
	for lore@pengutronix.de; Thu, 16 May 2024 09:09:13 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=xbGZKzOD9T+1uRSP8Qw+/t5a9/8QG2ZxkUyfDNrtXkA=; b=fVvX9jLKsnXyaNMbDEK4mQrcKq
	dWPOKGZ170ppDVaZoV6A+cklgiX5B0oSoYYtnNPYLLxegtQEAkMC/M+jCttJAH9IQCEhq5eITG8l7
	FeBaPDMFVxYKk1PE8i/ElvTGLKnzGjuANbEM2Ez806WItxOwQ8lr7EGXlTADKrgxcJTALRBm8psj6
	mETtf+DoZheVzGZMSPlHMdTfb6DapskVSv7od765mNv/AaMOsvDUfQkmKDN2/uN4Qyw4yHEQSIsAk
	Vk6mdAwtlV2I9uLspu0lPYhqwAG/c4aKWYi0Cdk4B25MiyYNYko8fRqhVQkXj5HARVNHh/OnUoJr+
	0sV751Eg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s7VE8-00000003wOr-2Cmd;
	Thu, 16 May 2024 07:08:32 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s7VE4-00000003wLe-0haA
	for barebox@lists.infradead.org;
	Thu, 16 May 2024 07:08:30 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1s7VE0-00061u-11; Thu, 16 May 2024 09:08:24 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1s7VDz-001fT7-KZ; Thu, 16 May 2024 09:08:23 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1s7VDz-00BWfZ-1i;
	Thu, 16 May 2024 09:08:23 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Thu, 16 May 2024 09:08:19 +0200
Message-Id: <20240516070822.2746845-5-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240516070822.2746845-1-s.hauer@pengutronix.de>
References: <20240516070822.2746845-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240516_000828_303552_E95AFBCB 
X-CRM114-Status: GOOD (  12.23  )
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
X-Spam-Status: No, score=-5.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 4/7] ARM: Rockchip: use cdev_open_by_name()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

cdev_by_name() returns a cdev without increasing its reference count. In
order to maintain a proper reference counting use cdev_open_by_name()
instead and make sure it's closed afterwards when no longer needed.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-rockchip/bbu.c | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/arch/arm/mach-rockchip/bbu.c b/arch/arm/mach-rockchip/bbu.c
index f15b32937c..7715540863 100644
--- a/arch/arm/mach-rockchip/bbu.c
+++ b/arch/arm/mach-rockchip/bbu.c
@@ -43,6 +43,7 @@ static int rockchip_bbu_mmc_handler(struct bbu_handler *handler,
 	int ret, fd, wr0, wr1;
 	loff_t space;
 	const char *cdevname;
+	struct cdev *cdev;
 
 	filetype = file_detect_type(data->image, data->len);
 	if (filetype != filetype_rockchip_rkns_image) {
@@ -60,7 +61,12 @@ static int rockchip_bbu_mmc_handler(struct bbu_handler *handler,
 	if (ret)
 		return ret;
 
-	space = cdev_unallocated_space(cdev_by_name(cdevname));
+	cdev = cdev_open_by_name(cdevname, O_RDONLY);
+	if (!cdev)
+		return -ENOENT;
+
+	space = cdev_unallocated_space(cdev);
+	cdev_close(cdev);
 
 	if (space < IMG_OFFSET_0 + data->len) {
 		if (!bbu_force(data, "Unallocated space on %s (%lld) is too small for one image\n",
-- 
2.39.2



