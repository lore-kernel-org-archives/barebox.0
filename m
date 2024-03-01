Delivery-date: Fri, 01 Mar 2024 14:36:24 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rg33o-0026Wl-1E
	for lore@lore.pengutronix.de;
	Fri, 01 Mar 2024 14:36:24 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rg33n-0004i3-IT
	for lore@pengutronix.de; Fri, 01 Mar 2024 14:36:24 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=7rJRZT91NwklQjU+v2oiSFWbQ1hvJuWYF314kV0TyHA=; b=j1DAwBdXJDAHfjF9QdcoX1oivI
	foLeQi0Wkeat93pRbu/ZZC20dfYOqRfFLHtlnwYB761HpKblWvZv3957VQJaMqybxPdA/oHuLNAs6
	K4/NkyMIzc2cl4fN6itxqodWLOcY70AgWvTeahN94Gxg2C9uh7W+B7lPHLIEwVhUJNCXdG/DxCmMt
	TOhkxhLsFnQWg+GG7QHVuGmowI8kjG93C0dwSxfQl+OzLGVxZa+W+tS7Y6AvqxGsfDql6XGwmWstT
	9hvviZqHKKjCi7QtN6Vw8WAU/WglmjbTOzRnwC74f4vEJSm6DKW7XljA5jaPNEMaIR0Q9EGB4xWXo
	Pscfjb7w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rg338-00000000ViW-1BIN;
	Fri, 01 Mar 2024 13:35:42 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rg2ZE-00000000Hn4-32f4
	for barebox@lists.infradead.org;
	Fri, 01 Mar 2024 13:04:50 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rg2ZD-0000Zl-18
	for barebox@lists.infradead.org; Fri, 01 Mar 2024 14:04:47 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rg2ZC-003mfo-Gw
	for barebox@lists.infradead.org; Fri, 01 Mar 2024 14:04:46 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rg2ZB-000jfC-2y
	for barebox@lists.infradead.org;
	Fri, 01 Mar 2024 14:04:46 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Fri,  1 Mar 2024 14:04:41 +0100
Message-Id: <20240301130445.171385-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240301_050448_821241_C6F62AAA 
X-CRM114-Status: UNSURE (   6.92  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 0/4] of: fdt: read blspec/FIT DT compat without unflattening
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

blspec and FIT systems usually have multiple entries/configurations,
where a suitable one should be selected at runtime by comparing each
against the board's barebox DT compatible.

For blspec, this meant we need to unflatten the whole DT only to access
a single property. For FIT, this meant we expected the configuration to
carry a "compatible" property and didn't even attempt to parse it out of
the fdt as fallback. Both are resolved with this series.

Ahmad Fatoum (4):
  of: fdt: factor out FDT header parsing
  of: fdt: implement fdt_machine_is_compatible
  blspec: don't parse whole device tree to compare compatibles
  FIT: support finding compatible configuration by FDT compatible

 common/blspec.c    |  16 ++---
 common/image-fit.c |  39 ++++++++++-
 drivers/of/fdt.c   | 171 ++++++++++++++++++++++++++++++++++++---------
 include/of.h       |   8 +++
 4 files changed, 191 insertions(+), 43 deletions(-)

-- 
2.39.2



