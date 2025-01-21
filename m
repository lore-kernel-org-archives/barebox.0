Delivery-date: Tue, 21 Jan 2025 09:56:13 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1taA3Q-002aKy-2v
	for lore@lore.pengutronix.de;
	Tue, 21 Jan 2025 09:56:13 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1taA3R-0005j6-2Q
	for lore@pengutronix.de; Tue, 21 Jan 2025 09:56:13 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ZIEreKVZH35a8QUT1Kd/oWL9iajIQnpZNfCWGxTLJtI=; b=LstCMlf6O8mVxQv7vUovgi20Fd
	utRlGGxXZOu2l18pTrhQxyoX0kMdi1qS71/sWEQi6eNVVzuVOYZOnqjLqGwCEQz3HervIBPiWDflV
	4yHLpwa/hU1ZLhiPYgvAdRcO29zwCyHSRuP6wxNvsD9uGZ1f8/FI53XhlnXmIFH6m7hoC02S0BUQG
	isbJKwfGyavC6lE/BEfDMMVNVtrjdvAGdDLZhfuMcxgDezwpAIjoO6wrQjFyRs73Bu2EC6d3NSyVE
	q4poT4P8DoE/BrqnzovFItNd9xI1x4oDXORPlPE4g1/nIMI3w0cwx9jXx4PyXXAr1ykfl+Z8Klu0Z
	T+m3qpTw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1taA34-00000007Kb6-2Sin;
	Tue, 21 Jan 2025 08:55:50 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1taA0J-00000007JvS-0S5Y
	for barebox@lists.infradead.org;
	Tue, 21 Jan 2025 08:53:00 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1taA0H-0004vO-NP; Tue, 21 Jan 2025 09:52:57 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1taA0H-0014u5-1h;
	Tue, 21 Jan 2025 09:52:57 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1taA0H-00154n-1V;
	Tue, 21 Jan 2025 09:52:57 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: bst@pengutronix.de
In-Reply-To: <20241021175507.3529332-1-a.fatoum@pengutronix.de>
References: <20241021175507.3529332-1-a.fatoum@pengutronix.de>
Message-Id: <173744957746.257772.4895739225406719260.b4-ty@pengutronix.de>
Date: Tue, 21 Jan 2025 09:52:57 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250121_005259_150929_32F40736 
X-CRM114-Status: UNSURE (   8.10  )
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
X-Spam-Status: No, score=-6.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] startup: add new AUTOBOOT_HALT state
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 21 Oct 2024 19:55:07 +0200, Ahmad Fatoum wrote:
> To make the barebox shell more convenient to use, barebox executes some
> actions only when dropping to an interactive shell:
> 
>   - If dropping due to global.autoboot=abort, all watchdogs are
>     automatically quiesced
>   - In every case, network interfaces are brought up, so link
>     negotiation happens in parallel to waiting for user input
> 
> [...]

Applied, thanks!

[1/1] startup: add new AUTOBOOT_HALT state
      https://git.pengutronix.de/cgit/barebox/commit/?id=1ad08b351b5c (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



