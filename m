Delivery-date: Wed, 11 Sep 2024 10:36:41 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1soIqA-003QQX-1G
	for lore@lore.pengutronix.de;
	Wed, 11 Sep 2024 10:36:41 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1soIq9-0006im-BY
	for lore@pengutronix.de; Wed, 11 Sep 2024 10:36:41 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=21io7Vlple7t/MUKciRMZ9B3pkqgnp9OZTA5HfUX5Tw=; b=oNORBmforxWZtnkq1JX2cDiZ9u
	0FiJQMUL/ooc6gfoLuMFUZPF1ZN7dTL/zroLqgtUHbT6/Evubn2PbUdw96snxoGZgceka+6p1vTEm
	c0lFZCy+7pzVKJDsm33QCcRiGrVE/y9qVyOCn9Xi3ZFgJwePcYOWJdcGGVGxRtNLhuEqXRbSuMffK
	sdL8BQVFnZq/XplWN42B6F8RPSmMSR729+jYCb81MemEA0VySFJ/NCKROQzAsow/605R9qpzLf/HJ
	u7gkr/TRm3Hvd/Wtgpeg6aOeYp03u5NejwzEi45cm/bRzOaLQcN7Uni2c60bcDuQVyCpqCjHjRp+P
	mmWyQvFA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1soIph-00000008g4A-0B8b;
	Wed, 11 Sep 2024 08:36:13 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1soIkV-00000008esP-2H1t
	for barebox@lists.infradead.org;
	Wed, 11 Sep 2024 08:30:52 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1soIkU-00043I-3a; Wed, 11 Sep 2024 10:30:50 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1soIkT-0075q8-Mk; Wed, 11 Sep 2024 10:30:49 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1soIkT-001g69-26;
	Wed, 11 Sep 2024 10:30:49 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240911081710.1522975-1-a.fatoum@pengutronix.de>
References: <20240911081710.1522975-1-a.fatoum@pengutronix.de>
Message-Id: <172604344964.400136.2534760595680562129.b4-ty@pengutronix.de>
Date: Wed, 11 Sep 2024 10:30:49 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240911_013051_614613_38D262B4 
X-CRM114-Status: UNSURE (   5.81  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] font: fbconsole: use DIV_ROUND_UP for clarity
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 11 Sep 2024 10:17:11 +0200, Ahmad Fatoum wrote:
> Adding X - 1 and then dividing by X is effectively rounding up, so let's
> use the macro to make this clearer.
> 
> No functional change.
> 
> 

Applied, thanks!

[1/1] font: fbconsole: use DIV_ROUND_UP for clarity
      https://git.pengutronix.de/cgit/barebox/commit/?id=dacd9045fb10 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



