Delivery-date: Tue, 01 Oct 2024 11:58:27 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1svZeD-004v7m-38
	for lore@lore.pengutronix.de;
	Tue, 01 Oct 2024 11:58:27 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1svZeE-0007xo-EN
	for lore@pengutronix.de; Tue, 01 Oct 2024 11:58:26 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=A9Di30r+nIbEIQHIyRcz19H6ldPOj9a/bpvMThM8jMA=; b=4gTTF1WxeJ67/X
	M1xorUGJsa8VdjkImhf85J6YBMFSY/66Zn1HLD1sjwY60/W5rfSEoHLfqBUsslRce4J9E+56W4j6N
	svbmPvIxgLVEGjsSgUAQ3+8Wy+JggxxYIfd631Vx2CmBqjOYUJSS3Rm7AZ2HIdTr3I2ajaRgm8Cvz
	NEtWzytrnhgmwyJFfuB4D7el++NTg3heno5IgIJmUT2XLdTZb2EC/w8adZ8L6i9/NQbCKf+iVUvw9
	T7RFlZ+2AYtJ5YfHUU8iwi1KBI2GQZRlNCh2rFzzMNR+YiMjCp8eGb/lMViu0mTb5auMThkVJ66PE
	y3DhoK/Xr2sH0ki2KBzA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1svZdc-00000002Hjw-41GZ;
	Tue, 01 Oct 2024 09:57:48 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1svZda-00000002Hj2-0bjt
	for barebox@lists.infradead.org;
	Tue, 01 Oct 2024 09:57:47 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1svZdX-0007d0-Vs; Tue, 01 Oct 2024 11:57:44 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1svZdX-002qUV-JD; Tue, 01 Oct 2024 11:57:43 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1svZdX-003rV0-1a;
	Tue, 01 Oct 2024 11:57:43 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue,  1 Oct 2024 11:57:41 +0200
Message-Id: <20241001095741.920605-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241001_025746_202301_C1D28463 
X-CRM114-Status: GOOD (  15.28  )
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
Cc: afa@pengutronix.de
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] mci: Fix erase_grp_size extraction for SD with csd_struct v0
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

In mci_extract_erase_group_size() we test for (IS_SD() && csd_struct_v1)
which means that for non csd_struct_v1 SD cards we fall into the MMC
path and evaluate ext_csd. This doesn't exist for SD cards and the
code crashes with a NULL pointer deref.

Fix this by always falling into the SD case for SD cards. Add the
missing erase_grp_size extraction for csd_struct v0 cards. The code
for that is taken from the corresponding Linux code.

Fixes: 91a11c7d50 ("mci: add support for discarding write blocks")
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mci/mci-core.c | 17 ++++++++++++++---
 1 file changed, 14 insertions(+), 3 deletions(-)

diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
index ec4a5c0749..48a3df9ec9 100644
--- a/drivers/mci/mci-core.c
+++ b/drivers/mci/mci-core.c
@@ -1228,9 +1228,20 @@ static void mci_extract_erase_group_size(struct mci *mci)
 		return;
 
 
-	if (IS_SD(mci) && UNSTUFF_BITS(mci->csd, 126, 2) != 0) {
-		/* For SD with csd_struct v1, erase group is always one sector */
-		mci->erase_grp_size = 1;
+	if (IS_SD(mci)) {
+		if (UNSTUFF_BITS(mci->csd, 126, 2) == 0) {
+			unsigned int write_blkbits = UNSTUFF_BITS(mci->csd, 22, 4);
+
+			if (UNSTUFF_BITS(mci->csd, 46, 1)) {
+				mci->erase_grp_size = 1;
+			} else if (write_blkbits >= 9) {
+				mci->erase_grp_size = UNSTUFF_BITS(mci->csd, 39, 7) + 1;
+				mci->erase_grp_size <<= write_blkbits - 9;
+			}
+		} else {
+			/* For SD with csd_struct v1, erase group is always one sector */
+			mci->erase_grp_size = 1;
+		}
 	} else {
 		if (mci->ext_csd[EXT_CSD_ERASE_GROUP_DEF] & 0x01) {
 			/* Read out group size from ext_csd */
-- 
2.39.5



