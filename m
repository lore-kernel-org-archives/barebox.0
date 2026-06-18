Delivery-date: Thu, 18 Jun 2026 10:45:53 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wa8Nl-007CUm-2t
	for lore@lore.pengutronix.de;
	Thu, 18 Jun 2026 10:45:53 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wa8Nl-0004p1-9u
	for lore@pengutronix.de; Thu, 18 Jun 2026 10:45:53 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=R4ZPSOK9Wu7AVXHsS95Ru1JL74M+orCUm93pqI57Wyw=; b=bpCMLoLv7M7wHf06Lecrufvcm7
	PkOZnk+klNdIbbigdxKPL+N/0sxj5Yhs5S8d3/IGMFMEwD+ZSsSKivrXqCqgWPpf41f33Bdy2TqjZ
	ihUwHF59hAn2LMyqfKTCtMZsc1Iu3/dlOnersQIW2v59VsvVsm022OmldwB+ty8Vn1VaxS4tVt80Z
	/54/NmQnSRWagVhXT8Jeh0VU/qegbK1uXpnUnzXETm+NSE+xpeqpEpt/r3mT2KH+hUaJs1hoZZb5s
	BjTGLQCeqlvNKywds1aFJS2Lpu+xNFe0SU9h0yGHOBQj+EfQ+QmrcGzbEps9/VHSRCaOOEkhOM2qN
	JKWh3oiw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wa6ju-00000000iyY-2DEg;
	Thu, 18 Jun 2026 07:00:38 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wa6jp-00000000ixs-3t7x
	for barebox@lists.infradead.org;
	Thu, 18 Jun 2026 07:00:36 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 66A9220071A;
	Thu, 18 Jun 2026 09:00:29 +0200 (CEST)
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wa6jl-003Oeg-0x;
	Thu, 18 Jun 2026 09:00:29 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wa6jl-0000000CaXA-0y8e;
	Thu, 18 Jun 2026 09:00:29 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, 
 Johannes Schneider <johannes.schneider@leica-geosystems.com>
In-Reply-To: <20260617103448.1563040-1-johannes.schneider@leica-geosystems.com>
References: <20260617103448.1563040-1-johannes.schneider@leica-geosystems.com>
Message-Id: <178176602922.3000102.8101422705811671295.b4-ty@pengutronix.de>
Date: Thu, 18 Jun 2026 09:00:29 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260618_000034_125867_3A6F892C 
X-CRM114-Status: UNSURE (   5.93  )
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
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: (subset) [PATCH v1 1/2] commands: mmc: add mmc-utils
 compatible enh_area set subcommand
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 17 Jun 2026 10:34:47 +0000, Johannes Schneider wrote:
> Today "mmc enh_area /dev/mmcX" can only size the enhanced user data
> area to the device-reported maximum (MAX_ENH_SIZE_MULT). For systems
> that want a high-reliability prefix covering bootloader and system
> images but keep the trailing user-data partition in default MLC/TLC
> mode, an explicit size is required.
> 
> Extend the command with an "set" subcommand matching the Linux
> mmc-utils ergonomics:
> 
> [...]

Applied, thanks!

[1/2] commands: mmc: add mmc-utils compatible enh_area set subcommand
      https://git.pengutronix.de/cgit/barebox/commit/?id=0bf8c9988282 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



