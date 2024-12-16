Delivery-date: Mon, 16 Dec 2024 09:27:32 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tN6Rv-008kcw-1U
	for lore@lore.pengutronix.de;
	Mon, 16 Dec 2024 09:27:31 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tN6Rv-0000X3-Eu
	for lore@pengutronix.de; Mon, 16 Dec 2024 09:27:31 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=hpuvWdxg4ARrVg8f+HWNozBpTJc0UOdHGJLNKhEqtN0=; b=wh2MFyvwyvQGlsF/3Erg0+ANr+
	2CFBeDwAOW+6rj4NJiLGDeWsndq0NGSn2XLTyDWJHHwfycFpztK4uT01UtDu+ukD3up5ugoI+gSYm
	4dlGi8mfeJY8cVMzNUiY5Xawqpu1shemhwW2kA5loRYYXGorf/vMPVl7AEiUpPgSQI6vv6vGG2Qgz
	MnVJzeRoRjMdvyFcQZTQjoQjy7YYLFGjifsaDv57v+HSHt6nqrynGZxZUk1nhpC9T/OdCcW1w1jo0
	Rs/4VbZ2YsFdFzU9YGbrW1IzsSNZ2YIrMJon2RqaKCCQWAP0DTNnIiMnZVCcOipvXby4pzNCAxMh2
	p0Z3Jcpg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tN6RT-00000009OJY-2tvg;
	Mon, 16 Dec 2024 08:27:03 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tN6RQ-00000009OIU-3XIt
	for barebox@lists.infradead.org;
	Mon, 16 Dec 2024 08:27:02 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tN6RP-0000QV-KI; Mon, 16 Dec 2024 09:26:59 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tN6RO-003f6F-2A;
	Mon, 16 Dec 2024 09:26:59 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tN6RP-006AiY-1E;
	Mon, 16 Dec 2024 09:26:59 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Lucas Stach <dev@lynxeye.de>
In-Reply-To: <20241212221034.210933-1-dev@lynxeye.de>
References: <20241212221034.210933-1-dev@lynxeye.de>
Message-Id: <173433761937.1471065.4452310915197847658.b4-ty@pengutronix.de>
Date: Mon, 16 Dec 2024 09:26:59 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241216_002700_882819_B720A54F 
X-CRM114-Status: UNSURE (   5.95  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/2] mci: sdhci: arasan: use correct input clock for
 divider calculation
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Thu, 12 Dec 2024 23:10:33 +0100, Lucas Stach wrote:
> Use the clock rate going into the core to calculate the divider.
> Fixes broken SD card transfers on Zynq 7000.
> 
> 

Applied, thanks!

[1/2] mci: sdhci: arasan: use correct input clock for divider calculation
      https://git.pengutronix.de/cgit/barebox/commit/?id=b6225b579bbd (link may not be stable)
[2/2] mci: sdhci: arasan: remove dead no 1.8V quirk
      https://git.pengutronix.de/cgit/barebox/commit/?id=72939ae3594d (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



