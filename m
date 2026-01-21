Delivery-date: Wed, 21 Jan 2026 12:33:53 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1viWTB-003kGr-2s
	for lore@lore.pengutronix.de;
	Wed, 21 Jan 2026 12:33:53 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1viWTA-0003J5-RB
	for lore@pengutronix.de; Wed, 21 Jan 2026 12:33:53 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=wzTPhFMmUauRT4VSE4KvIQLWQwFbShRxNsRL0VMNb94=; b=s5sMVp0nLQSRi+2T3zE6wobrK5
	NKZgc6tOKJZ2iWVdtxpRhDfCjj+oyxaHag0JfgP1jb4gba+D4O1ObAiKJf7PQjR79MjSYK5neaKLU
	ZOMy5Giet5KTqy7feoUgBnFDmDpuNDJW8JjXKe3jfKTpWKwQyNm6sEzLNkOBQhk43hFQ5sL/+F7B9
	m4VKeWM6bKBn3umIIAAWIE3lNZtqR+7fr4/JIwRoSeknHG3vyDWkOlBjdqbFpiOzC2aC8DGUVhpAj
	BhTQa+jNMQ8SXmV6JfECepYn+bSY4GGYLLpSjun9YdviKgFBQ5MlmUbKwEHucF2vaUdR02N3urdPM
	PBT2jBrg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1viWSo-00000005M0g-3zbs;
	Wed, 21 Jan 2026 11:33:30 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1viWSm-00000005M06-15bB
	for barebox@lists.infradead.org;
	Wed, 21 Jan 2026 11:33:29 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1viWSk-00038x-Nt; Wed, 21 Jan 2026 12:33:26 +0100
Message-ID: <0ba89aa4-5ccb-44b0-9cef-6ae4b3a28b75@pengutronix.de>
Date: Wed, 21 Jan 2026 12:33:26 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: barebox@lists.infradead.org
Cc: mfe@pengutronix.de
References: <20260121113234.1438699-1-a.fatoum@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <20260121113234.1438699-1-a.fatoum@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260121_033328_302835_A11C783F 
X-CRM114-Status: GOOD (  26.47  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/2] of: base: add new barebox,status property
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi,

sorry missed adding the v2..

On 1/21/26 12:31 PM, Ahmad Fatoum wrote:
> I am confronted with an occasional hang on the Radxa Rock 3A during
> PCI probe. The board has no PCI devices connected.
> 
> This hang doesn't happen in Linux and doesn't happen on the QNAP
> TS433-eU, which is also RK3568, but actually has PCIe devices, which are
> probed normally.
> 
> For such purposes, add a barebox,status property as setting the status
> to disabled, would impact Linux as well if barebox were to pass along
> its own device tree, e.g. when installing the UEFI device tree
> configuration table.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
> v1 -> v2:
>   - rework to make clearer when to use the new property. (Marco)
>   - add example with UEFI device tree configuration table into commit
>     message (Marco)
> ---
>  .../devicetree/bindings/barebox/barebox,status.rst | 14 ++++++++++++++
>  drivers/of/base.c                                  |  4 +++-
>  2 files changed, 17 insertions(+), 1 deletion(-)
>  create mode 100644 Documentation/devicetree/bindings/barebox/barebox,status.rst
> 
> diff --git a/Documentation/devicetree/bindings/barebox/barebox,status.rst b/Documentation/devicetree/bindings/barebox/barebox,status.rst
> new file mode 100644
> index 000000000000..03f484cdcfe1
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/barebox/barebox,status.rst
> @@ -0,0 +1,14 @@
> +barebox,status property
> +=======================
> +
> +barebox interprets ``barebox,status`` the same as it does ``status``,
> +but gives the barebox-specific property precedence if both exist.
> +
> +The purpose of this property is to keep the ``status`` property of the
> +upstream DT, imported from Linux, untouched.
> +
> +Using ``barebox,status`` may be necessary to temporarily workaround
> +barebox drivers that misbehave on a given board; Disabling the driver
> +may be undesirable if it can handle other instances of the same device
> +on the board or if barebox is being built to support other boards
> +at the same time, where the driver functions correctly.
> diff --git a/drivers/of/base.c b/drivers/of/base.c
> index 54fd458bd9a1..4e83a757a4e9 100644
> --- a/drivers/of/base.c
> +++ b/drivers/of/base.c
> @@ -2149,7 +2149,9 @@ int of_device_is_available(const struct device_node *device)
>  	const char *status;
>  	int statlen;
>  
> -	status = of_get_property(device, "status", &statlen);
> +	status = of_get_property(device, "barebox,status", &statlen);
> +	if (status == NULL)
> +		status = of_get_property(device, "status", &statlen);
>  	if (status == NULL)
>  		return 1;
>  

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



