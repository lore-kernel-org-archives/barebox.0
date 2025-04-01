Delivery-date: Tue, 01 Apr 2025 08:02:47 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tzUhz-006sID-0e
	for lore@lore.pengutronix.de;
	Tue, 01 Apr 2025 08:02:47 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tzUhy-0005UT-MK
	for lore@pengutronix.de; Tue, 01 Apr 2025 08:02:47 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=3H4zCia+X/rtLvKVJ6RZU+I7yCheGCG0McPMSVpkKj0=; b=QUrSOKY9BkerCg10p4H/H17frU
	T2kxK/OPzE0y39pxRxSXF4/73uqeK7wz5feXRea0pIB76dVh6JY2HLOGGmeHOEK4RSL/Hb/0tSJva
	dtQ6Qzd22QzM0irZFibcfwvnrK5DTVRRHXs29MlUqNan7oscrUM1B8aBa3Tw4sqNYL4OCBgFmBIzN
	JnX+wPYXY1RRDHOpXmRTWDGmDXNW1ErWZDnYJRlBpOx6VmnUt+LWLqx7oFMkXdpoSOvWAw1UEGI45
	SbM32cWbkeZw3hJUyYRtupKQpPw8usY+0SCGeFrT0hTClmuQO/J9N8jrplfeeJaQoAxH2QnOJt1wg
	iJxzcj3g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1tzUhY-000000022Q7-1FhA;
	Tue, 01 Apr 2025 06:02:20 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1tzUhV-000000022Pg-0zr0
	for barebox@lists.infradead.org;
	Tue, 01 Apr 2025 06:02:18 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tzUhU-0005Id-1r; Tue, 01 Apr 2025 08:02:16 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tzUhT-002iKT-2c;
	Tue, 01 Apr 2025 08:02:15 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tzUhT-00Cyg4-2O;
	Tue, 01 Apr 2025 08:02:15 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Jules Maselbas <jmaselbas@zdiv.net>
In-Reply-To: <20250331174050.2606-1-jmaselbas@zdiv.net>
References: <20250331174050.2606-1-jmaselbas@zdiv.net>
Message-Id: <174348733573.3093127.2426394410165542725.b4-ty@pengutronix.de>
Date: Tue, 01 Apr 2025 08:02:15 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250331_230217_285557_CC6D34D8 
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
X-Spam-Status: No, score=-5.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/2] commands: edit: Fix potential out-of-bound access
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 31 Mar 2025 19:40:49 +0200, Jules Maselbas wrote:
> The local lbuf can potentially be left not nul-terminated,
> and the tab expension can potentially write out-of-bound.
> 
> 

Applied, thanks!

[1/2] commands: edit: Fix potential out-of-bound access
      https://git.pengutronix.de/cgit/barebox/commit/?id=d653f475709c (link may not be stable)
[2/2] commands: edit: remove the memset call on screenline
      https://git.pengutronix.de/cgit/barebox/commit/?id=4c841ff9831f (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



