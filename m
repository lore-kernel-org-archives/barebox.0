Delivery-date: Mon, 25 Nov 2024 09:46:43 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tFUjz-0008Jr-10
	for lore@lore.pengutronix.de;
	Mon, 25 Nov 2024 09:46:43 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tFUjz-00040b-8u
	for lore@pengutronix.de; Mon, 25 Nov 2024 09:46:43 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=/YLtF4thLAqe8uE2gOHVF2l9wAiJDdmLaN0vbW+9ofc=; b=pZP8/AF9HDTIVkWHxoGXz/K26Q
	5krVkP50WQqbAHZJmLGMEE482sNGRhg75X9fGR+WO/FYmeVQPjURB4bAX17h3VJTXqbsX2PrNwHQH
	GKg5r+Kg/0MvyWR37ExrE8IiRTucQWWoJirSIGU2/68Us+wlm0ppGkvN08bYwNjfDnl0bktAH53dr
	LDHwZ1Dv5BZwklRYYChBe84tgOXLoYiZfvS6CXuKj595LUYX4XpkUwELWurPT1mih4B5uY8D3hvU6
	wXn3butNj60FDGgVrN5hJYFlunSja0zZF8URGz7oFSfDPqZeb56rGm6BngsHFyu7J1VeB760GBsN5
	UeNbcdOw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tFUjc-00000007RTJ-45KI;
	Mon, 25 Nov 2024 08:46:20 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tFUja-00000007RSB-2nka
	for barebox@lists.infradead.org;
	Mon, 25 Nov 2024 08:46:19 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tFUjZ-0003qc-8M; Mon, 25 Nov 2024 09:46:17 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tFUjY-00039R-0t;
	Mon, 25 Nov 2024 09:46:17 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tFUjY-000iLs-3B;
	Mon, 25 Nov 2024 09:46:16 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20241119071525.1886151-1-a.fatoum@pengutronix.de>
References: <20241119071525.1886151-1-a.fatoum@pengutronix.de>
Message-Id: <173252437698.170469.2273853230634219006.b4-ty@pengutronix.de>
Date: Mon, 25 Nov 2024 09:46:16 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241125_004618_713744_1E7C5525 
X-CRM114-Status: UNSURE (   9.69  )
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
Subject: Re: [PATCH master] dlmalloc: Fix integer overflow in
 request2size()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Tue, 19 Nov 2024 08:15:25 +0100, Ahmad Fatoum wrote:
> req is of type size_t, casting it to long opens the door
> for an integer overflow.
> Values between LONG_MAX - (SIZE_SZ + MALLOC_ALIGN_MASK) - 1 and LONG_MAX
> cause and overflow such that request2size() returns MINSIZE.
> 
> Fix by removing the cast.
> The origin of the cast is unclear, it's in u-boot and ppcboot since ever
> and predates the CVS history.
> Doug Lea's original dlmalloc implementation also doesn't have it.
> 
> [...]

Applied, thanks!

[1/1] dlmalloc: Fix integer overflow in request2size()
      https://git.pengutronix.de/cgit/barebox/commit/?id=7cf25e0733f0 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



