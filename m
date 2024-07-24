Delivery-date: Wed, 24 Jul 2024 10:15:29 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sWX9l-002Pb8-2s
	for lore@lore.pengutronix.de;
	Wed, 24 Jul 2024 10:15:29 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sWX9l-0007nX-7E
	for lore@pengutronix.de; Wed, 24 Jul 2024 10:15:29 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=G0JokC3Bss+dvQoCs3a2YMX+ZRSfmROcmr+g1/qBscU=; b=XhfNncxpMSvkScjKBFJU3BaVLZ
	HF4rrg9jR3LfBp4sO8K+rlXX+c1uaUXWzTRAUTDCVYfyBB/qCVkxYO2dLzPJcX9QzXrLLhkYjjn+g
	rODTt0eMCoWaiikk8GakBAHQ9BZudGuZYtEMpeA9lynJ+6X0y521yAMWUWZzwZR5kRLVFc/uViWsy
	EdgQVo/+FXbCrwhoVYoF4BCxAxNYyy5TLyfPTJaXDi/0JbWY+Bh4fncKBu4MxEKiVfJqWpHnQiolq
	bbYos3g4EG4t3troO88fNXEaX0MpAP5COAA2lRpfY4Z2Yo8O3+fQ/HN1MOZ+LsGTQLPv7Ji2YDUsX
	C83xKY+A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sWX9M-0000000EkLH-1EaJ;
	Wed, 24 Jul 2024 08:15:04 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sWX9I-0000000EkKb-3hx3
	for barebox@lists.infradead.org;
	Wed, 24 Jul 2024 08:15:02 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sWX9H-0007jt-F8; Wed, 24 Jul 2024 10:14:59 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sWX9H-001oW5-2J; Wed, 24 Jul 2024 10:14:59 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sWX9H-008UiS-02;
	Wed, 24 Jul 2024 10:14:59 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240722170641.3868698-1-a.fatoum@pengutronix.de>
References: <20240722170641.3868698-1-a.fatoum@pengutronix.de>
Message-Id: <172180889900.2024147.804588991586173266.b4-ty@pengutronix.de>
Date: Wed, 24 Jul 2024 10:14:59 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240724_011500_955380_2F2ADF4B 
X-CRM114-Status: UNSURE (   8.68  )
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
Subject: Re: [PATCH] resource: add CONFIG_DEBUG_RESOURCES option
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 22 Jul 2024 19:06:41 +0200, Ahmad Fatoum wrote:
> Whether a resource conflict is indeed a problem depends on how the user
> handles it. Most users will propagate an -EBUSY error, but some will
> gracefully handle it and move on.
> 
> We thus can't just warn unconditionally about conflicts in __request_region.
> It's still useful to enable warnings there though while debugging, so
> let's add a Kconfig option that enables these debugging prints.
> 
> [...]

Applied, thanks!

[1/1] resource: add CONFIG_DEBUG_RESOURCES option
      https://git.pengutronix.de/cgit/barebox/commit/?id=aafcfb061c98 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



