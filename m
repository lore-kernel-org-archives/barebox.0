Delivery-date: Wed, 03 Jul 2024 10:54:56 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sOvlQ-0017gg-2N
	for lore@lore.pengutronix.de;
	Wed, 03 Jul 2024 10:54:56 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sOvlQ-000831-7N
	for lore@pengutronix.de; Wed, 03 Jul 2024 10:54:56 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=xpEfShYHxPBco1m+JGxWen+SRWFDwf+Bkxw9/g7ej2w=; b=DQp9NNS+grqNckFn7u4NssEqWQ
	ySGanvgaN93PRCO+8w5BIaxw/KyBVYBNsWr8XdNEfQlpjfVwNoWc8hsp71Z8EGoUmw3DzJstEkj14
	/lnuj+YdEe+jD6BuAK+HA62v+lcfgt/Qwotu2Sk+VV108P2J45yUJPnCDDiK8NeA3C+jtiyK5p9WM
	myHgAd/YvDEODoXKPc9EWrTz9SvT8pBZd9BjIFXGH5S7R7261FA9TgpFEXVwP63gDsb+MaMMlbYq9
	r3t//o+s8W9jYK47fw7JX1BH7BJXP9R6FMSbYtB/XlvB9otFlyEVNVju7PmVJ8dxmnPwwQQUHrHx5
	i8/+Z9Og==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sOvkw-00000009UMH-2qs6;
	Wed, 03 Jul 2024 08:54:26 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sOvku-00000009ULe-1R4h
	for barebox@lists.infradead.org;
	Wed, 03 Jul 2024 08:54:25 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sOvkt-0007t9-04; Wed, 03 Jul 2024 10:54:23 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sOvks-006oJP-EE; Wed, 03 Jul 2024 10:54:22 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sOvks-002nO7-1D;
	Wed, 03 Jul 2024 10:54:22 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Antony Pavlov <antonynpavlov@gmail.com>
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240702173159.88071-1-antonynpavlov@gmail.com>
References: <20240702173159.88071-1-antonynpavlov@gmail.com>
Message-Id: <171999686237.666357.3254855032377093756.b4-ty@pengutronix.de>
Date: Wed, 03 Jul 2024 10:54:22 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240703_015424_414063_8E97263E 
X-CRM114-Status: UNSURE (   3.93  )
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
Subject: Re: [PATCH] Documentation: boards: stm32mp: fix DK-1/DK-2 DIP
 switch formatting
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Tue, 02 Jul 2024 20:31:59 +0300, Antony Pavlov wrote:
> 


Applied, thanks!

[1/1] Documentation: boards: stm32mp: fix DK-1/DK-2 DIP switch formatting
      https://git.pengutronix.de/cgit/barebox/commit/?id=7274eef28305 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



