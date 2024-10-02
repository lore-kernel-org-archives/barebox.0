Delivery-date: Wed, 02 Oct 2024 14:04:52 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1svy67-005McG-2M
	for lore@lore.pengutronix.de;
	Wed, 02 Oct 2024 14:04:52 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1svy68-0002LH-8O
	for lore@pengutronix.de; Wed, 02 Oct 2024 14:04:52 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=QR/+f+4qpq02wsHYCt/Q+bWyRT3H7x2EB34VKL4+mc4=; b=J61xSNv31k9+QHSVlZpn/1FMNf
	/gKihBV8p8DYjBrzVKtRNGRWfBNKRffm44Bmck3CRBWnofhuJ5xbw4YJC+QxdVUHaGOjpLhTDGZXO
	WlrDIuJxz9UAvJZ7O5kwYrzKbOVUsuIRjtT2wpRxQIshZ1GK4HjCXVFfo5QOYo3fjMESyVSGcCVEk
	TnBgbj0wPaibyYCryaioP/FAdxZFnJI2z0f9Z6n26ehVQ8HKg2MWdPu+qTAB/x16TSdFRXRys8Hzz
	9b/QTvKDu46jCbzUNzC5/Yp1dTrCfRNDjTyxClil9KQBNbSxcGkuQe/b3WB/k3dWA3oz8OPkwlcKJ
	booxrezQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1svy5f-00000005mPz-2bsc;
	Wed, 02 Oct 2024 12:04:23 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1svy1T-00000005lA3-1dYD
	for barebox@lists.infradead.org;
	Wed, 02 Oct 2024 12:00:04 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1svy1R-0001JK-TK; Wed, 02 Oct 2024 14:00:01 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1svy1R-0036LU-Ge; Wed, 02 Oct 2024 14:00:01 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1svy1R-008zLg-1T;
	Wed, 02 Oct 2024 14:00:01 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
In-Reply-To: <20241001064720.3890312-1-s.hauer@pengutronix.de>
References: <20241001064720.3890312-1-s.hauer@pengutronix.de>
Message-Id: <172787040145.2141874.11457754892627640053.b4-ty@pengutronix.de>
Date: Wed, 02 Oct 2024 14:00:01 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241002_050003_470559_BE8EC094 
X-CRM114-Status: UNSURE (   6.29  )
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
Subject: Re: [PATCH] fbconsole: implement panel orientation support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Tue, 01 Oct 2024 08:47:20 +0200, Sascha Hauer wrote:
> This adds a fbconsolex.orientation property to rotate the console
> by 90, 180 or 270 degrees in case the panel is not natively oriented.
> 
> 

Applied, thanks!

[1/1] fbconsole: implement panel orientation support
      https://git.pengutronix.de/cgit/barebox/commit/?id=3b76d0a648d8 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



