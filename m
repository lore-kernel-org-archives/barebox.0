Delivery-date: Mon, 06 May 2024 08:28:16 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s3rpg-005dJy-15
	for lore@lore.pengutronix.de;
	Mon, 06 May 2024 08:28:16 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s3rpf-0004Qw-Q8
	for lore@pengutronix.de; Mon, 06 May 2024 08:28:16 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=X0rmxowGbTgxjZMH7FGaGJ2Hfg+ccR04o/BJPH4Lz6k=; b=B5YRiGsp6QaBxv9Vet9hzQ5gLg
	qkxMXPcvScIqnbtcKnIxx8Gx5nU/4P5fP2v7OoULxzc3UM2dqiIQtmNpIiGGbwaVEWgYGK6n6MLtX
	QMVmYp81z7uXcacxwhQuUSiIOJKONQjQl0yjTdBABAKLHEotp5HLQMLF/0nO1abrNQ0Outi4akEAn
	ZkU7DCkoVsmXIIgTXZfvEbONQcX02YvXnzCVCFeR3T9aLySV57LEqedLYtbsF50Ke03Oew1Vy3REq
	vLSB6GTB3z5Z45DPSix2Y+xSXMolhapsdzfqqk7QvF1TmVFvVBM1pytbdTvB0F8bUeO7L5wtrkZpz
	kekXvO8g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s3rpE-00000006Ijk-09Cv;
	Mon, 06 May 2024 06:27:48 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s3rpB-00000006IjA-0DsX
	for barebox@lists.infradead.org;
	Mon, 06 May 2024 06:27:46 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1s3rp9-0004KR-My; Mon, 06 May 2024 08:27:43 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1s3rp9-00GDAk-AW; Mon, 06 May 2024 08:27:43 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1s3rp9-001Nzf-0r;
	Mon, 06 May 2024 08:27:43 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240503102909.1362544-1-a.fatoum@pengutronix.de>
References: <20240503102909.1362544-1-a.fatoum@pengutronix.de>
Message-Id: <171497686326.330506.12353933411819085571.b4-ty@pengutronix.de>
Date: Mon, 06 May 2024 08:27:43 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240505_232745_125775_C93F68E6 
X-CRM114-Status: UNSURE (   6.74  )
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
Subject: Re: [PATCH] dma: of_fixups: add fallbacks if /soc doesn't exist
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Fri, 03 May 2024 12:29:09 +0200, Ahmad Fatoum wrote:
> The fixup was written for Layerscape LS1046A. Enabling it on i.MX8MP
> throws an initcall error, because the SoC node is called /soc@0.
> 
> Improve the situation by falling back to either /soc@0 or just plain /.
> 
> 

Applied, thanks!

[1/1] dma: of_fixups: add fallbacks if /soc doesn't exist
      https://git.pengutronix.de/cgit/barebox/commit/?id=73258bfc5c1b (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



