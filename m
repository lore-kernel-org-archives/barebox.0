Delivery-date: Mon, 01 Jul 2024 14:44:47 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sOGOl-000VJz-2D
	for lore@lore.pengutronix.de;
	Mon, 01 Jul 2024 14:44:47 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sOGOl-0003cc-4F
	for lore@pengutronix.de; Mon, 01 Jul 2024 14:44:47 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Neyo2oKLeTtopGR1Us496fbSRZgjqdvDcSbuUHVZRh0=; b=2VTB6PjZAbVSxlo8wPvYLspOzh
	jvTzjgXeIWUr51NSK8DztVg99t9PiahY0lt0heUWcsOzm679MFkdCjkyjdyRq/oRer55h1cJezm9w
	rsBBEuwUTm78/har2oTBRCXDubTSiy86gzUBr5zWpl9BXVjaj7sFrYVi5JV0Ups8etIQhQUF6CIcx
	L2n7rNk3HSrrYPXl1+Af4RyGYiH9ldZ9zXhiNgcx/mG9TncrYoYBsPNtoCWiC4h8n3FTM22+VLyzN
	q9zuHwqs/pTDLYmQxDCuTfWeXgxI5VaFP8hJaxEw4V9CoAX+cxT7z2+dCp1oeMatbZfXUjE5Tk0Sh
	mSwP6EgQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sOGON-00000003Jjh-0Qvr;
	Mon, 01 Jul 2024 12:44:23 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sOGOJ-00000003JiG-2GlN
	for barebox@lists.infradead.org;
	Mon, 01 Jul 2024 12:44:21 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sOGOI-0003Ug-DM; Mon, 01 Jul 2024 14:44:18 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sOGOI-006NJM-0W; Mon, 01 Jul 2024 14:44:18 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sOGOH-009OOD-35;
	Mon, 01 Jul 2024 14:44:17 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Oleksij Rempel <o.rempel@pengutronix.de>
In-Reply-To: <20240622174815.3130885-1-o.rempel@pengutronix.de>
References: <20240622174815.3130885-1-o.rempel@pengutronix.de>
Message-Id: <171983785795.2238556.14578187184004895584.b4-ty@pengutronix.de>
Date: Mon, 01 Jul 2024 14:44:17 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240701_054419_610982_23A5C499 
X-CRM114-Status: UNSURE (   8.02  )
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
Subject: Re: (subset) [PATCH v2 1/2] spi: atmel_spi: Fix GPIO-based chip
 select handling to support multiple valid entries
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Sat, 22 Jun 2024 19:48:14 +0200, Oleksij Rempel wrote:
> Current implementation of GPIO-based chip select configuration in this
> driver only considers the first valid GPIO and ignores
> subsequent entries. This patch ensures that all valid GPIO entries are
> processed correctly, enabling configurations with multiple valid and
> invalid entries.
> 
> Specifically, this change addresses the issue where configurations like
> `cs-gpios = <&pioC 25 0>, <0>, <0>, <&pioC 28 0>;` are not handled
> correctly, leading to the last valid GPIO being ignored.
> 
> [...]

Applied, thanks!

[1/2] spi: atmel_spi: Fix GPIO-based chip select handling to support multiple valid entries
      https://git.pengutronix.de/cgit/barebox/commit/?id=22467a5fc41f (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



