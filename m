Delivery-date: Mon, 29 Jan 2024 11:19:57 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rUOk8-009s8y-1W
	for lore@lore.pengutronix.de;
	Mon, 29 Jan 2024 11:19:57 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rUOk9-0000xz-6d
	for lore@pengutronix.de; Mon, 29 Jan 2024 11:19:57 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=RH7PAHzUvbTd33zc28MOGOHWVbJ6OH4OXmBfyEEIX1c=; b=MZweoyn537uMQ1vsL0QQFYCWQT
	iMTKYrTgg/25ROuj2SItBDRZyu9xS6Mowju7Z3cUouY8IadixzGXSdZYcvU+dSxKhnUL8uCB92VZM
	GgH9lsxDT3Rt7UlEgPIdtq+qwKPK8uYwMgQvelr7Oo34yglcI94ut3XkkE78SAiu7IMquNwLNS7xl
	W5GenQb6FgPmTchFAGfWHc3ItMz8GruNVpDggtkVAJNmzZYN8hfDye5he+qu/53rniVvQ5hO30S0y
	IOrmIeKfN2iArjGXgjEws7Js65CCkPl8TNEHcnOoscsxZKmKjkafkiScFBSSXZLY4hsHl87/iAMj8
	GMpOrAsQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rUOjX-0000000CCBF-3sOZ;
	Mon, 29 Jan 2024 10:19:19 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rUOjT-0000000CCAG-43rt
	for barebox@lists.infradead.org;
	Mon, 29 Jan 2024 10:19:17 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rUOjQ-0000rR-3h; Mon, 29 Jan 2024 11:19:12 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rUOjP-00398R-NT; Mon, 29 Jan 2024 11:19:11 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rUOjP-001Qk3-29;
	Mon, 29 Jan 2024 11:19:11 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Marco Felsch <m.felsch@pengutronix.de>
In-Reply-To: <20240125133856.3792552-1-m.felsch@pengutronix.de>
References: <20240125133856.3792552-1-m.felsch@pengutronix.de>
Message-Id: <170652355166.341066.2376737766116696214.b4-ty@pengutronix.de>
Date: Mon, 29 Jan 2024 11:19:11 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240129_021916_086951_AB487723 
X-CRM114-Status: GOOD (  11.24  )
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
X-Spam-Status: No, score=-5.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH v3 1/2] Port SoC framework from Linux
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Thu, 25 Jan 2024 14:38:55 +0100, Marco Felsch wrote:
> This adds the initial support for the Linux soc framework which can be
> used to register all SoC relevant informations. The framework can be
> used by driver to check for errata for an specific soc(-revision) in the
> future since this require porting the matching function.
> 
> For now it gathers all required SoC information and provide a standard
> interface to query the data via device params.
> 
> [...]

Applied, thanks!

[1/2] Port SoC framework from Linux
      https://git.pengutronix.de/cgit/barebox/commit/?id=1a91677680f0 (link may not be stable)
[2/2] ARM: i.MX8M: convert the machine init to the soc driver
      https://git.pengutronix.de/cgit/barebox/commit/?id=d392a0aea330 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



