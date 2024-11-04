Delivery-date: Mon, 04 Nov 2024 12:36:14 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t7vNV-004j5d-0p
	for lore@lore.pengutronix.de;
	Mon, 04 Nov 2024 12:36:14 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t7vNV-0005GR-S9
	for lore@pengutronix.de; Mon, 04 Nov 2024 12:36:14 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Mnrh9Zxm8wmrZydXpYCFlVx4ap5eIaRcnSn5FGpGwYU=; b=CXJnvRu1089Pf+wTzo6CvYAq+m
	6Ucou3H5/VEl9DW5tDw5TOyFnxhBrybdl9mPu4Z70j8sQbtVDC0QmcRkzG6LiS0VfZWc8AzH5czZw
	5pUg5xorhzq9Sti0+ubaR70W4cJXYajSt9wC/+kA9I7cuZRYkF6YT5zsex/QMJ8P7fd0OQ8nDnjaQ
	trbqUvVpaElUMDEv7dtp7NwLGxQChPS9gZtc5dfdPzJkYq6krBDeh8+JgQYraQnSfPk7Ngap/fQ2r
	EvYamHprUUOEuMha+QWTWlZn6P4iPe7yJnZfPyBOcnwHEAnxFhyGXhkqitKw9C5CcocFwSr/pGv46
	zoHoUVMg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t7vMr-0000000DYGM-1DYT;
	Mon, 04 Nov 2024 11:35:33 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t7vE0-0000000DVih-3LOA
	for barebox@bombadil.infradead.org;
	Mon, 04 Nov 2024 11:26:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:From:Sender:
	Reply-To:Cc:Content-ID:Content-Description;
	bh=Mnrh9Zxm8wmrZydXpYCFlVx4ap5eIaRcnSn5FGpGwYU=; b=gOHbdBtxk/U4BwVV2WIo+kIRzr
	/oalxHNuzbqUZbhkqQH7IfhoTU14FJoBTj85Y3EmvVdR5lRgctWpS6ApIOApoWqq8LuyC463ImDsp
	yMUaFR+hGjLlk68+oQ2Qhxs4l8z3rsFwCf3xbKPJEZmP0g8LC3GCjwJetIjQhZj/oLLnslnNfMLm4
	CpB004Yxr6OV79cs9JA9V0l7UAhGRPbtDk7KwKOM38WnMjQfmRAQeuOqxtuoEn6cy8T/2Vs/zSEwt
	M9Xf1dWiCCoe0ZNBfYRkuzX5tPXe1Sx1Cbdp8wJv/XKvvoX6gYC6xVkzNyvlMvfCR36Kt5m/jUwzt
	VVYWGwug==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t7vDx-0000000BJGR-26SO
	for barebox@lists.infradead.org;
	Mon, 04 Nov 2024 11:26:23 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t7vDw-0003BQ-QM; Mon, 04 Nov 2024 12:26:20 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t7vDw-001yD8-1z;
	Mon, 04 Nov 2024 12:26:20 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t7vDw-00GO3G-1o;
	Mon, 04 Nov 2024 12:26:20 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, 
 Alexander Shiyan <eagle.alexander923@gmail.com>
In-Reply-To: <20241030100903.102258-1-eagle.alexander923@gmail.com>
References: <20241030100903.102258-1-eagle.alexander923@gmail.com>
Message-Id: <173071958056.3905670.17219367658928786543.b4-ty@pengutronix.de>
Date: Mon, 04 Nov 2024 12:26:20 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241104_112621_703670_31D52304 
X-CRM114-Status: UNSURE (   5.94  )
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
Subject: Re: [PATCH] scripts/.gitignore: Add generated mkimage to
 .gitignore
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 30 Oct 2024 13:09:03 +0300, Alexander Shiyan wrote:
> 


Applied, thanks!

[1/1] scripts/.gitignore: Add generated mkimage to .gitignore
      https://git.pengutronix.de/cgit/barebox/commit/?id=fddd85cfa711 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



