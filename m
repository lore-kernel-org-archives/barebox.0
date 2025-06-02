Delivery-date: Mon, 02 Jun 2025 09:46:50 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uLzsg-002sup-09
	for lore@lore.pengutronix.de;
	Mon, 02 Jun 2025 09:46:50 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uLzsf-0006sg-El
	for lore@pengutronix.de; Mon, 02 Jun 2025 09:46:49 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ds9rWI7vHnHWjzzXMYyG1pPqVbgkqSqjb3ceE0qZv3M=; b=A/c6Qo48UBlymQaK71+thCxEsE
	nnvwLvmXCNuaoO/IXHzY7NjjSOgmCciVMdGGE4yRup5ka+hiq2fbmteS78qogDwSqXMZCFUiqWQRo
	+zqKQpaBnHZtYCgJPhzlB5t34+khcqAyTgVMygZ66fQw9Mrn/fRQZrXx4BS7Rc+vqmxAI/WpDb6Ia
	KL1G0gSZ+PZkwG9goETfE+IFwfIsxr6iRyP+Vv6+JDNaU+OSvwAd0NGY07uiIiTtZG+lEMFCTkT+n
	qJ8+ba/6EmGHzEyJQeka1Pupbi7OEW2YBuJ3/QD/j/pZ97W63V1qqvX/N0i9urjEArVqCPWL69yWQ
	bHpwSWbw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uLzsC-00000006vvU-0Bn8;
	Mon, 02 Jun 2025 07:46:20 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uLzs9-00000006vuo-3cgD
	for barebox@lists.infradead.org;
	Mon, 02 Jun 2025 07:46:19 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uLzs8-0006iz-Ie; Mon, 02 Jun 2025 09:46:16 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uLzs8-001Ptf-1G;
	Mon, 02 Jun 2025 09:46:16 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uLzs8-003VPn-11;
	Mon, 02 Jun 2025 09:46:16 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@barebox.org>
In-Reply-To: <20250602061610.752815-1-a.fatoum@barebox.org>
References: <20250602061610.752815-1-a.fatoum@barebox.org>
Message-Id: <174885037631.835708.1579928682127065176.b4-ty@pengutronix.de>
Date: Mon, 02 Jun 2025 09:46:16 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250602_004617_904815_098A961A 
X-CRM114-Status: UNSURE (   6.53  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/2] video: panel-mipi-dbi: fix fake clock calculation
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 02 Jun 2025 08:16:09 +0200, Ahmad Fatoum wrote:
> pixclock is supposed to be in picoseconds, not Hz and panel-mipi-dbi.c
> got that wrong. According to the comment the value isn't used, so this
> fix only ensures sane values are read while debugging.
> 
> 

Applied, thanks!

[1/2] video: panel-mipi-dbi: fix fake clock calculation
      https://git.pengutronix.de/cgit/barebox/commit/?id=cb192b33c2ce (link may not be stable)
[2/2] video: give struct fb_videomode::pixclock a strong picoseconds_t type
      https://git.pengutronix.de/cgit/barebox/commit/?id=4a7eac95b155 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



