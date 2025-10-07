Delivery-date: Tue, 07 Oct 2025 14:01:43 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v66Nz-005Emf-0Z
	for lore@lore.pengutronix.de;
	Tue, 07 Oct 2025 14:01:43 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v66Ny-0002Lm-Li
	for lore@pengutronix.de; Tue, 07 Oct 2025 14:01:43 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=hzQ86hLOM+KPawB+Z8SQ//4Adb9agvfdZVwPvWK5HWQ=; b=FKjHmG1o0JNEhcadLxLKWEuuVI
	aRnRjC56yJyDnqXtWfVQvBMxwFnH6ivGEY8ltghxJndRKPrC1hv3PdXeWDg3zrBlz1/4C0n/B4ZpQ
	lmTTzIYqIH4KxV9lFydIGX08G2n/+v+4XWj31aZSvk2edHvzkLj1PTStNQCSHP99D9RZJywJk0TKl
	eSxy2Z2NFniy+fT6QuHmsX5wO6rAuDrRQUEqv+78OpA+tCT48fltm6KXr90pa3mrbgD4Tt3Fsjvd/
	l1UhIfZRugGeolPnBnxpyn2UK9oRUmyRSdzxdtI+0iumMQ9OxPuxVyahlyVDyJnIEM+s4BpkDMGey
	Itqde8tg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v66NX-00000001wvx-2QLY;
	Tue, 07 Oct 2025 12:01:15 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v66NW-00000001wvR-0Tea
	for barebox@bombadil.infradead.org;
	Tue, 07 Oct 2025 12:01:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:From:Sender:
	Reply-To:Cc:Content-ID:Content-Description;
	bh=hzQ86hLOM+KPawB+Z8SQ//4Adb9agvfdZVwPvWK5HWQ=; b=Ty2vtfPbBOxDQi/9pQ591TRICe
	mf2zFAvAd/DL+aoxnQI1xtonTAvxxZ46X5mc7+UdPqzkYQZLXrtf5M5V9LrU6J8f2HkMpl0//MYM7
	TnGp6vjVpLJi83YkXNdiNLDVYhWwZQC/ngtqWBnl3QK0hKLLEKFDT6RNQZ6EGvF9V+ZVCOkERPZyn
	HCs88AyeKuIPTrgBiQR+pScIOpRdtRzkEwrdI+2HjNkwnKjyO91n5GhzU86j7D1miPYaQ63mgGqaF
	T9QQ0BVakDacksNcXAw/1FK0gqfbjSZqY6IGCOsVQN1OTHggRTdOVXAqlllZxO5hiMP2BJT/XA6UX
	pOsricaQ==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v66NQ-0000000Hb00-44G7
	for barebox@lists.infradead.org;
	Tue, 07 Oct 2025 12:01:13 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1v66NO-00025q-3m; Tue, 07 Oct 2025 14:01:06 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1v66NN-002OVy-2u;
	Tue, 07 Oct 2025 14:01:05 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1v66NN-00000004EAh-3Wx4;
	Tue, 07 Oct 2025 14:01:05 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
In-Reply-To: <20251007085117.941408-1-s.hauer@pengutronix.de>
References: <20251007085117.941408-1-s.hauer@pengutronix.de>
Message-Id: <175983846583.1007774.4558287780194911455.b4-ty@pengutronix.de>
Date: Tue, 07 Oct 2025 14:01:05 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251007_130109_162589_5F5A89BD 
X-CRM114-Status: UNSURE (   6.43  )
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
X-Spam-Status: No, score=-4.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] ARM: dts: am62lx: fix secondary core startup
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Tue, 07 Oct 2025 10:51:17 +0200, Sascha Hauer wrote:
> Disable the rti1 watchdog which fixes startup of the secondary CPU core
> under Linux.
> 
> Enabling the rti1 watchdog leads to enabling its power domain,
> <&scmi_pds 61> in this case. With this starting the secondary core fails
> under Linux:
> 
> [...]

Applied, thanks!

[1/1] ARM: dts: am62lx: fix secondary core startup
      https://git.pengutronix.de/cgit/barebox/commit/?id=bad67240e49f (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



