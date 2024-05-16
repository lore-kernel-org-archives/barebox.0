Delivery-date: Thu, 16 May 2024 09:09:13 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s7VEn-00GuSu-1W
	for lore@lore.pengutronix.de;
	Thu, 16 May 2024 09:09:13 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s7VEm-0006U2-BD
	for lore@pengutronix.de; Thu, 16 May 2024 09:09:13 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=7w6YfulKSmh84lDbLToZ7E5f2M+4eCdlNgq2QPHOQ7g=; b=oDL0dPli8HKBhd2PBh34fxp0Rr
	zt1PJUyvBQ3mLiITACNJx53XU6ZSsKgc9DVkPqkTfGy3CPwyD0rkG3q8keutRQDxnBOAX67NrISVq
	/JrTLvHXE1dDEZ8SXfx7UtVUNkniUAkGnjl+YmVW4UloQ8uqTpV2ylvUxvOOg0dAVhpZG5nkET3uv
	vcgzw7xD/JIVt2dolnTHXKWsS0gv/Zq2ieDhluJgGsatVqFUtYPKfHjhs75Ve8hVSSdgiwNIi7T7Z
	xjqqxRf+PeQV0L7Ep34NH7w2VME3DkYdfbznc+b9uwCVoYA2jtICRbyHGT6eFkxb2MyRrp3v6Swva
	+Sw9HHaA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s7VE9-00000003wPb-3irK;
	Thu, 16 May 2024 07:08:33 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s7VE4-00000003wLj-0hFO
	for barebox@lists.infradead.org;
	Thu, 16 May 2024 07:08:31 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1s7VE0-00062Z-5f; Thu, 16 May 2024 09:08:24 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1s7VDz-001fTG-PM; Thu, 16 May 2024 09:08:23 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1s7VDz-00BWfZ-2D;
	Thu, 16 May 2024 09:08:23 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Thu, 16 May 2024 09:08:22 +0200
Message-Id: <20240516070822.2746845-8-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240516070822.2746845-1-s.hauer@pengutronix.de>
References: <20240516070822.2746845-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240516_000828_323341_1332087B 
X-CRM114-Status: GOOD (  12.43  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 7/7] bootm: use cdev_open_by_name()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

cdev_by_name() returns a cdev without increasing its reference count. In
order to maintain a proper reference counting use cdev_open_by_name()
instead and make sure it's closed afterwards when no longer needed.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/bootm.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/common/bootm.c b/common/bootm.c
index c851ab0456..357537c54e 100644
--- a/common/bootm.c
+++ b/common/bootm.c
@@ -760,7 +760,7 @@ int bootm_boot(struct bootm_data *bootm_data)
 
 		if (bootm_data->root_dev) {
 			const char *root_dev_name = devpath_to_name(bootm_data->root_dev);
-			const struct cdev *root_cdev = cdev_by_name(root_dev_name);
+			struct cdev *root_cdev = cdev_open_by_name(root_dev_name, O_RDONLY);
 
 			rootarg = cdev_get_linux_rootarg(root_cdev);
 			if (!rootarg) {
@@ -773,6 +773,9 @@ int bootm_boot(struct bootm_data *bootm_data)
 					pr_err("%s doesn't have a PARTUUID, cannot set root= option\n",
 						root_dev_name);
 			}
+
+			if (root_cdev)
+				cdev_close(root_cdev);
 		} else {
 			rootarg = path_get_linux_rootarg(data->os_file);
 		}
-- 
2.39.2



