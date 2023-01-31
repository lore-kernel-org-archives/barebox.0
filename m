Delivery-date: Tue, 31 Jan 2023 09:21:55 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pMlts-008cZV-Od
	for lore@lore.pengutronix.de; Tue, 31 Jan 2023 09:21:55 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pMltq-0007uf-3Q
	for lore@pengutronix.de; Tue, 31 Jan 2023 09:21:54 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=WzhIqFM1f8/H2/VtAsjzcF4pu496LvNrqx3MfhCQmRQ=; b=f5rfpzUwyX7yJltfsBvLFuih33
	AaaQX5GetIWR8IU2hW2ZZn8Un/sFn5xubzdKrlboSp+wkD+o32hHkxrVZMWpf/KSkhG+GouCTkCgC
	BL5rJf9+Jmn2Um+nUs2tUy0Mn1v/yFb2A0ibbMRX4e1Rc4EKOqTsvBCNnyMkHqQb4b2L+dwZESRYN
	oSfGgexvaVUUPc5Opby73uznadRhR2mU86ty3L1kAITr0N1TePaFcgn9HVul74ce9YM4eo13G0XGa
	OVC3yPZs+ETy7uDuxpDqUWgNNMUOQtSt+6bD/P8pm/Opl9eDKYgmk6+1FETXJZzvzNIe4ssjKuKA9
	hF0XSgHw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pMlsj-006gH4-4E; Tue, 31 Jan 2023 08:20:45 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pMlsd-006gFm-7B
	for barebox@lists.infradead.org; Tue, 31 Jan 2023 08:20:40 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pMlsb-0007ZK-Rt; Tue, 31 Jan 2023 09:20:37 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pMlsb-00071h-Lv; Tue, 31 Jan 2023 09:20:37 +0100
Date: Tue, 31 Jan 2023 09:20:37 +0100
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20230131082037.GA13319@pengutronix.de>
References: <20230130072157.34711-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230130072157.34711-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230131_002039_278282_486B6BCF 
X-CRM114-Status: GOOD (  22.72  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] ARM: i.MX8MM: innocomm-wb15: use revised PMIC settings
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, Jan 30, 2023 at 08:21:57AM +0100, Ahmad Fatoum wrote:
> Original values used when WB15 support was upstreamed were taken from
> EVK, but original U-Boot port, we had been running for years now, is
> configured differently and is known to be stable. Revert to those values.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  .../arm/boards/innocomm-imx8mm-wb15/lowlevel.c | 18 ++++++++++++++----
>  1 file changed, 14 insertions(+), 4 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/arch/arm/boards/innocomm-imx8mm-wb15/lowlevel.c b/arch/arm/boards/innocomm-imx8mm-wb15/lowlevel.c
> index 2077d3c88eb2..f7753bd32671 100644
> --- a/arch/arm/boards/innocomm-imx8mm-wb15/lowlevel.c
> +++ b/arch/arm/boards/innocomm-imx8mm-wb15/lowlevel.c
> @@ -35,14 +35,24 @@ static void setup_uart(void)
>  }
>  
>  static struct pmic_config bd71837_cfg[] = {
> +	/* unlock the PMIC regs */
> +	{ BD718XX_REGLOCK, 0x0 },
> +	/* retry powering up indefinitely every 250ms after VR fault */
> +	{ BD718XX_RCVCFG, 0xfc },
>  	/* decrease RESET key long push time from the default 10s to 10ms */
>  	{ BD718XX_PWRONCONFIG1, 0x0 },
> -	/* unlock the PMIC regs */
> -	{ BD718XX_REGLOCK, 0x1 },
> +	/* WDOG_B: Warm Reset */
> +	{ BD718XX_PWRCTRL0, 0xa3 },
> +	/* READY=>SNVS on PMIC_ON_REQ, SNVS=>RUN on VSYS_UVLO */
> +	{ BD718XX_TRANS_COND0, 0x48 },
> +	/* WDOG_B: Go to SNVS power state after deassert */
> +	{ BD718XX_TRANS_COND1, 0xc0 },
>  	/* Set VDD_SOC/VDD_DRAM to typical value 0.85v for nominal mode */
>  	{ BD718XX_BUCK1_VOLT_RUN, 0xf },
> -	/* increase VDD_DRAM to 0.975v for 3Ghz DDR */
> -	{ BD718XX_1ST_NODVS_BUCK_VOLT, 0x83 },
> +	/* increase VDD_DRAM to 0.900v for 2400MT/s DDR */
> +	{ BD718XX_1ST_NODVS_BUCK_VOLT, 0x02 },
> +	/* set BUCK8 to 1.10v */
> +	{ BD718XX_4TH_NODVS_BUCK_VOLT, 0x1e },
>  	/* lock the PMIC regs */
>  	{ BD718XX_REGLOCK, 0x11 },
>  };
> -- 
> 2.30.2
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


