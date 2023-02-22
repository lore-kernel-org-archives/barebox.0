Delivery-date: Wed, 22 Feb 2023 11:40:25 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pUmXx-00FE2b-PP
	for lore@lore.pengutronix.de; Wed, 22 Feb 2023 11:40:25 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pUmXw-0004Pa-2g
	for lore@pengutronix.de; Wed, 22 Feb 2023 11:40:25 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=L407cXftiDeneddQoEZli+PWZJHw3k5/qqBc3FmOVWU=; b=zyRIAcPkoUCMNbAkKw/W8IXEUO
	D8olxnCxf/uNrTxFEEd16i7GjZTh9vvlGzLlzFkRJBwnREFc2WjGTYJv6+1Jr8l7Ig2o1cOqmrOP0
	Y2NI11ZSNKj9qD+FryoRB9HOCedsXThWKK0U6AnycFTSbyBcbt91oyhJ8QWrPjKtEC3dVGDLs3Kxe
	cdGv1gdPvdvycM8ipJc5SWIi2teojBftkzsHE3EjxNa5dAVllEu6Up/29zfzPzKYDHJSjqdDT1U2u
	2ZAw6oKpTnRN8oHE8TfjcbFQVrpn/u0KYUU32VrhobnvDQ95lVEwb5fvWn4oCOcR303z3txmDki8F
	w5Q8PcNw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pUmW9-00C04v-1w; Wed, 22 Feb 2023 10:38:33 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pUmJx-00Bu4y-Tc
	for barebox@lists.infradead.org; Wed, 22 Feb 2023 10:25:59 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pUmJt-00027t-U0; Wed, 22 Feb 2023 11:25:53 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pUmJt-0000MA-Mu; Wed, 22 Feb 2023 11:25:53 +0100
Date: Wed, 22 Feb 2023 11:25:53 +0100
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20230222102553.GL23347@pengutronix.de>
References: <20230217173057.1839835-1-a.fatoum@pengutronix.de>
 <20230217173057.1839835-6-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230217173057.1839835-6-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230222_022558_013285_DD87ED1B 
X-CRM114-Status: GOOD (  19.94  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v1 05/20] MIPS: dts: ath79: ar9331: use path references
 when extending nodes
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Fri, Feb 17, 2023 at 06:30:42PM +0100, Ahmad Fatoum wrote:
> LED heartbeat already broke, because upstream renamed the node name.
> Fix that and let's use references, so we get errors if an upstream DT
> update breaks our usage.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  arch/mips/dts/ar9331-dptechnics-dpt-module.dts | 16 ++++++----------
>  arch/mips/dts/ar9331.dtsi                      | 12 +++++-------
>  2 files changed, 11 insertions(+), 17 deletions(-)
> 
> diff --git a/arch/mips/dts/ar9331-dptechnics-dpt-module.dts b/arch/mips/dts/ar9331-dptechnics-dpt-module.dts
> index 8a0ae9caf791..da19d7b88ee1 100644
> --- a/arch/mips/dts/ar9331-dptechnics-dpt-module.dts
> +++ b/arch/mips/dts/ar9331-dptechnics-dpt-module.dts
> @@ -20,18 +20,14 @@
>  			barebox,provide-mac-address = <&eth0>;
>  		};
>  	};
> +};
>  
> -	leds {
> -		system {
> -			barebox,default-trigger = "heartbeat";
> -		};
> -	};
> +&{/leds/led-0} {
> +	barebox,default-trigger = "heartbeat";
> +};
>  
> -	gpio-keys {
> -		button@0 {
> -			gpios = <&gpio 11 GPIO_ACTIVE_HIGH>;
> -		};
> -	};
> +&{/gpio-keys/button@0} {
> +	gpios = <&gpio 11 GPIO_ACTIVE_HIGH>;

So here is another bug you catched with this series. The upstream device
node was renamed to /gpio-keys/button-0. I fixed this up locally here.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


