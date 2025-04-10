Delivery-date: Thu, 10 Apr 2025 10:06:35 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u2mvj-00Akj4-2M
	for lore@lore.pengutronix.de;
	Thu, 10 Apr 2025 10:06:35 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u2mvj-00014I-77
	for lore@pengutronix.de; Thu, 10 Apr 2025 10:06:35 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=czL747+JAquEmcYzzKnFARfornQOylLOefrhZpNKxlo=; b=Pix00l5ziWCeKDqI3Cr615QrGb
	uhCxM31ozkgz3E+iAbFEaDxJR/LLWT+tkBQbVcpktAk87Y/yuZSe2qOIMA8Iz351HvxhHkuF1Q3QB
	SMhPJCxHN9Nzq8yF0e75T8zDv8MCZ1IdBLMdpLwItoUpWoX/3TKgETnKjwyhPoEhHFRBuZ1hTf4gE
	/MC95NK6cmYX0dO3/3BIp6ML6rCSaJSuAqmWqKpkO8rjVYG+/J3dXy3FXnZwhFbolYsR+26acCg91
	UDAq/Bz1oTlQ+M/1/PrmofgIO6Gxw8oTfrgCT7qwZDm/8CXu6xo0+cv2c3pgFuGPB/dTbo6BYHW6C
	xCe1jQTA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u2mvG-00000009fiE-3knV;
	Thu, 10 Apr 2025 08:06:06 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u2mM8-00000009Yl9-48pt
	for barebox@lists.infradead.org;
	Thu, 10 Apr 2025 07:29:50 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1u2mM7-0001wM-S0; Thu, 10 Apr 2025 09:29:47 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1u2mM7-004ER0-2B;
	Thu, 10 Apr 2025 09:29:47 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1u2mM7-008my8-1y;
	Thu, 10 Apr 2025 09:29:47 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, 
 Alexander Shiyan <eagle.alexander923@gmail.com>
In-Reply-To: <20250408071658.56670-1-eagle.alexander923@gmail.com>
References: <20250408071658.56670-1-eagle.alexander923@gmail.com>
Message-Id: <174427018760.2094685.6199213799499431236.b4-ty@pengutronix.de>
Date: Thu, 10 Apr 2025 09:29:47 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250410_002949_055578_046304EF 
X-CRM114-Status: UNSURE (   9.21  )
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
X-Spam-Status: No, score=-5.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] ARM: rockchip: Remove support for RK3399
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Tue, 08 Apr 2025 10:16:58 +0300, Alexander Shiyan wrote:
> Since barebox does not support RK3399-based boards, let's
> remove RK3399 support for now.
> It can be easily added later if needed.
> This change will help update the Rockchip CLK subsystem to
> a more recent version from the kernel.
> 
> 
> [...]

Applied, thanks!

[1/1] ARM: rockchip: Remove support for RK3399
      https://git.pengutronix.de/cgit/barebox/commit/?id=9a356753a4e5 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



