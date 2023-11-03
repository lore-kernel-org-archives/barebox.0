Delivery-date: Fri, 03 Nov 2023 08:39:56 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qyoma-00GjtT-T9
	for lore@lore.pengutronix.de; Fri, 03 Nov 2023 08:39:56 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qyomW-0000qj-Lf
	for lore@pengutronix.de; Fri, 03 Nov 2023 08:39:56 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=KRT/RLSFxJr4QXdmV5OOIoX+E1yrXFYgzAytW63qwy0=; b=kzVd/qTV7UygiJuuCUgffz/cXu
	ZcA439mW5S/nRUN/+QnaX3/yBvcKpAZMhsCwqMQ6dQcM5UsU1j3boKii6taxyz1tWaC8nAWrjsmBU
	I1iqV1+lW95mcyGjo5PWfS37o926Inue/H0OF/NlX82QAxyb2QTLrB565h2K3sqMOdt8CTwOXzvgK
	Ddg9tALR83RYKQgbl+LZiHFKHXnePdKuM1WYpJ00fsSboPc5K5ByO2ZMa9Fe05khfnPKC9OBTnUCi
	i99lIYvhMjFZGSCS1z2MnSrCqCe6TxvI7RCUYyaao2ZCLOQgA0Tsy6XgbUBbzQMemIoVU+s6z7MHE
	ZIJK814A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qyolA-00Atuf-0I;
	Fri, 03 Nov 2023 07:38:28 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qyol4-00AttW-1G
	for barebox@lists.infradead.org;
	Fri, 03 Nov 2023 07:38:26 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qyol3-0000XU-7P; Fri, 03 Nov 2023 08:38:21 +0100
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1qyol2-006GL8-RW; Fri, 03 Nov 2023 08:38:20 +0100
Received: from sha by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qyol2-0009jx-PI; Fri, 03 Nov 2023 08:38:20 +0100
Date: Fri, 3 Nov 2023 08:38:20 +0100
To: Oleksij Rempel <o.rempel@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20231103073820.GP3359458@pengutronix.de>
References: <20231102080307.2960858-1-o.rempel@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231102080307.2960858-1-o.rempel@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231103_003822_426893_FCCE5EB0 
X-CRM114-Status: GOOD (  16.81  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH v1] arm: dts: imx8mp-skov: fix reset reason detection
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Thu, Nov 02, 2023 at 09:03:07AM +0100, Oleksij Rempel wrote:
> Set PMIC as default reset source to fix reset reason detection.
> 
> Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
> ---
>  arch/arm/dts/imx8mp-skov.dts | 1 +
>  1 file changed, 1 insertion(+)

Applied, thanks

Sascha

> 
> diff --git a/arch/arm/dts/imx8mp-skov.dts b/arch/arm/dts/imx8mp-skov.dts
> index 885ffe6a24..27768c61e7 100644
> --- a/arch/arm/dts/imx8mp-skov.dts
> +++ b/arch/arm/dts/imx8mp-skov.dts
> @@ -231,6 +231,7 @@ pmic@25 {
>  		pinctrl-0 = <&pinctrl_pmic>;
>  		interrupt-parent = <&gpio1>;
>  		interrupts = <3 IRQ_TYPE_EDGE_RISING>;
> +		reset-source-priority = <500>;
>  
>  		regulators {
>  			buck1: BUCK1 {
> -- 
> 2.39.2
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


