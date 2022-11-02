Delivery-date: Wed, 02 Nov 2022 11:49:53 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oqBJh-00CDPK-Nx
	for lore@lore.pengutronix.de; Wed, 02 Nov 2022 11:49:53 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oqBJg-0000qI-M7
	for lore@pengutronix.de; Wed, 02 Nov 2022 11:49:53 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=xOT10gn9osQuC9pn5ySsSMDA6sxyZN7S9qMJnZGapPY=; b=hoZICUuifDONl5z4maRqiugts/
	fcbsv7R8EaNUlYlYv4Nbc9JMHRMTP4uNlX4KaPaBvgisZL4XdfS0np5bMkL23dKrMjEAaZ9HaMnYU
	kzG4oWFUej0zLx4YjHd5IYThdhc8XDkHGKeWlNDF7mBG4NZiv0g2zeYQHw4sOrtOfrxrTFC6hMgU9
	Hgs+584fcU6EwIuwhr7esDp0ClR5EQExaU2NFgNcCC5p37/GQGeHoELyZ2kG5pcCzuYKsiHR9uhX6
	pshSTfDTxArGkpzypMYizr5BdkL1iaYKrHkuq/nBRF0YzB5mLFOBKugE+e9p/5a1Hc61TV57S2Nf2
	ex/+N04w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oqBIG-00Aajc-3q; Wed, 02 Nov 2022 10:48:24 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oqBIA-00AahW-W5
	for barebox@lists.infradead.org; Wed, 02 Nov 2022 10:48:20 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1oqBI8-0000eQ-TK; Wed, 02 Nov 2022 11:48:16 +0100
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oqBI9-001qzA-5Q; Wed, 02 Nov 2022 11:48:16 +0100
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oqBI7-008gdr-DJ; Wed, 02 Nov 2022 11:48:15 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  2 Nov 2022 11:48:14 +0100
Message-Id: <20221102104814.2070367-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221102_034819_051553_FD76361C 
X-CRM114-Status: GOOD (  11.47  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] ARM: rk356x: rk3568-evb: add missing new line to log message
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

If ADC is available, but read out returns an error, we end up with a log
line that's not new line terminated. Fix this.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/boards/rockchip-rk3568-evb/board.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boards/rockchip-rk3568-evb/board.c b/arch/arm/boards/rockchip-rk3568-evb/board.c
index 212c801c93d3..ef886e67ed15 100644
--- a/arch/arm/boards/rockchip-rk3568-evb/board.c
+++ b/arch/arm/boards/rockchip-rk3568-evb/board.c
@@ -94,7 +94,7 @@ static int rk3568_evb_detect_hwid(void)
 	return 0;
 
 err_hwid:
-	pr_err("couldn't retrieve hardware ID");
+	pr_err("couldn't retrieve hardware ID\n");
 	return ret;
 }
 late_initcall(rk3568_evb_detect_hwid);
-- 
2.30.2



