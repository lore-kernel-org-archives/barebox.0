Delivery-date: Wed, 24 Jul 2024 10:14:42 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sWX90-002Paa-2z
	for lore@lore.pengutronix.de;
	Wed, 24 Jul 2024 10:14:42 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sWX90-0007hk-C6
	for lore@pengutronix.de; Wed, 24 Jul 2024 10:14:42 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=8i8CrZKkySrP9AqGDngaIVzVXiYPBV2PSor1ND/CgWE=; b=zr4ZKw5V1Sev8llE5BHiNpBlUR
	ivyZzXZh1nPA+5Fq8SQwdFMK0TWA5IeUwaYwiVQrcKtD5X4OJrYdR48XcZri3khxYM0bBsU7x6YJs
	NQg6KXTvYx+B7dXh1v5s9K//CQhPDvCIn3z8ZDEnKejGci6hSp0w82qkarDLNrc2orH6HOTIWH4Oe
	e9rr3GSWOKjAYYGukDlRbeRyQlLn/1wl0VpUU5tR6EDsydFLJYDi7g5xB3Hs0B8eOSdS7by7qwrPr
	TTOuj0rR8OnE3x9PYoWhcn+o0rwWlRH+W6kX08bCe2MbnT/XxVq6glujMFyiCDCi9+xikHvRKc/BL
	K9X2GNIA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sWX8Y-0000000Ek6s-1q4G;
	Wed, 24 Jul 2024 08:14:14 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sWX8V-0000000Ek6F-3gBL
	for barebox@lists.infradead.org;
	Wed, 24 Jul 2024 08:14:13 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sWX8T-0007ep-KN; Wed, 24 Jul 2024 10:14:09 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sWX8T-001oRq-4L; Wed, 24 Jul 2024 10:14:09 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sWX8T-008OSI-0D;
	Wed, 24 Jul 2024 10:14:09 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240722170635.3868432-1-a.fatoum@pengutronix.de>
References: <20240722170635.3868432-1-a.fatoum@pengutronix.de>
Message-Id: <172180884906.2000469.10451482465871116121.b4-ty@pengutronix.de>
Date: Wed, 24 Jul 2024 10:14:09 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240724_011411_952038_360DB287 
X-CRM114-Status: UNSURE (   6.91  )
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
Subject: Re: [PATCH] pstore: implement devinfo callback
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 22 Jul 2024 19:06:35 +0200, Ahmad Fatoum wrote:
> The layout and memory region used for ramoops is normally described in
> the device tree, but for barebox, it's instead specified via Kconfig
> options.
> 
> To make it easy to check what parameters ramoops was initialized with,
> add a devinfo callback and a resource mapping the region.
> 
> [...]

Applied, thanks!

[1/1] pstore: implement devinfo callback
      https://git.pengutronix.de/cgit/barebox/commit/?id=3c118d510bda (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



