Delivery-date: Wed, 11 Sep 2024 10:36:38 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1soIq7-003QPS-0Y
	for lore@lore.pengutronix.de;
	Wed, 11 Sep 2024 10:36:38 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1soIq6-0006et-4R
	for lore@pengutronix.de; Wed, 11 Sep 2024 10:36:38 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=gtl3MrekH0H40w74dZB0P606djtIQj4/nc9VoBGLOHI=; b=WrLCLCmpVcDVF7kB+YrgWQ2DCN
	5Jjz5qPqT3QFKBfiWTWwuTw328ApXe31+Kcvx08aYlmrfUQrpjgjbQwuy8eSXcdWI/0Bt+xN8YdXT
	o15yIqf0YXkIYOEq0MnTzKyHLT3gfZMycLuiT4hVWsLCaMkjv2uklhkvpQXNzC0oc2sboTeqp1uU7
	BwOSxVtmS4uW0zBHONr+XPy6A3CfOWa1dqkqX8pyEJ9Wmph4VAv3dEErYAiSrpbi/pdaqdEE2U+1u
	HXig41qSzb24aNxuuniHtnnHg0jki9NKLI4xWF0HeoDYfbFLzTNHQ2QIOJzwY8JSTlAe7iBVJtEMu
	60qBbdzA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1soIpe-00000008g2c-33nz;
	Wed, 11 Sep 2024 08:36:10 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1soIk7-00000008eoG-0Mzf
	for barebox@lists.infradead.org;
	Wed, 11 Sep 2024 08:30:28 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1soIk5-0003s2-PN; Wed, 11 Sep 2024 10:30:25 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1soIk5-0075q0-Cc; Wed, 11 Sep 2024 10:30:25 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1soIk5-001g3A-15;
	Wed, 11 Sep 2024 10:30:25 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240911081730.1523334-1-a.fatoum@pengutronix.de>
References: <20240911081730.1523334-1-a.fatoum@pengutronix.de>
Message-Id: <172604342533.399955.14370950507838926863.b4-ty@pengutronix.de>
Date: Wed, 11 Sep 2024 10:30:25 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240911_013027_164228_9E781474 
X-CRM114-Status: UNSURE (   8.79  )
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
Subject: Re: [PATCH] ARM: psci: hide ARM_PSCI options when ARCH_IMX7 is
 disabled
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 11 Sep 2024 10:17:30 +0200, Ahmad Fatoum wrote:
> We only support providing PSCI on a single SoC, the i.MX7. Having the
> option in other configuration is thus confusing.
> 
> Therefore hide the symbols when not building for the i.MX7. Using PSCI
> as consumer is a separate symbol (ARM_PSCI_CLIENT) and should be
> unaffected.
> 
> [...]

Applied, thanks!

[1/1] ARM: psci: hide ARM_PSCI options when ARCH_IMX7 is disabled
      https://git.pengutronix.de/cgit/barebox/commit/?id=1a41e8ab8915 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



