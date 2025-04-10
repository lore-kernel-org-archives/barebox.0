Delivery-date: Thu, 10 Apr 2025 10:05:17 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u2muT-00AkWU-09
	for lore@lore.pengutronix.de;
	Thu, 10 Apr 2025 10:05:17 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u2muS-0000nQ-Gy
	for lore@pengutronix.de; Thu, 10 Apr 2025 10:05:16 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=91m03o8ga40d2Gc8T0ZuTnS2NAgoz9sBVM9s7yqMvm0=; b=J9XRZYtPedlmAa6/pZBOyZPaeu
	ZL3U9Ggtg2g5VC5XG7Q1iFYhp9xQxAkAChQA4KcVbs9RzzJ5uQPozqqVghumqERGeZgwbi3ptioBt
	fOpjauSTOaDtfUb/MA0uhnEJpUkKDK2fGhOHUdHQxbOmSVDAUFKfiUjpnGnK7Fm54/DLhRyY87sRI
	0NgFb1wq86kEu8DIxHObayBnjsddP2ef/N/gg+t86ZTF6Nz4s+JkTarY9EyX/4g5sSV97/mse+Wyd
	772isqJ8RIaAFy3g7ps0MXOc5TcTRXdrVJxjdA+Lftxn/xzz5P+ItecR+tUEnpJuT7Ttdnr3NCEfd
	C2VAIYfw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u2mtX-00000009fGp-3gCs;
	Thu, 10 Apr 2025 08:04:19 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u2mJK-00000009Y1g-1IJe
	for barebox@lists.infradead.org;
	Thu, 10 Apr 2025 07:26:55 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1u2mJJ-0001Oj-3T; Thu, 10 Apr 2025 09:26:53 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1u2mJI-004EQi-2V;
	Thu, 10 Apr 2025 09:26:52 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1u2mJI-008Z1F-2H;
	Thu, 10 Apr 2025 09:26:52 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, 
 Alexander Shiyan <eagle.alexander923@gmail.com>
In-Reply-To: <20250408083840.72085-1-eagle.alexander923@gmail.com>
References: <20250408083840.72085-1-eagle.alexander923@gmail.com>
Message-Id: <174427001270.2041111.7133469371091951549.b4-ty@pengutronix.de>
Date: Thu, 10 Apr 2025 09:26:52 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250410_002654_350049_C6CDEABC 
X-CRM114-Status: UNSURE (   4.05  )
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
X-Spam-Status: No, score=-5.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] firmware: .gitignore: Add *.sum generated file
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Tue, 08 Apr 2025 11:38:40 +0300, Alexander Shiyan wrote:
> 


Applied, thanks!

[1/1] firmware: .gitignore: Add *.sum generated file
      https://git.pengutronix.de/cgit/barebox/commit/?id=af0c749abf34 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



