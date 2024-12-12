Delivery-date: Thu, 12 Dec 2024 09:27:44 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tLeXv-0077Fd-38
	for lore@lore.pengutronix.de;
	Thu, 12 Dec 2024 09:27:44 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tLeXv-0002ej-VF
	for lore@pengutronix.de; Thu, 12 Dec 2024 09:27:44 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=G7sEPmfrLjmEPuWvAuavaC8JK+uTEVPLxVgM3VxRePE=; b=BiBDlsBBcoX1cWr+w2D9OrL2Rs
	+qCjXAH3wB1Yxv38fct8BOKHQjqCytgJylTTe9Sr541y5QhLstTcdGs4s8mi08U59T2klJMjcu8+S
	PMzSII6LIWwylOfz56iv0ho0BGJ3QK+5yMfvStLN+F5/82HwGw3/sy2Nv3nZBBON4dBhgR2PUfQ06
	+yucQ4KX3IJNFleXNgc6vxCm2hvLL9hI36GAURT5KGarD854z56rQvtrxs3v/UsWL3dlEEEsTGqf+
	H+vSkzumhvy6hExBTcMsse4NV3LaObXoDk6ccZiq4G6kyofo0r8WYzw/TgawCfB2Wl6nLE1RQl20v
	itPKU43g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tLeXU-0000000HIa5-14N6;
	Thu, 12 Dec 2024 08:27:16 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tLeVN-0000000HI2S-3GOx
	for barebox@lists.infradead.org;
	Thu, 12 Dec 2024 08:25:07 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tLeVM-00025M-MC; Thu, 12 Dec 2024 09:25:04 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tLeVL-0030Dn-1r;
	Thu, 12 Dec 2024 09:25:04 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tLeVM-00D5Pn-0t;
	Thu, 12 Dec 2024 09:25:04 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, 
 Alexander Shiyan <eagle.alexander923@gmail.com>
In-Reply-To: <20241212064303.8765-1-eagle.alexander923@gmail.com>
References: <20241212064303.8765-1-eagle.alexander923@gmail.com>
Message-Id: <173399190427.3118705.2185476847844929211.b4-ty@pengutronix.de>
Date: Thu, 12 Dec 2024 09:25:04 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241212_002505_822682_8A22B0CD 
X-CRM114-Status: UNSURE (   7.49  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2] ARM: dts: rk356x: Use RNG node from upstream DTSI
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Thu, 12 Dec 2024 09:43:03 +0300, Alexander Shiyan wrote:
> Since the RNG node was added to the upstream DTSI, let's reuse it.
> This change disables HWRNG on RK3566, as done in the kernel[1].
> 
> [1]: https://lore.kernel.org/all/302bdae2f4defeefe88ea4018a0be11f@manjaro.org/
> 
> 

Applied, thanks!

[1/1] ARM: dts: rk356x: Use RNG node from upstream DTSI
      https://git.pengutronix.de/cgit/barebox/commit/?id=0937615585eb (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



