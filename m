Delivery-date: Fri, 20 Mar 2026 08:05:28 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w3TvE-002wOe-07
	for lore@lore.pengutronix.de;
	Fri, 20 Mar 2026 08:05:28 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w3TvD-00071U-Gz
	for lore@pengutronix.de; Fri, 20 Mar 2026 08:05:27 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=eb4AzIKQzg4Zi4Pv5pR1PzqzGMGz5CQxF4oZ265BpHI=; b=uHTtBP+ZPwhSRc+/2HedkM4wW8
	9ZnlHaxQs+IcK5uzjsOKICjTirvjmSMl/utbyG+o/BZ2yc2JieFvjq4LSjuZFa0k6Kwr+qQVW7LgO
	4QUI1TypeWCXCtlRpbmy0rsrCqW7Q1o/bb1VBrLT0rQpzVGnU1y27rht92sV2UK6MshyubJqgJ46A
	ka24x2DDJCF8ItOO9SQJe9Xq28hg6n4usGcubI/KiLjvhmFmH0Ljud0uSyM4LYdZ85UKy2ex66j0M
	LEe9asZf1VI+wjzL/pM1H+DmCi9GPFV6jwBeenDLfxv9iHV3AHdAbzOfep/vn4FmjHfYjZmpYS9hs
	0RyfGjAg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w3Tui-0000000CD4Y-3WTZ;
	Fri, 20 Mar 2026 07:04:56 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w3Tuf-0000000CD4F-2WRR
	for barebox@lists.infradead.org;
	Fri, 20 Mar 2026 07:04:54 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1w3Tud-0006tw-Tt; Fri, 20 Mar 2026 08:04:51 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1w3Tud-001CWo-2N;
	Fri, 20 Mar 2026 08:04:51 +0100
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1w3Tud-00000004YHX-2rzJ;
	Fri, 20 Mar 2026 08:04:51 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Marco Felsch <mfe@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>, 
 Fabian Pflug <f.pflug@pengutronix.de>
In-Reply-To: <20260316-v2026-03-0-topic-atf_scatch_fdt-v1-1-33cde8738bc4@pengutronix.de>
References: <20260316-v2026-03-0-topic-atf_scatch_fdt-v1-1-33cde8738bc4@pengutronix.de>
Message-Id: <177399029167.1084533.16767700284801535652.b4-ty@pengutronix.de>
Date: Fri, 20 Mar 2026 08:04:51 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260320_000453_710396_53AE0A6A 
X-CRM114-Status: UNSURE (   8.68  )
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
X-Spam-Status: No, score=-3.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] ARM: i.MX: atf: pass scratch fdt if configured
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 16 Mar 2026 09:58:03 +0100, Fabian Pflug wrote:
> If a scratch space is configured for fdt on i.MX devices, then there is
> a space for OP-TEE to put its overlay fragments if configured with
> CFG_GENERATE_DTB_OVERLAY. These fragements can then be applied to the
> devicetree in barebox. There is no need to pass the fdt to OP-TEE, if
> OP-TEE is already configured correctly for the specific device.
> 
> 
> [...]

Applied, thanks!

[1/1] ARM: i.MX: atf: pass scratch fdt if configured
      https://git.pengutronix.de/cgit/barebox/commit/?id=26f6e096bba3 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



