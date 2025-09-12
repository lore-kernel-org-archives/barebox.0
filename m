Delivery-date: Fri, 12 Sep 2025 09:45:32 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uwyTM-0029fz-2P
	for lore@lore.pengutronix.de;
	Fri, 12 Sep 2025 09:45:32 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uwyTM-0003nQ-7g
	for lore@pengutronix.de; Fri, 12 Sep 2025 09:45:32 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=OP1MSOa+ijQDlQG7Smz35E27UzqhYDUN4vizt86APqE=; b=Ppz28cEZBxid+TZazAeGcYCw0E
	orjukhvElwW/+xldJ+xFHS2FMF7K1BlOKhcGh2Fm7bGYn9AQMo1PAhc1TFf01sUVWK9p6Il1zR9Nq
	4nzbzcv+jbC9b0YsNsJgcxdXwZCRbJitpDyec49kc9RSCdHyz1SIlNdUbxSWblZqSGHIKqWltSxcg
	aO8zMxJrNfkqUqV0+cP+GqGII1Jw8E7LJuqakdVPMhJUOsK7Y7Cj3AIaP3tK4I0wbyxCuBurypizB
	HNIXfnT3QarTnGAh6i92IaxapNOGzRXiPxYaofSxI7hCav4PM0J85iqFRy4kgQbgRzTmTIOTDAq8D
	GPOibTTw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uwySx-00000007icS-4Aut;
	Fri, 12 Sep 2025 07:45:07 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uwySv-00000007ibr-1qhS
	for barebox@lists.infradead.org;
	Fri, 12 Sep 2025 07:45:06 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uwySt-0003gp-VV; Fri, 12 Sep 2025 09:45:03 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uwySt-000teh-2Y;
	Fri, 12 Sep 2025 09:45:03 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uwySt-00000007NBe-35P5;
	Fri, 12 Sep 2025 09:45:03 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
In-Reply-To: <20250910115956.3195025-1-s.hauer@pengutronix.de>
References: <20250910115956.3195025-1-s.hauer@pengutronix.de>
Message-Id: <175766310373.1757415.5011997820999331591.b4-ty@pengutronix.de>
Date: Fri, 12 Sep 2025 09:45:03 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250912_004505_489080_7107C566 
X-CRM114-Status: UNSURE (   6.84  )
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
X-Spam-Status: No, score=-4.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] ARM: k3: am625: fix syscon-reboot-mode
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 10 Sep 2025 13:59:56 +0200, Sascha Hauer wrote:
> On AM625 the DEVSTAT register for specifying the reboot mode is at
> 0x43000030, not at 0x43010030.
> 
> 

Applied, thanks!

[1/1] ARM: k3: am625: fix syscon-reboot-mode
      https://git.pengutronix.de/cgit/barebox/commit/?id=73cff276e999 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



