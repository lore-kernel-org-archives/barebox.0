Delivery-date: Mon, 02 Jun 2025 13:51:10 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uM3h8-002wuW-2t
	for lore@lore.pengutronix.de;
	Mon, 02 Jun 2025 13:51:10 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uM3h8-0006zq-CJ
	for lore@pengutronix.de; Mon, 02 Jun 2025 13:51:10 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=4reMk1WnN8oeqLk3BuUVVfu2gXXeKBeEiwiuPUAAqiY=; b=WbK1dh9QwwyZgbqHQTUN6GQoXa
	xw/IpqpXG9w6tT7iY9DBqs0G124IBo4NhgzAqMC6YMQqa2Fghuzs9ss0mkxlgDtDx26ypdjHk/vEW
	vgPZ3OjJ3cclI306HdMCrf1gklcorOMDoaDWxD9bvolYM/vqFdNfBD9N7QjqDWdoNiXUP8BD8szJm
	e9gwznJBnH7R7AFpapY4jO7hWOs5nUhZfm9o1uU3r3lQPiKx51nkjdyN1lw/Q6Efgzc31D0ghioue
	8i9wmNnyJF6Sev/mr0iGkO71eaT1GrmdwPJtg40r+OHTRTYaw0RtDIDWpMMqhSMmwOqkUmH/by7Am
	n9ZRyAYQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uM3gh-00000007JCF-2GW3;
	Mon, 02 Jun 2025 11:50:43 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uM3dP-00000007IpW-3UoA
	for barebox@lists.infradead.org;
	Mon, 02 Jun 2025 11:47:21 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uM3dO-0005e4-Fu; Mon, 02 Jun 2025 13:47:18 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uM3dO-001RoR-0z;
	Mon, 02 Jun 2025 13:47:18 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uM3dO-003qm1-0m;
	Mon, 02 Jun 2025 13:47:18 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20250528055814.1368888-1-a.fatoum@pengutronix.de>
References: <20250528055814.1368888-1-a.fatoum@pengutronix.de>
Message-Id: <174886483824.917513.8183669695291275158.b4-ty@pengutronix.de>
Date: Mon, 02 Jun 2025 13:47:18 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250602_044719_876764_59B3C3D4 
X-CRM114-Status: UNSURE (   7.89  )
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
Subject: Re: [PATCH 1/2] string: add delimiter output parameter to
 strsep_unescaped
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 28 May 2025 07:58:13 +0200, Ahmad Fatoum wrote:
> strsep overwrites the found delimiter with '\0' making it cumbersome for
> callers that match on multiple delimiters to find out, which delimiter
> actually matched.
> 
> Parsers that split on multiple delimiters are likely to want support
> escaping them too, so let's add an extra output parameter to
> strsep_unescaped to make it possible to retrieve the delimiter that was
> ultimately overwritten.
> 
> [...]

Applied, thanks!

[1/2] string: add delimiter output parameter to strsep_unescaped
      https://git.pengutronix.de/cgit/barebox/commit/?id=b6f86a80f0b5 (link may not be stable)
[2/2] test: self: string: add test cases for strsep_unescaped
      https://git.pengutronix.de/cgit/barebox/commit/?id=7c75114a99f2 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



