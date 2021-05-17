Delivery-date: Mon, 17 May 2021 20:56:30 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1liiPm-0005W2-JS
	for lore@lore.pengutronix.de; Mon, 17 May 2021 20:56:30 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1liiPl-0004QD-Ri
	for lore@pengutronix.de; Mon, 17 May 2021 20:56:30 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=1wKup0CnkxFDyYBIgL+3szy8PICVLOqipqhGmqs22HY=; b=pEgkw1Zh963cwWMG7Kj2ha0Wa
	iXPWlSliaEGsI0CHSP9EfFR/9IiYOUR/AgY6313VAVPKOQqc3nYiVWD+kwsrYTYz07Z6P86u+hVW1
	Y+lZW2CCg1maJB6CfqMG5vp/6Z4lpTNWwxdxmTR6kTo4PUu1k7deQd1ay6Rk1GSAd4JLF4Yc9E94T
	7dl1b8+A0ZYjX6STLT19gCPglwdkgY0XtETjpkfc1m/QI3/A4j78JVUftvJ43MT7yv3YVZ9vWYPxo
	Cu+EZyicNYcEUCsP/kxyyZ7pjZHOkiPk6vY2Kjw/1wLkyRT/+/A+wkNFY9j039nzPsbYpHrLy9WEm
	YjrHHoNYA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1liiOx-00FtpL-Bp; Mon, 17 May 2021 18:55:39 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1liiO0-00FtVZ-C4
 for barebox@desiato.infradead.org; Mon, 17 May 2021 18:54:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-Type:Content-ID:Content-Description;
 bh=WPdNlXW1UiU6ls7PAW17g7M8+SnQiMah+3SNdpmn8r4=; b=MqijtS0ioVbHAN4xb/rYAfkat0
 KVXpUWJmyUPzBwHPcn1q9rhSnd4UqL8iZzQPLZD5y6Zhyynsu/lZa+2BOK+0sMFwPeQ/+f64bJlnh
 kPanVpc6BMXsdlrAznnlw/f92jjf2oGMDtZ5rqAhBpZpDqsy9gJr1G8hq2/WeU2X3wwlzW2C/zAa4
 +PIPpMhAjqgImw8Qx6KYfF51EPHB0f/4XpGnb9dw/jFG75MtfmvNfnlu/Lr8LNrROVjder+dNQ3cs
 DDXtZSkTng6y0lZsQkLrwaeHLtj+m80PHYCOj56YWrnfw2d3Giaj+d2kwVj+MmutpHO0gaJuLBH70
 SJOmTHgg==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1liiNw-00E4Vg-Tr
 for barebox@lists.infradead.org; Mon, 17 May 2021 18:54:39 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1liiNn-0003PK-MJ; Mon, 17 May 2021 20:54:27 +0200
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1liiNm-0002yb-Fq; Mon, 17 May 2021 20:54:26 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Mon, 17 May 2021 20:54:23 +0200
Message-Id: <20210517185424.32145-15-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210517185424.32145-1-s.hauer@pengutronix.de>
References: <20210517185424.32145-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210517_115437_007871_7F467780 
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 14/15] clk: zynqmp: Fix wrong error check
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The return value of zynqmp_get_parent_names() is assigned to an unsigned
type which is then checked for being smaller than zero. Use a signed
type instead.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/clk/zynqmp/clkc.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/clk/zynqmp/clkc.c b/drivers/clk/zynqmp/clkc.c
index 366a12e70a..86d85b6daa 100644
--- a/drivers/clk/zynqmp/clkc.c
+++ b/drivers/clk/zynqmp/clkc.c
@@ -453,7 +453,7 @@ static int zynqmp_register_clocks(struct device_d *dev,
 	const char *parent_names[MAX_PARENT];
 	char *name;
 	struct device_node *node = dev->device_node;
-	unsigned int num_parents;
+	int num_parents;
 
 	for (i = 0; i < num_clocks; i++) {
 		if (zynqmp_get_clock_type(i) != CLK_TYPE_OUTPUT)
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

