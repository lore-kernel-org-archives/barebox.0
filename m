Delivery-date: Thu, 28 Nov 2024 10:26:26 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tGan3-001Oh7-1V
	for lore@lore.pengutronix.de;
	Thu, 28 Nov 2024 10:26:25 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tGan3-0004tc-Ei
	for lore@pengutronix.de; Thu, 28 Nov 2024 10:26:25 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=pn3vZPbx5OcpsW4xICG76zq86DzNh0euJTt1T1VY1/4=; b=xwp5JaXbhzUuV/iufTnxna28UR
	V3DqpNB/yFOlwMVyL0T1rAG/YetacxE1DFSSAxcjDZ0+Eco7P1Q8hoVkA8OXK6HCVSfjTPIrZT3lv
	RseRIykDj4vLk5CJ7X/99/PH17SNyE+Zba4yECU2XJIhKgWzmCdH+u4wo8LrUUmYw6oX4GWSzjqlo
	+nRaS6v2mpHiyf7KA9bcvm5cD8Wasq9Sto1irnqA5aazWVRl95t1ehKP7ef2ijCPQVXTn979XcqX7
	bi9PXVDiLj+keeaxZ41maf6Y7mYTb0pajc+y6eqcb3XFFhM/m1Rs9/6R57wWGg+ylEMV/UnOAQVHa
	wXHzL38A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tGamd-0000000F8VL-3L1o;
	Thu, 28 Nov 2024 09:25:59 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tGamb-0000000F8Uy-17o5
	for barebox@lists.infradead.org;
	Thu, 28 Nov 2024 09:25:58 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tGamZ-0004mg-TF; Thu, 28 Nov 2024 10:25:55 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tGamY-000aVa-2b;
	Thu, 28 Nov 2024 10:25:55 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tGamZ-00FunX-1e;
	Thu, 28 Nov 2024 10:25:55 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: ysionneau@kalrayinc.com
In-Reply-To: <20241125151522.430233-1-a.fatoum@pengutronix.de>
References: <20241125151522.430233-1-a.fatoum@pengutronix.de>
Message-Id: <173278595550.3793206.11535775014140550082.b4-ty@pengutronix.de>
Date: Thu, 28 Nov 2024 10:25:55 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241128_012557_314957_179F0FA1 
X-CRM114-Status: UNSURE (   6.50  )
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
	autolearn=ham autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 1/2] sandbox: barebox cmdline
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 25 Nov 2024 16:15:21 +0100, Ahmad Fatoum wrote:
> For easier non-interactive use of sandbox, let's add support to execute
> arbitrary commands from the command line directly.
> 
> 

Applied, thanks!

[1/2] sandbox: barebox cmdline
      https://git.pengutronix.de/cgit/barebox/commit/?id=e7431f30c9f5 (link may not be stable)
[2/2] sandbox: add cpuinfo command
      https://git.pengutronix.de/cgit/barebox/commit/?id=f35c6b84fb2f (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



