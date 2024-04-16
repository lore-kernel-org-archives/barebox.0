Delivery-date: Tue, 16 Apr 2024 12:01:24 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rwfcx-003BlZ-39
	for lore@lore.pengutronix.de;
	Tue, 16 Apr 2024 12:01:23 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rwfct-0004WC-CD
	for lore@pengutronix.de; Tue, 16 Apr 2024 12:01:23 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=f4xP3ix0xbLGeIt2yK6o1ANur84YfZQHpsYRsc83qSM=; b=QL1/Nrb90KYod1Fd4g+R4GXr2l
	w3ZbpB250TSpv6fQGfg502YLmLP/UE4/M0G9rfteOF01TH/BBKR4E8tNf9rU0PFILBdyBjQbfJ6Gh
	5JnhKZiNjzNOCauQCFermWnUE2+PgFroszNVsFK9r1FOIbexNscd5tatLK5XDzowBbGYcE/ESApm/
	tgevn73qLx+B/aH6vRO6n2MVkCNpGHw+Oqap1cHyPxnMLpz5NKJRmoFAse3CBdI6OBBKhNOeHQk4V
	IYiqEt0koYbc+CBbu1UHhDgYCwD2Wvn/L88Fah/YJnpDyfrRQx9rZEFjPxM/CyAZiKGZbDeY2bKp2
	S3z31OeA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rwfcA-0000000Bh6i-3YGQ;
	Tue, 16 Apr 2024 10:00:34 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rwfc5-0000000Bh63-0iLd
	for barebox@lists.infradead.org;
	Tue, 16 Apr 2024 10:00:33 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rwfc3-0003CP-SN; Tue, 16 Apr 2024 12:00:27 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rwfc3-00CaLl-Fk; Tue, 16 Apr 2024 12:00:27 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rwfc3-008PkJ-1O;
	Tue, 16 Apr 2024 12:00:27 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240415091707.3825140-1-a.fatoum@pengutronix.de>
References: <20240415091707.3825140-1-a.fatoum@pengutronix.de>
Message-Id: <171326162742.2005537.10305999992484011124.b4-ty@pengutronix.de>
Date: Tue, 16 Apr 2024 12:00:27 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240416_030029_248521_79587F06 
X-CRM114-Status: UNSURE (   6.19  )
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
X-Spam-Status: No, score=-6.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH master] Documentation: devel: project-ideas: remove
 outdated info on MMC speed
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 15 Apr 2024 11:17:07 +0200, Ahmad Fatoum wrote:
> This is now doubly outdated. We have support for DDR in a number of
> drivers and HS200 for one SoC (ZynqMP) and more is likely to come with
> time, so remove that outdate info.
> 
> 

Applied, thanks!

[1/1] Documentation: devel: project-ideas: remove outdated info on MMC speed
      https://git.pengutronix.de/cgit/barebox/commit/?id=615b803a07c8 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



