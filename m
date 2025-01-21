Delivery-date: Tue, 21 Jan 2025 09:08:15 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ta9J0-002Zab-1R
	for lore@lore.pengutronix.de;
	Tue, 21 Jan 2025 09:08:15 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ta9J0-0005RI-HU
	for lore@pengutronix.de; Tue, 21 Jan 2025 09:08:15 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Wafn5ilCS+4lJMvizRdID1IveoWG412w2zrspz1GWK8=; b=UxP43FwD3bV9TV+f0Zk1nqGWmg
	8pQjPBOi5gGsimjN2wvZHIeHwSVOKznysX3zQ0Twlr/Ix1Vq9s051JFsJf9xxd4h1q5uNeQ8GJNwM
	/eBh4z4JQizugBgSszLwR5GlGmZ2zzZNaUcyd2MRaRcfFOqoURGGbvENOGwLeWSW1ybKA1kdm/jUc
	qF2k2DnCOSeHkHx1cYMFl21UYwdNcvA4KWv/fvGdscW6xTqYcTLETRPIVmyZi6k67uuDZwYr/I0M+
	BL+JwRmXLvHAh1BWeK1Wxutis6dqH/pIeTS8RBppXUh8m2dgUGwVp2WYX9pKCM+Z3o1qoNFOaL0U/
	HYR/VReQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1ta9IX-00000007D9f-350q;
	Tue, 21 Jan 2025 08:07:45 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1ta9IU-00000007D7z-2u6b
	for barebox@lists.infradead.org;
	Tue, 21 Jan 2025 08:07:44 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1ta9IS-0005BF-60; Tue, 21 Jan 2025 09:07:40 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1ta9IR-0014jK-3C;
	Tue, 21 Jan 2025 09:07:40 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1ta9IR-0012g7-2z;
	Tue, 21 Jan 2025 09:07:39 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, 
 Alexander Shiyan <eagle.alexander923@gmail.com>
In-Reply-To: <20250116133021.2518756-1-eagle.alexander923@gmail.com>
References: <20250116133021.2518756-1-eagle.alexander923@gmail.com>
Message-Id: <173744685992.248524.4441214236395269797.b4-ty@pengutronix.de>
Date: Tue, 21 Jan 2025 09:07:39 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250121_000742_735972_5CA3A2A3 
X-CRM114-Status: UNSURE (   5.97  )
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
X-Spam-Status: No, score=-6.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] phy: rockchip-inno-usb2: Add support for RK3588 PHY
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Thu, 16 Jan 2025 16:30:21 +0300, Alexander Shiyan wrote:
> Add support for the RK3588 PHY variant.
> 
> 

Applied, thanks!

[1/1] phy: rockchip-inno-usb2: Add support for RK3588 PHY
      https://git.pengutronix.de/cgit/barebox/commit/?id=d6bf37c2f146 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



