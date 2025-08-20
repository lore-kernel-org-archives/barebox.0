Delivery-date: Wed, 20 Aug 2025 14:30:26 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uohxT-002cLi-0t
	for lore@lore.pengutronix.de;
	Wed, 20 Aug 2025 14:30:26 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uohxS-0001JU-5t
	for lore@pengutronix.de; Wed, 20 Aug 2025 14:30:26 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=mZ4xPo4blnWxdUaAjZzoSbVI5gx6PEhF+eigSVq0vGs=; b=JtQoB4isTcv6ZQGzU3hn5F34Ex
	9XcyyvMs9+hIOCTwLIcEmqsK6RWXGQw2tVopebWwZpnc/lafXM6mJ3xiqG9N70+Tnx2gB69fXJHju
	fDH9XbW+QNIvytdngkZjyCLCY2bA91LYQIzF8RLbaq79wA4yE/a1rlirTSPlLR3pjrkdhOpiuDFvx
	IqsIBDvCZQOsomgOhvoDIypbdDlLSMhfIEjM4jcp0foUG7EcpekX6lf3oEY8QSlWWzNrydFr8+GxM
	KFHbHZ/hRXiCXJ7m8caiFExg6Hr7Pe47t26+qvB6Rka72QuyWKEdJv9T9zyDVQE2Q3nm+lT2caYiu
	1D2gjs4w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uohwz-0000000DZ4n-1zxJ;
	Wed, 20 Aug 2025 12:29:57 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uohww-0000000DZ45-1oul
	for barebox@lists.infradead.org;
	Wed, 20 Aug 2025 12:29:55 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uohwu-0001AW-MI; Wed, 20 Aug 2025 14:29:52 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uohws-001FDi-2i;
	Wed, 20 Aug 2025 14:29:50 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uohws-00HJfM-2X;
	Wed, 20 Aug 2025 14:29:50 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20250820101702.1946026-1-a.fatoum@pengutronix.de>
References: <20250820101702.1946026-1-a.fatoum@pengutronix.de>
Message-Id: <175569299077.4127147.12399022015326184134.b4-ty@pengutronix.de>
Date: Wed, 20 Aug 2025 14:29:50 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250820_052954_473788_9C6CCE18 
X-CRM114-Status: UNSURE (   6.48  )
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
Subject: Re: [PATCH master] fastboot: implement dummy has-slot:partition
 variables
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 20 Aug 2025 12:17:02 +0200, Ahmad Fatoum wrote:
> Now that we enforce variables to be available, flashing can result in
> following error message:
> 
>   ERROR: fastboot: no such variable: has-slot:rootfs-eMMC
> 
> Report the default no value to suppress this.
> 
> [...]

Applied, thanks!

[1/1] fastboot: implement dummy has-slot:partition variables
      https://git.pengutronix.de/cgit/barebox/commit/?id=525ccfb5ac38 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



