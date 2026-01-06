Delivery-date: Tue, 06 Jan 2026 09:13:07 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vd2Bf-001pHM-1T
	for lore@lore.pengutronix.de;
	Tue, 06 Jan 2026 09:13:07 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vd2Be-00011O-TM
	for lore@pengutronix.de; Tue, 06 Jan 2026 09:13:07 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=5qO+dar13Ms0iGnM4DJVg6NZQ4jd+LUwy4pNkLjuH/k=; b=ss+2TwjmYITXZMBiMchp5GKgcV
	sEMwqyUuPjsnKp8A0SKrq1qsq0+4M/ezpyqAgIAJLhyHi4HBCP4Kpyh7rrgI+1MJpJGRKKa0aWsAe
	uzK98A3sLFZhWmPij/BIqnbDP2SWO3H7DKWGxZkD+aVB2rR02x47JQVu1AUlm0JEsA1QPzCncYvB0
	pr/9PAYeIC36V/kPubyrx3w7h5hQ8Jk3sD9DQiGsz4zUgfOr+wNsqVlKxgXDagFfIr+r7sfjTbjrl
	tBd3TMNCERvAe4JTOspGHLWs2W3YW5gOFkzNo1ShSjz/kzHIxARBKGqRZO0eTsAUsHCqV85p+nWYD
	GTRdGE6A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vd2B4-0000000CaxE-0dty;
	Tue, 06 Jan 2026 08:12:30 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vd2B2-0000000Caws-0hlt
	for barebox@lists.infradead.org;
	Tue, 06 Jan 2026 08:12:29 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vd2Az-0000vy-QD; Tue, 06 Jan 2026 09:12:25 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vd2Az-009Jdv-21;
	Tue, 06 Jan 2026 09:12:25 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vd2Az-00000008Ae6-2N1S;
	Tue, 06 Jan 2026 09:12:25 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20260105191410.615318-1-a.fatoum@pengutronix.de>
References: <20260105191410.615318-1-a.fatoum@pengutronix.de>
Message-Id: <176768714556.1947523.14658475577213210623.b4-ty@pengutronix.de>
Date: Tue, 06 Jan 2026 09:12:25 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260106_001228_214349_88CA8E2F 
X-CRM114-Status: GOOD (  10.46  )
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
Subject: Re: [PATCH 0/5] usb: dwc3: add fsl,ls1028a-dwc3 glue driver
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 05 Jan 2026 20:12:51 +0100, Ahmad Fatoum wrote:
> Linux seems to move towards not having glue device tree nodes separate
> from the DWC3 nodes. Import the Linux generic driver for use with
> Layerscape and other platforms that may be migrated in future.
> 
> This meant for next and applies on top of the temporary workaround in
> master at
> https://lore.barebox.org/barebox/20260105151921.224540-1-a.fatoum@pengutronix.de/T/#u
> 
> [...]

Applied, thanks!

[1/5] usb: dwc3: export dwc3_core_probe/dwc3_core_remove like Linux
      https://git.pengutronix.de/cgit/barebox/commit/?id=f36ec7051dc4 (link may not be stable)
[2/5] usb: dwc3: add support for Global SoC Bus Configuration Register
      https://git.pengutronix.de/cgit/barebox/commit/?id=cb4e575ec7b2 (link may not be stable)
[3/5] clk: implement and use clk_bulk_get_all_enabled helper
      https://git.pengutronix.de/cgit/barebox/commit/?id=e7a0dc15e85c (link may not be stable)
[4/5] usb: dwc3: add DesignWare USB3 generic platform driver
      https://git.pengutronix.de/cgit/barebox/commit/?id=6d072e926d20 (link may not be stable)
[5/5] Revert "ARM64: dts: Layerscape: workaround v6.19-rc1 DT sync DWC3 breakage"
      https://git.pengutronix.de/cgit/barebox/commit/?id=46f0a50848e9 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



