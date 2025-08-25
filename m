Delivery-date: Mon, 25 Aug 2025 11:04:27 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uqT7s-004J9g-09
	for lore@lore.pengutronix.de;
	Mon, 25 Aug 2025 11:04:27 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uqT7q-00068q-Ls
	for lore@pengutronix.de; Mon, 25 Aug 2025 11:04:27 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=wYHWcVKJWcNjjO2fdMovluBbNIWE9EnckY13G1ljHAk=; b=GdBbRcZQl2Le6Uld16NOMzXpuC
	Wfbp8OXEMYbvGeQjB/fW1jwBns5GoEO3BbulN6zKc9LZV6Y2XXQfErha/9TR5UdIQvOfBicdf2KGc
	rItYde7Bq1sT3X2Vv9xzNpkCPI/AtugARKqV3jidiiU2JI2OaeoeejOEneKPwFi8brVvJmpx6ANpc
	zgzppLcd0fZF36NXiTTXs2xgdoOEecViNyVIzKP5WTP0uIxa/7Mt2FeeaAZKAK67f+rdEY1NEq80n
	5IDSsxe60PrbbAYj/eqHmykN6PsFezHfUQlyghypah74PTU+tEtlT8Cx0vB3tCNPIzraXFMagawCK
	TVsE8YjQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uqT7I-00000007R6n-2x3n;
	Mon, 25 Aug 2025 09:03:52 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uqSpN-00000007NN5-116p
	for barebox@lists.infradead.org;
	Mon, 25 Aug 2025 08:45:22 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uqSpK-0004OW-KZ; Mon, 25 Aug 2025 10:45:18 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uqSpK-0022Re-1T;
	Mon, 25 Aug 2025 10:45:18 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uqSpK-000000033C5-1dUC;
	Mon, 25 Aug 2025 10:45:18 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20250821210010.1435851-1-a.fatoum@pengutronix.de>
References: <20250821210010.1435851-1-a.fatoum@pengutronix.de>
Message-Id: <175611151838.727250.17440685813700830688.b4-ty@pengutronix.de>
Date: Mon, 25 Aug 2025 10:45:18 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250825_014521_282789_82C92E9D 
X-CRM114-Status: UNSURE (   8.31  )
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
Subject: Re: [PATCH] common: panic: add new CONFIG_PANIC_TRAP option
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Thu, 21 Aug 2025 23:00:10 +0200, Ahmad Fatoum wrote:
> When running under libfuzzer for example, it's better to trap, so
> libfuzzer generates a crash input file than to just print an error
> message and exit gracefully.
> 
> The same can apply when running under a hardware debugger, so make
> this option available generally.
> 
> [...]

Applied, thanks!

[1/1] common: panic: add new CONFIG_PANIC_TRAP option
      https://git.pengutronix.de/cgit/barebox/commit/?id=e7491c070adc (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



