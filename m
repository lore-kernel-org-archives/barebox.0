Delivery-date: Tue, 22 Apr 2025 12:28:42 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u7Arq-0040wY-1o
	for lore@lore.pengutronix.de;
	Tue, 22 Apr 2025 12:28:42 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u7Arq-0001zr-05
	for lore@pengutronix.de; Tue, 22 Apr 2025 12:28:42 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=2QY4efOqOekRu4ixjdvWeJ2tw0iV+RmZxjNMPezTqv0=; b=B4orG8qI3DdY0Y/wXnqq6cwCxN
	QoaC6+6Js5yOjGh+Eo06iv614bC7VDdibjFOjekAsA61HlrnDPwwI9KGTtj9rj5KaiaDAv8dygcFv
	IuVrvB5tQ/f1LHOfS6tUT/5xfFwEwRkpotnrLfqet9oixMp30/c31C7uZsWQ7nniLUu/oK9go6k+t
	tGLH3V4XjKY1ui1qsj7Q9nZd4VJLsQIeb7zlO6c04qnBwWqqsY8SUbjAraDbMWP2NPBh8msBTeUcE
	haQWxvcoazc/uSBN4z6KheIDEsckGmXyYkdYawVmEyl5Cnmcs7r0uZeBh6VO+yVi+a6KgBgqNJBMq
	8cdQnPqQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u7ArS-00000006l7Z-0JFC;
	Tue, 22 Apr 2025 10:28:18 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u79wv-00000006Z7p-2dOr
	for barebox@lists.infradead.org;
	Tue, 22 Apr 2025 09:29:55 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1u79wt-0006Jm-Rb; Tue, 22 Apr 2025 11:29:51 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1u79wt-001WoR-23;
	Tue, 22 Apr 2025 11:29:51 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1u79wt-00CeS5-1q;
	Tue, 22 Apr 2025 11:29:51 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20250422075519.219029-1-a.fatoum@pengutronix.de>
References: <20250422075519.219029-1-a.fatoum@pengutronix.de>
Message-Id: <174531419157.3015406.7996489393130071492.b4-ty@pengutronix.de>
Date: Tue, 22 Apr 2025 11:29:51 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250422_022953_689253_C9A9683D 
X-CRM114-Status: UNSURE (   7.78  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH master 1/4] KASan: fix possible breakage with
 CONFIG_INIT_STACK_ALL
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Tue, 22 Apr 2025 09:55:16 +0200, Ahmad Fatoum wrote:
> With CONFIG_INIT_STACK_ALL_PATTERN or CONFIG_INIT_STACK_ALL_ZERO,
> the compiler emits calls to memset to initialize variables on the stack.
> 
> With kasan enabled, this would end up calling KASAN memset, which can
> lead to access of global variables prior to relocation.
> 
> Brace ourselves for this situation by sidestepping KASAN prior to
> relocation.
> 
> [...]

Applied, thanks!

[1/4] KASan: fix possible breakage with CONFIG_INIT_STACK_ALL
      https://git.pengutronix.de/cgit/barebox/commit/?id=68aba118f469 (link may not be stable)
[2/4] ARM: Layerscape: fix compilation of LS1028 without LS1046
      https://git.pengutronix.de/cgit/barebox/commit/?id=7458e41a4c98 (link may not be stable)
[3/4] ARM: k3: define debug_ll_write_reg only on CONFIG_DEBUG_AM62X_UART=y
      https://git.pengutronix.de/cgit/barebox/commit/?id=6b749354d11a (link may not be stable)
[4/4] memory: correct return value in request_barebox_region stub
      https://git.pengutronix.de/cgit/barebox/commit/?id=1d7b03c94e3c (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



