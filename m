Delivery-date: Mon, 15 Jul 2024 11:09:49 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sTHiP-0052mG-0W
	for lore@lore.pengutronix.de;
	Mon, 15 Jul 2024 11:09:49 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sTHiO-0002vR-JS
	for lore@pengutronix.de; Mon, 15 Jul 2024 11:09:49 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=7PjY71L7o/iDjJAYq4kzZAw1XnuxCPWuKuOtPrr3EO0=; b=QluSoVKe8dixpMF8veWnlJ8N5H
	qmlyGECCNazap3kkAsR4uoPzygjwxkuLigaabaak3MVPC8dfRNhsYlo1+klRPxA0kehgNc5ayhdu1
	OMQDCpnrbmD3BeCuWSMr/i3isCTR+fHfRh09y29fGhc35NtEPsiOGturKxYW+oS9DDv2/CdDOL1dh
	wyxc/GEvV2VTC7ynqbGJkMHh1m/B1DC+AWlTJiwfut/Hx5MP6aeC7RmGqGarob4bxMaN+t14yb0mz
	7cPkgAJtaex97pRRIg+akRE/KOUAxEhg8z7PFU39Hm7oGCJYJE0A9N4xmHmoOAnPNH2PphQmjzW5b
	Kv51ETWw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sTHhu-00000006Tdy-47wo;
	Mon, 15 Jul 2024 09:09:18 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sTHhp-00000006TdZ-2oLA
	for barebox@lists.infradead.org;
	Mon, 15 Jul 2024 09:09:17 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sTHho-0002sg-Gw; Mon, 15 Jul 2024 11:09:12 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sTHho-009fQC-3u; Mon, 15 Jul 2024 11:09:12 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sTHho-007SbZ-0A;
	Mon, 15 Jul 2024 11:09:12 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>, 
 Marco Felsch <m.felsch@pengutronix.de>
In-Reply-To: <20240703-v2024-05-0-topic-hab-v2-0-17419aa5d3a3@pengutronix.de>
References: <20240703-v2024-05-0-topic-hab-v2-0-17419aa5d3a3@pengutronix.de>
Message-Id: <172103455204.1778242.16442743058364272381.b4-ty@pengutronix.de>
Date: Mon, 15 Jul 2024 11:09:12 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240715_020915_729984_4DC80144 
X-CRM114-Status: UNSURE (   7.84  )
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
Subject: Re: (subset) [PATCH v2 0/9] i.MX8M HAB and OCOTP additions and
 fixes
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 03 Jul 2024 19:20:17 +0200, Marco Felsch wrote:
> this fixes the HABv4 locking on i.MX8M devices and add additional
> features like:
>  - key revocation
>  - field-return burning
>  - additional security related fuse defintions
> 
> Changes in v2:
> - Link to v1: https://lore.barebox.org/barebox/Zmv2KyQq3ACxksc_@pengutronix.de/
> - adapt patch-1 commit message
> - make use of 'bool permanent' parameter instead of introducing new
>   IMX_SRK_* flags.
> 
> [...]

Applied, thanks!

[1/9] i.MX: HABv4: fix SRK_LOCK for i.MX8M devices
      https://git.pengutronix.de/cgit/barebox/commit/?id=2f5856ee7ea9 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



