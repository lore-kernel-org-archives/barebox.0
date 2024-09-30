Delivery-date: Mon, 30 Sep 2024 08:36:56 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1svA1f-004T8n-1E
	for lore@lore.pengutronix.de;
	Mon, 30 Sep 2024 08:36:56 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1svA1f-0007oZ-St
	for lore@pengutronix.de; Mon, 30 Sep 2024 08:36:56 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Sj0nGQse6eGaPWXvbFDZd9c59dD2uMRSbxr0WDFuYWI=; b=bsCONXaekIIPc1D1kyRowMGWe+
	OsCnjmRPzPDCpxTXxvsHJrh1bsVF3i6QceSjq659UhtqHLG4eqgKJvF6Y0OktvFfNCaWjqMZGsmAS
	pr5m7ePKRUjbSMR3kRd2POnFwoCXZpuwytlaBUGl/ryeNRPTicMEsj3CpM13JZh3oB2Xntl27bWyq
	1UO77Sb48/QJ8kkYMvEVcr/npzlFECo8xZFGhEuXQEQbE8BQZjZo/rGwnN/K0FN3LdP3aZ03BezOm
	QA8+uQeq532O8TjMaY3HQnG8J4y0IyeaUcFNX0ctuOK9y1eQ8JZdcOC1M/8M1BXWGEXR8FnP83tw4
	hE3Skl+w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1svA0p-0000000G4CT-1t4V;
	Mon, 30 Sep 2024 06:36:03 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1svA0l-0000000G4Bd-0bMQ
	for barebox@lists.infradead.org;
	Mon, 30 Sep 2024 06:36:01 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1svA0g-0007J2-F9; Mon, 30 Sep 2024 08:35:54 +0200
Message-ID: <0ca5ba95-48e4-49e5-b603-1b84f084b2e6@pengutronix.de>
Date: Mon, 30 Sep 2024 08:35:54 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>,
 "open list:BAREBOX" <barebox@lists.infradead.org>
References: <20240927-vop2-v2-0-dc8dcfc651d5@pengutronix.de>
 <20240927-vop2-v2-15-dc8dcfc651d5@pengutronix.de>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240927-vop2-v2-15-dc8dcfc651d5@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240929_233559_221787_7B87900B 
X-CRM114-Status: GOOD (  14.92  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 15/15] video: Rockchip: Add VOP2 driver
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 27.09.24 12:37, Sascha Hauer wrote:
> This adds support for the Rockchip VOP2 video core found on the Rockchip
> SoCs RK3566, RK3568 and RK3588. The code is based on the Linux driver
> and has been heavily stripped down for barebox. Support for the cluster
> windows has been removed, also support for YUV modes has been dropped.
> 
> Tested-by: Ahmad Fatoum <a.fatoum@pengutronix.de> # rk3566 HDMI
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---

> +struct driver vop2_driver = {
> +	.probe = vop2_bind,
> +	.name = "rockchip-vop2",
> +	.of_compatible = vop2_dt_match,
> +};
> +device_platform_driver(vop2_driver);

Unfortunately, this causes the VOP2 driver to hang my CPU on the first
MMIO access, unless I move it back to late_initcall level.

I added *_ensure_probed for the Rockchip I/O domain device, but this
didn't help and I am not sure where exactly (device dependency? timing?)
the problem is. Any ideas?

Thanks,
Ahmad


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


