Delivery-date: Wed, 11 Sep 2024 10:41:04 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1soIuP-003QTH-0m
	for lore@lore.pengutronix.de;
	Wed, 11 Sep 2024 10:41:04 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1soIuO-0000ZW-5l
	for lore@pengutronix.de; Wed, 11 Sep 2024 10:41:04 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=dJbOvmentSkmFnqsXE5K4OMzp6pJdHmDQUO7bpQEhbA=; b=OGCE4pq/IhxRmEJ1kbd+g4Sjek
	TJQr1oiFhGWoZQvIvMbQrv3Sx46wZDyIF2St+LWMdQKuMuIWqc6urG262zT83fEYNvTBpwYKZ2nlC
	c9vnDpsor4/3CUjpFrzu3U6FwcZ1bjd35Y/7R4Bv0VeZ1vzQHakJ22jrvX7QhenchmODerNhXgrc5
	k0P8oy0psUoC39Ie/LCC6bZiWqun2/x/GaO3ptNX9emwzZSJAv3aeOBwC/23cnUDpzty3CIZqMQGP
	SfOXjMmEhI3bV4G0g9NQ8rS9toAW+uDEnmiVWag5jYvNXWnJ9fbKj46GZM/IizfSXe2wYv/jYaUSi
	JxWE5sXQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1soIty-00000008i2k-2zDm;
	Wed, 11 Sep 2024 08:40:38 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1soIre-00000008hI0-3zES
	for barebox@lists.infradead.org;
	Wed, 11 Sep 2024 08:38:16 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1soIrd-0007VW-5n; Wed, 11 Sep 2024 10:38:13 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1soIrc-0075xf-Oc; Wed, 11 Sep 2024 10:38:12 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1soIrc-001gHn-2H;
	Wed, 11 Sep 2024 10:38:12 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240910085331.50498-1-a.fatoum@pengutronix.de>
References: <20240910085331.50498-1-a.fatoum@pengutronix.de>
Message-Id: <172604389270.400852.7034630703959427397.b4-ty@pengutronix.de>
Date: Wed, 11 Sep 2024 10:38:12 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240911_013815_030083_2A6E4D52 
X-CRM114-Status: UNSURE (   5.84  )
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
Subject: Re: [PATCH] lib: notifier: allow unregistering notifier in
 notifier_call_chain
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Tue, 10 Sep 2024 10:53:31 +0200, Ahmad Fatoum wrote:
> It's possible for Linux notifiers to be removed from within the notifier
> callback. Allow the same within barebox to avoid subtle bugs.
> 
> 

Applied, thanks!

[1/1] lib: notifier: allow unregistering notifier in notifier_call_chain
      https://git.pengutronix.de/cgit/barebox/commit/?id=306e2fe5e6a1 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



