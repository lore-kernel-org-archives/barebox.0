Delivery-date: Tue, 14 Nov 2023 14:33:48 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r2tY4-00BK11-0i
	for lore@lore.pengutronix.de;
	Tue, 14 Nov 2023 14:33:48 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r2tY4-0007ln-A9
	for lore@pengutronix.de; Tue, 14 Nov 2023 14:33:48 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=408ZvMtGLwORE9MX9wyy/fzOH2mWMIihDHuR0WHPsi0=; b=iAWXa564oHh2FoMzHwT/drTtTg
	n4rWDQ3LLf8tzsSWfy6ROAhsZbGn4fHuU5vmmtf3wUgr9C0l1F1+mzVIMp5g2IuDNCAS/KjV6EvJz
	1EfpTvwommg6znSxgfladNG/dgANtD4KNtrZQw8doA60eM0keDCLBIFrWXOIgIv7sR99YVkBrmkmm
	C0N1LTupQmOCcDCzCyiB0e0j5xZ8lp7MuIwYWLOZMvDC5M6YhWoPsLu1kqqv8CF0mWPA3iH20WrC3
	x9tSr0wNQcqrHo+hqMdEphD1vn3/ufl3R1ycSvVEsQoX5zftSezwP1yVHGOM+RwkvkoEFEEoY5m3o
	0SiXno4g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r2tX5-00G3Uv-2R;
	Tue, 14 Nov 2023 13:32:47 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r2tX3-00G3UF-01
	for barebox@lists.infradead.org;
	Tue, 14 Nov 2023 13:32:46 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1r2tX0-0007Si-Gc
	for barebox@lists.infradead.org; Tue, 14 Nov 2023 14:32:42 +0100
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <mfe@pengutronix.de>)
	id 1r2tX0-0090RG-48
	for barebox@lists.infradead.org; Tue, 14 Nov 2023 14:32:42 +0100
Received: from mfe by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1r2tX0-0022DJ-1y
	for barebox@lists.infradead.org; Tue, 14 Nov 2023 14:32:42 +0100
Date: Tue, 14 Nov 2023 14:32:42 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: barebox@lists.infradead.org
Message-ID: <20231114133242.kjagfy6zf2wfvtte@pengutronix.de>
References: <20231114125931.2980297-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231114125931.2980297-1-m.felsch@pengutronix.de>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231114_053245_041802_BD0ACF83 
X-CRM114-Status: UNSURE (   6.73  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] mci: core: add partitioning_completed device parameter
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 23-11-14, Marco Felsch wrote:
> Add mmcX.partitioning_completed parameter so it can be queried by
> scripts and board code.
> 
> Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>

Please ignore this patch, I send the wrong patch.

Regards,
  Marco


