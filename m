Delivery-date: Thu, 10 Oct 2024 16:24:12 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1syu5M-002epr-22
	for lore@lore.pengutronix.de;
	Thu, 10 Oct 2024 16:24:12 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1syu5L-0006Hp-Tz
	for lore@pengutronix.de; Thu, 10 Oct 2024 16:24:12 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:Message-Id:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=7p35xSpc5GowXtklXALK5fkRim0nViGFzVHazpWDi28=; b=BRbUic0OzLk8m5a2lTSNK7Za30
	y4WinEdLUDHBTn4yQN0i1VIi7tLE3GjYB4aAj3ngARE3UT4C8h0hx6wQsPuR2T5xaC42xdVmobZcn
	9OOJonqsxsXl+RRPCkNcFhfQWMpv3RTs01JikZp+LeroIuGrKqaAWr6AY1uVtJoY+x8gTqXKgCZiw
	I9cddxFC65ZL+oTmvhTnCBuMTGdc2w+LlRUrwXlhSrIJJjei3e6WWjQkewst+xuJg2cnHEFyyJ//I
	K711o0HQ6KLSAu3ppNjroQhuIjMXyoMy8YwcvwenYK9oMrcBdonIVhYZq71qvGzFNPcbvW0quG3MO
	93GiMoVw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1syu4c-0000000D55x-2ReI;
	Thu, 10 Oct 2024 14:23:26 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1syu4Y-0000000D546-1aUi
	for barebox@lists.infradead.org;
	Thu, 10 Oct 2024 14:23:24 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.kerkmann@pengutronix.de>)
	id 1syu4U-0006D5-I8; Thu, 10 Oct 2024 16:23:18 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.kerkmann@pengutronix.de>)
	id 1syu4U-000rjZ-5U; Thu, 10 Oct 2024 16:23:18 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.kerkmann@pengutronix.de>)
	id 1syu4U-00FQQU-0P;
	Thu, 10 Oct 2024 16:23:18 +0200
From: Stefan Kerkmann <s.kerkmann@pengutronix.de>
Date: Thu, 10 Oct 2024 16:23:04 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241010-fix-designware-fixed-link-v1-1-de2df5485a25@pengutronix.de>
X-B4-Tracking: v=1; b=H4sIAEfjB2cC/xXMwQqDMBCE4VeRPbuwEeOhryIeYjPaxRIlAS2Ev
 HuT48fPTKaEqEj06jJF3Jr0DBWm7+j9cWEHq6+mQYbRiBHe9MceSffwuIhGeP5qONiuo0xWHOw
 GqvsrotX2PS+l/AHb4QyEawAAAA==
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Stefan Kerkmann <s.kerkmann@pengutronix.de>
X-Mailer: b4 0.12.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241010_072322_631181_6A4C0448 
X-CRM114-Status: GOOD (  11.55  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] net: designware: let phy_resume handle fixed link phys
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This applies the same handling of fixed-link phys to the designware
driver as Rouven Czerwinski already did in commit
`6269556397ed646e9fdcdefa855944fcff0f3608 (net: eqos: let phy_resume
handle fixed link phys)`.

Without this change the driver segfaults on the socfpga platform if
there is no mdio bus attached, as it is the case in a fixed-link setup:

unable to handle NULL pointer dereference at address 0x00000140
pc : [<1fd026ae>]    lr : [<1fd026a7>]
sp : 1fff7e50  ip : 0be53f7a  fp : 00000000
r10: 0ffb6288  r9 : ff703000  r8 : 0fea5af0
r7 : 00000140  r6 : 00000000  r5 : 00000001  r4 : 00000140
r3 : 1fd026a7  r2 : 1fe462c8  r1 : 07e80000  r0 : 00000140
Flags: Nzcv  IRQs off  FIQs off  Mode SVC_32
[<1fd026ae>] (__slice_acquire+0x12/0x40) from [<1fd1cec7>] (mdiobus_read+0x13/0x2e)
[<1fd1cec7>] (mdiobus_read+0x13/0x2e) from [<1fd1d637>] (dwc_ether_open+0xaf/0x378)
[<1fd1d637>] (dwc_ether_open+0xaf/0x378) from [<1fd4f543>] (eth_open+0x2b/0x40)
[<1fd4f543>] (eth_open+0x2b/0x40) from [<1fd4f5c7>] (eth_open_all+0x47/0x5c)
[<1fd4f5c7>] (eth_open_all+0x47/0x5c) from [<1fd019a9>] (run_init+0xfd/0x264)
[<1fd019a9>] (run_init+0xfd/0x264) from [<1fd01b5d>] (start_barebox+0x4d/0xc8)
[<1fd01b5d>] (start_barebox+0x4d/0xc8) from [<1fd62c89>] (barebox_non_pbl_start+0xc1/0xe8)
[<1fd62c89>] (barebox_non_pbl_start+0xc1/0xe8) from [<1fd00005>] (__bare_init_start+0x1/0xc)

Signed-off-by: Stefan Kerkmann <s.kerkmann@pengutronix.de>
---
This applies the same handling of fixed-link phys to the designware
driver as Rouven Czerwinski already did in commit
`6269556397ed646e9fdcdefa855944fcff0f3608 (net: eqos: let phy_resume
handle fixed link phys)`.
---
 drivers/net/designware.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/net/designware.c b/drivers/net/designware.c
index 66f28b429d..706987675c 100644
--- a/drivers/net/designware.c
+++ b/drivers/net/designware.c
@@ -181,6 +181,10 @@ static int phy_resume(struct phy_device *phydev)
 {
 	int bmcr;
 
+	// Bus will be NULL if a fixed-link is used.
+	if (!phydev->bus)
+		return 0;
+
 	bmcr = phy_read(phydev, MII_BMCR);
 	if (bmcr < 0)
 		return bmcr;

---
base-commit: 5a2866973d386ffe9b9f5c429a0cbcd58bcef69c
change-id: 20241010-fix-designware-fixed-link-5b40650ae5fe

Best regards,
-- 
Stefan Kerkmann <s.kerkmann@pengutronix.de>



