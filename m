Delivery-date: Fri, 20 Jun 2025 14:58:56 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uSbKa-009HkM-0m
	for lore@lore.pengutronix.de;
	Fri, 20 Jun 2025 14:58:56 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uSbKZ-00057p-Gu
	for lore@pengutronix.de; Fri, 20 Jun 2025 14:58:56 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=+Bc4VC8Aobzxo4j2dSO52ZMRocEqR7sJaYacBkarmms=; b=erQWxuz7XfeRGUsaRDnd5xxJGD
	PXnNh3Wokq6jpXCLYEwNyh7XmSZ1GBMeKKX0GYz5jAbRPOuWJA9lR6JtXO1Hdmtyuj1k/j5sr6Myy
	rSUQStlB0E2MX/VP6xe9xDY0ktIFX5qNoltvBAnP5+WdXtHSeY9rxbbdAI72TwzcjdLDCKjOXeyrU
	Jc2FtnEA0QIsxFujXAB3/8qSW2ihdOemYt6482HOOLPob4s90VyZ+5/MUWIOtvwYGYHEBXt8km+OO
	sP5+QUcUTsQRT2hSksAprLQ/m3zYVetL7ndJZevRd75IpGyj217OJRqQqjJwv+7QVYTh+DS0YFJQR
	Q4Gzi2nA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uSbK4-0000000FcrD-3fdb;
	Fri, 20 Jun 2025 12:58:24 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uSaws-0000000FaFb-1Aug
	for barebox@bombadil.infradead.org;
	Fri, 20 Jun 2025 12:34:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:From:Sender:
	Reply-To:Cc:Content-ID:Content-Description;
	bh=+Bc4VC8Aobzxo4j2dSO52ZMRocEqR7sJaYacBkarmms=; b=gQLBJFQt08egZ2+U4w6oWW2y5z
	rZ2o8tFvaexhOi+jkzxKP1qwTQXlru1WstZ8z0MCXz88JHIYG+YuqdJzWObUXY9V7de2px/eCVdo8
	LeZAqAZdGzRZjGw068R+kpllfaLA0udprHg/Y/QsV7xtsmHo14JgScDc9nrWH27eX6jFxPrP27kqX
	24AThaZNO2Scqo4WrIH2N9O0vwtCYOTa5n2j3zL1T5qVrdsNeAUoZwQHrhjbwjm92g/sU5aZeT/v8
	FuzqmZBWLkntyTYyN0n1cBqVgZUYz6vftw4ILSl1XKlBU+tDwoJwPUlMNVjumnzynxjNmHTs6AQHY
	kLf/syfw==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uSawp-00000004jS4-1ud4
	for barebox@lists.infradead.org;
	Fri, 20 Jun 2025 12:34:25 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uSawn-0003g6-Se; Fri, 20 Jun 2025 14:34:21 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uSawn-004Sjg-2E;
	Fri, 20 Jun 2025 14:34:21 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uSawn-00D39C-22;
	Fri, 20 Jun 2025 14:34:21 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>, 
 Lars Schmidt <l.schmidt@pengutronix.de>
In-Reply-To: <20250619-bootchooser-lock-v3-0-fc4ad92c3866@pengutronix.de>
References: <20250619-bootchooser-lock-v3-0-fc4ad92c3866@pengutronix.de>
Message-Id: <175042286162.3110285.7411533283864766689.b4-ty@pengutronix.de>
Date: Fri, 20 Jun 2025 14:34:21 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250620_133423_691617_19EB4760 
X-CRM114-Status: UNSURE (   9.47  )
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
X-Spam-Status: No, score=-6.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v3 0/4] Add boot slot locking to bootchooser
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Thu, 19 Jun 2025 10:25:35 +0200, Lars Schmidt wrote:
> This patch series adds an option to lock attempts to bootchooser.
> When slots are locked, the remaining_attempts counter will not
> get counted down. It is optional, so when not set, it does not
> have any effect on the counter. The choice of which slot to boot
> is also not affected.
> 

Applied, thanks!

[1/4] bootchooser: implement locking of attempts counter
      https://git.pengutronix.de/cgit/barebox/commit/?id=64341aa28fea (link may not be stable)
[2/4] bootchooser: extend cmd tool by option to set attempts_locked
      https://git.pengutronix.de/cgit/barebox/commit/?id=2511f3468e4d (link may not be stable)
[3/4] Documentation: bootchooser: add information about attempts_locked
      https://git.pengutronix.de/cgit/barebox/commit/?id=c358598d864f (link may not be stable)
[4/4] Documentation: migration-2025.08.0: add information about attempts_locked
      https://git.pengutronix.de/cgit/barebox/commit/?id=ac11d2114c9d (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



