Delivery-date: Mon, 08 May 2023 13:19:22 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pvytn-00A3US-C7
	for lore@lore.pengutronix.de; Mon, 08 May 2023 13:19:22 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pvytl-0007l5-DG
	for lore@pengutronix.de; Mon, 08 May 2023 13:19:21 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=d0k/WlcixzTUi9ALmlShPz/789IjwFDTEWic/D6PJMQ=; b=4fxdbwEzga2qacxnKZ6xGLfIED
	DaAw3UYjHxtB3w3AtPUi3VUIbPFfjRq5wEWdKd5ZHdaL2Z7dySKAX47tEoCj8fWAcuW9sF/3AU23P
	Yj1v8khqPDCGnB1rRFrXaMXmfRGTDIbgf3PMaZsdE36b/7jDpk5JwI4ZlpRFhtcYRLLePsfIGhJb0
	2jYPU5qFQ+t7X4SorTQk/EWcFY9L7+o5atFLWM1PARau7ruNIgOa8neBKAtqKJuE8btaUskAIxODz
	aTYnF+/ZZUdmpzYfJIGYXXPO4hP9S/kJ9cRKKMPcZschn7TfkocxlIbB89tcTa3zFr+tPwGtO/jvL
	KK1K7ZiA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pvysN-000NvU-2r;
	Mon, 08 May 2023 11:17:55 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pvysK-000Ntz-1K
	for barebox@lists.infradead.org;
	Mon, 08 May 2023 11:17:54 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1pvys8-0007al-KM; Mon, 08 May 2023 13:17:40 +0200
Message-ID: <04c84b06-68df-2366-04bc-135f48ce9119@pengutronix.de>
Date: Mon, 8 May 2023 13:17:39 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Content-Language: en-US
To: Steffen Trumtrar <s.trumtrar@pengutronix.de>,
 Barebox List <barebox@lists.infradead.org>
Cc: Kai Assman <kai.assmann@de.bosch.com>
References: <20230508072431.94874-1-s.trumtrar@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20230508072431.94874-1-s.trumtrar@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230508_041752_449079_16E42329 
X-CRM114-Status: GOOD (  22.05  )
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
X-Spam-Status: No, score=-5.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] clk: zynq: eval ps-clock-frequency from DT
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 08.05.23 09:24, Steffen Trumtrar wrote:
> From: Kai Assman <kai.assmann@de.bosch.com>
> 
> Currently the ps_clk_rate is locked to 33.3MHz. The devicetree
> provides a property "ps-clock-frequency" that specifies this clock.
> 
> If the property is found, overwrite ps_clk_rate otherwise stay at the
> default 33.3MHz

The commit message reads as is this is an upstream binding, but I find no
usage, documentation or driver code parsing it in Linux v6.4-rc1.

Is this a new barebox-specific binding? If so, the commit message should be
reworded to make this clear. You can also drop a short .rst file into
Documentation/devicetree/bindings/clocks to describe your new property.

> Signed-off-by: Kai Assmann <kai.assmann@de.bosch.com>
> Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
> ---
>  drivers/clk/zynq/clkc.c | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/drivers/clk/zynq/clkc.c b/drivers/clk/zynq/clkc.c
> index 8e4beda295..37a0fbadb5 100644
> --- a/drivers/clk/zynq/clkc.c
> +++ b/drivers/clk/zynq/clkc.c
> @@ -388,6 +388,9 @@ static int zynq_clock_probe(struct device *dev)
>  			return PTR_ERR(parent_res);
>  
>  		slcr_offset = parent_res->start;
> +
> +		of_property_read_u32(dev->device_node, "ps-clock-frequency",
> +				     (u32 *)&ps_clk_rate);

Please do not cast compiler warnings away. You should change the type of
ps_clk_rate instead to u32, so this code is 64-bit-safe.

Cheers,
Ahmad

>  	}
>  
>  	iores = request_iomem_region(dev_name(dev), iores->start + slcr_offset,

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



