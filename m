Delivery-date: Thu, 20 Nov 2025 08:25:16 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vLz2a-002vmZ-29
	for lore@lore.pengutronix.de;
	Thu, 20 Nov 2025 08:25:16 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vLz2a-0004Fx-3l
	for lore@pengutronix.de; Thu, 20 Nov 2025 08:25:16 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=hj/BEq/sX2VWhoXV4MdZ/s6k1dV3M68wSyPFSSNuc48=; b=N7GrOJ2yrNly/bZIOg0fpG6FzQ
	oPVIBsaTEpkJCypEGdyS+17e03FlgJRYmYgH8rWWtYtskKYTo4dS1kkm7uRhnT1IqK/SzveFHRSIL
	4ekaU6Tnlvk9TJXNNX7l/wKiMhy3WVCz2OKYtrZO6aHKp46yYcV7o8uvni7E7145Q6OQWzfnM1Z4k
	1PLBeZuyWle6447Om/gq5JPuCd1W8Z9aY65rNG0Jyn3bNSKppn9j3ux+SHDsiLUGVXcRjVlb3Ghe5
	9ZqF/F3urSIATIDjJkw6W6bbIwKNo+tMJ21P6mMB9LlacDgYv9KGARyOOLFgAlCUhtvHYmGJbPFBA
	9fqvu2Qg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vLz1u-00000006IDd-45CR;
	Thu, 20 Nov 2025 07:24:34 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vLz1s-00000006ID8-2yFc
	for barebox@lists.infradead.org;
	Thu, 20 Nov 2025 07:24:34 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vLz1q-0004Bc-Jr; Thu, 20 Nov 2025 08:24:30 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vLz1q-001Nax-1K;
	Thu, 20 Nov 2025 08:24:30 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vLz1q-00000006viU-3Hox;
	Thu, 20 Nov 2025 08:24:30 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, 
 Alexander Shiyan <eagle.alexander923@gmail.com>
In-Reply-To: <20251119180244.929929-1-eagle.alexander923@gmail.com>
References: <20251119180244.929929-1-eagle.alexander923@gmail.com>
Message-Id: <176362347032.1651800.6124426066251546908.b4-ty@pengutronix.de>
Date: Thu, 20 Nov 2025 08:24:30 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251119_232432_749105_6D75B8E9 
X-CRM114-Status: UNSURE (   5.67  )
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
Subject: Re: [PATCH] commands: truncate: improve help text clarity
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 19 Nov 2025 21:02:44 +0300, Alexander Shiyan wrote:
> Improve truncate command help text by fixing grammatical issues and
> making the description clearer, especially for non-native speakers.
> 
> 

Applied, thanks!

[1/1] commands: truncate: improve help text clarity
      https://git.pengutronix.de/cgit/barebox/commit/?id=07c608c3e34f (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



