Delivery-date: Tue, 22 Oct 2024 10:19:04 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t3A6a-007OMy-27
	for lore@lore.pengutronix.de;
	Tue, 22 Oct 2024 10:19:04 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t3A6Z-0004hD-Qm
	for lore@pengutronix.de; Tue, 22 Oct 2024 10:19:04 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Qi74rup1Od2pN0AJgqXVR8ZmvoPD8pQmxURBu9MD09U=; b=KZn+S9btdlrhiYb7HDsIq1ss1n
	kMWVXAT0xrJdgloZzLYnLJWWuVvAidZuBs8iQ9Q+Nv3nGYQM6WY//tQbWNjBLWgHxUtVtNAg3POKw
	8ww7+ZtWBKoyGTjbKoDIF+MUVLx/MuISH2kgip6JWavABGLfAfLDuLorUpbd2yP8oER0bzJ2erpV5
	LHgpiyKYUeACulHtXJaKAscUkgrYJx2ITbHDp1na2qRrvkzmeX01pzJce/fFu7VZaPHTatbGuY/OT
	Hso2aFlWhjvOJmNGAiQwCrOIGZgTbpvt29UVRSk3jBIyTbDRRrD7o7T5CsrrUpZEPgxKKeogWoBp2
	XBPRgziw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t3A5u-0000000A8Ye-27JF;
	Tue, 22 Oct 2024 08:18:22 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t3A5t-0000000A8YF-0hyv
	for barebox@bombadil.infradead.org;
	Tue, 22 Oct 2024 08:18:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:From:Sender:
	Reply-To:Cc:Content-ID:Content-Description;
	bh=Qi74rup1Od2pN0AJgqXVR8ZmvoPD8pQmxURBu9MD09U=; b=Ir01HCeKMIb8yHqZL3AL3ic/C4
	5xQpSGdyMGbpgKHwx/IyjH7JpPN4JSu9S8/Rh4kBErCa197nv8HtgZt/vloWrw9AP/wuG2hUEM2FL
	JV1s75Vkl/RoO/OeD97zOX+ga+d6TJBXniGFhmtkJ40wXkhwIO9ZY6TdtwK1OjA0Qh2XpB1/fZfXP
	ARVwjHCYfWDGagErIPrcEr8WFugy9U+QhGVI6KexBc2bA9nec3z2pTO3S4r6s7VFQs+ty+HbFIjvc
	CMFrNrY8zozB+RL7KB/GOD9OZnpiVOPnmy9baifdC7zfqi+EvMBXxh7Y44MXizXeMyNdXrGYohDO0
	xyhcLH3g==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t3A5m-000000089rm-1Ka5
	for barebox@lists.infradead.org;
	Tue, 22 Oct 2024 08:18:18 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t3A5l-0004IV-BI; Tue, 22 Oct 2024 10:18:13 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t3A5j-000pfH-2y;
	Tue, 22 Oct 2024 10:18:11 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t3A5j-00C8M9-2o;
	Tue, 22 Oct 2024 10:18:11 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20241021140644.801593-1-a.fatoum@pengutronix.de>
References: <20241021140644.801593-1-a.fatoum@pengutronix.de>
Message-Id: <172958509187.2892012.11398139652647143868.b4-ty@pengutronix.de>
Date: Tue, 22 Oct 2024 10:18:11 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241022_091815_134515_A2231D1E 
X-CRM114-Status: UNSURE (   6.34  )
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
Subject: Re: [PATCH] include: barebox.h: document enum autoboot_state
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 21 Oct 2024 16:06:44 +0200, Ahmad Fatoum wrote:
> Only documentation we have for this is the magic var help string, so
> let's have some more words to go along with it in the code.
> 
> 

Applied, thanks!

[1/1] include: barebox.h: document enum autoboot_state
      https://git.pengutronix.de/cgit/barebox/commit/?id=80b5e969e0d6 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



