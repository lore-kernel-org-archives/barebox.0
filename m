Delivery-date: Fri, 06 Mar 2026 11:38:44 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vySZv-008eG1-1R
	for lore@lore.pengutronix.de;
	Fri, 06 Mar 2026 11:38:44 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vySZv-00013S-MI
	for lore@pengutronix.de; Fri, 06 Mar 2026 11:38:44 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Message-ID:Date:Subject:To:From:Reply-To:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=Sw/AJp3981EUIsFhzNQIiuU1PgY/3QQNGzs4tg6acOo=; b=V4zW6tgPF4Yi5Opnb8p6jugama
	fegvMWFrxpwynR6UVvYd/LapIwnGGvzoROFmuCWurzR6KUjWWvcDsuNehk89qw3I5KK2xZjtNEVRh
	+0FbgCIgRKiWJy9/oYbpKMyqFbRNT87PZXQ9kT0XxHGnV8Tl4gPjoIe4dMGADY4Z4OEAsjGbviX/1
	7jaOSN39nnHXcVnL+2iz9MkB1+LccjExeUDZOADKSPUgsv3c123ONeevHwvS2KFP4J/NLXl71ePGS
	v2yC6K2AB5+Sbsvx3IVyOtPcKOT3grs9Z1t8BLP5jkpm+9ZxGP/zm4zxLZzH7q2UnPS72W3IQfcGn
	7Mv/9Pnw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vySZZ-00000003UER-3T4C;
	Fri, 06 Mar 2026 10:38:21 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vySZW-00000003UCS-1iPI
	for barebox@lists.infradead.org;
	Fri, 06 Mar 2026 10:38:19 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <uol@pengutronix.de>)
	id 1vySZT-0000rA-J8; Fri, 06 Mar 2026 11:38:15 +0100
Received: from dude03.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::39])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <uol@pengutronix.de>)
	id 1vySZS-0042G9-09;
	Fri, 06 Mar 2026 11:38:15 +0100
Received: from uol by dude03.red.stw.pengutronix.de with local (Exim 4.98.2)
	(envelope-from <uol@pengutronix.de>)
	id 1vySZT-00000005aBT-1Igz;
	Fri, 06 Mar 2026 11:38:15 +0100
From: =?UTF-8?q?Ulrich=20=C3=96lmann?= <u.oelmann@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Fri,  6 Mar 2026 11:38:12 +0100
Message-ID: <20260306103812.1330722-1-u.oelmann@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260306_023818_451784_A66A77EF 
X-CRM114-Status: GOOD (  12.77  )
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
X-Spam-Status: No, score=-3.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] i.MX: hab: always lock SRK hash after fusing
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The flag IMX_SRK_HASH_WRITE_LOCK has been present since the introduction of
barebox' hab command in [1], but only got its first user recently. Keeping SRK
hash locking optional is dangerous though: after programming the SRK hash,
leaving it writable allows later manipulations which can render a device
unbootable.

Make SRK hash programming always burn the corresponding lock fuses on all
supported i.MX variants (IIM/OCOTP), and remove IMX_SRK_HASH_WRITE_LOCK.

[1] 9dc622d5622c ("i.MX: hab: Add HAB fusebox related convenience functions / command")

Signed-off-by: Ulrich Ölmann <u.oelmann@pengutronix.de>
---
 common/boards/hgs/common.c |  3 +--
 drivers/hab/hab.c          | 30 ++++++++++++------------------
 include/hab.h              |  4 ----
 3 files changed, 13 insertions(+), 24 deletions(-)

diff --git a/common/boards/hgs/common.c b/common/boards/hgs/common.c
index 05edbd7e1df6..c4a31a27978f 100644
--- a/common/boards/hgs/common.c
+++ b/common/boards/hgs/common.c
@@ -479,8 +479,7 @@ struct hgs_fusemap {
  */
 static int hgs_run_first_boot_setup(void)
 {
-	unsigned int flags = IMX_SRK_HASH_WRITE_PERMANENT |
-			     IMX_SRK_HASH_WRITE_LOCK;
+	unsigned int flags = IMX_SRK_HASH_WRITE_PERMANENT;
 	const struct hgs_fusemap common_fusemap[] = {
 		/* Security */
 		/* MX8M_OCOTP_SEC_CONFIG[1] is done during imx_hab_lockdown_device() */
diff --git a/drivers/hab/hab.c b/drivers/hab/hab.c
index de0a6c73d692..5a4be712d596 100644
--- a/drivers/hab/hab.c
+++ b/drivers/hab/hab.c
@@ -80,14 +80,12 @@ static int imx_hab_write_srk_hash_iim(const u8 *srk, unsigned flags)
 			return -EIO;
 	}
 
-	if (flags & IMX_SRK_HASH_WRITE_LOCK) {
-		ret = imx_iim_write_field(IMX25_IIM_SRK0_LOCK96, 1);
-		if (ret < 0)
-			return ret;
-		ret = imx_iim_write_field(IMX25_IIM_SRK0_LOCK160, 1);
-		if (ret < 0)
-			return ret;
-	}
+	ret = imx_iim_write_field(IMX25_IIM_SRK0_LOCK96, 1);
+	if (ret < 0)
+		return ret;
+	ret = imx_iim_write_field(IMX25_IIM_SRK0_LOCK160, 1);
+	if (ret < 0)
+		return ret;
 
 	return 0;
 }
@@ -150,11 +148,9 @@ static int imx6_hab_write_srk_hash_ocotp(const u8 *newsrk, unsigned flags)
 	if (ret)
 		return ret;
 
-	if (flags & IMX_SRK_HASH_WRITE_LOCK) {
-		ret = imx_ocotp_write_field(OCOTP_SRK_LOCK, 1);
-		if (ret < 0)
-			return ret;
-	}
+	ret = imx_ocotp_write_field(OCOTP_SRK_LOCK, 1);
+	if (ret < 0)
+		return ret;
 
 	return 0;
 }
@@ -167,11 +163,9 @@ static int imx8m_hab_write_srk_hash_ocotp(const u8 *newsrk, unsigned flags)
 	if (ret)
 		return ret;
 
-	if (flags & IMX_SRK_HASH_WRITE_LOCK) {
-		ret = imx_ocotp_write_field(MX8M_OCOTP_SRK_LOCK, 1);
-		if (ret < 0)
-			return ret;
-	}
+	ret = imx_ocotp_write_field(MX8M_OCOTP_SRK_LOCK, 1);
+	if (ret < 0)
+		return ret;
 
 	return 0;
 }
diff --git a/include/hab.h b/include/hab.h
index 393cf0513e0c..212789dbfa59 100644
--- a/include/hab.h
+++ b/include/hab.h
@@ -38,10 +38,6 @@ static inline int habv4_get_state(void)
  * are written.
  */
 #define IMX_SRK_HASH_WRITE_PERMANENT	BIT(1)
-/* When writing the super root key hash, also burn the write protection
- * fuses so that the key hash can not be modified.
- */
-#define IMX_SRK_HASH_WRITE_LOCK		BIT(2)
 
 bool imx_hab_srk_hash_valid(const void *buf);
 int imx_hab_write_srk_hash(const void *buf, unsigned flags);
-- 
2.47.3



