Delivery-date: Fri, 03 May 2024 09:05:38 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s2mzC-00Gmij-0R
	for lore@lore.pengutronix.de;
	Fri, 03 May 2024 09:05:38 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s2mzB-0006d2-JK
	for lore@pengutronix.de; Fri, 03 May 2024 09:05:38 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=dEvrYAKuWtZEvNF85Wv1zWhEkHpfQaI1PcaIIIP6M8A=; b=UWK/pXanzMm85UQ9gxrnQFcowU
	ki8dTQfq/9yXEngk3QC2A0to876D8Lp1ew9tQSOa2HPAfVBfI0qSADvSB82NiZkfWmxvF9lEJhq5m
	fZz9e7Fppn87tmZeVoRk9nndkKynMlftOtkKwS9r62hNjhdlPM3qmvUH0yMj29ikrRC/YeKJ8Zvlj
	QR61kE9bBXMh2eZeewCBEnMWXaOB+y0uE/vr6rNGkwtjjkzmeY4KfN21WnMld//mih+/lgXrevGuj
	05NCHBJXVaunji/mgJovEhsAjMvzYZKwwRJy46DL0wQpEPoJ+vty3oMg26XarWfqeYlIM96JU8wYM
	1hBTdKDA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s2mye-0000000FOia-1uSe;
	Fri, 03 May 2024 07:05:04 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s2myb-0000000FOgt-06qA
	for barebox@lists.infradead.org;
	Fri, 03 May 2024 07:05:03 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1s2myZ-0006Us-0S; Fri, 03 May 2024 09:04:59 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1s2myY-00Ff1G-KJ; Fri, 03 May 2024 09:04:58 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1s2myY-0004ED-1p;
	Fri, 03 May 2024 09:04:58 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240430131540.3597376-1-a.fatoum@pengutronix.de>
References: <20240430131540.3597376-1-a.fatoum@pengutronix.de>
Message-Id: <171471989856.16178.14089434739107507662.b4-ty@pengutronix.de>
Date: Fri, 03 May 2024 09:04:58 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240503_000501_098332_FB79D097 
X-CRM114-Status: GOOD (  12.50  )
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
X-Spam-Status: No, score=-5.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] kbuild: make implicit int to pointer conversion
 warning an error
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Tue, 30 Apr 2024 15:15:40 +0200, Ahmad Fatoum wrote:
> We are guilty of using ints as pointers in readl/writel, but the old
> definition of these uses a cast to silence the warning.
> 
> Everywhere else there's no reason to allow this, so make this a hard
> error always to weed out any instances we may still have.
> 
> Disallowing this has the added benefit of making it easier to change API
> in barebox: We do not guarantee out-of-tree board code API stability,
> but we want changes in API to result in build errors, not in warnings
> that may be eaten up by a build system sitting in-between Kbuild and the
> user.
> 
> [...]

Applied, thanks!

[1/1] kbuild: make implicit int to pointer conversion warning an error
      https://git.pengutronix.de/cgit/barebox/commit/?id=bcb16b721fb8 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



