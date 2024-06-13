Delivery-date: Thu, 13 Jun 2024 09:05:09 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sHeWD-005EsI-0v
	for lore@lore.pengutronix.de;
	Thu, 13 Jun 2024 09:05:09 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sHeWC-00045t-O0
	for lore@pengutronix.de; Thu, 13 Jun 2024 09:05:09 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Usaqq3lNF+ydIdvC5ebcelHosRlpwhZE1XtKIqdTZYk=; b=xPJT3XACQ9PMw23tHxqlF552z3
	CcsQEN771bnt/lgNdfygyEeuXefXQrL5lfmp1x18YiWGOAAU4mMYs/lFnqzuj/RyYemQzBhUC3yYo
	YUgvGM7m24lwtBC26G0pm597rpDwgqoXGkBMoYIhEa7h1pq00ZYombF+bwJ+W2Fg1wIl76hUCqW9H
	etjoybQZn05+EqX03kFOx39GzvYNpJeDLYNGfZMlIYjOJqZbxmjnZifGZ/kVRgx2nTewtHOEpVQjC
	UUBE6UXfNQzcFaqvvT0ctxsAQEZEzZ3C7ECsi3+LurmRqyfWrHQ7F13YKuQJ4goFOyqG6tzRy7K/K
	JtThLp2Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sHeVf-0000000FP8I-1yRg;
	Thu, 13 Jun 2024 07:04:35 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sHeVc-0000000FP7a-31lK
	for barebox@lists.infradead.org;
	Thu, 13 Jun 2024 07:04:34 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sHeVb-00042G-0x; Thu, 13 Jun 2024 09:04:31 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sHeVa-001yJD-Kb; Thu, 13 Jun 2024 09:04:30 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sHeVa-00BRL2-1r;
	Thu, 13 Jun 2024 09:04:30 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240612133653.2565305-1-a.fatoum@pengutronix.de>
References: <20240612133653.2565305-1-a.fatoum@pengutronix.de>
Message-Id: <171826227057.2726685.11280548093309340380.b4-ty@pengutronix.de>
Date: Thu, 13 Jun 2024 09:04:30 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240613_000432_797889_D6C33243 
X-CRM114-Status: UNSURE (   6.85  )
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
Subject: Re: [PATCH] Documentation: state: add real-world example for
 stride size calculation
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 12 Jun 2024 15:36:53 +0200, Ahmad Fatoum wrote:
> The usual use of barebox state is to store the bootstate for
> bootchooser. Thus change the example to use the minimum size of the
> bootstate variable set instead and relate the result to stride size and
> partition size.
> 
> 

Applied, thanks!

[1/1] Documentation: state: add real-world example for stride size calculation
      https://git.pengutronix.de/cgit/barebox/commit/?id=4c296e6a556b (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



