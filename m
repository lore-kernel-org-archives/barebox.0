Delivery-date: Mon, 23 Feb 2026 11:49:28 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vuTVH-004nlO-0N
	for lore@lore.pengutronix.de;
	Mon, 23 Feb 2026 11:49:28 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vuTVH-0002OI-Dq
	for lore@pengutronix.de; Mon, 23 Feb 2026 11:49:27 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=bvD3VfPPfmzCrX1iEaXqBOEo9c3iU7F78EZ2VLpgeH0=; b=y9pY6aUKgWyxDpj2QJkIlg4AmE
	VOrKu66vYWW4ny6YyXD+EUuz2vjh2On8zzpFN9PCfdl0DX/T+76XJRhMW7AeawBUWzIgp68l+2sk+
	hceyaRarYXCVb+wUHztWDAL9uGSSF8skl/SKy8Tlo/BdZ52klkAsoFRptNdrUuYmtFwcriZPsuVgY
	/dJ149FiTD8AiAXZWDbhyS0ya+BnCgw9m8QmmBAl4i/goZGK+CWIJ43MU7VxePZHla7KXk6CBp7jH
	6Pja8ybhBGksdsumItoYSVYHVXa6VWP6tYFpigrblAgciWUC+djOeAYUBJ1SLHgAcWOjC6DlcmZj3
	1rQuU4Ag==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vuTUk-000000005Zq-3GZa;
	Mon, 23 Feb 2026 10:48:54 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vuTUh-000000005ZR-31vl
	for barebox@lists.infradead.org;
	Mon, 23 Feb 2026 10:48:53 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vuTUg-0002KS-5a; Mon, 23 Feb 2026 11:48:50 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vuTUe-002DKo-1l;
	Mon, 23 Feb 2026 11:48:49 +0100
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vuTUf-00000000t3z-3VFA;
	Mon, 23 Feb 2026 11:48:49 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Giandomenico Rossi <rossi@amelchem.com>
In-Reply-To: <20260213191247.1671231-1-rossi@amelchem.com>
References: <20260213191247.1671231-1-rossi@amelchem.com>
Message-Id: <177184372982.211548.2303361921166129847.b4-ty@pengutronix.de>
Date: Mon, 23 Feb 2026 11:48:49 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260223_024851_806079_CE2AD1C6 
X-CRM114-Status: UNSURE (   8.56  )
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
Subject: Re: [PATCH v1 0/4] video: add ILI9488 panel support with MIPI DBI
 Type C1
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Fri, 13 Feb 2026 20:12:43 +0100, Giandomenico Rossi wrote:
> this series adds support for TFT LCD panels based on the Ilitek ILI9488
> controller connected via MIPI DBI Type C Option 1 over SPI.
> 
> The target panel is the Winstar WF35-320480UD (480x320, RGB666 18-bit),
> used on a custom STM32MP151A-based board by Amel s.r.l.
> 
> MIPI DBI Type C Option 1 requires 9-bit SPI transfers where the MSB
> encodes the Data/Command flag. Since many SPI controllers do not support
> 9 bits-per-word natively, a native 9-bit implementation and an 8-bit
> emulation fallback are both provided.
> 
> [...]

Applied, thanks!

[1/4] video: mipi-dbi: support for MIPI DBI Type C Option 1
      https://git.pengutronix.de/cgit/barebox/commit/?id=0a02c6f21450 (link may not be stable)
[2/4] video: mipi-dbi: add display rotation support
      https://git.pengutronix.de/cgit/barebox/commit/?id=d7d81d4b18e6 (link may not be stable)
[3/4] dt-bindings: display: panel: add Ilitek ILI9488 panel
      https://git.pengutronix.de/cgit/barebox/commit/?id=b07110e272e7 (link may not be stable)
[4/4] video: add Ilitek ILI9488 driver for WF35 panel
      https://git.pengutronix.de/cgit/barebox/commit/?id=029a6d1cf4a6 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



