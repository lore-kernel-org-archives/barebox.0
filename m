Delivery-date: Tue, 15 Oct 2024 09:20:13 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t0bqn-004Zcq-2p
	for lore@lore.pengutronix.de;
	Tue, 15 Oct 2024 09:20:13 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t0bqn-0003Gj-Aq
	for lore@pengutronix.de; Tue, 15 Oct 2024 09:20:13 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=MJoVSHpSpqjQVyadmVo6+8yND8YiAts9wgEMajRQGV4=; b=qtRMGh2TzK+1dzFcQcqzOvrBd3
	o5mmDr9kjtpRjtBdrjJTbTNtenPozKDkn38U1GkPVqUFMev4aNlYo0viq3EpyiuUlWT1alsnMDJf0
	h8oAk8G91tJ/LJuqYm4QsrjhTp99c4JVPTnjupQFKu90yo2dGmrX6rXlJeLuRnwt1RhGSTTAi7NoI
	TpJ9SGZ/jc1mVJGNo07M8NeoEsH1mnSA+zdYHj8uB2R0/Y26Z4YgHewim2ezgdyWljD8CJRUY3nBF
	ceSfPQEJqvMC7tNOY4n1C4lSoWggAnOfsVRBsP8tpJBurtpZXQEKKPRzoG1S4cLplCAp1fBB/IPiJ
	wTTggYbQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t0bqI-00000007KMy-3Trz;
	Tue, 15 Oct 2024 07:19:42 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t0bqF-00000007KMf-1UIK
	for barebox@lists.infradead.org;
	Tue, 15 Oct 2024 07:19:40 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t0bqE-0003D8-01; Tue, 15 Oct 2024 09:19:38 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t0bqD-001yY3-Jp; Tue, 15 Oct 2024 09:19:37 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t0bqD-0077Sc-1o;
	Tue, 15 Oct 2024 09:19:37 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20241014115232.2846257-1-a.fatoum@pengutronix.de>
References: <20241014115232.2846257-1-a.fatoum@pengutronix.de>
Message-Id: <172897677756.1696829.17251777747960347183.b4-ty@pengutronix.de>
Date: Tue, 15 Oct 2024 09:19:37 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241015_001939_428145_3114C5EC 
X-CRM114-Status: UNSURE (   6.94  )
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
Subject: Re: [PATCH 1/2] net: r8169: use lower/upper_32_bits for clarity
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 14 Oct 2024 13:52:31 +0200, Ahmad Fatoum wrote:
> No functional difference, but the code is much more readable without the
> casts and shifts.
> 
> Additional benefit is removing the strange use of DMA_BIT_MASK here.
> 
> 

Applied, thanks!

[1/2] net: r8169: use lower/upper_32_bits for clarity
      https://git.pengutronix.de/cgit/barebox/commit/?id=30fab792c340 (link may not be stable)
[2/2] usb: gadget: fix static analysis false positive
      https://git.pengutronix.de/cgit/barebox/commit/?id=9899233fafb9 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



