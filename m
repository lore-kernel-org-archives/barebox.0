Delivery-date: Mon, 09 Feb 2026 15:27:18 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vpSEQ-00AaBm-1a
	for lore@lore.pengutronix.de;
	Mon, 09 Feb 2026 15:27:18 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vpSEO-0002Sj-2r
	for lore@pengutronix.de; Mon, 09 Feb 2026 15:27:17 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=xyKsKN5oY77V2fkuHkKqMf7gZ31ZNzGBKDeOWAUgc2c=; b=3wUfib9lM3R97uHtG6RUmitwT2
	SxngO76KhY21elgkKIlySqY7mKwpGvznVe1poXe73faN7Yd1xcRNLAbAERME2UjK3b3EQ3AztS3lU
	SPxBmXRBR9T1Pt7IVwYclcilNHbA8zyKFWBCgOd/gagO/lomeDVYyfLGloZbX+n6RSlvbQgCEORAg
	E83oR54B9QZ/39mt3W9k0So8RU+hwbRgcCGA0Ta7lg3C/A2odj3j4At2ho6vyPASpzmj0eF2MiuWE
	E9bWDtiUgJ8hm/ADaAFkgw08KlgwW5seFtcB+jNFr0PQ2YAn9UHeaWbiAr2pskU0OMgWmEybyAUbQ
	KMm5zBdw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vpSE0-0000000FVaK-2fy9;
	Mon, 09 Feb 2026 14:26:52 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vpSDw-0000000FVZm-1mHl
	for barebox@lists.infradead.org;
	Mon, 09 Feb 2026 14:26:50 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vpSDu-0002Ok-Fp; Mon, 09 Feb 2026 15:26:46 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vpSDu-004u7n-38;
	Mon, 09 Feb 2026 15:26:46 +0100
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vpSDu-00000002p3K-11uX;
	Mon, 09 Feb 2026 15:26:46 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: 9l@9lo.re
In-Reply-To: <20260205171147.3096490-1-a.fatoum@pengutronix.de>
References: <20260205171147.3096490-1-a.fatoum@pengutronix.de>
Message-Id: <177064720624.672883.5804213845747463961.b4-ty@pengutronix.de>
Date: Mon, 09 Feb 2026 15:26:46 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260209_062648_494242_4CB20F6F 
X-CRM114-Status: UNSURE (   9.61  )
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
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] include: linux/printk.h: allow forcing log level per
 file
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Thu, 05 Feb 2026 18:11:43 +0100, Ahmad Fatoum wrote:
> We support defining DEBUG or VERBOSE_DEBUG to increase the log level per
> file, but we lack a way to decrease the log level.
> 
> The latter could be useful when shotgun debugging with all debug logging
> enabled, as otherwise some debug output may drown out everything else.
> 
> To support this, allow LOGLEVEL to be defined per file. We don't expect
> that any files committed to tree would do this, but it may turn out to
> be useful during debugging.
> 
> [...]

Applied, thanks!

[1/1] include: linux/printk.h: allow forcing log level per file
      https://git.pengutronix.de/cgit/barebox/commit/?id=c4657de3af99 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



