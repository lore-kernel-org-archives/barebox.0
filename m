Delivery-date: Thu, 04 Apr 2024 15:41:10 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rsNL4-009r7L-18
	for lore@lore.pengutronix.de;
	Thu, 04 Apr 2024 15:41:10 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rsNL3-0004ym-O7
	for lore@pengutronix.de; Thu, 04 Apr 2024 15:41:10 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=0NWiVcWCU0xJ+cUxxHo3Z8QQKjsRpOewLw+qw/kQjHA=; b=GCafxPDhgNGxaR7qxxPnHQv3kY
	4mXiOuFWtbtv2CEdGT2eqyLXay/a/nXLvKhWjrezD+ThdApsKUn5p/UNLnAWJ0f6SJnuJYEQURdZ5
	CXmCwq6Q9P0BtqAkvpsDWs17nmW3wY4+mq+DIRDYFLQkNTzQXGjCJQg1vnCDizmjutXZHDPFlITeR
	zwcRNBTh5c0RCdXa8LokPSvBgYY/mcTbcsYwtPPXpGmjEb1Xm0PIGsbUsa9gtWxZIGyxn2pYTyVW/
	DlxoAkfCUodd8w1ze5qXfUY+R4mCnKJ67sIrwW4iMc6dMWbEAVpUtg8DYjtEWOoMPu7AKM4bH+7WH
	EtckOMqQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rsNKS-00000002qpZ-0nrG;
	Thu, 04 Apr 2024 13:40:32 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rsNKO-00000002qp3-19lA
	for barebox@lists.infradead.org;
	Thu, 04 Apr 2024 13:40:30 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rsNKJ-00049T-AJ; Thu, 04 Apr 2024 15:40:23 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rsNKI-00ANxk-Tb; Thu, 04 Apr 2024 15:40:22 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rsNKI-002zMg-2i;
	Thu, 04 Apr 2024 15:40:22 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Marco Felsch <m.felsch@pengutronix.de>
In-Reply-To: <20240313194547.3725723-1-m.felsch@pengutronix.de>
References: <20240313194547.3725723-1-m.felsch@pengutronix.de>
Message-Id: <171223802283.712355.16256604600518618819.b4-ty@pengutronix.de>
Date: Thu, 04 Apr 2024 15:40:22 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240404_064028_349129_987BBFE5 
X-CRM114-Status: UNSURE (   5.33  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/4] string: add isempty helper
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 13 Mar 2024 20:45:44 +0100, Marco Felsch wrote:
> This adds systemd's isempty() helper which can be very handy.
> 
> 

Applied, thanks!

[1/4] string: add isempty helper
      https://git.pengutronix.de/cgit/barebox/commit/?id=815db76bd8c8 (link may not be stable)
[2/4] common: env: make use of isempty()
      https://git.pengutronix.de/cgit/barebox/commit/?id=f681d1c0ebd0 (link may not be stable)
[3/4] common: hostname: validate the provided hostname
      https://git.pengutronix.de/cgit/barebox/commit/?id=e0d5d8bf9a81 (link may not be stable)
[4/4] bootm: add global.bootm.provide_hostname option
      https://git.pengutronix.de/cgit/barebox/commit/?id=c1bb8f33009e (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



