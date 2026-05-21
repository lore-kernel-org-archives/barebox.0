Delivery-date: Thu, 21 May 2026 13:42:32 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wQ1nM-002DsH-2D
	for lore@lore.pengutronix.de;
	Thu, 21 May 2026 13:42:32 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wQ1nM-0007f3-2A
	for lore@pengutronix.de; Thu, 21 May 2026 13:42:32 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=9WvoqMHIqnwU2Pd81JARm2H6OmxTO4XyOJn+h90Vzjs=; b=GYZ58uukGS1UpqtAWubtrmh61R
	xqsb+I1W+gzmXik+kOwetm4nekujH8714qaOWazhhJ5flpAuxftAC6uIpubj1iOhSGnKVFGKH8lzv
	6vrgDbY/qypPNK8LzrSJuDFgMnBImVL90V+Sc1MDUS4SCZVzdKrWKm2FtWweU5mq+fk3huyG4NJAQ
	onJHWWoS9c9fn0/2xZ3eWFY9Et9BvPWel6JI/8+6pNT+RP/SRdh4qHfcI80FrxbH+qCqEg0H1ZkYI
	+WsYcpz49WgVZFJCJDMnHJkLlvpNzogJ2vjIbeYDRYATFmaaLjyasC081nc3cazRvh+EQTO2sdzMX
	+OgGTQrQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wQ1m0-00000007d9a-25hk;
	Thu, 21 May 2026 11:41:08 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wQ1lx-00000007d8h-3m9A
	for barebox@lists.infradead.org;
	Thu, 21 May 2026 11:41:07 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wQ1lv-0007U3-HP; Thu, 21 May 2026 13:41:03 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wQ1lu-00162n-2y;
	Thu, 21 May 2026 13:41:03 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wQ1lv-0000000F61m-1kMM;
	Thu, 21 May 2026 13:41:03 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20260519055440.4116589-1-a.fatoum@pengutronix.de>
References: <20260519055440.4116589-1-a.fatoum@pengutronix.de>
Message-Id: <177936366341.3597260.8890098982259049883.b4-ty@pengutronix.de>
Date: Thu, 21 May 2026 13:41:03 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260521_044105_942673_9D1E3A55 
X-CRM114-Status: UNSURE (   7.11  )
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
Subject: Re: [PATCH] serial: ns16550: fall back to using uart8250/ttyS as
 Linux console names
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Tue, 19 May 2026 07:53:40 +0200, Ahmad Fatoum wrote:
> Most Linux drivers use the same names, so make them the default and only
> list differing ones in the different ns16550_drvdata.
> 
> This also ensures, we don't end up with <NULL> formatted into the kernel
> command-line by mistake.
> 
> 
> [...]

Applied, thanks!

[1/1] serial: ns16550: fall back to using uart8250/ttyS as Linux console names
      https://git.pengutronix.de/cgit/barebox/commit/?id=b9a93a4497bf (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



