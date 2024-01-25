Delivery-date: Thu, 25 Jan 2024 08:40:25 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rSuLW-0013xw-1u
	for lore@lore.pengutronix.de;
	Thu, 25 Jan 2024 08:40:25 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rSuLX-0003CY-AM
	for lore@pengutronix.de; Thu, 25 Jan 2024 08:40:23 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=s4iEvwD/eMPGylHtOeTRWVo8bHqbtukP0YGPj1K85gw=; b=GFcd1Dhr+udMYp6RlCV84ZsKUL
	BOHN9LgH7VrMVN+LLrC3JtkOp8x3u7JjECZTHgwWpRcqCo06Y8oeYO2nITeNktYQfBianEyf3jtBS
	TgDn4QC8cUMBE4vnv0JRRjFchBO0DnHOiYPXGNV0Uo6aZeZp6V5CA/T/cTY+kaMyn8NUXK8d9t1BS
	3u5/cF6WGOmUaApcGkbT1lZy1p1THVK55DS6ROpUsumFivDtKUxarmH/a+oYy7VuL8he/omJho4ve
	nnMaVVBKzRPmb+7ZlnDWvDKWC3cb/Ioe0H2Pypyh9dpOHvaadqGJs2MCcrSsWq5GSqDYQs3w+R+8R
	AtY4DOvA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rSuKV-00765R-1B;
	Thu, 25 Jan 2024 07:39:19 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rSuKP-00761o-1D
	for barebox@bombadil.infradead.org;
	Thu, 25 Jan 2024 07:39:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:To:From:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=s4iEvwD/eMPGylHtOeTRWVo8bHqbtukP0YGPj1K85gw=; b=OhLYZjF/k5isqHxQl7buy97r7/
	BwQugthn3G2xV/hj3y3kkH8Cpmn4bCPl8mNp6NW7mLVbWnihCUx4GjqrsXiTMPRDpu0MS0lo4U/XW
	9wHkhvT+wObE1MgqFkOaK6jlKKsMZ+5LiqbO39QssyJW1ZbhNS7tQX/LbOEH56fYFK8fNx3K6gjDF
	xdpIRlyAaoEJTwcuyLV94nqYaKoZDyYzJMKUKp72ANbroX365/ogje5tFRk2bIlRP6yFs08bbayab
	My6fozJiEjk1XcfnMMnp+OjD84ffUHpVN3qsS87hqNULqJEFnlJLsSvcBLNL/qk9s5E9qyP2RJ437
	8oVN/Kfg==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rSuKL-00000004yb9-378T
	for barebox@lists.infradead.org;
	Thu, 25 Jan 2024 07:39:12 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rSuKJ-00033A-AO; Thu, 25 Jan 2024 08:39:07 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rSuKI-002EaG-Tr; Thu, 25 Jan 2024 08:39:06 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rSuKI-002OD4-2l;
	Thu, 25 Jan 2024 08:39:06 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Bastian Krause <bst@pengutronix.de>
Cc: Marco Felsch <m.felsch@pengutronix.de>, 
 Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240124154728.901305-1-bst@pengutronix.de>
References: <20240124154728.901305-1-bst@pengutronix.de>
Message-Id: <170616834685.569564.7623937483587115564.b4-ty@pengutronix.de>
Date: Thu, 25 Jan 2024 08:39:06 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240125_073910_158154_32C0DAAB 
X-CRM114-Status: UNSURE (   7.55  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH v2 1/2] Documentation: usb: document bbu fastboot
 partition name
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 24 Jan 2024 16:47:27 +0100, Bastian Krause wrote:
> After looking this up the nth time in the code base, it's really time to
> document this.
> 
> Also mention that ``fastboot getvar all`` lists the partitions.
> 
> 

Applied, thanks!

[1/2] Documentation: usb: document bbu fastboot partition name
      https://git.pengutronix.de/cgit/barebox/commit/?id=3021e16f1a4a (link may not be stable)
[2/2] usbgadget: add bbu fastboot partition naming scheme
      https://git.pengutronix.de/cgit/barebox/commit/?id=305b65c2f950 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



