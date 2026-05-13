Delivery-date: Wed, 13 May 2026 15:40:29 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wN9p7-001Gs6-2r
	for lore@lore.pengutronix.de;
	Wed, 13 May 2026 15:40:29 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wN9p4-0003Ks-2G
	for lore@pengutronix.de; Wed, 13 May 2026 15:40:29 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=MY3mxknCCSzblgBA+Rzsa0GjkJW06BVCMIRRugTUbv4=; b=aQiDTaWKZwewjG97XJS3dTCzbz
	4qKQ11WoAHFAPxIFfmYNfeAktSI4EooGMb7iaIyL7Yz3WGJL+2D203TV0nM+CZsnzrP3Qbz3lT5/j
	wD8Xaf4in5mcWDSNyvtmCqLyU1bsqfHgwOBspdXoHwReGIinbcLGLK1d/oGSfjTK54O73nIU85+qn
	0y/d95j8sgxkm1LfvWXLbBAMay1aJ1T9iYqH9zN/R21M5j0ergvsnHQa1sWqOeIRUzkuqsbtH/75z
	yw1L4wm6ffth9t7/Rfh3c+cArYeMYvG9ji5CQPmCzRtYmxlc4XCX7t7doThLkZ5P/7U6ewoSFadSo
	KltiGNcw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wN9no-00000002nGy-3jVw;
	Wed, 13 May 2026 13:39:08 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wN9nl-00000002nEV-1fA9
	for barebox@lists.infradead.org;
	Wed, 13 May 2026 13:39:06 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wN9ng-0002sK-Lt; Wed, 13 May 2026 15:39:00 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wN9ng-000bgN-1z;
	Wed, 13 May 2026 15:39:00 +0200
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wN9ng-0000000GHXf-29jk;
	Wed, 13 May 2026 15:39:00 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: str@pengutronix.de,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 13 May 2026 15:30:51 +0200
Message-ID: <20260513133859.3877113-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260513_063905_646849_EAB3C222 
X-CRM114-Status: GOOD (  10.70  )
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
Subject: [PATCH master] mci: atmel_mci: fix mci_pbl breakage after mci_cmd::data change
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

To align with Linux, mci_cmd was extended by a data pointer and the
send_cmd in barebox proper was adapted to drop the mci_data member.

The PBL drivers were not adapted and just ignore mci_data, except for
the Atmel MCI driver, which now discards the actually populated data and
passes cmd->data, which is always NULL.

Correct the argument to fix BOOT.BIN boot up on the KSZ9477-EVB.
A patch that switches pbl_mci as a whole to the new API will follow
separately.

Fixes: 28974435d085 ("mci: add data segment to mci_cmd")
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/mci/atmel_mci_pbl.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/mci/atmel_mci_pbl.c b/drivers/mci/atmel_mci_pbl.c
index ee8007fd0c4c..27727b27343c 100644
--- a/drivers/mci/atmel_mci_pbl.c
+++ b/drivers/mci/atmel_mci_pbl.c
@@ -12,7 +12,7 @@ static int pbl_atmci_common_request(struct pbl_mci *mci,
 				    struct mci_cmd *cmd,
 				    struct mci_data *data)
 {
-	return atmci_common_request(mci->priv, cmd, cmd->data);
+	return atmci_common_request(mci->priv, cmd, data);
 }
 
 static struct atmel_mci atmci_host;
-- 
2.47.3



