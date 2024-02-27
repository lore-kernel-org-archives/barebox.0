Delivery-date: Tue, 27 Feb 2024 08:14:07 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rerfD-009zcI-13
	for lore@lore.pengutronix.de;
	Tue, 27 Feb 2024 08:14:07 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rerfC-0001rH-QU
	for lore@pengutronix.de; Tue, 27 Feb 2024 08:14:07 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=2PBbMfgoC4YxpBGGC+5nBAtYs576u/gZRuSfb90G0EY=; b=spfccwZza2t0WYsjVOLiQnWHLt
	oChOTxKb4jJz56uZ4+hkp3vHzrtEwuU6wZYUqGWqvCS4P7c/ASrltkOLRe4mMjs2ayChfp4JsB4tO
	5r56MyM/PVEwGFGc5ZamuiPT5chqCbVi061Ip+SqNtrMvFIt/VbgZU7dGDTTaXmHScIql1NCOxFAD
	7no0AU5otXUaokUf2nPVQVJ70R4Mig5XDvKyBTmVYvsn4J/dDdA6GxFMMf+K0BuAV88oN1Fb481Oy
	lQf2JA+cx/b7pbtc/KsQNSowZQbVRAshd+I8xaUHN8XiRQ9NNux2AHYiD9lNRrDNxLWmrSTEffzqn
	XZNxWa1Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rereN-000000045Kl-1Xif;
	Tue, 27 Feb 2024 07:13:15 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rereF-000000045He-0JEw
	for barebox@lists.infradead.org;
	Tue, 27 Feb 2024 07:13:13 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rereC-0001l0-1H; Tue, 27 Feb 2024 08:13:04 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rereB-0038qj-Kr; Tue, 27 Feb 2024 08:13:03 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rereB-00GEQK-1t;
	Tue, 27 Feb 2024 08:13:03 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
In-Reply-To: <20240226153117.743128-1-s.hauer@pengutronix.de>
References: <20240226153117.743128-1-s.hauer@pengutronix.de>
Message-Id: <170901798358.3868585.6808741094970991463.b4-ty@pengutronix.de>
Date: Tue, 27 Feb 2024 08:13:03 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240226_231307_152516_A7C4F97E 
X-CRM114-Status: UNSURE (   6.81  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] ARM: i.MX: move barebox,bootsource-mmc aliases to
 chosen node
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 26 Feb 2024 16:31:17 +0100, Sascha Hauer wrote:
> The barebox,bootsource-* properties are looked for in /chosen, not in
> /aliases. Move the properties to the correct node.
> 
> 

Applied, thanks!

[1/1] ARM: i.MX: move barebox,bootsource-mmc aliases to chosen node
      https://git.pengutronix.de/cgit/barebox/commit/?id=0b2848e757ae (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



