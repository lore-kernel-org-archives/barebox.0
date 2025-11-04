Delivery-date: Tue, 04 Nov 2025 11:14:18 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vGE3O-00FBUR-1V
	for lore@lore.pengutronix.de;
	Tue, 04 Nov 2025 11:14:18 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vGE3N-0003kK-VE
	for lore@pengutronix.de; Tue, 04 Nov 2025 11:14:18 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=JJhz1V9YNSETV7iqOGOIAW9eIUj4LVXUp9u2xWZCraM=; b=cPWnF/aST7/5+BZ6ZN6oWQ+Ysp
	V9TS+UX4i3UI26DOEcw3lLrxVZcqNErSOoVYgUsYAY5hdEncSRgHpjdrDzNHD3TpJy2tyunILVGSM
	5EozLWEEZcbKJOxvFExeoWk+nSpQm8wlbwTGoCjtDAuygurWaljP+0THmUAVdr5RMR3YokXJq3UAV
	Qmv12k/ZsfBbOSmYCrHT3LiTfAe/d0ZX88Ix18/12jXuj/3qGKBJzx7f3ksKYQX5tay4dHPf+cUZo
	BcYrlZOFsly7JI5sa2Hxg8SnZx3LWcNOy/B4ygwwt9TXNoRxDMeRML8rvOOCMt32SvtSVMwzAj8qo
	iGxrQfLg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vGE32-0000000BaxL-0RAK;
	Tue, 04 Nov 2025 10:13:56 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vGE2z-0000000BawT-2w5C
	for barebox@lists.infradead.org;
	Tue, 04 Nov 2025 10:13:54 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vGE2y-0003fi-29; Tue, 04 Nov 2025 11:13:52 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vGE2x-0070pZ-2q;
	Tue, 04 Nov 2025 11:13:51 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vGE2y-00000009QOj-17EK;
	Tue, 04 Nov 2025 11:13:51 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20251104100024.2983523-1-a.fatoum@pengutronix.de>
References: <20251104100024.2983523-1-a.fatoum@pengutronix.de>
Message-Id: <176225123181.2246402.14381252155295239386.b4-ty@pengutronix.de>
Date: Tue, 04 Nov 2025 11:13:51 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251104_021353_739789_1128C386 
X-CRM114-Status: UNSURE (   7.41  )
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
X-Spam-Status: No, score=-4.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] fixup! crypto: caam - skip RNG selftest when i.MX6 is
 in normal world
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Tue, 04 Nov 2025 11:00:24 +0100, Ahmad Fatoum wrote:
> crypto: caam - fix COMPILE_TEST breakage
> 
> <mach/imx/*.h> doesn't exist when we compile allyesconfig for sandbox,
> so stub out the macros used from it, so CAAM can continue to build
> independently of selected architecture.
> 
> 
> [...]

Applied, thanks!

[1/1] fixup! crypto: caam - skip RNG selftest when i.MX6 is in normal world
      https://git.pengutronix.de/cgit/barebox/commit/?id=c0e0df52fffa (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



