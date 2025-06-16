Delivery-date: Mon, 16 Jun 2025 15:33:10 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uR9xW-007w3W-1e
	for lore@lore.pengutronix.de;
	Mon, 16 Jun 2025 15:33:10 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uR9xV-00076G-VV
	for lore@pengutronix.de; Mon, 16 Jun 2025 15:33:10 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Qg4QiGVUAvJMsFDnFbKAnvIT14QOfnZe1Hr/++rd9qY=; b=gTLqsXc2w+PF9N2Dm+UOc7bdgd
	3CuGYCcZPwXZkiGqaPYzG2pZMuYkTg/Jpm336fvYP+GRgAAjrJdIGUIOBPoKHOIvnVa10vnGEL9ml
	6TeE7joe+C0WZNy2ARm0oTwwK0WXBkJ7sMTNDQi3Gczsagom1k8xGkwsr51dhyWXg7ecSTZxBcjft
	+GG8mTDAM5I1FjiKJMRlmQfFkk0LzTQSCDaYAsjTtBuNA3/uGB5rMQGyPlmFzeU3uCLBUuenk4tAk
	89Lrm51eJVe4Ks2+Ym6cOoj2EiuhvKiKwHNhHDN3/TPeNCXGZ1y7cVidtHOhQ22Hz2f055QpafHDP
	gpbbvypw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uR9x5-00000004YaT-0Xaf;
	Mon, 16 Jun 2025 13:32:43 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uR8WU-00000004Hxy-18jI
	for barebox@lists.infradead.org;
	Mon, 16 Jun 2025 12:01:11 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uR8WS-0003N7-Vp; Mon, 16 Jun 2025 14:01:09 +0200
Message-ID: <dd760e52-9011-470e-9794-509519593875@pengutronix.de>
Date: Mon, 16 Jun 2025 14:01:08 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>,
 BAREBOX <barebox@lists.infradead.org>
References: <20250605-arm-k3-am62l-v2-0-53257d4b2dd2@pengutronix.de>
 <20250605-arm-k3-am62l-v2-29-53257d4b2dd2@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20250605-arm-k3-am62l-v2-29-53257d4b2dd2@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250616_050110_312490_A44942D4 
X-CRM114-Status: GOOD (  18.21  )
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
X-Spam-Status: No, score=-6.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 29/33] ARM: dts: k3-am62l: reserve memory for TF-A and
 OP-TEE
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)



On 6/5/25 14:42, Sascha Hauer wrote:
> On the AM62l the TF-A is placed at the start of the DRAM. Reserve space
> for it. For now put it into the SoC dtsi file in the hope that the
> values are suitable for all boards.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  arch/arm/dts/k3-am62l-barebox.dtsi | 19 +++++++++++++++++++
>  1 file changed, 19 insertions(+)
> 
> diff --git a/arch/arm/dts/k3-am62l-barebox.dtsi b/arch/arm/dts/k3-am62l-barebox.dtsi
> index 9fe44a67ee7374e6c6d9052dc8ea0f31d2e8f4a1..fa253dd08ee9c117bedff9f981aa76e024d3cca8 100644
> --- a/arch/arm/dts/k3-am62l-barebox.dtsi
> +++ b/arch/arm/dts/k3-am62l-barebox.dtsi
> @@ -14,3 +14,22 @@ &gpio2 {
>  &wkup_gpio0 {
>  	status = "okay";
>  };
> +
> +/ {
> +	reserved-memory {
> +		#address-cells = <2>;
> +		#size-cells = <2>;
> +		ranges;
> +
> +		tfa@80000000 {
> +			reg = <0x0 0x80000000 0x0 0x80000>;
> +			alignment = <0x1000>;

Not sure alignment makes sense if you already have reg.

> +			no-map;
> +		};
> +
> +		secure_ddr: optee@80200000 {
> +			reg = <0x00 0x80200000 0x00 0x400000>;
> +			no-map;
> +		};
> +	};
> +};
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



