Delivery-date: Thu, 10 Apr 2025 10:04:48 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u2mu0-00AkVl-1K
	for lore@lore.pengutronix.de;
	Thu, 10 Apr 2025 10:04:48 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u2mtz-0000Y0-Sf
	for lore@pengutronix.de; Thu, 10 Apr 2025 10:04:48 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=2c2df7nbQU1Q8bu9VK/bolUgw30QN18NCNHb9UcIM3Q=; b=gO5LQpbaoccp7ClKQNFnKWqCzG
	f9G6MwZx74nzrYTUnaYWSnKxrkrcqST9CAuYfWmT7QX8cjE9AOAGATdsz3bLJ+gloUax7MeR/fe5x
	6dDsfWA4l330IwNUILY4eHDDxgaAemByRGUI+fB2lEXb5BxYqhYVQq8sW1xeeasF4gD4tGbwOMA0s
	hGLptIlq3FPO6ukHww1Bje2OPniztOs74JttLxHI1PUhaUyt7wu0BLYuGR6fxO7FzSYYXBZzcK67N
	CjHVNGf5FQj7VFG2aElTSf1MaDnshpARN8KXN6ZlmwSUlxeKI+jsOIxxikvOy/YL/Ik57O5IkFk6f
	i/QN2Zww==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u2mtU-00000009fFQ-3CnX;
	Thu, 10 Apr 2025 08:04:16 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u2mIp-00000009XtF-1k4m
	for barebox@lists.infradead.org;
	Thu, 10 Apr 2025 07:26:24 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1u2mIo-0001Gq-25; Thu, 10 Apr 2025 09:26:22 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1u2mIn-004EQc-2p;
	Thu, 10 Apr 2025 09:26:21 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1u2mIn-008Wiy-2b;
	Thu, 10 Apr 2025 09:26:21 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20250409065612.1851282-1-a.fatoum@pengutronix.de>
References: <20250409065612.1851282-1-a.fatoum@pengutronix.de>
Message-Id: <174426998180.2032201.16606889846636859137.b4-ty@pengutronix.de>
Date: Thu, 10 Apr 2025 09:26:21 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250410_002623_454987_A6C706D3 
X-CRM114-Status: UNSURE (   8.16  )
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
X-Spam-Status: No, score=-5.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] include: linux/limits: add definition for
 RESOURCE_SIZE_MAX
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 09 Apr 2025 08:56:12 +0200, Ahmad Fatoum wrote:
> This is the maximum value that can be stored in a resource_size_t
> and can be used as dummy invalid value if needed.
> 
> Import it with the same definition as in Linux.
> 
> 

Applied, thanks!

[1/1] include: linux/limits: add definition for RESOURCE_SIZE_MAX
      https://git.pengutronix.de/cgit/barebox/commit/?id=d3d49c7ac831 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



