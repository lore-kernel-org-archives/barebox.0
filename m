Delivery-date: Mon, 15 Dec 2025 08:24:13 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vV2wH-00Bev8-0r
	for lore@lore.pengutronix.de;
	Mon, 15 Dec 2025 08:24:13 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vV2wG-0001rb-Np
	for lore@pengutronix.de; Mon, 15 Dec 2025 08:24:13 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=7uDKwGsRdaX14qczJ/61mGNGMc95I0rB6YI4lHBv2zA=; b=VOLgMiPsPTpcn9U5z2AO0t9Z2R
	YvWOPxR1BcFWU3q6DPzFAi4psWEWVkkKeCgvGQ1CT8BPYJ1TrojXcdxkJavE2pRmMC9gPmMbtl1VY
	vBufxNWUL4hVu+vt488Y+iI3+XBEmR73TgrcCR5n3WBT3fiC5bnzESJOMFVoWy1juD+Z0Tez7Tncv
	nXXvdl8qQZoKueIgP0tPgQQ9PmP60y1/dNG3H7cuOylw5csujfI5i7Fud/Kaew6nbHLl9SpDN0NWc
	uljQXQu26GYWAirG48cEfraT9u3juM8FPzOq669N5LVfWaeSO8IPuHEoPi+wo+Wwo+bLwm4a19omK
	XT6d0Scg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vV2vo-00000003CBl-2rHS;
	Mon, 15 Dec 2025 07:23:44 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vV2vm-00000003CBA-1LKy
	for barebox@lists.infradead.org;
	Mon, 15 Dec 2025 07:23:43 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vV2vk-0001kk-MP; Mon, 15 Dec 2025 08:23:40 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vV2vk-005k2u-1e;
	Mon, 15 Dec 2025 08:23:40 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vV2vk-000000011D8-1txI;
	Mon, 15 Dec 2025 08:23:40 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20251211174050.3689753-1-a.fatoum@pengutronix.de>
References: <20251211174050.3689753-1-a.fatoum@pengutronix.de>
Message-Id: <176578342045.242971.8499734982021343107.b4-ty@pengutronix.de>
Date: Mon, 15 Dec 2025 08:23:40 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251214_232342_365697_D4A79CAF 
X-CRM114-Status: UNSURE (   8.49  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] clk: vexpress: clk-sp810: sync with Linux
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Thu, 11 Dec 2025 18:40:39 +0100, Ahmad Fatoum wrote:
> labgrid-pytest --lg-env test/arm/a15@multi_v7_defconfig.yaml crashes for
> me, because the parent is hardcoded as 1 and that leads to an out of
> bounds access when executing the clk_dump commands as it tries to get
> ahold of the name in clk_lookup.
> 
> Sync the driver with Linux to fix this issue.
> 
> [...]

Applied, thanks!

[1/1] clk: vexpress: clk-sp810: sync with Linux
      https://git.pengutronix.de/cgit/barebox/commit/?id=8a7a891c5d35 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



