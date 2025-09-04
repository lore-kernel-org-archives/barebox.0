Delivery-date: Thu, 04 Sep 2025 07:40:17 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uu2hl-007v1V-22
	for lore@lore.pengutronix.de;
	Thu, 04 Sep 2025 07:40:17 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uu2hk-0006a9-HL
	for lore@pengutronix.de; Thu, 04 Sep 2025 07:40:16 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Ib0Sak/zTQiBZRkFQKsI/EM5RAxq0CfzdzqpITfNpRY=; b=gshRIxbrFQbOaXO/qa+qa5wCez
	US12wVFI8whOHSChgQ6FiqdEHXefqLa4K5P18uudQUpuode+MI6XERbkhlgZcJ0aXwsVxV3ZGcF/Y
	YZQArm9thaNNbKvAre3THPQfWLtZYgYTZidXM6XBPBbW4vbPQItdHlbnCB175fMQki3SgYReaAzDr
	vDbXKe5pZpI4rKDn8SvYWvdlaMzHYiC4DuzOdXzIwAcVxtHFmzAiPP5LDJ2xDNb2eqgDWqYVDfM1n
	rCmiH7LsjufvTyrnOpf15hrjKdQv+J/deOvKESurs3GTc7notNFKyRsFbnEJQVOG4kMVccGHCoP5b
	U+xotEKw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uu2h3-00000009IBa-0RDr;
	Thu, 04 Sep 2025 05:39:33 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uu2h0-00000009I9l-0Frw
	for barebox@lists.infradead.org;
	Thu, 04 Sep 2025 05:39:31 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uu2gx-0006Qi-Jz; Thu, 04 Sep 2025 07:39:27 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uu2gx-003g4r-0t;
	Thu, 04 Sep 2025 07:39:27 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uu2gx-0000000D9NB-0sFG;
	Thu, 04 Sep 2025 07:39:27 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>, 
 =?utf-8?q?Christian_Thie=C3=9Fen_via_B4_Relay?= <devnull+christian.thiessen.airbus.com@kernel.org>
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>, 
 =?utf-8?q?Christian_Thie=C3=9Fen?= <christian.thiessen@airbus.com>
In-Reply-To: <20250903-mtd-erase-enosys-v2-1-7b7f28302f25@airbus.com>
References: <20250903-mtd-erase-enosys-v2-1-7b7f28302f25@airbus.com>
Message-Id: <175696436719.3134230.7997692965017379708.b4-ty@pengutronix.de>
Date: Thu, 04 Sep 2025 07:39:27 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250903_223930_101300_30723976 
X-CRM114-Status: UNSURE (   7.93  )
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
Subject: Re: [PATCH v2] mtd: Make mtd_erase fail gracefully if
 CONFIG_MTD_WRITE is off
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 03 Sep 2025 16:31:21 +0200, Christian Thießen via B4 Relay wrote:
> When CONFIG_MTD_WRITE is unset, the mtd->_erase member of partition
> devices does not get initialized, so it remains NULL.
> However when running ubiattach on an UBI partition, mtd_erase() still
> gets called, tries to call mtd->_erase and crashes. Make it fail
> gracefully by returning ENOSYS ("Function not implemented") instead.
> 
> 
> [...]

Applied, thanks!

[1/1] mtd: Make mtd_erase fail gracefully if CONFIG_MTD_WRITE is off
      https://git.pengutronix.de/cgit/barebox/commit/?id=b530b3d7ebf8 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



