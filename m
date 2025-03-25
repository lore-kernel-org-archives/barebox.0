Delivery-date: Tue, 25 Mar 2025 08:23:10 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1twycx-003v48-0l
	for lore@lore.pengutronix.de;
	Tue, 25 Mar 2025 08:23:10 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1twycw-0002Qb-4l
	for lore@pengutronix.de; Tue, 25 Mar 2025 08:23:10 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=XB4aBzYzEuDFURxpHjvZX8lzwhvcHuHNRThez+gggOw=; b=uJgbgy+5/YqQJXuSDvzXnZVGYq
	Gu7b+V3WW/aNq0T+gNdD5P3DVWXyoZH7Su8XxX18kDZNEPjbefqhh4yT27OmhXGdN7oFEOv2kzl1k
	mYGj0j3c28eKje/qjgqydZUa5k8Eai69JbDq2Ow438QS1MLQH3GB/X3sjM+zg2vmZKoTUzIoFV+bY
	I3qSEBcwXj5LdYU6e0fxBF0IzoyUK4ennfmcozCAzdpkBVn7LpfbSjRKfCKy0SbZioElzMsfMRHR7
	+LE3Wtb6D/7GteOflr0UQdXm93t7NXYCoQNpyMVhxsnw+b6Y96itxt5pafb5UopNFHhETPq4IsHkX
	IHBacn8w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1twycH-000000054Pz-1AIN;
	Tue, 25 Mar 2025 07:22:29 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1twyWK-000000053Tn-02Cp
	for barebox@lists.infradead.org;
	Tue, 25 Mar 2025 07:16:21 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1twyWA-0001as-Sl; Tue, 25 Mar 2025 08:16:10 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1twyWA-001XbQ-0s;
	Tue, 25 Mar 2025 08:16:10 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1twyWA-006Z3q-1y;
	Tue, 25 Mar 2025 08:16:10 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
In-Reply-To: <20250324111749.2739671-1-s.hauer@pengutronix.de>
References: <20250324111749.2739671-1-s.hauer@pengutronix.de>
Message-Id: <174288697060.1564623.13188596761991649994.b4-ty@pengutronix.de>
Date: Tue, 25 Mar 2025 08:16:10 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250325_001620_048789_2C1F5B68 
X-CRM114-Status: UNSURE (   7.07  )
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
Subject: Re: [PATCH] mci: fix data write
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 24 Mar 2025 12:17:49 +0100, Sascha Hauer wrote:
> The dest and src fields in struct mci_data are a union, so we cannot not
> set them both to different values. Only set one of them to make write
> support operational again.
> 
> 

Applied, thanks!

[1/1] mci: fix data write
      https://git.pengutronix.de/cgit/barebox/commit/?id=f646ed68434f (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



