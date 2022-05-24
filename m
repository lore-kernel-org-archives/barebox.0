Delivery-date: Tue, 24 May 2022 14:29:49 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ntTfZ-007XBK-TL
	for lore@lore.pengutronix.de; Tue, 24 May 2022 14:29:49 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ntTfY-0002Kc-8b
	for lore@pengutronix.de; Tue, 24 May 2022 14:29:49 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gaQwlnhOO/gvqc3fJCE2v7TOkjQuOrkgbSMFfcPmyDc=; b=ElT1sJD3B6Y4pg
	h7wRFrqC1L1+JLQRYbwkbVIY7M4od8YyL7deBJW9vSgmNBn4sty4CT+jgpr5Xva8zchX+0z2HM+tG
	cqDCqgIVqTDEoi3pX0bhhsK5XxqMHNJyMj+Exno8E4yq9u/Rr7BJLFE26YIjTKNqwzgUzlAi1gjqy
	JHqh0ttKMn39Mgm4bPd/6JDF7VnlXps5yN3KEL21LEa+ZVXb0dIMWtTsbugBtI8DrwtqjI7ZgoA9s
	tCmP8yGeA41hLk5yDu5L4ABitxbBlXw95ggRrwujOFooObfC0xJHcaJYHVILYUCxw6MQdfvqrrgvt
	GwTHNDDNlEIn7hgPEvWA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ntTeC-007yvx-MY; Tue, 24 May 2022 12:28:24 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ntTe7-007yvK-Um
 for barebox@lists.infradead.org; Tue, 24 May 2022 12:28:21 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77]
 helo=[127.0.0.1]) by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1ntTe4-0002Hu-9A; Tue, 24 May 2022 14:28:16 +0200
Message-ID: <76dbfceb-1651-2659-7209-2c37c3f8f7d5@pengutronix.de>
Date: Tue, 24 May 2022 14:28:16 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.0
Content-Language: en-US
To: Alexander Shiyan <eagle.alexander923@gmail.com>,
 barebox@lists.infradead.org
References: <20220524073048.18467-1-eagle.alexander923@gmail.com>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20220524073048.18467-1-eagle.alexander923@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220524_052820_040009_CAF086B9 
X-CRM114-Status: GOOD (  18.19  )
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
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] ARM: DTS: myir-x335x: Add GPIO aliases
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi,

On 24.05.22 09:30, Alexander Shiyan wrote:
> For the correct work of GPIO driver, we need to define aliases.
> Let's add them to the devicetree.
> 
> Signed-off-by: Alexander Shiyan <eagle.alexander923@gmail.com>
> ---
>  arch/arm/dts/am335x-myirtech-myd.dts | 7 +++++++
>  1 file changed, 7 insertions(+)
> 
> diff --git a/arch/arm/dts/am335x-myirtech-myd.dts b/arch/arm/dts/am335x-myirtech-myd.dts
> index 6ec65e533d..1ea0f2a440 100644
> --- a/arch/arm/dts/am335x-myirtech-myd.dts
> +++ b/arch/arm/dts/am335x-myirtech-myd.dts
> @@ -6,6 +6,13 @@
>  #include <arm/am335x-myirtech-myd.dts>

Other boards do #include "am33xx.dtsi", which takes care of these
aliases. It's probably better you include that too.

Cheers,
Ahmad

>  
>  / {
> +	aliases {
> +		gpio0 = &gpio0;
> +		gpio1 = &gpio1;
> +		gpio2 = &gpio2;
> +		gpio3 = &gpio3;
> +	};
> +
>  	chosen {
>  		environment {
>  			compatible = "barebox,environment";


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

