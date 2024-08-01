Delivery-date: Thu, 01 Aug 2024 14:52:24 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sZVI7-0058IP-36
	for lore@lore.pengutronix.de;
	Thu, 01 Aug 2024 14:52:23 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sZVI7-0003wJ-CJ
	for lore@pengutronix.de; Thu, 01 Aug 2024 14:52:23 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=0bYpWxJc+TjHobRWRs3Gn5GdFUHByxdr31/jXhEfEtA=; b=2llLpDxrAwB0WRvDwx5l7u13Ua
	6zsYPppsrHtFRbLxMkCS/PQLbf7EZPmEA8o1/V5u2jo+VW3+0/9oT7oCsRJ1m1WhGDpaah1Ok5ITX
	bYYREwBW5/8j/r2Ud7m2KQd/sFNDhIvgPk6jDy/CZ8XpFNImCJW/YspuZiPk4y7TfxJB36Vv9TsYx
	UW2GertHh4PxHd/pWCM92oZwwArtDzZ89nNDC7s4Lz7cEmZnXOTbgbBoYf68GGGfEjVjd688g0OwA
	xYVnFObCMbbprVl7HIUkkJK+pbKIrw29VNYH8VdYzv6PniiJ3RcQJF6AZqHuo/ERzYSXqraeNtdrU
	PtRkVd7Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZVHa-00000005Gk7-0fUN;
	Thu, 01 Aug 2024 12:51:50 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZVHX-00000005Gim-0rIL
	for barebox@lists.infradead.org;
	Thu, 01 Aug 2024 12:51:48 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sZVHV-0003sh-LZ; Thu, 01 Aug 2024 14:51:45 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sZVHV-003lv9-8e; Thu, 01 Aug 2024 14:51:45 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sZVHV-003pWA-0d;
	Thu, 01 Aug 2024 14:51:45 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240801121709.4024602-1-a.fatoum@pengutronix.de>
References: <20240801121709.4024602-1-a.fatoum@pengutronix.de>
Message-Id: <172251670519.912529.545928725833632930.b4-ty@pengutronix.de>
Date: Thu, 01 Aug 2024 14:51:45 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240801_055147_273680_90F799AB 
X-CRM114-Status: UNSURE (   6.06  )
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
Subject: Re: [PATCH] fixup! debug_ll: implement putws_ll
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Thu, 01 Aug 2024 14:17:09 +0200, Ahmad Fatoum wrote:
> The header doesn't include any headers to define types, so replace
> wchar_t with unsigned short to make it includeable everywhere with
> minimal impact.
> 
> 

Applied, thanks!

[1/1] fixup! debug_ll: implement putws_ll
      https://git.pengutronix.de/cgit/barebox/commit/?id=ab9f23f223ed (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



