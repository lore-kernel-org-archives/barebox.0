Delivery-date: Wed, 11 Sep 2024 10:40:02 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1soItO-003QSh-2g
	for lore@lore.pengutronix.de;
	Wed, 11 Sep 2024 10:40:02 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1soItN-0008QR-PS
	for lore@pengutronix.de; Wed, 11 Sep 2024 10:40:02 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=are1PjZM+GwXBn5T5Sp+SzvafwKEJLw64WV8cUbMF1A=; b=pGHGR08zwGWflO1CYx2IJDzlfG
	YutAqbvVHBk2AGRBW7S/Risk9WdD1jy8Ba3MQGjUOiXODOHuxpxdFXeLsqyf5MDn63z8Vu7BB/K2D
	7l/NyfW1RS7kU+FgzKUgXwZt0Le54ahxI4xEomVMyY1hXYyRe84PtROSjUYF0FRaMylJkDzFQMug1
	kBHQ5BL77xVi2Akqq54w9vce9NqbrID6A+NBz4timD6UbovhghcnL1ay4sMgc+zKN3ZW2G+2TcvSX
	gRm8AWJgg76rHPJlOZEQRXqCwlGVvTXBpIZIol0RHakyEyDJN13f4CZtkVqquf5x4sy2Fw7hfR32j
	ys0gwVMQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1soIsy-00000008hmZ-39Fv;
	Wed, 11 Sep 2024 08:39:36 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1soIqz-00000008h6i-39hY
	for barebox@lists.infradead.org;
	Wed, 11 Sep 2024 08:37:35 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1soIqy-0007Bq-8u; Wed, 11 Sep 2024 10:37:32 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1soIqx-0075xZ-SM; Wed, 11 Sep 2024 10:37:31 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1soIqx-001gFw-2f;
	Wed, 11 Sep 2024 10:37:31 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240910090050.53550-1-a.fatoum@pengutronix.de>
References: <20240910090050.53550-1-a.fatoum@pengutronix.de>
Message-Id: <172604385182.400739.10295025706072593375.b4-ty@pengutronix.de>
Date: Wed, 11 Sep 2024 10:37:31 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240911_013733_837721_F1DA3521 
X-CRM114-Status: UNSURE (   8.50  )
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
Subject: Re: [PATCH v2] sandbox: lds: fix "ELF has a LOAD segment with RWX
 permissions" warning
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Tue, 10 Sep 2024 11:00:50 +0200, Ahmad Fatoum wrote:
> With binutils 2.39+, the barebox build started emitting this warning.
> On platforms other than sandbox, we disable this warning by passing --no-warn-rwx
> to ld as we don't care for ELF attributes as they aren't used anyway.
> 
> On sandbox, however, the ELF attributes matter, so disabling the warning
> completely felt wrong. Looking more into it now, we can mark the
> .barebox_rodata section in the linker file snippet we have in sandbox as
> READONLY and the warning disappears, so let's do that instead.
> 
> [...]

Applied, thanks!

[1/1] sandbox: lds: fix "ELF has a LOAD segment with RWX permissions" warning
      https://git.pengutronix.de/cgit/barebox/commit/?id=c11590f5643b (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



