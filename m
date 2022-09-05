Delivery-date: Mon, 05 Sep 2022 19:40:55 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oVG5d-007kx8-MU
	for lore@lore.pengutronix.de; Mon, 05 Sep 2022 19:40:55 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oVG5d-0002qR-CM
	for lore@pengutronix.de; Mon, 05 Sep 2022 19:40:54 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=/nqqIRWblF/nhC9Y+aYdbJ9zKdx1LhrwOMpDQOpkhp8=; b=MPzU2nxYW154OTTpOehDCZxDog
	5NbrEXPyZkcEZB4QRYTEqKCxdzNjkXY2QUgPBbtlI/GZVgzl7SkMa26YgxXET98ilBdyYIOQQvu8k
	GC54X2AjdE1EUKnVD+OvQTs4oHPU5WiKdv7AlEb14cowbb5jecFHaaxo8nI8MAL91XL7hWXiNr67d
	k1aKJT3Vv7eK+KH1fMAeN/S+Cd2DxhF19MhOB3WxXy2exox6aYdkZjOGrytJI5oYiuYaT9Z8v2Iqa
	QN8AC3I0oUC6gaQohi+QlLGtpcV0mGVj2twikfZHwW+tXw4hQBp5rpEymbdUayNtOI/RZcrQBLshN
	VHS9NuCQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oVG3u-007h83-7I; Mon, 05 Sep 2022 17:39:06 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oV8q1-00H42H-7r
	for barebox@bombadil.infradead.org; Mon, 05 Sep 2022 09:56:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=/nqqIRWblF/nhC9Y+aYdbJ9zKdx1LhrwOMpDQOpkhp8=; b=r3timxknZxqWApIpxhsuvy2Mya
	dfPGHZVgedUsKwcK+ddM6LTkxAMDSVq/v66p9jAHjdpFlQqFas2fKHNwuvghqH/68WRWEEmy6TZSn
	Tehdda/t6GGAlOJdxAGp307oMqsGZ3mnbGq843SbJ8+gyhtLNdaBB3Sr/xhIPxBGaC6Ku5QwEjrmK
	Kj9MUtUw3+N0Sfi/lJVy9ZQrNQI5exfgPXC2mEgIYpdI6ezL0+O3UewET81CmMERkdavZLJ5Qts0o
	r1FkVIxd5hoa6eaL7aUnP/ywoR4bwYmKuEul9WlQHihtxCd8l22mZJFr+qT3612YvOeoUz84YS38V
	2DxRA6Lg==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by casper.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oV8py-009MuQ-VV
	for barebox@lists.infradead.org; Mon, 05 Sep 2022 09:56:17 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1oV8ps-0008Iz-Kp; Mon, 05 Sep 2022 11:56:08 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oV8pp-0042HH-UW; Mon, 05 Sep 2022 11:56:07 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oV8pl-002Wdo-Ub; Mon, 05 Sep 2022 11:56:01 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  5 Sep 2022 11:55:29 +0200
Message-Id: <20220905095557.596891-5-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220905095557.596891-1-a.fatoum@pengutronix.de>
References: <20220905095557.596891-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220905_105615_106215_5AEA85A6 
X-CRM114-Status: GOOD (  10.44  )
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
X-Spam-Status: No, score=-3.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 04/32] net: phy: micrel: drop useless assignment of dummy read
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The result of the PHY read is never used and the comment suggests this
is intentional. Still static analysis warns about this, so remove the
variable assignment and leave the read. We cast it to (void) to avoid
possible future __must_check warnings.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/net/phy/micrel.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/phy/micrel.c b/drivers/net/phy/micrel.c
index cf593ee6a6e6..8a30faa92b8a 100644
--- a/drivers/net/phy/micrel.c
+++ b/drivers/net/phy/micrel.c
@@ -554,7 +554,7 @@ static int ksz8873mll_read_status(struct phy_device *phydev)
 	int regval;
 
 	/* dummy read */
-	regval = phy_read(phydev, KSZ8873MLL_GLOBAL_CONTROL_4);
+	(void)phy_read(phydev, KSZ8873MLL_GLOBAL_CONTROL_4);
 
 	regval = phy_read(phydev, KSZ8873MLL_GLOBAL_CONTROL_4);
 
-- 
2.30.2



