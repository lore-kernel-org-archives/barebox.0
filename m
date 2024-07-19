Delivery-date: Fri, 19 Jul 2024 08:27:19 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sUh5L-000kgr-2l
	for lore@lore.pengutronix.de;
	Fri, 19 Jul 2024 08:27:19 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sUh5L-0006wW-9q
	for lore@pengutronix.de; Fri, 19 Jul 2024 08:27:19 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Rzi/6tjsMY0viQFwyKH3TS/H539wFO5OYoHa9eLEX1k=; b=sREAYo+8eqQZ7YApf0F7C13btb
	BsiptOledCq1x0GlDOFaLkgwHMuFzUk7e7uXdJrcNRLYVnq4v2UONsGgvAPRMRW0pmEKrWUI2FH3Y
	i8dOyp1t2QUij4/ORdrJ+onntv68LYHvJOH+YMyHA1sclxG2fbYJg+7Tf1J6AENvirC1T6skwu2Ov
	pSGAZtoV/U6VH4cEKfYpczIOA6MP5fqtPgRHook3+r3EtIt7IShPVlU0M9DID5oAMTWeSwFi2grUb
	NLZJ9XdK4SSmwqRlBusX0C4DHbwIRI/fsBBumTrqeLOd8jMYXR0IfoPXr53EvWv+dzXcoYNuLDi2v
	T6CzqW4w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sUh4t-00000001o1G-1GiX;
	Fri, 19 Jul 2024 06:26:51 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sUh4p-00000001o0h-1WkQ
	for barebox@lists.infradead.org;
	Fri, 19 Jul 2024 06:26:48 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sUh4o-0006tR-0j; Fri, 19 Jul 2024 08:26:46 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sUh4n-000cck-K1; Fri, 19 Jul 2024 08:26:45 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sUh4n-002Pq9-1m;
	Fri, 19 Jul 2024 08:26:45 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240716115711.1956907-1-a.fatoum@pengutronix.de>
References: <20240716115711.1956907-1-a.fatoum@pengutronix.de>
Message-Id: <172137040554.575948.6889370259706553117.b4-ty@pengutronix.de>
Date: Fri, 19 Jul 2024 08:26:45 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240718_232647_440438_4FC923EC 
X-CRM114-Status: UNSURE (   6.25  )
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
Subject: Re: [PATCH 1/4] init: mark initcalls const
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Tue, 16 Jul 2024 13:57:08 +0200, Ahmad Fatoum wrote:
> The initcalls shouldn't be modified at runtime and they are part of the
> BAREBOX_RO_SECTION, so mark them const accordingly.
> 
> 

Applied, thanks!

[1/4] init: mark initcalls const
      https://git.pengutronix.de/cgit/barebox/commit/?id=7b2399aff024 (link may not be stable)
[2/4] base: use initcalls instead of linker lists to register classes
      https://git.pengutronix.de/cgit/barebox/commit/?id=ac70ae1e18fb (link may not be stable)
[3/4] watchdog: remove needless error checking for device parameter
      https://git.pengutronix.de/cgit/barebox/commit/?id=5c6531025f4c (link may not be stable)
[4/4] watchdog: factor out device registration into common class code
      https://git.pengutronix.de/cgit/barebox/commit/?id=ad90c8aef8f4 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



