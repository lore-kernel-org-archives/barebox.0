Delivery-date: Mon, 21 Oct 2024 10:00:31 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t2nL5-006zRA-1F
	for lore@lore.pengutronix.de;
	Mon, 21 Oct 2024 10:00:31 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t2nL4-00027T-P1
	for lore@pengutronix.de; Mon, 21 Oct 2024 10:00:31 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=XdgSEUX710yNf8Uhg91L29U4R5SgIkTkJWD6Ap8UCMQ=; b=nvS3IWgVbHjxGKt6EWKm3g8SNY
	e5/6d6GEmkV3t7cklkc1tKTOea+xqIzu4fe/h/WMw1vEzqaQIk0FTJ/fte0JWjVOy9Kyn9RyxBVxz
	8kE/G0f9fHa377qKkmlUkoLwvPbSBd9FqMcch+2rmhP/afBDQoyPcPx7dDNVICl+M8QGTsV6wvJNu
	nSoLHXxTGO4/jTYRpY8OTiAUhhVEBgmopo1q8gpfuvC29246JuPFpVfLAHTTmC7sY1qf3U4G2C4Go
	FiOCLMsVbyBYtbApQBWDDxQIiN+Ozdxw0+HAEXCKR5BbRzJ//vhnJYfv45us1MzinyrzTY/V2nj38
	2MlwzwCQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t2nKO-00000006TCs-42Ei;
	Mon, 21 Oct 2024 07:59:48 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t2nIa-00000006Syr-1f3O
	for barebox@lists.infradead.org;
	Mon, 21 Oct 2024 07:57:58 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1t2nIX-0001jb-Af; Mon, 21 Oct 2024 09:57:53 +0200
Received: from [2a0a:edc0:2:b01:1d::c5] (helo=pty.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1t2nIX-000elj-0U;
	Mon, 21 Oct 2024 09:57:53 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1t2nIX-005fRG-0D;
	Mon, 21 Oct 2024 09:57:53 +0200
Date: Mon, 21 Oct 2024 09:57:53 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: "open list:BAREBOX" <barebox@lists.infradead.org>
Message-ID: <ZxYJga-58XM-f4uy@pengutronix.de>
References: <20241021-arm-layerscape-tfa-v1-0-0980697b6f66@pengutronix.de>
 <20241021-arm-layerscape-tfa-v1-9-0980697b6f66@pengutronix.de>
 <3435d9d4-2a71-48b6-879a-1dbf043ff6d7@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <3435d9d4-2a71-48b6-879a-1dbf043ff6d7@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241021_005756_456210_133A0C96 
X-CRM114-Status: GOOD (  20.72  )
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
Subject: Re: [PATCH 9/9] ARM: Layerscape: LS1046a: add PSCI node
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi Ahmad,

On Mon, Oct 21, 2024 at 09:33:23AM +0200, Ahmad Fatoum wrote:
> Hello Sascha,
> 
> On 21.10.24 09:21, Sascha Hauer wrote:
> > Unlike other SoCs the LS1046a upstream dtsi files do not have a PSCI
> > node. Add one for barebox and Linux to find the PSCI support.
> > 
> > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> 
> I am wondering how powering CPUs on and off worked before?
> I see no enable-method = "spin-table" in the kernel DT for the SoC.

The PPA is PSCI compatible. The barebox PPA adapter called
of_psci_fixup() to register a PSCI node.

> 
> Anyhow, barebox should probably fixup enable-method = "psci" into each
> CPU in /cpus in the kernel DT.

This is already done in of_psci_fixup().

The PSCI node in the barebox dts is only needed to probe the psci-client
driver which in turn creates/fixups the PSCI node for the kernel. We
already know that we started the TF-A. I thought about using this
knowledge to register the PSCI client driver without explicitly creating
a device node for it, but on the other hand there isn't too much gain in
doing so, so I just created a node for now.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


