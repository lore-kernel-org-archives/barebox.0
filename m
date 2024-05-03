Delivery-date: Fri, 03 May 2024 08:53:50 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s2mnm-00Glmq-2F
	for lore@lore.pengutronix.de;
	Fri, 03 May 2024 08:53:50 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s2mnm-0004Xf-5A
	for lore@pengutronix.de; Fri, 03 May 2024 08:53:50 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=aE+7juGsjvtikSkfja5wyfF0Np8ansQomV/cwhHaYdk=; b=HDoRxvFVHQMc4h3zpLkDZSGtbu
	tf2+wIzkZioCTFosoBbOkdzeSRCKIRfMfYuAt+N0/KvGmcd+H6OUPHzlazhhgEm991bVO79IxOJr5
	9DMVfwWAEAXbtgTov1FJiTQJ9/xxVpYNw1UQAjy6xai+sPVP16/HD86pEOGag2lU7CyVkpR5w9bMY
	9MQ4Q5PWwHQXNaatvhgEBDpvqQ6/oQK5DVP6cbgGJ5Kh9tEdTorHnGAc8KJf5X7Y54IILfO/llxb7
	78kX6gNOothvRZY2q89wd3bdbVtRagUy0KTYMY5QYXcIJjGc/C7wkFyhkMvga0XGPgOnfjSewS3De
	AZcvmRKg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s2mnN-0000000FMzm-16tQ;
	Fri, 03 May 2024 06:53:25 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s2mnK-0000000FMzC-3GpF
	for barebox@lists.infradead.org;
	Fri, 03 May 2024 06:53:24 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1s2mnJ-0004SH-AZ; Fri, 03 May 2024 08:53:21 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1s2mnI-00Feff-UC; Fri, 03 May 2024 08:53:20 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1s2mnI-0003Me-2o;
	Fri, 03 May 2024 08:53:20 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240502151430.3963160-1-a.fatoum@pengutronix.de>
References: <20240502151430.3963160-1-a.fatoum@pengutronix.de>
Message-Id: <171471920086.12869.17303112530012010627.b4-ty@pengutronix.de>
Date: Fri, 03 May 2024 08:53:20 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240502_235322_852441_C2C537B0 
X-CRM114-Status: UNSURE (   7.64  )
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
X-Spam-Status: No, score=-5.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/2] include: ktime: implement __ktime_divns for 32-bit
 systems
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Thu, 02 May 2024 17:14:29 +0200, Ahmad Fatoum wrote:
> ktime_devns is an inline function for constant divisors. For
> non-constant divisors, it's only inline for 64-bit systems and calls to
> an out-of-line __ktime_divns function otherwise.
> 
> Implement the out-of-line function, so it's use of the function in
> common code is portable.
> 
> [...]

Applied, thanks!

[1/2] include: ktime: implement __ktime_divns for 32-bit systems
      https://git.pengutronix.de/cgit/barebox/commit/?id=d3f1bbc9ae16 (link may not be stable)
[2/2] poller: report pollers taking more than 20 milliseconds
      https://git.pengutronix.de/cgit/barebox/commit/?id=c5d2a98c51b2 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



