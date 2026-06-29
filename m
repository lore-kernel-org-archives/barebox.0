Delivery-date: Mon, 29 Jun 2026 16:29:55 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1weCzj-00B91t-1d
	for lore@lore.pengutronix.de;
	Mon, 29 Jun 2026 16:29:55 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1weCzi-0007q6-UV
	for lore@pengutronix.de; Mon, 29 Jun 2026 16:29:55 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:Cc:To:Subject:From:
	Reply-To:MIME-Version:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:List-Owner;
	bh=+TgXFWnNhlNi6KFQHl1tZHfpcV72BflZqOVeQk0wQxY=; b=HElZrME8bOJBlQJ5fo0aaUGat/
	bp9wgVvm+WLgraf0P3FL6M2toipbQIrsxcx6/Et6XhjZoJzV14iHacZ4kCtbMTQT4Uiofa1uHW6as
	oSO78NxODiGO03cD8TAVl6Lwa3cgl7HVFb4JXPaTzpMeW512nHxxxKBT//AKcdniUlNxSP138AZR+
	gJEwwWlSWL1qScHQsi/0AWSVQMacvTpVVZeI9fww2/u9hnL5SLE7lV9ZSBU40FnPh2ayhYvJWDkeX
	D9ae0TD/TISE5Lb9FMMJ3Pj92xUdAEiJaDdQ0SdaI4TsdOVC0yisgaVDoC0LpbqVL/XGZqcQAsX/u
	WyT57JkQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1weCDr-0000000EmVL-2EKM;
	Mon, 29 Jun 2026 13:40:27 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1weCDo-0000000EmUu-1bXR
	for barebox@lists.infradead.org;
	Mon, 29 Jun 2026 13:40:26 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id B69C42002FE;
	Mon, 29 Jun 2026 15:40:21 +0200 (CEST)
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1weCDl-005Fmd-28;
	Mon, 29 Jun 2026 15:40:21 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.98.2)
	(envelope-from <sha@pengutronix.de>)
	id 1weCDl-00000005ilx-2MEA;
	Mon, 29 Jun 2026 15:40:21 +0200
From: "Sascha Hauer" <s.hauer@pengutronix.de>
To: "Johannes Schneider" <johannes.schneider@leica-geosystems.com>
Cc: barebox@lists.infradead.org, "Johannes Schneider" <johannes.schneider@leica-geosystems.com>
In-Reply-To: <20260627194324.2230643-7-johannes.schneider@leica-geosystems.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Mon, 29 Jun 2026 13:40:21 +0000
Message-Id: <E1weCDl-00000005ilx-2MEA@pty.whiteo.stw.pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260629_064024_597296_9A017466 
X-CRM114-Status: UNSURE (   8.14  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS
	autolearn=ham autolearn_force=no version=3.4.2
Subject: Re: [PATCH v1 7/7] mci: imx-esdhc: support DMA in the i.MX8M PBL
 eMMC loader
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 2026-06-27 19:43, Johannes Schneider wrote:
> The PBL eMMC loader was hardwired to PIO via esdhc_use_pio_mode(): IN_PBL
> forced PIO unconditionally. PIO is slow -- on an i.MX8MM board loading the
> ~1.6 MB next stage took ~559 ms; SDMA/ADMA2 do it in ~21 ms.

For proper DMA support you'll need memory synchronization in form of dma_ma=
p_*
or dma_sync_* helpers which we do not have in PBL. Without them it won't
work with MMU enabled. Have you tried enabling the MMU in the mean time? Th=
is
should give you decent performance even with PIO.

Sascha

--
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


