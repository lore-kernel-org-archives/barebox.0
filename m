Delivery-date: Tue, 22 Apr 2025 10:37:23 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u7987-003yS7-0a
	for lore@lore.pengutronix.de;
	Tue, 22 Apr 2025 10:37:23 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u7986-0000fc-I6
	for lore@pengutronix.de; Tue, 22 Apr 2025 10:37:23 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=RC9+3u+EYQpDp3jTGLXwxCPwQmcmOuyPthe62HjjU/I=; b=Ua+RCBUwbAKJz6L6o3x+zgXuUS
	MVtOtaW0BJ9zqaMPjn1a43YTGAnOE9o+1/6BseuSqTyLx2yJMqycm+/Er8yJicLj6NUFjT/M/DAOh
	QPRgrVzviRkXwTj5HUEauTOMTgL+R0AN/pyAPZy5++yCJEolIuG61tbk0ww4xhyhQCx+wHHtL6NHZ
	VwGzzyJQlwBW6o0Lys2eEWs2wm08DJoodf2TgqjxMZ0TX2dLCzpoWbWnAuFTx1JWYigXB7nAD6cl7
	x+J0hkrKlePay8j0ZKqBTucmWr8u0GVTGNX0oLE2pN+rWYe4v7sbv+FWHC6+mwsu+tBqJazZ2YoE/
	N7YxLy/g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u797h-00000006LQ0-0gKP;
	Tue, 22 Apr 2025 08:36:57 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u78Ls-00000006Afj-2Hsq
	for barebox@lists.infradead.org;
	Tue, 22 Apr 2025 07:47:33 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1u78Lr-0007Vl-2H; Tue, 22 Apr 2025 09:47:31 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1u78Lq-001VuI-2p;
	Tue, 22 Apr 2025 09:47:30 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1u78Lq-00CYv0-2c;
	Tue, 22 Apr 2025 09:47:30 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20250422053740.3436389-1-a.fatoum@pengutronix.de>
References: <20250422053740.3436389-1-a.fatoum@pengutronix.de>
Message-Id: <174530805080.2994153.4403549115894982173.b4-ty@pengutronix.de>
Date: Tue, 22 Apr 2025 09:47:30 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250422_004732_588174_0DF8A8C1 
X-CRM114-Status: UNSURE (   7.62  )
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
Subject: Re: [PATCH master 1/2] tlsf: hardening: unpoison trailing padding
 before zeroing it
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Tue, 22 Apr 2025 07:37:39 +0200, Ahmad Fatoum wrote:
> The actual allocated buffer size can be bigger than what was requested
> due to alignment.
> 
> When KASAN is enabled, only the requested size is unpoisoned.
> This currently leads to problems, because with
> CONFIG_INIT_ON_ALLOC_DEFAULT_ON enabled, the whole allocated
> buffer will be zeroed.
> 
> [...]

Applied, thanks!

[1/2] tlsf: hardening: unpoison trailing padding before zeroing it
      https://git.pengutronix.de/cgit/barebox/commit/?id=bad633c5392d (link may not be stable)
[2/2] tlsf: hardening: skip KASAN checks when zeroing memory
      https://git.pengutronix.de/cgit/barebox/commit/?id=d5c5e18f0dfe (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



