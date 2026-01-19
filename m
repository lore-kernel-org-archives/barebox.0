Delivery-date: Mon, 19 Jan 2026 13:12:27 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vho7P-0031N2-1f
	for lore@lore.pengutronix.de;
	Mon, 19 Jan 2026 13:12:27 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vho7O-0003Yq-HL
	for lore@pengutronix.de; Mon, 19 Jan 2026 13:12:27 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=qaJNFFrP13ZN3dtlzzDG+gzT3JYxYvH7Vn3z/B0MgUw=; b=LGlvXW5GWHaIYXAL/0hWdavKPB
	0JMXVjxYow0aqpXTGmXr4JEuiOn3PEOknBW6i+ve/TJdvIvmsPWgRqO3n30oeopteUdlYAj+MxyGA
	SZTyaXetAM8bGtTpCOIHBPWFtqIpy1NUOBqV02vzyMlOgCHRwEdYJfZ5qRT1Xl4zgzj8l2iWK/DNt
	csk6apJZwKyHywZz6fzTwoB8pJHTRd+5EHIyWD6axyE3DkaeaFmiby/+3QcfpysyHujcikgfA/Q+d
	crGzQ1IBr5MwTltCQEnOIBj/uzuD+eof1FQweRnojjJainAHBix6MpQnUV6TGKQX/ZXAzmIT3irTD
	S9FyMSPg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vho6d-00000001yJg-12GX;
	Mon, 19 Jan 2026 12:11:39 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vho6a-00000001yIZ-2v5P
	for barebox@lists.infradead.org;
	Mon, 19 Jan 2026 12:11:38 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vho6Y-0003Kl-NW; Mon, 19 Jan 2026 13:11:34 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vho6Z-001PVr-0f;
	Mon, 19 Jan 2026 13:11:34 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vho6Y-00000003qPz-1wOE;
	Mon, 19 Jan 2026 13:11:34 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@barebox.org>
In-Reply-To: <20260115120748.3433463-1-a.fatoum@barebox.org>
References: <20260115120748.3433463-1-a.fatoum@barebox.org>
Message-Id: <176882469445.916445.2452115069283478245.b4-ty@pengutronix.de>
Date: Mon, 19 Jan 2026 13:11:34 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260119_041136_743876_272155E8 
X-CRM114-Status: UNSURE (   8.94  )
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
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 0/6] firmware: qemu_fw_cfg: improve support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Thu, 15 Jan 2026 13:06:08 +0100, Ahmad Fatoum wrote:
> This series adds DMA support to QEMU FW_CFG also on the read size,
> allows a completely dma-less PIO mode and adds support for parsing
> the QEMU options for: -kernel, -initrd, -uuid and -append.
> 
> Ahmad Fatoum (6):
>   firmware: qemu_fw_cfg: use wider PIO reads if applicable
>   param: support uuid/guid parameter type
>   lib: smbios: add support for setting product UUID
>   common: boards: qemu: process some standard fw_cfg keys
>   firmware: qemu_fw_cfg: add proper DMA and PIO bidirectional operating
>     modes
>   ARM: configs: multi: enable QEMU FW_CFG
> 
> [...]

Applied, thanks!

[1/6] firmware: qemu_fw_cfg: use wider PIO reads if applicable
      https://git.pengutronix.de/cgit/barebox/commit/?id=d5744b7a5b68 (link may not be stable)
[2/6] param: support uuid/guid parameter type
      https://git.pengutronix.de/cgit/barebox/commit/?id=6c1df4e8e236 (link may not be stable)
[3/6] lib: smbios: add support for setting product UUID
      https://git.pengutronix.de/cgit/barebox/commit/?id=4728bc697b9a (link may not be stable)
[4/6] common: boards: qemu: process some standard fw_cfg keys
      https://git.pengutronix.de/cgit/barebox/commit/?id=67041eb8e505 (link may not be stable)
[5/6] firmware: qemu_fw_cfg: add proper DMA and PIO bidirectional operating modes
      https://git.pengutronix.de/cgit/barebox/commit/?id=3f52ee9f37d3 (link may not be stable)
[6/6] ARM: configs: multi: enable QEMU FW_CFG
      https://git.pengutronix.de/cgit/barebox/commit/?id=aa09eec6b60a (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



