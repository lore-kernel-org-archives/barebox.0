Delivery-date: Mon, 23 Feb 2026 12:33:40 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vuUC3-004obo-0O
	for lore@lore.pengutronix.de;
	Mon, 23 Feb 2026 12:33:40 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vuUC3-00009U-Fb
	for lore@pengutronix.de; Mon, 23 Feb 2026 12:33:39 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=3h34IMtXiMFlyx4hWz1n8g5ss7CrqxUlezUrO2m7Z/g=; b=wUJEk2wr7ZlQUvbOadTu+ZnA7W
	d8pOy4zGl1li0Gb0hZYd3D2+1qVFCxLrCKDS1S9+F+GcI6eqIsVuQ0pU9R509+fAkdTaPA/BGf17C
	S3i7eFFJjaFvwTP0s3LhNc8o3Elv9dt0/yHeutRJkhGhpyWpAbmFCBDkGW5g5N7hPgjL9XpDQSvBi
	xn/INGqZxf4joxyD25leJUxmgw6flLBjDcuqy9/ZnQIpqlOcRXM1OUbXLT/L62RzZKt9sQuuSAnUc
	9qDZT48hjsNL/PNSdial4TWWVkMi+u5zmmeTWTdLG5mkhcIaTlQok8K18fe0IaorPEgv2Rgb3smq9
	4LSbfBzQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vuUBg-00000000BnE-1Tlj;
	Mon, 23 Feb 2026 11:33:16 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vuUBd-00000000BmE-2uFW
	for barebox@lists.infradead.org;
	Mon, 23 Feb 2026 11:33:14 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vuUBc-0008Uh-5s; Mon, 23 Feb 2026 12:33:12 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vuUBa-002Dlw-1o;
	Mon, 23 Feb 2026 12:33:11 +0100
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vuUBb-00000000x2Y-3Zq2;
	Mon, 23 Feb 2026 12:33:11 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Marco Felsch <m.felsch@pengutronix.de>
In-Reply-To: <20250901103039.914774-1-m.felsch@pengutronix.de>
References: <20250901103039.914774-1-m.felsch@pengutronix.de>
Message-Id: <177184639185.226900.11820213467666885517.b4-ty@pengutronix.de>
Date: Mon, 23 Feb 2026 12:33:11 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260223_033313_738412_C5E07878 
X-CRM114-Status: UNSURE (   8.33  )
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
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] ARM: mach-imx: tzasc: keep default region 0 secure
 settings for i.MX8M
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 01 Sep 2025 12:29:37 +0200, Marco Felsch wrote:
> The TZC-380 region 0 is the TZC default (fallback) region. This region
> is used if access to a certain DRAM address was done which isn't
> configured by any other region (see [1] for more information). Region 0
> covers the complete AXI space from 0x0 to AXI-bus width. The access is
> secure-only after reset.
> 
> The TZC-380 is not memory alias aware (see [1] for more information) and
> due to the DDR controller, the i.MX8M allows memory alias access.
> 
> [...]

Applied, thanks!

[1/1] ARM: mach-imx: tzasc: keep default region 0 secure settings for i.MX8M
      https://git.pengutronix.de/cgit/barebox/commit/?id=32b6d7acca5e (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



