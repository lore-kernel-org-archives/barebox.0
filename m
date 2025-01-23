Delivery-date: Thu, 23 Jan 2025 16:32:36 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tazC7-003V9f-2w
	for lore@lore.pengutronix.de;
	Thu, 23 Jan 2025 16:32:36 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tazC8-0001wg-0I
	for lore@pengutronix.de; Thu, 23 Jan 2025 16:32:36 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=D5JDrEJ022LIhaI4WA+3HHDAWrRqK3/CBgAEBh8p7WA=; b=4H0OVkvXfzxJS3GombsK9ShQni
	NYHHJQTAOm/8Xj1zG3KKamOH5xvNoLfAFpjA3jXsshhBA8OjvSJuLp85A5Q9U0kASpc2G7UJrQAcw
	eCp+QXGOL1JNLTYv8JSSd5l+OG+4OZDCNQ+j3JXUlXE9PRDI4XlimGL2XTXno3TXv69ML54+HnaO6
	NUoReORIjtL44Iq4CWtXGm011THld/vIrA9P1Q2B/5Dh4XGYVWU4d0FogxkyTgLjvBZkOFEtkiqG8
	bOiYKhqptBK3Lm3fBMMSiVfq+hdsQMVfjbbFWzp3UiDIweQluvEXTmswChQ2CScVp4CPfcqTlb+FL
	4PxhgG9A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tazBe-0000000CiS6-1tfI;
	Thu, 23 Jan 2025 15:32:06 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tazAE-0000000CiIK-1vF6
	for barebox@lists.infradead.org;
	Thu, 23 Jan 2025 15:30:39 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.kerkmann@pengutronix.de>)
	id 1tazAD-0001TP-5B; Thu, 23 Jan 2025 16:30:37 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.kerkmann@pengutronix.de>)
	id 1tazAC-001U1y-34;
	Thu, 23 Jan 2025 16:30:36 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.kerkmann@pengutronix.de>)
	id 1tayhY-006Chv-09;
	Thu, 23 Jan 2025 16:01:00 +0100
From: Stefan Kerkmann <s.kerkmann@pengutronix.de>
Date: Thu, 23 Jan 2025 15:56:15 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250123-v2024-05-0-topic-hab-v3-10-e90d0e43c2de@pengutronix.de>
References: <20250123-v2024-05-0-topic-hab-v3-0-e90d0e43c2de@pengutronix.de>
In-Reply-To: <20250123-v2024-05-0-topic-hab-v3-0-e90d0e43c2de@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Stefan Kerkmann <s.kerkmann@pengutronix.de>
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250123_073038_498566_298508CF 
X-CRM114-Status: GOOD (  11.81  )
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
X-Spam-Status: No, score=-7.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v3 10/10] hab: lock GP5 on i.MX8MP socs
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This change locks down the GP5 eFuses against modification on i.MX8MP
SoCs. To cite the i.MX8MP reference manual (Rev. 3):

  The GP5_LOCK eFuse locks the upper 64 bits of the 128-bit UNIQUE_ID
  (UID) eFuse field. The users must program the GP5_LOCK eFuse to b'11
  (WP+OP), thereby locking the upper 64-bit UID eFuse field. For devices
  shipped with date codes 2435 and later, the GP5_LOCK has been
  programmed to b'11 by NXP in production. Only devices with date codes
  prior to 2435 should be programmed to update the GP5_LOCK eFuse to
  b'11.

Signed-off-by: Stefan Kerkmann <s.kerkmann@pengutronix.de>
---
 drivers/hab/hab.c | 12 ++++++++----
 1 file changed, 8 insertions(+), 4 deletions(-)

diff --git a/drivers/hab/hab.c b/drivers/hab/hab.c
index 0f0c8766f069697944570290cb5796430ddae125..7fb759c152379dda2d43f139baf1aa6cf2051234 100644
--- a/drivers/hab/hab.c
+++ b/drivers/hab/hab.c
@@ -200,11 +200,15 @@ static int imx8m_hab_lockdown_device_ocotp(unsigned flags)
 	if (ret < 0)
 		return ret;
 
-	/* Only i.MX8MQ requires fusing of DIR_BT_DIS */
-	if (!cpu_is_mx8mq())
-		return ret;
+	/* Lock upper 64bit of the 128bit UNIQUE_ID eFuse field on i.MX8MP */
+	if (cpu_is_mx8mp())
+		return imx_ocotp_write_field(MX8MP_OCOTP_GP5_LOCK, 0b11);
 
-	return imx_ocotp_write_field(MX8MQ_OCOTP_DIR_BT_DIS, 1);
+	/* Only i.MX8MQ requires fusing of DIR_BT_DIS */
+	if (cpu_is_mx8mq())
+		return imx_ocotp_write_field(MX8MQ_OCOTP_DIR_BT_DIS, 1);
+
+	return 0;
 }
 
 static int imx6_hab_device_locked_down_ocotp(void)

-- 
2.39.5



