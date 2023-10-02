Delivery-date: Mon, 02 Oct 2023 11:22:23 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qnF8C-001rRZ-BG
	for lore@lore.pengutronix.de; Mon, 02 Oct 2023 11:22:23 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qnF88-0005Tn-M9
	for lore@pengutronix.de; Mon, 02 Oct 2023 11:22:22 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=JCZ2YYw2pdMz40u24FJOCwVfrU4I0J9kcec27JxQI9w=; b=EZSopkDb5fiZD28SeC2nlWuX96
	2kJ5OO9Eqz2gwcgN3Gh9aXKux8TIaPpxCQxM8VIVqU7fNiFG+kDEeB4taJs3GqyMLchdhBOQB9Jxs
	QiqGgpQZsHAWfrObhhHICR7QLWxyslruvUNvA9sJYEXhw6zYeokZmIV+HWOAo05XG+3q/nGoSO+zV
	p43iRtsmKg55tHastD/ofYTsnrnCCug2iHNzJqcgmxojcdP5Tdx0Cx+++fnOyZbdiLowFpKFubNAx
	hXaaMnYojfAH1JYl2GUFuDxS9ejF7ws3XLShKKyCCha5ogLoN7bRGSNBP79T2OzvSBe7Ausa9KuvQ
	OewjUiSQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qnF6j-00CDfK-14;
	Mon, 02 Oct 2023 09:20:53 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qnF6g-00CDeW-07
	for barebox@lists.infradead.org;
	Mon, 02 Oct 2023 09:20:51 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1qnF6c-0005C1-Nq; Mon, 02 Oct 2023 11:20:46 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1qnF6c-00AUQy-Ao; Mon, 02 Oct 2023 11:20:46 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <afa@pengutronix.de>)
	id 1qnF6c-00D1NQ-0x;
	Mon, 02 Oct 2023 11:20:46 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  2 Oct 2023 11:20:43 +0200
Message-Id: <20231002092043.3097587-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231002092043.3097587-1-a.fatoum@pengutronix.de>
References: <20231002092043.3097587-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231002_022050_068673_DC5E8AAE 
X-CRM114-Status: GOOD (  12.30  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/2] HAB: extend fuse information with i.MX8M
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Rouven Czerwinski <r.czerwinski@pengutronix.de>

The i.MX8M family of processors moved the SEC_CONFIG_1 fuse to a
different location. Extend the hab driver with the new location and take
care of the DIR_BT_DIS fuse which only needs to be burned on i.MX8MQ.

Signed-off-by: Rouven Czerwinski <r.czerwinski@pengutronix.de>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/hab/hab.c | 32 +++++++++++++++++++++++++++-----
 1 file changed, 27 insertions(+), 5 deletions(-)

diff --git a/drivers/hab/hab.c b/drivers/hab/hab.c
index aa848979b467..ee402352f243 100644
--- a/drivers/hab/hab.c
+++ b/drivers/hab/hab.c
@@ -150,23 +150,45 @@ static int imx_hab_permanent_write_enable_ocotp(int enable)
 	return imx_ocotp_permanent_write(enable);
 }
 
+static uint32_t get_sec_config_fuse(void) {
+	if (cpu_is_mx6()) {
+		return OCOTP_SEC_CONFIG_1;
+	} else {
+		return MX8M_OCOTP_SEC_CONFIG_1;
+	}
+}
+
 static int imx_hab_lockdown_device_ocotp(void)
 {
 	int ret;
+	uint32_t dis_fuse;
+	uint32_t sec_fuse;
 
-	ret = imx_ocotp_write_field(OCOTP_DIR_BT_DIS, 1);
-	if (ret < 0)
-		return ret;
+	if (cpu_is_mx6() || cpu_is_mx8mq()) {
+		if (cpu_is_mx6()) {
+			dis_fuse = OCOTP_DIR_BT_DIS;
+		} else {
+			dis_fuse = MX8MQ_OCOTP_DIR_BT_DIS;
+		}
+		ret = imx_ocotp_write_field(dis_fuse, 1);
+		if (ret < 0)
+			return ret;
+	}
 
-	return imx_ocotp_write_field(OCOTP_SEC_CONFIG_1, 1);
+	sec_fuse = get_sec_config_fuse();
+
+	return imx_ocotp_write_field(sec_fuse, 1);
 }
 
 static int imx_hab_device_locked_down_ocotp(void)
 {
 	int ret;
+	uint32_t fuse;
 	unsigned int v;
 
-	ret = imx_ocotp_read_field(OCOTP_SEC_CONFIG_1, &v);
+	fuse = get_sec_config_fuse();
+
+	ret = imx_ocotp_read_field(fuse, &v);
 	if (ret < 0)
 		return ret;
 
-- 
2.39.2



