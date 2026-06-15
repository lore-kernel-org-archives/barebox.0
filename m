Delivery-date: Mon, 15 Jun 2026 09:52:02 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wZ270-0063wo-2b
	for lore@lore.pengutronix.de;
	Mon, 15 Jun 2026 09:52:02 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wZ270-0005s2-3H
	for lore@pengutronix.de; Mon, 15 Jun 2026 09:52:02 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=gue2VMq9bo+tAwdvoy+RIotgF6tjRjiCcf3ttQfFyp0=; b=Uk9EjOtPAIDztYtCywwSiOJgUV
	FG8nniRykuyqQIacTXHWqtLp5vMNQQdGcZKm5l6orUOYHkkKre13CxwONf88t/atbdpMNtsnYTyo4
	A5FGeFcwAzVo+PQ/c2UxIz2+BhP+nHCPfIYeMQXMtT/8eUeOZkZ8AuByB4i7inhCfhqyNlDzjRmG0
	BKHXvnRTrfXfxg8YcbPzort4Wm5N3DXO7PeZ1Ge4OcICQSl5vVxOpzvj9V9KUZLFwMb5HqQzpjTJ/
	8n2SaWscQDPC2ekUZf+KPMHsWjDcsMrv/K2omCM5QUvCMVrpZ70O/SPiZoB5LMGXJoKvX6oITQIbf
	pfi/Gsug==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wZ25y-0000000Dolq-1ILD;
	Mon, 15 Jun 2026 07:50:58 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wZ25v-0000000DolY-3Y95
	for barebox@lists.infradead.org;
	Mon, 15 Jun 2026 07:50:57 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wZ25u-0005Z5-F3; Mon, 15 Jun 2026 09:50:54 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wZ25u-002pJd-1K;
	Mon, 15 Jun 2026 09:50:54 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wZ25u-0000000D2Fr-1Tgl;
	Mon, 15 Jun 2026 09:50:54 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Lucas Stach <l.stach@pengutronix.de>
In-Reply-To: <20260611112115.670073-1-l.stach@pengutronix.de>
References: <20260611112115.670073-1-l.stach@pengutronix.de>
Message-Id: <178150985434.3106888.11453529007371045252.b4-ty@pengutronix.de>
Date: Mon, 15 Jun 2026 09:50:54 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260615_005055_888124_2CBCE07A 
X-CRM114-Status: UNSURE (   7.06  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/6] mfd: rn5t568: rename to rn5t618
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Thu, 11 Jun 2026 13:21:10 +0200, Lucas Stach wrote:
> For unclear reasons the driver is based on the Linux rn5t618 driver,
> but has been added to Barebox under a different name. To avoid
> confusion sync the name with the Linux driver.
> 
> 

Applied, thanks!

[1/6] mfd: rn5t568: rename to rn5t618
      https://git.pengutronix.de/cgit/barebox/commit/?id=01bfade80406 (link may not be stable)
[2/6] mfd: rn5t618: use defined compatibles
      https://git.pengutronix.de/cgit/barebox/commit/?id=950031d3915d (link may not be stable)
[3/6] mfd: rn5t618: demote probe message to debug level
      https://git.pengutronix.de/cgit/barebox/commit/?id=a41b38a880f4 (link may not be stable)
[4/6] mfd: rn5t618: wait a bit after triggering restart
      https://git.pengutronix.de/cgit/barebox/commit/?id=8436a10f415d (link may not be stable)
[5/6] watchdog: RN568: rename to rn5t618
      https://git.pengutronix.de/cgit/barebox/commit/?id=79db4ccfa736 (link may not be stable)
[6/6] rn5t618: mfd/watchdog: switch to mfd device population
      https://git.pengutronix.de/cgit/barebox/commit/?id=3e562fe2cac8 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



