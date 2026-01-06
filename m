Delivery-date: Tue, 06 Jan 2026 08:53:04 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vd1sG-001omu-1I
	for lore@lore.pengutronix.de;
	Tue, 06 Jan 2026 08:53:04 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vd1sF-0007Yu-1t
	for lore@pengutronix.de; Tue, 06 Jan 2026 08:53:04 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=gIh8IRy/KpWcVxPsz6RHYOdHMe1vxNiNSA8RCff9FTw=; b=eI6EGU8XMaj+uPjKPtKqijnzUp
	/hsST0SHt4GdWWZ6r9/AjjqKD46uJ8ow8eDtT4ZDcG7wjtfq1M7usQhhueEro5KZtf+F0NDJTMDkR
	mJGzOoOFDnjQGdLJ3Be/TdtLPzhpFJE7WmnUAY0j/fLO+FIZ3aZWcjIbo0LuyiJP6aE+DZWbrg55W
	9PFocEuEp/vCOeJnfF0e+0KWMyznuURD0GGZE47KS8/5VFOmT5wAqQ3if5JiTXoEXF0DIwXlzEbFX
	HDTUKUblya1K4yAkIIIXJoZMAlmyDdE+jVpU0ScD47RH2fF15t9qu5GeBNQ/11PvGZOgcIf4RHMAO
	/CI2pq0Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vd1rn-0000000CZWq-02Nx;
	Tue, 06 Jan 2026 07:52:35 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vd1rk-0000000CZW9-1QBA
	for barebox@lists.infradead.org;
	Tue, 06 Jan 2026 07:52:33 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vd1ri-0007Tt-8M; Tue, 06 Jan 2026 08:52:30 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vd1ri-009JLF-0B;
	Tue, 06 Jan 2026 08:52:30 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vd1rh-000000089dx-49kz;
	Tue, 06 Jan 2026 08:52:29 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20251218213542.3263658-1-a.fatoum@pengutronix.de>
References: <20251218213542.3263658-1-a.fatoum@pengutronix.de>
Message-Id: <176768594998.1943674.5913831876869427255.b4-ty@pengutronix.de>
Date: Tue, 06 Jan 2026 08:52:29 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260105_235232_399004_4306419E 
X-CRM114-Status: UNSURE (   7.99  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: (subset) [PATCH v3 1/4] Documentation: split Rockchip
 documentation
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Thu, 18 Dec 2025 22:33:07 +0100, Ahmad Fatoum wrote:
> We have a separate rk3288.rst as well as rockchip.rst for all the rest.
> Split this up into a rk3188.rst and a rk35xx.rst, so we do not mix older
> 32bit docs with the doc for the newer SoCs.
> 
> 

Applied, thanks!

[1/4] Documentation: split Rockchip documentation
      https://git.pengutronix.de/cgit/barebox/commit/?id=b683f75fabfa (link may not be stable)
[2/4] Documentation: rk35xx: expand on supported SoCs/boards
      https://git.pengutronix.de/cgit/barebox/commit/?id=3e181318a9c7 (link may not be stable)
[3/4] arm64: rockchip: Add support for QNAP's ts-433 4bay NAS
      https://git.pengutronix.de/cgit/barebox/commit/?id=e48dd72a4eac (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



