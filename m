Delivery-date: Wed, 24 Jul 2024 10:10:28 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sWX4u-002PRz-01
	for lore@lore.pengutronix.de;
	Wed, 24 Jul 2024 10:10:28 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sWX4t-0007Ia-F0
	for lore@pengutronix.de; Wed, 24 Jul 2024 10:10:27 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=OthZOrJen9zhzwzuKDaUtryCGfwLw6w8HopzJa/Hy1w=; b=swvCmt74bC6LkpwgqxZYC484BQ
	ApglEE0EbtA+7AIBrySqPvR3NL3rwCwOX6nyzzFlrgF0UqsG6WohfFznKzW0zYXNtI28ZWreIGgOX
	aoVP3Ctl5R3NYhaORb9lSvi/muPF4YYwc2x06GpcWKm0taQZEt4ND8Z196JMSi91NSnK4QRCRubBY
	vsvHbrkKuI/aTog2ukpwZ1kVR8LWuTl8YG2bPyo0VfJlIRE9w1nkps4P2IcPkgYyxHN1u+IWSVikV
	XegK9gy9IkqC6I99EPKQWcZc4aCNUA3EmGk+JtEK1yBYqQUi6p99NLMWColOFdNgMLnua49w43uJO
	DEIaHBKw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sWX4Q-0000000EjV9-2bC0;
	Wed, 24 Jul 2024 08:09:58 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sWX4N-0000000EjUg-2AR6
	for barebox@lists.infradead.org;
	Wed, 24 Jul 2024 08:09:57 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sWX4M-0007Fv-3w; Wed, 24 Jul 2024 10:09:54 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sWX4L-001oRE-NU; Wed, 24 Jul 2024 10:09:53 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sWX4L-0083UO-28;
	Wed, 24 Jul 2024 10:09:53 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240722170612.3867075-1-a.fatoum@pengutronix.de>
References: <20240722170612.3867075-1-a.fatoum@pengutronix.de>
Message-Id: <172180859365.1919833.17395916248509104146.b4-ty@pengutronix.de>
Date: Wed, 24 Jul 2024 10:09:53 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240724_010955_589452_AF680BCD 
X-CRM114-Status: UNSURE (   6.00  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] commands: mount: simplify positional argument handling
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 22 Jul 2024 19:06:12 +0200, Ahmad Fatoum wrote:
> Once getopt has concluded, all of argv[0] up to argv[optind - 1] will
> have been consumed. Therefore let's advance argv by optind and reduce
> argc by the same to simplify the code handling the positional arguments.
> 
> 

Applied, thanks!

[1/1] commands: mount: simplify positional argument handling
      https://git.pengutronix.de/cgit/barebox/commit/?id=71525350c38e (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



