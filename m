Delivery-date: Wed, 13 Mar 2024 07:31:53 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rkI9Z-00404O-0h
	for lore@lore.pengutronix.de;
	Wed, 13 Mar 2024 07:31:53 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rkI9Y-0004es-Mp
	for lore@pengutronix.de; Wed, 13 Mar 2024 07:31:53 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=zd9/ihOovWosvEdA718n8N2U3Ql2UTWQOFaRnh28Sr0=; b=ZZBAatpb6l2M/BAYjlZlgTK51i
	lYmASCJUrlRlE8MIz52rs9US7kzx7SqahpodhxsdVwf6LcsDtmgO/xduNcG7esIxRq/EKuPaAvUYl
	I5yxZJMlEQcpkyODXFb9moO3shQzYeDQMq4ll6loUkbhf8eZqIKKJ7jwyZoPiR3Od0dVnbAHvJoSL
	/BgpHitg0BtqlmQb5sq3KZk/q9Ua7XcKVbN4EebqWXTRNZGW2knddec13eEZR6i+1mTeffoXFPwuq
	sAKzuOchSIWEAFs5Ri98q4IakHE/P3FQA5Lh6RKReNOOzOpIP6EjoB0EXmnlzO37slbg21MgJGziQ
	Yjj9vNRA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rkI8w-000000093e9-0QUo;
	Wed, 13 Mar 2024 06:31:14 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rkI8s-000000093cb-3wGy
	for barebox@lists.infradead.org;
	Wed, 13 Mar 2024 06:31:13 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rkI8p-0004Hw-KF; Wed, 13 Mar 2024 07:31:07 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rkI8p-0063vu-7V; Wed, 13 Mar 2024 07:31:07 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rkI8p-0042LS-0X;
	Wed, 13 Mar 2024 07:31:07 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Oleksij Rempel <o.rempel@pengutronix.de>
In-Reply-To: <20240312142708.3766405-1-o.rempel@pengutronix.de>
References: <20240312142708.3766405-1-o.rempel@pengutronix.de>
Message-Id: <171031146716.962315.15005105258991560277.b4-ty@pengutronix.de>
Date: Wed, 13 Mar 2024 07:31:07 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240312_233111_107911_905C16A6 
X-CRM114-Status: UNSURE (   5.75  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH v2] ARM: i.MX8MP: skov: add MAC address assignment
 support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Tue, 12 Mar 2024 15:27:08 +0100, Oleksij Rempel wrote:
> Assign MAC address to the switch ports.
> 
> 

Applied, thanks!

[1/1] ARM: i.MX8MP: skov: add MAC address assignment support
      https://git.pengutronix.de/cgit/barebox/commit/?id=f96c2c013950 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



