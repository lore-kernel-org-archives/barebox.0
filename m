Delivery-date: Fri, 10 Jan 2025 09:29:26 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tWAOU-000IXw-0Y
	for lore@lore.pengutronix.de;
	Fri, 10 Jan 2025 09:29:26 +0100
Received: from bombadil.infradead.org ([198.137.202.133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tWAOU-0002XI-Bk
	for lore@pengutronix.de; Fri, 10 Jan 2025 09:29:26 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=W8/0JRCnHKKr3WDveqCxkYM5o2MVSmyw2lVekrMcPvk=; b=VlEtwkzd2rXbfJOl1Ft1X3vi1j
	6hUjK/hYZCDy6gNniPzBR//nI5s70REvVySltkXnF9o5gL2/isLxLgTC7RXLYaz+mXNL4df3IgAU4
	iu2Kt3QDAys8rGHzcVgSJS/0V7kqlEPBqP7hunuCswr0FwK68X2NGsNNyZkaaxNLPEa6BCxfLI06H
	DWpGBgbQYNl1xvuOnpz3L6nMCBv+TBsfDD7sQBNWHsnVllH4ShG3Rt48u4RcgOygpp+GClqI45LdU
	ZRsr1zfKRRgjWX2Nn7Nmsn+OP2LqMkvoc2jC49vesvFXYdM1rQvKnwklLgfK04G0bm6xuUN9BjOwy
	p9FSGt9Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tWAO6-0000000EWjo-03qe;
	Fri, 10 Jan 2025 08:29:02 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tWAO3-0000000EWiG-29oB
	for barebox@lists.infradead.org;
	Fri, 10 Jan 2025 08:29:00 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tWAO2-0002Ph-AB; Fri, 10 Jan 2025 09:28:58 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tWAO2-0007wG-0P;
	Fri, 10 Jan 2025 09:28:58 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tWAO2-001TSk-0A;
	Fri, 10 Jan 2025 09:28:58 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, 
 Alexander Shiyan <eagle.alexander923@gmail.com>
In-Reply-To: <20250110075010.28030-1-eagle.alexander923@gmail.com>
References: <20250110075010.28030-1-eagle.alexander923@gmail.com>
Message-Id: <173649773804.351535.9628438933893487626.b4-ty@pengutronix.de>
Date: Fri, 10 Jan 2025 09:28:58 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250110_002859_555476_D9459B13 
X-CRM114-Status: UNSURE (   8.76  )
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
X-SA-Exim-Connect-IP: 198.137.202.133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,RCVD_IN_VALIDITY_RPBL_BLOCKED,
	RCVD_IN_VALIDITY_SAFE_BLOCKED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] spi: Fix hang on spi_sync() when driver does not
 support transfer() call
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Fri, 10 Jan 2025 10:50:10 +0300, Alexander Shiyan wrote:
> When a driver does not support transfer() call, such as most QSPI drivers,
> calling spi_sync() (e.g. with the "spi" command) will cause the system
> to hang. Fix this by adding a function check.
> 
> barebox@Mega-Milas Informer SAMA5D2:/ spi -b 1 -c 0 0xaa
> prefetch abort
> pc : [<00000004>]    lr : [<27e266a4>]
> sp : 27ff7c78  ip : 27ff7ce8  fp : 27e87410
> r10: 27ff7d20  r9 : 00000000  r8 : 23f58128
> r7 : 23f33c30  r6 : 27ff7c90  r5 : 27ff7d20  r4 : 27ff7c7c
> r3 : 00000000  r2 : 27ff7cc4  r1 : 27ff7c90  r0 : 27ff7d20
> Flags: nzCv  IRQs off  FIQs off  Mode SVC_32
> [<27e266a4>] (spi_sync+0xc8/0xdc) from [<27e2675c>] (spi_write_then_read+0xa4/0xac)
> [<27e2675c>] (spi_write_then_read+0xa4/0xac) from [<27e438e4>] (do_spi+0x288/0x3e8)
> [<27e438e4>] (do_spi+0x288/0x3e8) from [<27e05c38>] (execute_command+0x3c/0x80)
> [<27e05c38>] (execute_command+0x3c/0x80) from [<27e0ee48>] (run_list_real+0x9a8/0xad8)
> [<27e0ee48>] (run_list_real+0x9a8/0xad8) from [<27e0e2b4>] (parse_stream_outer+0x138/0x200)
> [<27e0e2b4>] (parse_stream_outer+0x138/0x200) from [<27e0f180>] (run_shell+0x5c/0x90)
> [<27e0f180>] (run_shell+0x5c/0x90) from [<27e018b4>] (run_init+0x108/0x288)
> [<27e018b4>] (run_init+0x108/0x288) from [<27e01a8c>] (start_barebox+0x58/0xb4)
> [<27e01a8c>] (start_barebox+0x58/0xb4) from [<27e5ee18>] (barebox_non_pbl_start+0xc8/0xe0)
> [<27e5ee18>] (barebox_non_pbl_start+0xc8/0xe0) from [<27e00004>] (__bare_init_start+0x0/0x10)
> 
> [...]

Applied, thanks!

[1/1] spi: Fix hang on spi_sync() when driver does not support transfer() call
      https://git.pengutronix.de/cgit/barebox/commit/?id=0b1be52382e9 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



