Delivery-date: Mon, 15 Dec 2025 08:25:53 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vV2xt-00Bewi-2H
	for lore@lore.pengutronix.de;
	Mon, 15 Dec 2025 08:25:53 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vV2xt-00025l-5y
	for lore@pengutronix.de; Mon, 15 Dec 2025 08:25:53 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=VjtH8AAHSaDarVqmoZ6qb8DET+n8Ahm55e4VLHI7sjI=; b=WhdRcHIOXZVr8NQmMWf9tyrd1I
	zZQSqQjXsUmBO8PDbqjrnGexSJcp2Nm+U35SZyhH0/K2u39+7l6MGUJF9UTZphd9icdGEDeoKipeA
	gTYdWyjMLZG8MWR5J93x2lGdLoTVJ4GhJlpXyGSLq/3lP0kgCgsBUD4xtPiOGbcrXf8M6rgK9U8y4
	6S/3tVd/OyYh14wS/6kak4+i1mSGwK8Pvwlr56ceNQDT/0Vn7xsaCNNOPQKm5OZR1koQSRaJhwGwG
	qzIF3KToooR3AWa1Ipbyx/4B/p1frnzBB34tcKMzqQf0bpVTsVAEpofrVotK9y/mkN7X5Ra/bR/r3
	TH+8ltow==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vV2x8-00000003CJ2-0T5X;
	Mon, 15 Dec 2025 07:25:06 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vV2x5-00000003CIT-0Uau
	for barebox@lists.infradead.org;
	Mon, 15 Dec 2025 07:25:04 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vV2x3-0001wZ-Hu; Mon, 15 Dec 2025 08:25:01 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vV2x3-005k31-1B;
	Mon, 15 Dec 2025 08:25:01 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vV2x3-000000011JY-1HTM;
	Mon, 15 Dec 2025 08:25:01 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20251211193315.3927292-1-a.fatoum@pengutronix.de>
References: <20251211193315.3927292-1-a.fatoum@pengutronix.de>
Message-Id: <176578350130.243363.11557771093872746627.b4-ty@pengutronix.de>
Date: Mon, 15 Dec 2025 08:25:01 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251214_232503_215517_BE10CF2B 
X-CRM114-Status: UNSURE (   7.49  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/2] fixup! efi: add option to generate vfat file for
 barebox.efi
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Thu, 11 Dec 2025 20:33:12 +0100, Ahmad Fatoum wrote:
> efi: fix generation for non !EFI_STUB configurations
> 
> The if currently always succeeded and trying to build the payload code
> on sandbox unearthes another issue, so fix both.
> 
> 

Applied, thanks!

[1/2] fixup! efi: add option to generate vfat file for barebox.efi
      https://git.pengutronix.de/cgit/barebox/commit/?id=b3ab8e3976c2 (link may not be stable)
[2/2] efi: payload: enable build for sandbox
      (no commit info)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



