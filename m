Delivery-date: Mon, 10 Jun 2024 15:24:21 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sGf0X-003hy8-18
	for lore@lore.pengutronix.de;
	Mon, 10 Jun 2024 15:24:21 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sGf0W-0004r1-Qg
	for lore@pengutronix.de; Mon, 10 Jun 2024 15:24:21 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=wpuPQe/7gSfB6kVRNdHGONBY/YMrEgBxO4FXrcr5h4A=; b=lrMkTaWHTDgcugJJc+jGwWm9hw
	pxclt9dMRxIa045QoboeCrOK7OfwizxMEw6UFqoHfeZ0qy68FJayIkphRSyAwBiyoiNk68bm3XVxt
	9ZMRJkiS/BbOhWQO6HLn7QkAxDtkY63whHr798GHz6JHjZPZL4EaSPkcAlIt2E1tWDfYwxpLy/CfQ
	Pa65uTrtRyGu1bDI+HDdoeHahsINtthg1oeparTWR7My1v8f6469EeJvgRbLLwoj2UucRkiInfjlf
	n+waelEiBQoj4m5hjVGwmy0NOZx9PTJWFQuOUxXQNnMWyhw1bOKrT8lkHPKVQPTbbNKZrbWbYvu+I
	7VzpJ4Gw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sGezw-00000005AC9-3v1v;
	Mon, 10 Jun 2024 13:23:44 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sGezu-00000005AAE-03BE
	for barebox@lists.infradead.org;
	Mon, 10 Jun 2024 13:23:43 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sGezs-0004jY-6l; Mon, 10 Jun 2024 15:23:40 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sGezr-001JXA-QW; Mon, 10 Jun 2024 15:23:39 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sGezr-00DisN-2S;
	Mon, 10 Jun 2024 15:23:39 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
In-Reply-To: <20240528200626.1465772-1-s.hauer@pengutronix.de>
References: <20240528200626.1465772-1-s.hauer@pengutronix.de>
Message-Id: <171802581975.3270420.358968537800332281.b4-ty@pengutronix.de>
Date: Mon, 10 Jun 2024 15:23:39 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240610_062342_121110_9FE16506 
X-CRM114-Status: UNSURE (   5.95  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] usb: ulpi: add more ulpi ids
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Tue, 28 May 2024 22:06:26 +0200, Sascha Hauer wrote:
> Update the list of UPLI chips from the kernel.
> 
> 

Applied, thanks!

[1/1] usb: ulpi: add more ulpi ids
      https://git.pengutronix.de/cgit/barebox/commit/?id=d853111ea135 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



