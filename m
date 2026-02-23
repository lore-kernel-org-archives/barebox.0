Delivery-date: Mon, 23 Feb 2026 10:12:40 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vuRzb-004mKD-1t
	for lore@lore.pengutronix.de;
	Mon, 23 Feb 2026 10:12:40 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vuRzb-0000Wd-Ui
	for lore@pengutronix.de; Mon, 23 Feb 2026 10:12:40 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=IJF1V5W79Z9I6Jmd6WwaNjF0nMfTJ6evN24lyFNkxNo=; b=Ito5Yp4gMY9wAVMcYGxonZR0x7
	9ALCXXB+q0Nk3n3lAFq5Magijc+wRJpAu+RhwR0fsXCPhWy7ELQHKngnkUj8p09MWPLAjJ+wA4HvX
	h8J8h/DvVGIZrrQJidoirAnCgHyq0r0xNWWemA1VSwKyDa/FMxGpO8NVFInmbA7mSZKRT0WpeWU5y
	zh7AWvtVAjWrucuo+msaiCe07jiiiVnRsBsqrf2rcgnQ7spJnBze877aC6FQJ/EGtyWRvPlgSwUNA
	yojLA1lpbe5BV969gEZy54bBPAhnHLcPWjiZvqPEzTTvp0PGQ3Q6UBqHMWFgQclLgRwVK2FVa/CPT
	x90oFvLQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vuRzF-0000000HVbg-0dwA;
	Mon, 23 Feb 2026 09:12:17 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vuRzD-0000000HVb8-01B8
	for barebox@lists.infradead.org;
	Mon, 23 Feb 2026 09:12:16 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vuRzB-0000N2-Kl; Mon, 23 Feb 2026 10:12:13 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vuRzA-002ChB-0D;
	Mon, 23 Feb 2026 10:12:13 +0100
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vuRzB-00000000nUb-1UCq;
	Mon, 23 Feb 2026 10:12:13 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>, 
 Maud Spierings via B4 Relay <devnull+maud_spierings.hotmail.com@kernel.org>
Cc: Maud Spierings <maud_spierings@hotmail.com>
In-Reply-To: <20260221-riscv_dtbs-v1-1-be58fc118bc2@hotmail.com>
References: <20260221-riscv_dtbs-v1-1-be58fc118bc2@hotmail.com>
Message-Id: <177183793335.190238.3251127691253995043.b4-ty@pengutronix.de>
Date: Mon, 23 Feb 2026 10:12:13 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260223_011215_047686_FE2C878F 
X-CRM114-Status: UNSURE (   5.09  )
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
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] RISC-V: dts: fix generation of dtbs-list
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Sat, 21 Feb 2026 16:04:17 +0100, Maud Spierings via B4 Relay wrote:
> For some reason pbl-$(CONFIG) results in dtbs-list being empty. This breaks
> the generic fit image generation. Switch to lwl-$(CONFIG) like arm.
> 
> 

Applied, thanks!

[1/1] RISC-V: dts: fix generation of dtbs-list
      https://git.pengutronix.de/cgit/barebox/commit/?id=f406d6ef100d (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



