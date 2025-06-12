Delivery-date: Thu, 12 Jun 2025 15:21:41 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uPhsD-006WQI-1U
	for lore@lore.pengutronix.de;
	Thu, 12 Jun 2025 15:21:41 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uPhsC-0005vr-UM
	for lore@pengutronix.de; Thu, 12 Jun 2025 15:21:41 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=KWPdfcf8nPLJ7FDYA+fc7spFyJCufCx8mMcSFWmEIiM=; b=rlgWyVH+eMmz8xF8FLF6ISZUp7
	zixDUUeNV17dU5D8jj+dLzxIk17mNObD1H9VauCG1EomphD+MZ7NR+YO2KXjD15n4Z8Qb9959SI32
	1wiaFnkzK5ZGbomTfP6SFT7stn4/UUBz1aLdDW0U09PmpTQuvtxudcgIs4gh13i81Mh0pBP74o8w2
	Hrex23SA2bCmlqzpTDpgURwvWkV8sXd8XHGxpnB0O71Yp+oWoLy2r/0HkeWAXRdbFYmfk+MII6jiN
	JeS4rFIE+PXUEbIdaeTu5Qs7aY7eYbwc6GaZ6585lR3A1q1jhCVt8rj8a8+7lF+UAxaBKKjZhjwFp
	UVX7rwqw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uPhrn-0000000DQ6W-0lu4;
	Thu, 12 Jun 2025 13:21:15 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uPhMT-0000000DIm4-1T98
	for barebox@lists.infradead.org;
	Thu, 12 Jun 2025 12:48:54 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uPhMQ-0005Rs-Os; Thu, 12 Jun 2025 14:48:50 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uPhMQ-0037nU-1s;
	Thu, 12 Jun 2025 14:48:50 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uPhMQ-008tAZ-1b;
	Thu, 12 Jun 2025 14:48:50 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Roland Hieber <rhi@pengutronix.de>
In-Reply-To: <20250612085234.2111792-1-rhi@pengutronix.de>
References: <20250612085234.2111792-1-rhi@pengutronix.de>
Message-Id: <174973253048.2117976.11598816937172295211.b4-ty@pengutronix.de>
Date: Thu, 12 Jun 2025 14:48:50 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250612_054853_389412_E0391B9C 
X-CRM114-Status: UNSURE (   6.44  )
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
Subject: Re: [PATCH 1/2] Documentation: use https:// URLs for
 git.pengutronix.de
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Thu, 12 Jun 2025 10:52:33 +0200, Roland Hieber wrote:
> The git:// protocol has been disabled on git.pengutronix.de to shed load
> caused by noncompliant AI scrapers. Use the https:// protocol instead.
> 
> 

Applied, thanks!

[1/2] Documentation: use https:// URLs for git.pengutronix.de
      (no commit info)
[2/2] Documentation: use https URLs for GitHub
      https://git.pengutronix.de/cgit/barebox/commit/?id=340e930140e7 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



