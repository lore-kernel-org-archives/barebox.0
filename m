Delivery-date: Thu, 08 May 2025 09:41:43 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uCvt1-003OI3-2P
	for lore@lore.pengutronix.de;
	Thu, 08 May 2025 09:41:43 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uCvt1-0000VM-5d
	for lore@pengutronix.de; Thu, 08 May 2025 09:41:43 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=gkwR3JKVTWhtzYfk5NMDumzhNYbXk+cweCGG07Kzs8Q=; b=LspgyOgPn1koAhYR8jiwqvB3UB
	sjt3xa83FBtyddiKL61XeNemGEQ2SXzYnXvWNQ6y8AXddnxrVUQwadsDQtrLii738lmm/G//l/ARB
	/ULUCadEGJzPVrBWFkuXK+EnlsxIcclVTfI4u/3A1W4eqb4S/o57EXh+8MH/1qyEYKf2L3bEAGG9R
	s7cfJ5sn274QCy7vFj2NY0ZFr33YUPmyV0dWdhojzKfYDHSDZAxaHWrZQ+55T1cUxtYPmDINNnAjL
	E8Rau1iPh8QJxi+3chl+tA7dIcY4jY54mxn+Bqjyha/MBH2cCcrrbFdcXSE/HzefKMB/Z/0NLtWbI
	DPnE9vLQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uCvsb-000000001d6-3c3R;
	Thu, 08 May 2025 07:41:17 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uCvqI-000000001JM-2ts4
	for barebox@lists.infradead.org;
	Thu, 08 May 2025 07:38:56 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uCvqH-0008EX-CP; Thu, 08 May 2025 09:38:53 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uCvqH-001gnp-0b;
	Thu, 08 May 2025 09:38:53 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uCvqH-00B0qI-0N;
	Thu, 08 May 2025 09:38:53 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: fpg@pengutronix.de
In-Reply-To: <20250506102147.3547357-1-a.fatoum@pengutronix.de>
References: <20250506102147.3547357-1-a.fatoum@pengutronix.de>
Message-Id: <174668993311.2624799.9128264018747298462.b4-ty@pengutronix.de>
Date: Thu, 08 May 2025 09:38:53 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250508_003854_730221_939ABB58 
X-CRM114-Status: UNSURE (   6.93  )
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
X-Spam-Status: No, score=-5.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] usb: misc: rename USB onboard hub support to onboard
 device
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Tue, 06 May 2025 12:21:47 +0200, Ahmad Fatoum wrote:
> There is nothing hub-specific about the driver and Linux has already
> renamed it to reflect its use with USB devices in general, so follow
> suit in barebox.
> 
> 

Applied, thanks!

[1/1] usb: misc: rename USB onboard hub support to onboard device
      https://git.pengutronix.de/cgit/barebox/commit/?id=fc9d823907a3 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



