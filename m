Delivery-date: Fri, 07 Nov 2025 15:44:24 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vHNhQ-00GKQS-2R
	for lore@lore.pengutronix.de;
	Fri, 07 Nov 2025 15:44:24 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vHNhQ-0000ad-8G
	for lore@pengutronix.de; Fri, 07 Nov 2025 15:44:24 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=zBfqzMWcUZ2p+Rg15nU4cH12LbeKi+phDDyy43ZS2EA=; b=XHIH4OUrn31v5rnUmvzLzYLp46
	SXmvoWMx2VuX766WoE/vWowD5EMQ6rKmJe0RawYbB74EKZLrNJPg2egz/l6t6CqYWsYxUVt1hiPyG
	HQRgIZG/MBd7FFN8ZQuQLC+GAxMCCrYwOV10+oFvQkTvP21vJiCizRjjuZMaOBAW55AZHG5fBNC6c
	fXqZjlqdluUmHQs+TaJ5vmE1MYvvOJYBKv8/W4EvGhSsTfMZBYhgyRvMWbYEq7Op4EJ9/2xB8oEeA
	H8+OKZ5D8cCbMtF44hOMjH6JjzY8A5nVjarIuzhcPx53JSZhlH8aaqkrKpb1SiVMFNZn/IRaO3CvG
	g0LwG9gw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vHNh4-0000000HWaL-1VK9;
	Fri, 07 Nov 2025 14:44:02 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vHNh1-0000000HWZn-1xlz
	for barebox@lists.infradead.org;
	Fri, 07 Nov 2025 14:44:00 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vHNgz-0000Ve-W5; Fri, 07 Nov 2025 15:43:58 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vHNgz-007XqJ-2b;
	Fri, 07 Nov 2025 15:43:57 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vHNh0-0000000Bjb7-0k4u;
	Fri, 07 Nov 2025 15:43:57 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
In-Reply-To: <20251106073035.3580913-1-s.hauer@pengutronix.de>
References: <20251106073035.3580913-1-s.hauer@pengutronix.de>
Message-Id: <176252663772.2796497.13509057401507001227.b4-ty@pengutronix.de>
Date: Fri, 07 Nov 2025 15:43:57 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251107_064359_512310_EE4F0AD0 
X-CRM114-Status: UNSURE (   8.22  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] ARM: k3: allow to take signing key from environment
 variable
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Thu, 06 Nov 2025 08:30:35 +0100, Sascha Hauer wrote:
> This adds a new Kconfig option CONFIG_ARCH_K3_SIGNING_KEY_ENV. With
> this option enabled the content of CONFIG_ARCH_K3_SIGNING_KEY is treated
> as the name of an environment variable from which the private key
> file/uri is taken. This allows for better integration with build
> systems.
> 
> 
> [...]

Applied, thanks!

[1/1] ARM: k3: allow to take signing key from environment variable
      https://git.pengutronix.de/cgit/barebox/commit/?id=05011404b446 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



