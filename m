Delivery-date: Mon, 01 Dec 2025 11:12:24 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vQ0tM-006mZV-07
	for lore@lore.pengutronix.de;
	Mon, 01 Dec 2025 11:12:24 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vQ0tL-0004vO-H6
	for lore@pengutronix.de; Mon, 01 Dec 2025 11:12:23 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=mkPlvBF1fctC8QU4od/3R+XwIHERVQtWE6gkWYYUywc=; b=0LyIzcIOi03+Nyf/HqMBAOSSx0
	wZYOTbeZmcfb7SiKErTy4lJPyqXwIzm18n+yWUKGWFGYlN8SwipMSZ5M3oyrqrIo428AdSzTCOe4o
	owd3+5qHwUGyRAttBRmXfRC3qlRZA5vkxZ4/RulT+nkWnNSj/5JezZXFSd/uemMmQQDnuVONk8GbN
	lyJ+uiOP2+/5osVAEw4x9O/zLnOM1Fxzq76tBKcp3s0LQX9ECW0Zop2Hlm6e/WX8geBQC02Vr71io
	tILaOUDDyknI2DWlZwWlQDN8Boy4WxdS4H7PrSjg8I27cXAeDOwOj+tlcU0MDzfUu+ma8AO8p8svy
	kXLxkkFQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vQ0sz-00000003IDf-1UjS;
	Mon, 01 Dec 2025 10:12:01 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vQ0sw-00000003IDD-2lxh
	for barebox@lists.infradead.org;
	Mon, 01 Dec 2025 10:11:59 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vQ0sv-0004pm-32; Mon, 01 Dec 2025 11:11:57 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vQ0su-003QV5-2W;
	Mon, 01 Dec 2025 11:11:56 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vQ0su-00000000eI4-30qf;
	Mon, 01 Dec 2025 11:11:56 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Alexander Kurz <akurz@blala.de>
In-Reply-To: <20251128132842.2605920-1-a.fatoum@pengutronix.de>
References: <20251128132842.2605920-1-a.fatoum@pengutronix.de>
Message-Id: <176458391671.154863.5649991277478002009.b4-ty@pengutronix.de>
Date: Mon, 01 Dec 2025 11:11:56 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251201_021158_702062_CDC6BB57 
X-CRM114-Status: UNSURE (   5.55  )
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
Subject: Re: [PATCH] fixup! ARM i.MX6SL: Add Kindle generation 6/7 support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Fri, 28 Nov 2025 14:28:41 +0100, Ahmad Fatoum wrote:
> Documentation: i.MX: kindle: fix ReST warnings
> 
> - Reorder the numbering, so there isn't 2. twice
> - Fix indentation, of sub-bulletpoint
> 
> 

Applied, thanks!

[1/1] fixup! ARM i.MX6SL: Add Kindle generation 6/7 support
      https://git.pengutronix.de/cgit/barebox/commit/?id=763040f09cf5 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



