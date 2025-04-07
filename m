Delivery-date: Mon, 07 Apr 2025 15:20:56 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u1mPI-009Z6X-2V
	for lore@lore.pengutronix.de;
	Mon, 07 Apr 2025 15:20:56 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u1mPI-00048k-8E
	for lore@pengutronix.de; Mon, 07 Apr 2025 15:20:56 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=zdvg8leT1zOTSxAQIbtg3DFgYISj6rlWcxOXBky60Rg=; b=PgCx5KLtWQxJU271Axb8Oli8hD
	TMhcdt70KUqxt+J7BmaGS8uuQwkLJQTV+SwXwPKg7GS49M7umtvE+Oj4w7muBF5C15rPbHZ7N2BQ9
	BMG8DNHVJi2svWQzahZxIUVyB0djvBmn6k+pOOIevl7VF0gGJaKQXY2LiX4uvRpGgUO+xYaZol9DE
	6HDb82xBo6kY7v7XbMSlZk38BbvZqGEvGE3hWnLpyh/tuTNq/RdLGTMkXQMjmR8i7vjsfYI8QtNP5
	jAxKfou59hMHclJRC10sNVaMSttPI9g9i3mfiEyu7XdOwjEj+YUyEfIllRzCGQ1oKEqplj6KOTx3Z
	hCyDiSWQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u1mOq-00000000TX4-2GCW;
	Mon, 07 Apr 2025 13:20:28 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u1mOn-00000000TW1-1ryI
	for barebox@lists.infradead.org;
	Mon, 07 Apr 2025 13:20:26 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1u1mOm-00043K-7v; Mon, 07 Apr 2025 15:20:24 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1u1mOm-003lkM-0A;
	Mon, 07 Apr 2025 15:20:24 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1u1mOl-00E48A-3A;
	Mon, 07 Apr 2025 15:20:23 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, 
 Alexander Shiyan <eagle.alexander923@gmail.com>
In-Reply-To: <20250331123948.337747-1-eagle.alexander923@gmail.com>
References: <20250331123948.337747-1-eagle.alexander923@gmail.com>
Message-Id: <174403202397.3352093.10637235532130303443.b4-ty@pengutronix.de>
Date: Mon, 07 Apr 2025 15:20:23 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250407_062025_488835_C7C9F65D 
X-CRM114-Status: UNSURE (   7.78  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] clk: rockchip: rk3588: make refclko25m_ethX critical
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 31 Mar 2025 15:39:48 +0300, Alexander Shiyan wrote:
> Ethernet phys normally need a 25MHz refclk input. On a lot of boards
> this is done with a dedicated 25MHz crystal. But the rk3588 CRU also
> provides a means for that via the refclko25m_ethX clock outputs that
> can be used for that function.
> 
> The mdio bus normally probes devices on the bus at runtime, by reading
> specific phy registers. This requires the phy to be running and thus
> also being supplied by its reference clock.
> 
> [...]

Applied, thanks!

[1/1] clk: rockchip: rk3588: make refclko25m_ethX critical
      https://git.pengutronix.de/cgit/barebox/commit/?id=46babe1348e0 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



