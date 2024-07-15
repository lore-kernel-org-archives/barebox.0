Delivery-date: Mon, 15 Jul 2024 11:08:31 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sTHh9-0052lO-1J
	for lore@lore.pengutronix.de;
	Mon, 15 Jul 2024 11:08:31 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sTHh8-0002os-RO
	for lore@pengutronix.de; Mon, 15 Jul 2024 11:08:31 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=W29XYSWKVuSawiW55c251IXejJbV0BHU8361VmBy4m4=; b=oYrqgQ3D7PLOE1dfOTVnGpvsj6
	ekhUX3oMNo3z2xj3vl93Vukiy0SAPAdKE/h1QVxe7WhMs66U6X3ETvu123zu9YsKBHlgU6A7WzkLy
	79/GFaF+fhC7chWikQniJHorgNB7kosvXJjSVAEYsots8KYOKcrmY//n1+c9onJ2qdF6p3UR39O69
	nMMUsctdKA4k/1hbly1wk4mSaaeUQihXDyBb3RYfV+RC6DNlWuPgtN2d37CUo5tna8Cr8Xu0vlptZ
	7RNNczIbyc3PznpTFKrctGY+lmv56oxpMH7VlWEDmx3P3sc2kBhs5uW4kHhYLTxUgAOkSlQTY4abC
	UEmwXZAw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sTHgh-00000006TNw-2f33;
	Mon, 15 Jul 2024 09:08:03 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sTHgd-00000006TMB-3Ur3
	for barebox@lists.infradead.org;
	Mon, 15 Jul 2024 09:08:01 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sTHgc-0002ch-7o; Mon, 15 Jul 2024 11:07:58 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sTHgb-009fQ2-Qo; Mon, 15 Jul 2024 11:07:57 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sTHgb-007SWL-2S;
	Mon, 15 Jul 2024 11:07:57 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240703185602.683272-1-a.fatoum@pengutronix.de>
References: <20240703185602.683272-1-a.fatoum@pengutronix.de>
Message-Id: <172103447775.1777922.12799503619022357439.b4-ty@pengutronix.de>
Date: Mon, 15 Jul 2024 11:07:57 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240715_020759_903656_D805F651 
X-CRM114-Status: UNSURE (   6.91  )
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
Subject: Re: [PATCH] globalvar: align parameter names in prototype with
 definition
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 03 Jul 2024 20:56:02 +0200, Ahmad Fatoum wrote:
> The prototype disagreed with the definition, possibly confusing users.
> Fix it and while at it, add some missing commas, so the patch diff shows
> the definition in the context.
> 
> 

Applied, thanks!

[1/1] globalvar: align parameter names in prototype with definition
      https://git.pengutronix.de/cgit/barebox/commit/?id=5f23091e0c20 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



