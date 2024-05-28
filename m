Delivery-date: Tue, 28 May 2024 11:01:39 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sBsiB-000smh-0a
	for lore@lore.pengutronix.de;
	Tue, 28 May 2024 11:01:39 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sBsiA-0001zo-LO
	for lore@pengutronix.de; Tue, 28 May 2024 11:01:39 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=HmQNMErTLvYE9f0TyNpjX0ciLxuUQ0AQD1Ts7xom76s=; b=FmUesvaj7pDc68aBnoz5OiQZQp
	UYO7jsch5B6yOZeMj0D6x0xOnXqj9s372QOnZpl5qSkBaW4Bou0XNOyG+0NJdYnIPobYmPDdvVler
	mivP24OwGMMUieCY73m0l/Xz3iWZyZyM4JY35FZM2EGrEL7fRCH0lWlkl3DwRTAL/Z6IboO5sOFu5
	2nghbIZaG6WZTXVsEKyijUmC348Vpx9n8Jv+93ibh19Iz3n8QIdMxwK4Fib2YCfbFxjynYY/hQG39
	0sLhGOLLVp1nAh3w7KEiSXUJNqIV9S6tyWrrm/KPCVxGdbsYRVdRJwIRvqAqB2yvLxzdlRJc2l3K6
	Za6q+u8A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sBshX-0000000HaDp-1m5K;
	Tue, 28 May 2024 09:00:59 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sBshI-0000000Ha5Z-2K71
	for barebox@lists.infradead.org;
	Tue, 28 May 2024 09:00:54 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sBshH-0001pp-2S; Tue, 28 May 2024 11:00:43 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sBshG-003ItK-MG; Tue, 28 May 2024 11:00:42 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sBshG-004yAW-21;
	Tue, 28 May 2024 11:00:42 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: ore@pengutronix.de
In-Reply-To: <20240528082542.3013919-1-a.fatoum@pengutronix.de>
References: <20240528082542.3013919-1-a.fatoum@pengutronix.de>
Message-Id: <171688684262.1184367.18048382653429425994.b4-ty@pengutronix.de>
Date: Tue, 28 May 2024 11:00:42 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240528_020044_826054_2E7B9F49 
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 1/2] string: inline isempty
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Tue, 28 May 2024 10:25:41 +0200, Ahmad Fatoum wrote:
> The helper is trivial, so make it inline to save users the minimal
> hassle of calling it out-of-line.
> 
> 

Applied, thanks!

[1/2] string: inline isempty
      https://git.pengutronix.de/cgit/barebox/commit/?id=6fc15d43dabc (link may not be stable)
[2/2] string: add nonempty helper
      https://git.pengutronix.de/cgit/barebox/commit/?id=7253e9872c95 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



