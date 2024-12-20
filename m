Delivery-date: Fri, 20 Dec 2024 09:47:27 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tOYfP-00ANiM-1A
	for lore@lore.pengutronix.de;
	Fri, 20 Dec 2024 09:47:27 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tOYfP-00050q-BC
	for lore@pengutronix.de; Fri, 20 Dec 2024 09:47:27 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=e2WezSt/yQEiT2zBXo7nSLOfHyex91oOxfkz6W6Z2Uc=; b=sFIAqI9lNAPlp2zP20ibRnjzXS
	igruCiNj67Mo6fxx3AZQMVF4oQTC1ryXZoLJM4mLcQ2CNVpjRRDuQm6KMS20hH+ofjxeiol5vkHAo
	Ku1cvmXpglemlvRWP/rtDwjwwnxeURqgxguZjmYX2ECHvGuYllm85zXjn1VmT73eDjbQd7bU0ZLpO
	JQ95/v0hfktjQWbvoEQScA5ChJX6ThcgbOjOZ6fcrEW6S3afSJbZRUrR1iGMtgA69QoMxX7u0ISFM
	YU38daB46X0l4zDaicR6nbFwl1lR3s2axwgMi9xfUMSM1PYqrBM0X5OrWgQ27xwQsaxAxfVTLKQ16
	nHYrTaZA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tOYf1-00000004K8O-0QIu;
	Fri, 20 Dec 2024 08:47:03 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tOYey-00000004K7I-1gh4
	for barebox@lists.infradead.org;
	Fri, 20 Dec 2024 08:47:01 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tOYex-0004sA-9F; Fri, 20 Dec 2024 09:46:59 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tOYew-004LWV-15;
	Fri, 20 Dec 2024 09:46:59 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tOYex-00DDnt-09;
	Fri, 20 Dec 2024 09:46:59 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Oleksij Rempel <o.rempel@pengutronix.de>
In-Reply-To: <20241218060900.3636980-1-o.rempel@pengutronix.de>
References: <20241218060900.3636980-1-o.rempel@pengutronix.de>
Message-Id: <173468441904.3151306.4064425556563506213.b4-ty@pengutronix.de>
Date: Fri, 20 Dec 2024 09:46:59 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241220_004700_446888_5B754A92 
X-CRM114-Status: UNSURE (   5.73  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: (subset) [PATCH 0/3] Protonic maintenance
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 18 Dec 2024 07:08:57 +0100, Oleksij Rempel wrote:
> Maintenance for protonic specific boards. Start using upstreamed kernel
> devicetrees for MEC* boards. And add support for stm32mp13 based board variant.
> 
> Oleksij Rempel (2):
>   ARM: stm32mp151-mecio1: use kernel dts
>   ARM: stm32mp151-mect1s: use kernel dts
> 
> [...]

Applied, thanks!

[1/3] ARM: stm32mp151-mecio1: use kernel dts
      https://git.pengutronix.de/cgit/barebox/commit/?id=724f85d2219c (link may not be stable)
[2/3] ARM: stm32mp151-mect1s: use kernel dts
      https://git.pengutronix.de/cgit/barebox/commit/?id=40a4af3764b8 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



