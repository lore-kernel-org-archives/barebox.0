Delivery-date: Thu, 16 May 2024 08:12:21 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s7ULl-00GrbX-2M
	for lore@lore.pengutronix.de;
	Thu, 16 May 2024 08:12:21 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s7ULl-0007Gp-5N
	for lore@pengutronix.de; Thu, 16 May 2024 08:12:21 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=9Eh3YBQE/+pcjFYECppLBt1tdBpUf0WxPhLIBzZP394=; b=vdhR8Ip9JAZBcrUxOTwrC6rjxg
	rP6skUuQ4dfKI0dZYsxCRiwoVcZ9c4tuxbKdAMZlmKMcibIDn5Lc5olHzdhlUMHHU+mO5ilzNPFms
	n1tpsZFa0JClMg7sNPiemjlGJCzY1SdxEjQp4/TDufAICqIZxgOjg2nFcA9w87AUCpemSts7vHWe7
	W2D8Xy0otwRSB+6iCz5IEUBbWfwm/Bli/knEXWNlqXf/fSuxmhPcIjbbOFDm01KQMjXuPLQAwg1/O
	rPWKAtCn3uWYwImbCvzvuaFy98h0/8khE6hj97S6pcwHxdlnuGuRdDhoHGMJFPEWb0+suQzQOQzdS
	5ALMIgFg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s7ULI-00000003pnd-3ENd;
	Thu, 16 May 2024 06:11:52 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s7ULG-00000003pms-10Cy
	for barebox@lists.infradead.org;
	Thu, 16 May 2024 06:11:51 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1s7ULE-0007AB-Op; Thu, 16 May 2024 08:11:48 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1s7ULE-001fIr-8n; Thu, 16 May 2024 08:11:48 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1s7ULE-00BSNw-0g;
	Thu, 16 May 2024 08:11:48 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, 
 Michael Riesch <michael.riesch@wolfvision.net>
In-Reply-To: <20240515-b4-pf5-fixup-v2-0-7c2aff3f7465@wolfvision.net>
References: <20240515-b4-pf5-fixup-v2-0-7c2aff3f7465@wolfvision.net>
Message-Id: <171583990820.2730688.10318615219155083728.b4-ty@pengutronix.de>
Date: Thu, 16 May 2024 08:11:48 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240515_231150_330718_38E44440 
X-CRM114-Status: UNSURE (   9.25  )
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
X-Spam-Status: No, score=-5.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH master v2 0/3] Fixes for WolfVision board code library
 and PF5 mainboard code
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 15 May 2024 12:35:54 +0200, Michael Riesch wrote:
> Habidere,
> 
> This series is a follow-up to
> https://lore.barebox.org/barebox/20240412-feature-wolfvision-pf5-v2-0-7e277cc8831b@wolfvision.net/
> and fixes a few things. I tried to reply to said thread and announce a
> v3, but I just found that this reply never hit the list for ... reasons.
> 
> [...]

Applied, thanks!

[1/3] arm: boards: add pr_fmt() prefix to wolfvision pf5 board code
      https://git.pengutronix.de/cgit/barebox/commit/?id=cfde0d207cd3 (link may not be stable)
[2/3] common: boards: move dependencies to wolfvision board code library
      https://git.pengutronix.de/cgit/barebox/commit/?id=adb7cbee7b31 (link may not be stable)
[3/3] common: boards: wolfvision: fix handling of overlays parameter
      https://git.pengutronix.de/cgit/barebox/commit/?id=cc211bb091fc (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



