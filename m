Delivery-date: Mon, 13 Sep 2021 18:25:07 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mPolX-0002NT-4m
	for lore@lore.pengutronix.de; Mon, 13 Sep 2021 18:25:07 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mPolW-0000Za-6G
	for lore@pengutronix.de; Mon, 13 Sep 2021 18:25:06 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:Cc:To:Subject:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=ciFh/Rmo6lxYsMkiuW1UjLKLXKktPNn+n4ncI4R3l+o=; b=5FDxluU2nfwa59xP2iaWXh+pEx
	KYCBIBFVXXMotLUF1QdEuclFOVlNdEahdVCN9fP6S4yEctn5MdiMmatbqj5cebZfVv0c9O/lQilzU
	Jgq67y3rczXo0/ZpC866zN1HpaNwy5NIoxCBm18SutMfOhkhDwmtIyPebAeUDfm2mqzNkd0X7KdtL
	BtAEq883qowtLKz6cUEVoPDmAxL+IQAPJnfMM7LTAE1T0JAZE7y1Qu+28EJrW2oKu7cqZPyaxxI6Q
	vtt2NsWOVyFRJIvgtmiwYFuqfjFYm8R5dj8cydPwNAcd/hcQCh9ffeVdFfg2U7RxEE73zZDGb3Qv6
	7o2llqZg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mPok2-002Mi6-T7; Mon, 13 Sep 2021 16:23:34 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mPojx-002MhP-Pv
 for barebox@lists.infradead.org; Mon, 13 Sep 2021 16:23:31 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[127.0.0.1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1mPojv-0000Lg-3q; Mon, 13 Sep 2021 18:23:27 +0200
To: Michael Riesch <michael.riesch@wolfvision.net>, barebox@lists.infradead.org
Cc: Michael Tretter <m.tretter@pengutronix.de>
References: <20210913152536.27073-1-michael.riesch@wolfvision.net>
 <20210913152536.27073-3-michael.riesch@wolfvision.net>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <dacf4fe7-e036-c15e-aa80-832a7fbcc699@pengutronix.de>
Date: Mon, 13 Sep 2021 18:23:26 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <20210913152536.27073-3-michael.riesch@wolfvision.net>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210913_092329_898364_3EC15BD5 
X-CRM114-Status: GOOD (  18.96  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 2/2] arm: dts: zynqmp: add alias gpio0 to zcu104 and
 zcu106 boards
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi,

On 13.09.21 17:25, Michael Riesch wrote:
> From: Michael Tretter <m.tretter@pengutronix.de>
> 
> Add the alias gpio0 to all Xilinx Zynq UltraScale+ MPSoC boards.

Please add this to arch/arm/dts/zynqmp.dtsi and include that new file
here.

Cheers,
Ahmad

> 
> Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
> [add alias to zcu106]
> Signed-off-by: Michael Riesch <michael.riesch@wolfvision.net>
> ---
>  arch/arm/dts/zynqmp-zcu104-revA.dts | 4 ++++
>  arch/arm/dts/zynqmp-zcu106-revA.dts | 4 ++++
>  2 files changed, 8 insertions(+)
> 
> diff --git a/arch/arm/dts/zynqmp-zcu104-revA.dts b/arch/arm/dts/zynqmp-zcu104-revA.dts
> index 95b60a6b1..bc28937ac 100644
> --- a/arch/arm/dts/zynqmp-zcu104-revA.dts
> +++ b/arch/arm/dts/zynqmp-zcu104-revA.dts
> @@ -10,6 +10,10 @@
>  #include <arm64/xilinx/zynqmp-zcu104-revA.dts>
>  
>  / {
> +	aliases {
> +		gpio0 = &gpio;
> +	};
> +
>  	chosen {
>  		environment {
>  			compatible = "barebox,environment";
> diff --git a/arch/arm/dts/zynqmp-zcu106-revA.dts b/arch/arm/dts/zynqmp-zcu106-revA.dts
> index 7c5058826..c9c6d9d55 100644
> --- a/arch/arm/dts/zynqmp-zcu106-revA.dts
> +++ b/arch/arm/dts/zynqmp-zcu106-revA.dts
> @@ -11,6 +11,10 @@
>  #include <arm64/xilinx/zynqmp-zcu106-revA.dts>
>  
>  / {
> +	aliases {
> +		gpio0 = &gpio;
> +	};
> +
>  	chosen {
>  		environment {
>  			compatible = "barebox,environment";
> 


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

