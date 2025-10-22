Delivery-date: Wed, 22 Oct 2025 11:26:41 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vBV7B-00AYfw-1w
	for lore@lore.pengutronix.de;
	Wed, 22 Oct 2025 11:26:41 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vBV7B-0006zH-2o
	for lore@pengutronix.de; Wed, 22 Oct 2025 11:26:41 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=3IEWiTfTIszrf4F+ZsetrDuhNy11CaP3P3AmwfiqiqE=; b=j8wxr+MJGOp3OeDHYaSPcoyvTh
	aqIjPPqROO/3DetMQuQsBTSYezbSoVNpu9LLNB8Kex3fnWflKp/yxa9onQergIJRH7N+7A2Fs4vXQ
	z/W8jPYct4+uHiE7LTOvPC16edWtHjBP0R+0IKajiemt4WwBsSxAdH0KATZNvR6cuCl3mV9UuUmpC
	up8FBmnY3Ob4NRUj6cvlFjegXMYovuNRTyJCAlVgQMsWA00y9ZA2XhpG2yfqL3qg3epEmcTiJvea0
	09+gN3zuS2Ctp1ji+yRGIT2r11fZ1lHcwOi885T1O+wor3qxTlS4uRFP6nkzq0e2d5EsNg7wUQne/
	uAXW5bXw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBV6a-00000002G55-21Ov;
	Wed, 22 Oct 2025 09:26:04 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBV6V-00000002G4h-2vAj
	for barebox@lists.infradead.org;
	Wed, 22 Oct 2025 09:26:01 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vBV6T-0006q9-R5; Wed, 22 Oct 2025 11:25:57 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vBV6T-004rpH-26;
	Wed, 22 Oct 2025 11:25:57 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vBV6T-0000000HCXh-2Q6K;
	Wed, 22 Oct 2025 11:25:57 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: sha@pengutronix.de
In-Reply-To: <20251021075742.4016898-1-a.fatoum@pengutronix.de>
References: <20251021075742.4016898-1-a.fatoum@pengutronix.de>
Message-Id: <176112515756.4099764.13577931419305503511.b4-ty@pengutronix.de>
Date: Wed, 22 Oct 2025 11:25:57 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251022_022559_936105_88BE29CC 
X-CRM114-Status: UNSURE (   8.80  )
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
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] MAKEALL: print --shuffle seed used for initial make
 *_defconfig
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Tue, 21 Oct 2025 09:57:42 +0200, Ahmad Fatoum wrote:
> We run make *_defconfig once initially, so that we can get a .config to
> grep for CONFIG_ARM64 inside. The grepping occasionally[1] fails in CI:
> 
>   grep: build-arm-multi_v8_defconfig/.config: No such file or directory
> 
> This might be because of the shuffling of the dependencies, but because
> make itself doesn't fail, we don't get the shuffle seed in the log.
> 
> [...]

Applied, thanks!

[1/1] MAKEALL: print --shuffle seed used for initial make *_defconfig
      https://git.pengutronix.de/cgit/barebox/commit/?id=48bdea6b4bb0 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



