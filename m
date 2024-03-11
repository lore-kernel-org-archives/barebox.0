Delivery-date: Mon, 11 Mar 2024 11:46:04 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rjdAS-000ugI-0w
	for lore@lore.pengutronix.de;
	Mon, 11 Mar 2024 11:46:04 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rjdAR-0007GH-Oh
	for lore@pengutronix.de; Mon, 11 Mar 2024 11:46:04 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=A6PRGsSF/ALjazKYBr1WG0caAXFozmk/1u9+60Q7piY=; b=rNiR//xopevu3H6j2//u1t77GU
	UELOf4t4e6gFurUf3FroHygxKPR1ikf+v10l5S2a3Prh/1Mle1+WXQzD1QHsZ8Rwr42vosCKbj2OC
	AF7yewBUICjr+jCvzY8MihrOdYAs6egLDJ1GF9zLRHpAJiQXorr6KA9qVBBqqClz5ogoagDQTmp6m
	9d71ggPhHf+6hbgfrmjCEAoEyuzaq6aCF0z7sesBDzmp2OZpHrE6ezuoXmBAvpxvEidBg2xbrXj7r
	EdwUThTPfxgjMW7Iy9ioyfWcWhfvMHAt2msbQWVgzWAb0BZ9bteSvUJLTMzN9AQ2NLTL3x2Hf8g9K
	RorWnjXg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rjd9u-000000018vT-4BUY;
	Mon, 11 Mar 2024 10:45:31 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rjd9r-000000018tb-08Yo
	for barebox@lists.infradead.org;
	Mon, 11 Mar 2024 10:45:28 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rjd9p-0006kl-Hn; Mon, 11 Mar 2024 11:45:25 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rjd9p-005h6Z-4X; Mon, 11 Mar 2024 11:45:25 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rjd9p-003K7V-0F;
	Mon, 11 Mar 2024 11:45:25 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
In-Reply-To: <20240311080624.1836184-1-s.hauer@pengutronix.de>
References: <20240311080624.1836184-1-s.hauer@pengutronix.de>
Message-Id: <171015392507.792264.4018340144683591566.b4-ty@pengutronix.de>
Date: Mon, 11 Mar 2024 11:45:25 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240311_034527_150536_B8CEEBA9 
X-CRM114-Status: UNSURE (   6.87  )
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
X-Spam-Status: No, score=-5.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] ARM: i.MX93: ele: start TRNG on i.MX93 rev a1
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 11 Mar 2024 09:06:24 +0100, Sascha Hauer wrote:
> On i.MX93 a0 the TRNG seems to be started automatically. On rev a1 it's
> not and OP-TEE panics with "Cannot retrieve random data from ELE". Start
> the TRNG to let OP-TEE startup successfully.
> 
> 

Applied, thanks!

[1/1] ARM: i.MX93: ele: start TRNG on i.MX93 rev a1
      https://git.pengutronix.de/cgit/barebox/commit/?id=d27c50c131e7 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



