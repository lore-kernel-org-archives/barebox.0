Delivery-date: Mon, 08 Dec 2025 08:44:10 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vSVuk-0098rm-0O
	for lore@lore.pengutronix.de;
	Mon, 08 Dec 2025 08:44:10 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vSVuj-0003SA-I2
	for lore@pengutronix.de; Mon, 08 Dec 2025 08:44:10 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=OVDpp+3NWLXwEUWsE1DNzSWWxjoViDCPaidAERQJx84=; b=2TC4qRWnZHx5QqKD1oqNm5vO/v
	NRODrYzslr8g7jYqDm9YwTm/4OmLbIN8g5hllpwQIOlB2akXpseXX7p4zRmzncZfC+Ap4+l8oXEj7
	eS/GDfaaRSHgUyXfTxtHM3l8puUYkzD8ODfNdDVolW/vEgsx/8m2FaD7XxJfgJNfqi9/6hXw2dZqo
	+/gbi7ZMzK43muA87XkRw1zmlzBrSbz4uqGuG7nxiMokBdl/svxadn7aysjnNVzTpfurUo54nlLpx
	KZjCJkzYoeII/00vMjL2lYPskkKBArXkZ5zlfrcZPqKnmlIQgACU5WSfx162Z9tYePzJBxQL1gYuv
	m49hZMIg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vSVuJ-0000000CmSV-0M78;
	Mon, 08 Dec 2025 07:43:43 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vSVuG-0000000CmRy-2EC5
	for barebox@lists.infradead.org;
	Mon, 08 Dec 2025 07:43:41 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vSVuE-0003MR-Rp; Mon, 08 Dec 2025 08:43:38 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vSVuE-004Zdi-2B;
	Mon, 08 Dec 2025 08:43:38 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vSVuE-00000001JZb-2aZK;
	Mon, 08 Dec 2025 08:43:38 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>, 
 Michael Grzeschik <m.grzeschik@pengutronix.de>
In-Reply-To: <20251205-gppll-v1-0-bcd7b0f0408a@pengutronix.de>
References: <20251205-gppll-v1-0-bcd7b0f0408a@pengutronix.de>
Message-Id: <176517981861.313540.16873123160146597267.b4-ty@pengutronix.de>
Date: Mon, 08 Dec 2025 08:43:38 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251207_234340_573838_93AAE01F 
X-CRM114-Status: UNSURE (   4.97  )
X-CRM114-Notice: Please train this message.
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
Subject: Re: [PATCH 0/2] clk: imx: clk-fracn-gppll: add more frequencies
 for video-pll sources
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Fri, 05 Dec 2025 13:19:44 +0100, Michael Grzeschik wrote:
> 


Applied, thanks!

[1/2] clk: imx: clk-fracn-gppll: Add 355.6MHz config for video pll
      https://git.pengutronix.de/cgit/barebox/commit/?id=1c1461e61510 (link may not be stable)
[2/2] clk: imx: clk-fracn-gppll: Add 135MHz config for video pll
      https://git.pengutronix.de/cgit/barebox/commit/?id=6a2e90a112e4 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



