Delivery-date: Thu, 18 Sep 2025 16:21:35 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uzFVv-004V0F-0z
	for lore@lore.pengutronix.de;
	Thu, 18 Sep 2025 16:21:35 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uzFVu-0000IG-Py
	for lore@pengutronix.de; Thu, 18 Sep 2025 16:21:35 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=xaLWeTC8fEp49haEZgUj8MeZrIyjdwElEu15MLKmy14=; b=IU/5uDhKj0XCY7NoFhb5Z9GGgT
	Pl/lRZzxBbjY3j5AvuLAclScgkxF+BsX1CfrlTA66/LFsjR2PPVoegeR9hn1e8r8KunFeBuu/LFbg
	XBEdnWDs/lyqs1ppmFJNuPUPkBKe5KTIvCoz/PBa7KXNlBSMxzAjjQ3/omk2Kl7N0SghKDJwK3Eub
	F+6OM+jBeO0DTqW0XKLSTJC0VgXyVlk4fQB5AC3+1SgYEd8Wl05j9lyShiVwDLi0hMeTmSVNZXKZW
	gJE10/uOC+dblfmnpqECrzOvitAgU4IM1GJYS68rSzMJwvxCjSk1w/OlMQyMkq63FelOb2mvqMHwi
	PLLMKYow==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uzFVV-000000006x2-2a17;
	Thu, 18 Sep 2025 14:21:09 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uzFVT-000000006vc-1ydT
	for barebox@lists.infradead.org;
	Thu, 18 Sep 2025 14:21:08 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uzFVS-0000Ak-1z; Thu, 18 Sep 2025 16:21:06 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uzFVR-001xDs-2O;
	Thu, 18 Sep 2025 16:21:05 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uzFVR-0000000EPGm-2qNA;
	Thu, 18 Sep 2025 16:21:05 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Lucas Sinn <lucas.sinn@wolfvision.net>, 
 BAREBOX <barebox@lists.infradead.org>, 
 Michael Tretter <m.tretter@pengutronix.de>
In-Reply-To: <20250916-rk3588-rock5t-v1-1-95ac38397a16@pengutronix.de>
References: <20250916-rk3588-rock5t-v1-1-95ac38397a16@pengutronix.de>
Message-Id: <175820526567.3433711.163738110592072366.b4-ty@pengutronix.de>
Date: Thu, 18 Sep 2025 16:21:05 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250918_072107_511718_27514361 
X-CRM114-Status: UNSURE (   6.10  )
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
X-Spam-Status: No, score=-4.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] ARM: rockchip: add support for Radxa ROCK 5T
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Tue, 16 Sep 2025 09:58:47 +0200, Michael Tretter wrote:
> Add basic support for the Radxa ROCK 5T.
> 
> 

Applied, thanks!

[1/1] ARM: rockchip: add support for Radxa ROCK 5T
      https://git.pengutronix.de/cgit/barebox/commit/?id=f46afa81cabb (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



