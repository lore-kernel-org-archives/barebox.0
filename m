Delivery-date: Mon, 16 Feb 2026 09:43:23 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vruCQ-002G9p-1T
	for lore@lore.pengutronix.de;
	Mon, 16 Feb 2026 09:43:23 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vruCQ-0001SG-Mz
	for lore@pengutronix.de; Mon, 16 Feb 2026 09:43:23 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=kYp/d0oZENCL7dRo5Gyyj8t7QSE9oRx59WxgzdXlWVk=; b=X9lDt9p2kcg6QRag/cVzxX94sF
	vw5ZNWOP+c61zPXoHmSPO980PD/qBAlbAD+98spJ8+1JpmT3fEeDjgHHxl0R49uwnBA+v/etn9JfG
	Om/iwTfMu8mSWO/4Z0SL1bx3a534BdlbjxxcOb4gvudsL2aqe/E9FjZpqh5OD753VlnEGaIjKfKQW
	ALL8VzSM83+Lw7qyLoI4rPZ0SDyXLIvWJ5r3G0Uhdor2KDgznLxAlJsB56NHc4l0G+i9nqD3G0Q8q
	p2uvHRSlNNQhOnJimR7db29bK4VU523ZE+XzfL/QQi+mURPU2lWRjgewew35XwD+rOKOjm9M+PbOJ
	kboC4K/Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vruC5-00000006Apk-2Yqx;
	Mon, 16 Feb 2026 08:43:01 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vruC0-00000006Ajm-0SfN
	for barebox@lists.infradead.org;
	Mon, 16 Feb 2026 08:42:58 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vruBy-00011n-I1; Mon, 16 Feb 2026 09:42:54 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vruBw-0012C4-2u;
	Mon, 16 Feb 2026 09:42:54 +0100
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vruBy-0000000Esrv-0dKu;
	Mon, 16 Feb 2026 09:42:54 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>,
	"Claude Opus 4.6" <noreply@anthropic.com>
Date: Mon, 16 Feb 2026 09:42:23 +0100
Message-ID: <20260216084253.3547270-7-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260216084253.3547270-1-a.fatoum@pengutronix.de>
References: <20260216084253.3547270-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260216_004256_151247_658CBFEA 
X-CRM114-Status: GOOD (  12.18  )
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
Subject: [PATCH 07/12] net: phy: add NULL check for phy driver in page accessors
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

to_phy_driver() can return NULL if the device has no driver bound.
While phy_read_page() and phy_write_page() are only called on bound
devices in practice, the existing error messages already hint at
this possibility ("PHY driver not loaded?").

Add a NULL check for phydrv before dereferencing it, consistent with
the existing error handling.

Reported-by: GCC 14.2 -fanalyzer
Co-authored-by: Claude Opus 4.6 <noreply@anthropic.com>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/net/phy/phy-core.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/net/phy/phy-core.c b/drivers/net/phy/phy-core.c
index 85e8c4b3e2c7..e74ad6f3a6e6 100644
--- a/drivers/net/phy/phy-core.c
+++ b/drivers/net/phy/phy-core.c
@@ -58,7 +58,7 @@ static int phy_read_page(struct phy_device *phydev)
 {
 	struct phy_driver *phydrv = to_phy_driver(phydev->dev.driver);
 
-	if (!phydrv->read_page) {
+	if (!phydrv || !phydrv->read_page) {
 		dev_warn_once(&phydev->dev, "read_page callback not available, PHY driver not loaded?\n");
 		return -EOPNOTSUPP;
 	}
@@ -70,7 +70,7 @@ static int phy_write_page(struct phy_device *phydev, int page)
 {
 	struct phy_driver *phydrv = to_phy_driver(phydev->dev.driver);
 
-	if (!phydrv->write_page) {
+	if (!phydrv || !phydrv->write_page) {
 		dev_warn_once(&phydev->dev, "write_page callback not available, PHY driver not loaded?\n");
 		return -EOPNOTSUPP;
 	}
-- 
2.47.3



