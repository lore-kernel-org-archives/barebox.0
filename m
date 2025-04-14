Delivery-date: Mon, 14 Apr 2025 15:19:05 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u4JiL-000eeX-0b
	for lore@lore.pengutronix.de;
	Mon, 14 Apr 2025 15:19:05 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u4JiK-0004eW-KW
	for lore@pengutronix.de; Mon, 14 Apr 2025 15:19:05 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=UiuuIxGb4CACEZg6lZ39Y4Zlvn1/ZqUQBdhbXq1MGtM=; b=ppDD/PqdEvHPFTDApJBzy90d0A
	+Y+ZbULWaq3Jyd3cJFNzJ/R1JkK1U4p4ENiQn6udvTlSFsmSvO3UX7KqVd5HZFmRHvA/bP1aC8Buu
	NVQmk6RpcYeWL0zciEY9NowaYPUUz/sP15qRUXgBIi4YUOrjLR33Q5rSvFGrhiYQXOoahv1rI85f/
	bFGdB691GFOw2KEomkpuCd4+XfNa2R411nRVByJPFQK62CJyrDgArZLwnYXjzCG7YeQJIPu06J+cw
	1Fv631shG0OlbdbaYE8+sXttZYjY3A9dJBi3gzUfhEf0qQQLFiZ0pyOExtte++foZBL5Owi2IWUOC
	dP4+VNkQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u4Jhm-0000000260E-2BTc;
	Mon, 14 Apr 2025 13:18:30 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u4Jhj-000000025yN-3EyH
	for barebox@lists.infradead.org;
	Mon, 14 Apr 2025 13:18:29 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1u4Jhh-0004Q6-Ly; Mon, 14 Apr 2025 15:18:25 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1u4Jhh-000G2d-1Y;
	Mon, 14 Apr 2025 15:18:25 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1u4Jhh-00AJd0-1K;
	Mon, 14 Apr 2025 15:18:25 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20250414120151.3479508-1-a.fatoum@pengutronix.de>
References: <20250414120151.3479508-1-a.fatoum@pengutronix.de>
Message-Id: <174463670540.2458455.17151969924669506278.b4-ty@pengutronix.de>
Date: Mon, 14 Apr 2025 15:18:25 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250414_061827_816644_097D91ED 
X-CRM114-Status: UNSURE (   7.10  )
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
Subject: Re: [PATCH v2 1/3] ARM: stm32mp: drop all images with legacy STM32
 header
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 14 Apr 2025 14:01:48 +0200, Ahmad Fatoum wrote:
> The legacy .stm32 images have been deprecated in TF-A v2.7 and removed
> altogether in v2.8, released in 2022.
> 
> It's time that we move on in barebox as well and drop the legacy images.
> 
> Users wishing to continue to use new barebox versions need to upgrade
> their TF-A versions and switch to FIP images.
> 
> [...]

Applied, thanks!

[1/3] ARM: stm32mp: drop all images with legacy STM32 header
      https://git.pengutronix.de/cgit/barebox/commit/?id=e457167349b2 (link may not be stable)
[2/3] ARM: stm32mp: add Linux Automation TAC board
      https://git.pengutronix.de/cgit/barebox/commit/?id=870d91ba5ac2 (link may not be stable)
[3/3] ARM: stm32mp: add Linux Automation FairyTux 2
      https://git.pengutronix.de/cgit/barebox/commit/?id=838b1f122f8f (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



