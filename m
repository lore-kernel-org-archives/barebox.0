Delivery-date: Mon, 03 Jan 2022 12:59:06 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n4LzW-009njB-LR
	for lore@lore.pengutronix.de; Mon, 03 Jan 2022 12:59:06 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n4LzV-0003lQ-A4
	for lore@pengutronix.de; Mon, 03 Jan 2022 12:59:06 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AJYQ0ugR+5bTBRCJ2ryQSZUpvgEGXHgbYeUOto0TZ3Y=; b=quGp5irLjBcVpB
	xLvN60vHLb7VHi590NcNFMtvesBcGztjyT8F37eoSln36kk+/deG79xwaTZq5/nwhhdrikqlvifia
	Dr6tD20ExUZ5Yb6rqE5X6E4m/EdFM89oKNFRMFKY78MOcsltyVoXpdN7Gr5vM4E07Me/8x9Injbws
	iG05TBUEzJYsLPtEivHAAs/DkauHVcBR9xY24NshB+8GaWTrq6JsyFNRgYMPkqpD2pFoEsiS28qme
	7oBe14VWKY/+MWJGMdCngNBU+Ou3uCinyikKFP3ALDE6ivdEc4lAO81pNpuK34wjSNMkUVbjaY+zT
	xDlvCGHoTpX9gBWBm8FQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n4LyB-008vPA-L2; Mon, 03 Jan 2022 11:57:43 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n4Ly6-008vOC-7p
 for barebox@lists.infradead.org; Mon, 03 Jan 2022 11:57:39 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1n4Lxp-0003NQ-1Y; Mon, 03 Jan 2022 12:57:21 +0100
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <afa@pengutronix.de>)
 id 1n4Lxo-007EWH-Il; Mon, 03 Jan 2022 12:57:20 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Enrico Jorns <ejo@pengutronix.de>, Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  3 Jan 2022 12:57:17 +0100
Message-Id: <20220103115718.1723730-5-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220103115718.1723730-1-a.fatoum@pengutronix.de>
References: <20220103115718.1723730-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220103_035738_305824_AC645D23 
X-CRM114-Status: GOOD (  10.61  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH master 4/5] regulator: fix broken reference counting on disable
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Reference count is maintained correctly when enabling, but the very
first disable will ignore the reference count and disable the regulator
unconditionally. Make disable with an enable_count > 1 a no-op to fix
this.

Reported-by: Enrico Jorns <ejo@pengutronix.de>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/regulator/core.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/drivers/regulator/core.c b/drivers/regulator/core.c
index d1d3a36dfc8d..ac4141c1cdbf 100644
--- a/drivers/regulator/core.c
+++ b/drivers/regulator/core.c
@@ -71,6 +71,11 @@ static int regulator_disable_internal(struct regulator_internal *ri)
 	if (!ri->enable_count)
 		return -EINVAL;
 
+	if (ri->enable_count > 1) {
+		ri->enable_count--;
+		return 0;
+	}
+
 	if (!ri->rdev->desc->ops->disable)
 		return -ENOSYS;
 
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

