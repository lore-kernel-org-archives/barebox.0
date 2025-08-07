Delivery-date: Thu, 07 Aug 2025 07:13:09 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ujsw9-007smC-2q
	for lore@lore.pengutronix.de;
	Thu, 07 Aug 2025 07:13:09 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ujsw9-0004XT-AV
	for lore@pengutronix.de; Thu, 07 Aug 2025 07:13:09 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=crc7A55cCKZuTNJXLT5XPigp3jVOFSntz+FIIyVV744=; b=zEVyeirM/xjAEY++4V9CPjs2dl
	YeaBWDCHhBY8RvpKeXQE2iXfOSy4dQpRXwNOxnwK4jO1SKX/Hy/eWzkLCup1cpQc1yIxOmhFHyrcP
	x/j7juVOxZyYtXH5GCY0sPmGJpjO6O2F1IcGCedGAln5TJO/24ExQ2FZJO0zQNcgdXwHOWRw2Eov1
	fwXA5o6dBqMu0xg9zUAla45OUn/lHtOXJHVRNLiknomOrjYWZXpicPMGTw64usYRjMlzsBhh2wENV
	nG6P4I7CTzJBMX0YqOoXskV5h1gnpRAAqKrWxzgUXgD7+kdivAvF7J+Y+R4dPjXNFCM2E2UoOJw7S
	qZZ00/ag==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujsvQ-0000000HHyA-07ew;
	Thu, 07 Aug 2025 05:12:24 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujsvN-0000000HHxT-0iX2
	for barebox@lists.infradead.org;
	Thu, 07 Aug 2025 05:12:22 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1ujsvL-0004S0-79; Thu, 07 Aug 2025 07:12:19 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1ujsvL-00CK6X-07;
	Thu, 07 Aug 2025 07:12:19 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1ujsvK-006XXA-37;
	Thu, 07 Aug 2025 07:12:18 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20250806163214.3233080-1-a.fatoum@pengutronix.de>
References: <20250806163214.3233080-1-a.fatoum@pengutronix.de>
Message-Id: <175454353895.1558809.13846636793562061186.b4-ty@pengutronix.de>
Date: Thu, 07 Aug 2025 07:12:18 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250806_221221_210538_D89CA3F2 
X-CRM114-Status: UNSURE (   7.58  )
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
Subject: Re: [PATCH] fixup! test: add support for pytest --graphic
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 06 Aug 2025 18:32:14 +0200, Ahmad Fatoum wrote:
> test: qemu: pass -nographic in the default case.
> 
> Otherwise, we end up with an error message if the default is to use a
> graphic backend.
> 
> 

Applied, thanks!

[1/1] fixup! test: add support for pytest --graphic
      https://git.pengutronix.de/cgit/barebox/commit/?id=3c5498cf9255 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



