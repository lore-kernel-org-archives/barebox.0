Delivery-date: Wed, 28 May 2025 18:28:44 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uKJe0-001FNc-0Y
	for lore@lore.pengutronix.de;
	Wed, 28 May 2025 18:28:44 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uKJdz-0001fB-0H
	for lore@pengutronix.de; Wed, 28 May 2025 18:28:43 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To
	:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=O6bvDoCvP3EYtnRZtnP+1SPoGmb8EW30+ISegTo3ZqA=; b=VJixjnU7VIzsiRXosLsQ0rKThN
	lbz1Dr6C+f8YYkACCu9kIfzrp6CGZA75VeF1D7wd3nQ2APwKzISKxAe36NXLj9+hBd/K4rEtKwMDs
	JA0u30ZQZC6KCONGnmvDKFqCXRMCyJW4X03W7n0e0jO+GLC3AtG8DZXjofY7OZgN5W0CyV+y1IFEF
	aNg0BxCsuAZ3lAZ4fd8FTs/d5/BDrd+z8FwDsdMQTiRPKtdOYKX8uALh7NT1oCOJCO9Za+pwJTILP
	OGxkvOeQcHXwo3B+0jFZI7hdjfdWx4yN9/6KmZKum/Bineqdgm2xSEMsEgLt30X3JV2qSyvpI4so0
	FlLREbMw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uKJdV-0000000Df2T-0zpc;
	Wed, 28 May 2025 16:28:13 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uKIsG-0000000DZXe-1QXQ
	for barebox@lists.infradead.org;
	Wed, 28 May 2025 15:39:25 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1uKIsF-0006ta-3H; Wed, 28 May 2025 17:39:23 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1uKIsE-000c3C-2x;
	Wed, 28 May 2025 17:39:22 +0200
Received: from mfe by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1uKIsE-00EXbk-2f;
	Wed, 28 May 2025 17:39:22 +0200
Date: Wed, 28 May 2025 17:39:22 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: Michael Tretter <m.tretter@pengutronix.de>
Message-ID: <20250528153922.tqyceeu7ctwk5hw6@pengutronix.de>
References: <20250528-rk3588-optee-v2-0-63070238dd13@pengutronix.de>
 <20250528-rk3588-optee-v2-8-63070238dd13@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250528-rk3588-optee-v2-8-63070238dd13@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250528_083924_378624_2F86EBDC 
X-CRM114-Status: GOOD (  15.61  )
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
Cc: BAREBOX <barebox@lists.infradead.org>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-6.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 8/9] ARM: rockchip: pass device tree to TF-A
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 25-05-28, Michael Tretter wrote:
> The upstream OP-TEE expects a device tree to be able to initialize the
> dynamic shared memory. Therefore, barebox should pass a device tree that
> contains memory nodes through the TF-A to OP-TEE.
> 
> OP-TEE may modify the passed fdt. Thus, barebox copies the fdt from the
> fixed size rodata area to the rk_scratch area and allocates a
> configurable memory area for the fdt to allow fdt modification.
> 
> OP-TEE has the CFG_DTB_MAX_SIZE config option for the maximum size of
> the fdt. barebox must reserve at least that much memory for the fdt to
> avoid out of bounds accesses from OP-TEE.
> 
> Unfortunately, the downstream TF-A fails to start if barebox passes its
> device tree and it is not possible to detect if the loaded TF-A is able
> to handle the device tree. Add a config option to pass the device tree
> if it is possible.
> 
> Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>

Reviewed-by: Marco Felsch <m.felsch@pengutronix.de>


