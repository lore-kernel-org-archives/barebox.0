Delivery-date: Wed, 21 Jan 2026 13:00:57 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1viWtO-003keQ-0D
	for lore@lore.pengutronix.de;
	Wed, 21 Jan 2026 13:00:57 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1viWtN-00071W-38
	for lore@pengutronix.de; Wed, 21 Jan 2026 13:00:57 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Yah1aHTaehQMQdqskBSts/YpX6WqszWol90/vUe4vbo=; b=r9IA9m0b1c6eBucgJMt1uPnHNk
	yGMON9DxiCDOf3uaMKW76ILJBeKimvD+ZVLH4OiYGi7CjPv+DEuUd/bP6a3ZXSxTg3eZDdM1kA+7V
	yqGSGCxBv59Ozry+XTuqD8NR0pANmdJOlYjksjkhQBVZzBGr3/7d0Nxk1OqQnYzoxCiDdlmdUgx2P
	n++x+975pYHswT2Ykb3fWAD4h0YuNtf790CX1kByWrXVATVz3DK8qhLXOaCFZLWBWUgUJHh9Q+rLE
	VSuMLWRpWlYzACnuhUn1utEg4szIvuYG+DOYlnXe10qG/Ej1SvZpTeNtgJwGIRI9BuI9RGHz1QXSd
	PZzr7RJg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1viWsp-00000005NbW-3f8D;
	Wed, 21 Jan 2026 12:00:23 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1viWsn-00000005Nav-2x16
	for barebox@lists.infradead.org;
	Wed, 21 Jan 2026 12:00:22 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1viWsm-0006sS-7P; Wed, 21 Jan 2026 13:00:20 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1viWsm-001k5W-2G;
	Wed, 21 Jan 2026 13:00:20 +0100
Received: from mfe by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1viWsl-0076dL-33;
	Wed, 21 Jan 2026 13:00:19 +0100
Date: Wed, 21 Jan 2026 13:00:19 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20260121120019.vhq2qxvwl2d72dru@pengutronix.de>
References: <20260121113234.1438699-1-a.fatoum@pengutronix.de>
 <20260121113234.1438699-2-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260121113234.1438699-2-a.fatoum@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260121_040021_739154_2469BEE5 
X-CRM114-Status: GOOD (  16.41  )
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
Subject: Re: [PATCH 2/2] arm: dts: rk356x: rock3a: disable pcie3x2
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 26-01-21, Ahmad Fatoum wrote:
> The board hangs occasionally on PCI probe after:
> 
>   phy7: lane number 0, val 1
> 
> On other boots, it continues to:
> 
>   rockchip-dw-pcie 3c0800000.pcie@fe280000.of: Phy link never came up
> 
> In both cases, the hang affects the second PCIe host controller
> to probe and the first probe never hangs:
> 
>   rockchip-dw-pcie 3c0000000.pcie@fe260000.of: Phy link never came up
> 
> This hang happens on the very first read access to the PCI controller
> at register PCIE_ATU_VIEWPORT. Reading Linux code, the first access
> seems to be to PCIE_VERSION_NUMBER (0x8F8), but accessing that in
> barebox equally hangs from time to time.
> 
> My board doesn't have any PCIe devices connected and this hang
> doesn't happen in Linux and doesn't happen on the QNAP
> TS433-eU, which is also RK3568, but actually has PCIe devices, which are
> probed normally.
> 
> Disable the device in barebox, so the board is usable with
> rockchip_v8_defconfig, which enables the PCI driver.
> barebox,status is used, so the Linux device tree is not affected.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

Reviewed-by: Marco Felsch <m.felsch@pengutronix.de>


