Delivery-date: Tue, 21 May 2024 08:23:45 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s9IuX-00Bny4-23
	for lore@lore.pengutronix.de;
	Tue, 21 May 2024 08:23:45 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s9IuX-0006uN-3q
	for lore@pengutronix.de; Tue, 21 May 2024 08:23:45 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Ii+3bHsBVG5zCJSIW2zjpbWKDBBUQ8GcLlRj2uJmEQA=; b=UnNcvOM645kF51ym62igYEb+1A
	z+Y+0vHTMqWQ6jmfWzbSuh93FGV7WPboIac7+CwmKXvsdUXHrUfcX73ssrSHdRtAgrEZvY1Irbfk8
	GOpEuj1AScf/qkejc0GXIpyoRr1pHUsIXi87si4OMyfd0B+ySqUshFDHurnwbpFSxM5x0i5nf760O
	NCHPLO8SWe+Qj25QcirbOLDnuCjrSmtAeizNQB/0kX5L1jtYJXqt4C1aWKf8kjVdo7tGeNt35g5GH
	VtUMhnLh5plx925K+iwtFjRhgzCq7zHy3L5+ZppGD/UbdDaYLoyTgJy8npy/UF8KQbVvFaqiNUSPf
	nm/sZtLA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s9Iu6-0000000GTEk-1snn;
	Tue, 21 May 2024 06:23:18 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s9Iu2-0000000GTE1-3BRT
	for barebox@lists.infradead.org;
	Tue, 21 May 2024 06:23:16 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1s9Iu1-0006jf-3h; Tue, 21 May 2024 08:23:13 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1s9Iu0-002Lt5-NK; Tue, 21 May 2024 08:23:12 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1s9Iu0-00606E-28;
	Tue, 21 May 2024 08:23:12 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240517074835.768112-1-a.fatoum@pengutronix.de>
References: <20240517074835.768112-1-a.fatoum@pengutronix.de>
Message-Id: <171627259265.1430317.3445707198078008868.b4-ty@pengutronix.de>
Date: Tue, 21 May 2024 08:23:12 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240520_232314_830158_063CAF52 
X-CRM114-Status: UNSURE (   7.08  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/2] FIT: fix build with sandbox
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Fri, 17 May 2024 09:48:34 +0200, Ahmad Fatoum wrote:
> As FIT is built only for ARM so far, this sandbox-related code has
> bitrotted. To prepare allowing it to build for other platforms, adjust
> the API to the current state.
> 
> 

Applied, thanks!

[1/2] FIT: fix build with sandbox
      https://git.pengutronix.de/cgit/barebox/commit/?id=9f82a33c178e (link may not be stable)
[2/2] common: fit: don't have BOOTM_FITIMAGE depend on ARM
      https://git.pengutronix.de/cgit/barebox/commit/?id=09201c7dd960 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



