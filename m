Delivery-date: Fri, 24 May 2024 11:16:00 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sAR1s-00GUql-27
	for lore@lore.pengutronix.de;
	Fri, 24 May 2024 11:16:00 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sAR1s-0006Mt-34
	for lore@pengutronix.de; Fri, 24 May 2024 11:16:00 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=uujypZuUdjrNwaevX3X9TrRMxT4ylmWFULwAmdWn698=; b=sF9bnK/bAPyJtpkMUp+R23Ptau
	LKcONhBY+y7ljTFCdn4tdCTo0Hcxomn+QOuKMqhH0pSNHYdBZ0uMluKgLVfo5gBkBR7z0eHslYUlb
	jyk8H+YCOhwQ4o9ej7ToJOkcqFtHovbTY4hmPpmYr76gNa0F2lvRqJLAFj7Un21ndf0N7VOcupGk9
	iG9MkYYoe605VL1nTtG2y2QXsNL3h1XvUZqm+wMD1JP0GUWkcDUlv0eUf1q6Z3nvMzCzM2x967H/j
	cMgEkyZO4IVqh1yxUyFKU0wUEWYI02PVOhmCEmGkYQFfWGl+YsA9PBB+t89bXWVV7Y6j15CSHuV2v
	B/eYPUQg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sAR1B-00000008VOm-1u6N;
	Fri, 24 May 2024 09:15:17 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sAR16-00000008VNJ-1ZXW
	for barebox@lists.infradead.org;
	Fri, 24 May 2024 09:15:13 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sAR11-0006DU-Md; Fri, 24 May 2024 11:15:07 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sAR11-002m6e-A9; Fri, 24 May 2024 11:15:07 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sAR11-00G07I-0n;
	Fri, 24 May 2024 11:15:07 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>, 
 Stefan Kerkmann <s.kerkmann@pengutronix.de>
In-Reply-To: <20240523-feature-dp83867-soft-reset-v1-0-428d15168dfe@pengutronix.de>
References: <20240523-feature-dp83867-soft-reset-v1-0-428d15168dfe@pengutronix.de>
Message-Id: <171654210724.3813257.11310777877752807477.b4-ty@pengutronix.de>
Date: Fri, 24 May 2024 11:15:07 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240524_021512_553968_A170FDDB 
X-CRM114-Status: UNSURE (   8.97  )
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
Subject: Re: [PATCH 0/3] net: phy: dp83867: sync dp83867_phy_reset
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Thu, 23 May 2024 16:40:27 +0200, Stefan Kerkmann wrote:
> I ran into the same problem as Roland with this Phy driver and missed
> the fix that landed in 095cd32961aab64cfe72941ce43d99876852e12b ("net:
> phy: dp83867: reset PHY on probe"). I'm still submitting this series as
> a refactoring of the fix - with the goal of being closer to the upstream
> Linux implementation.
> 
> 
> [...]

Applied, thanks!

[1/3] net: phy: allow PHY drivers to implement their own software reset
      https://git.pengutronix.de/cgit/barebox/commit/?id=bca02a0f549f (link may not be stable)
[2/3] net: phy: document core PHY structures
      https://git.pengutronix.de/cgit/barebox/commit/?id=7fb2f20dc854 (link may not be stable)
[3/3] net: phy: dp83867: sync dp83867_phy_rest
      https://git.pengutronix.de/cgit/barebox/commit/?id=adde7a0344ac (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



