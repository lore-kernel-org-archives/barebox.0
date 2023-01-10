Delivery-date: Tue, 10 Jan 2023 09:53:23 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pFANo-007a2J-KK
	for lore@lore.pengutronix.de; Tue, 10 Jan 2023 09:53:23 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pFANm-0000MR-Ks
	for lore@pengutronix.de; Tue, 10 Jan 2023 09:53:23 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=bBYecFCua+xeddSFe5NypYUd7z9QI2jVzqzPuIqtvSE=; b=AZVXO9XAaHU9/XAl7eTIaMSyWj
	0+BO2mVzbY5bJFoD/Sd9cYmsfwyZkCCODcT8MeFbU7+dfwfMm05G1axt8f22EMyQbdjuFugUmReSS
	4FpbMkvTcPmXKh9kZc/erDYKbbhhNV+xfUhAVnM0ORgVPXuAzn2gtTYtNDEWbdT5yiocFayl/FkbB
	735P/EWgMex3EYGRFuOCJhSGclBY1dNgq8HesCbIwr05wTm8Bsg8EQEYWlfjrJQuBYr+3vQb6mu/8
	OIVBWfvWRpxRSxsz8uFhsgblD2nQaOjw5gprGTMWU+Mjfn/x90ygj/nFFPp5fs9dnYJLlg6zzu9OX
	PWwAlaLA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFAMa-005vVR-TM; Tue, 10 Jan 2023 08:52:08 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFAMV-005vT4-5Q
	for barebox@lists.infradead.org; Tue, 10 Jan 2023 08:52:04 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1pFAMT-0008Rt-Ri; Tue, 10 Jan 2023 09:52:01 +0100
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pFAMT-0052BW-7A; Tue, 10 Jan 2023 09:52:01 +0100
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pFAMS-00EQy6-4o; Tue, 10 Jan 2023 09:52:00 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 10 Jan 2023 09:51:59 +0100
Message-Id: <20230110085159.3440210-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230110_005203_225172_D8DE26BF 
X-CRM114-Status: GOOD (  10.05  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH master] nvmem: ocotp: decouple featctrl from barebox,provide-mac-address
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

imx_ocotp_init_dt() does both barebox,provide-mac-address and
barebox,feature-controller parsing, but it erroneously exited
early when the former was not available. Change this so no
early exit happens.

Fixes: 4adc4e12ac95 ("nvmem: ocotp: add i.MX8M[MN] feature controller support")
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/nvmem/ocotp.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/nvmem/ocotp.c b/drivers/nvmem/ocotp.c
index 7545059aa92b..2fef84074302 100644
--- a/drivers/nvmem/ocotp.c
+++ b/drivers/nvmem/ocotp.c
@@ -646,14 +646,12 @@ static int imx_ocotp_init_dt(struct ocotp_priv *priv)
 	const __be32 *prop;
 	struct device_node *node = priv->dev.parent->of_node;
 	u32 tester4;
-	int ret, len;
+	int ret, len = 0;
 
 	if (!node)
 		return 0;
 
 	prop = of_get_property(node, "barebox,provide-mac-address", &len);
-	if (!prop)
-		return 0;
 
 	for (; len >= MAC_ADDRESS_PROPLEN; len -= MAC_ADDRESS_PROPLEN) {
 		struct device_node *rnode;
-- 
2.30.2



