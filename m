Delivery-date: Fri, 12 Jun 2026 16:17:17 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wY2hB-0055Ow-2b
	for lore@lore.pengutronix.de;
	Fri, 12 Jun 2026 16:17:17 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wY2hB-00057d-2C
	for lore@pengutronix.de; Fri, 12 Jun 2026 16:17:17 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Q0NNBgkMVOFQowIriM+GyJGdcRTk248SZEUJNRuKkBU=; b=X78ZMEgscUcLI2D6B9HYJ9FkoG
	XkBLXjkhUfDamqHdVnf/L4azVEJ7p/ZDxMIVmkQwcaVhTzcFAWI4M3ZRFJMJsWWa9oqcJ0iQb485c
	VkBq7QM/V+Z9f2w2zKfMyeencS7C5cp5f+QC8yfAaRU9cmJp2g4wy6psQbMRIbl197KJYimyehaeZ
	z2f7bEW74iRHaa3W/O2zy2S0cwnUjIoonHMCQ9Zqeafo3F38IutXuUC2kc5vaMVrUNrroMB1grkpu
	H79pM9RadIPzDsNJrvvPOgmA01YqOjYRveuUfn3KD1fjjgDr3xvrjVGW8nLVksgEt1t//K2vI+GX7
	iuacB+pA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wY2fg-0000000B2ce-3cT6;
	Fri, 12 Jun 2026 14:15:44 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wY2fe-0000000B2cH-3sqb
	for barebox@lists.infradead.org;
	Fri, 12 Jun 2026 14:15:44 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wY2fc-0004Zr-L2; Fri, 12 Jun 2026 16:15:41 +0200
Message-ID: <c3ffa653-e2e8-4b11-a5b4-4a9e1c60e2e9@pengutronix.de>
Date: Fri, 12 Jun 2026 16:15:32 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Bastian Krause <bst@pengutronix.de>, barebox@lists.infradead.org
Cc: Marco Felsch <mfe@pengutronix.de>
References: <20260612115800.3475528-1-bst@pengutronix.de>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20260612115800.3475528-1-bst@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260612_071542_994780_CE4D46DC 
X-CRM114-Status: GOOD (  18.60  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] ARM: dts: i.MX8MP FRDM: remove memory node
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello,

On 6/12/26 13:58, Bastian Krause wrote:
> Since f083fffe52 ("ARM: dts: i.MX8MP: add DDRC compatibles") the esdctl
> driver is used. This causes the errors below since barebox tries to add
> the memory twice:
> 
>   imx-esdctl 3d400000.memory-controller@3d400000.of: probe failed: Device or resource busy
>   initcall imx_esdctl_driver_init+0x0/0x2c failed: No such device

Can you share the full output? -EBUSY here is not expected for
the issues you describe. barebox has been tolerant of the same
memory bank being registered by different means for a number
of years now.

> Remove the memory node to fix this.
> 
> 604c974c968 ("ARM: dts: i.MX8MP: remove memory node") already fixed this
> for the i.MX8MP EVK and the TQMa8MPxL on the MBa8MPxL.

This commit doesn't exist upstream.

> 
> Fixes: f083fffe52 ("ARM: dts: i.MX8MP: add DDRC compatibles")

This commit is 3 years old and the FRDM was only added this year.
Was the error message there all the time..?

Thanks,
Ahmad


> Signed-off-by: Bastian Krause <bst@pengutronix.de>
> ---
>  arch/arm/dts/imx8mp-frdm.dts | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/arch/arm/dts/imx8mp-frdm.dts b/arch/arm/dts/imx8mp-frdm.dts
> index b1870213baf..7d770c3e456 100644
> --- a/arch/arm/dts/imx8mp-frdm.dts
> +++ b/arch/arm/dts/imx8mp-frdm.dts
> @@ -11,3 +11,5 @@
>  / {
>  	barebox,deep-probe;
>  };
> +
> +/delete-node/ &{/memory@40000000};


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


