Delivery-date: Tue, 22 Apr 2025 12:28:41 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u7Arp-0040vo-02
	for lore@lore.pengutronix.de;
	Tue, 22 Apr 2025 12:28:41 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u7Aro-0001yn-E9
	for lore@pengutronix.de; Tue, 22 Apr 2025 12:28:40 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=enSJlK0YpwaYCrgBBLJumt/WkXUnE3qYPc+rZHMCZY0=; b=CrYs0FxZrbsSs+5xS6MvISRpEn
	VYuwHoTj6F2n6DIuEpM/UeMTPXi0wq0lOWVlsHJfayQKqQWB3wskKuYq+SEOFPU3HBrkOdwY7Z6Yd
	LQey6a3Z2i8AnovE/ceANvPtu/xLIqPHauxBjm7tnRP++K0y/0yRraYSm9t/eedG5Kzr7/QiPQkPs
	nPXh+C0uUzrVHsaMZD585f0xk86Qj+c4gGeUX9O/Ko/gOmM74tGQEDi0PXaCeriFJzDNktMiIPYG5
	Vigw0yiyYcy+7cQClza5h8Sx+EVLLRL3URrvO5I65mcOzzFmX39MUT02bk9lcvjTwtkQ0ynvERLVw
	U/pUcMkg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u7ArO-00000006l2o-0xJT;
	Tue, 22 Apr 2025 10:28:14 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u79q0-00000006Xfj-3o4W
	for barebox@lists.infradead.org;
	Tue, 22 Apr 2025 09:22:46 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1u79pz-00051R-Ih; Tue, 22 Apr 2025 11:22:43 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1u79pz-001Wn4-1F;
	Tue, 22 Apr 2025 11:22:43 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1u79pz-00CeG2-11;
	Tue, 22 Apr 2025 11:22:43 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20250422075538.219560-1-a.fatoum@pengutronix.de>
References: <20250422075538.219560-1-a.fatoum@pengutronix.de>
Message-Id: <174531376331.3014639.17571330736215362898.b4-ty@pengutronix.de>
Date: Tue, 22 Apr 2025 11:22:43 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250422_022244_947207_6297AD23 
X-CRM114-Status: UNSURE (   6.98  )
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
Subject: Re: [PATCH] include: linux/iopoll.h: add optional PBL support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Tue, 22 Apr 2025 09:55:38 +0200, Ahmad Fatoum wrote:
> While we don't have generic clocksource support in PBL, there is no
> reason to not enable read_poll_timeout for use on platforms that have
> their own get_time_ns.
> 
> Allow these platforms to use read_poll_timeout by defining two macros:
> read_pol_is_timeout and read_poll_get_time_ns().
> 
> [...]

Applied, thanks!

[1/1] include: linux/iopoll.h: add optional PBL support
      https://git.pengutronix.de/cgit/barebox/commit/?id=554bbc479c09 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



