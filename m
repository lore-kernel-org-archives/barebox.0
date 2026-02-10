Delivery-date: Tue, 10 Feb 2026 10:07:53 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vpjir-0007Qd-18
	for lore@lore.pengutronix.de;
	Tue, 10 Feb 2026 10:07:53 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vpjiq-0000cd-QR
	for lore@pengutronix.de; Tue, 10 Feb 2026 10:07:53 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=/Wxtuxwfqm1MLrgl49u5VEN4VTllJQEwfikT+6j1Syg=; b=V8paLeewlRsh1oXwA7pGtoKpWu
	c+VwqH8z2aHPiXfiaxlGjR23Cb3+RiFo+w8MqjAtcX2RkgGdEVnizWbsNSLPNYI+FSgaNYZ2tteeo
	l7t2o0F1fnhVm4+HwBx7bmB2UsXA807Wy879/iPEIbF3BuOZ0zNll6zR3a2KIATA1s0Bgerztb+kF
	qZiL9Eg8XHYZjTdDmbLlEcr9OSFje+txXdPRK9WiPTxqkNtHyAfElnyoLud9VaU42rOR7a/oTCSjR
	v888TMo/t6an5hvtxCZId1Qu8uv+zayQ15nZiee8cU3PXeXqtjZ3uzajNHIZBu934N6bFJ2eVhNlI
	G8SsVfzw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vpjiR-0000000Gj8B-2cTt;
	Tue, 10 Feb 2026 09:07:27 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vpjiO-0000000Gj7s-3fOO
	for barebox@lists.infradead.org;
	Tue, 10 Feb 2026 09:07:26 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vpjiL-0000X5-VY; Tue, 10 Feb 2026 10:07:21 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vpjiL-0003YT-0b;
	Tue, 10 Feb 2026 10:07:21 +0100
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vpjiL-00000003c6z-2zhF;
	Tue, 10 Feb 2026 10:07:21 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20260209123817.2986892-1-a.fatoum@pengutronix.de>
References: <20260209123817.2986892-1-a.fatoum@pengutronix.de>
Message-Id: <177071444170.861472.10062424241052557256.b4-ty@pengutronix.de>
Date: Tue, 10 Feb 2026 10:07:21 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260210_010724_915543_82875473 
X-CRM114-Status: UNSURE (   5.35  )
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
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] test: py: strategy: disable EFI when booting barebox
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 09 Feb 2026 13:38:16 +0100, Ahmad Fatoum wrote:
> The existing FIT tests should boot barebox normally without EFI,
> even if given an EFI stubbed barebox.
> 
> Adapt boot_barebox to enforce this.
> 
> 

Applied, thanks!

[1/1] test: py: strategy: disable EFI when booting barebox
      https://git.pengutronix.de/cgit/barebox/commit/?id=299b9b0c4a96 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



