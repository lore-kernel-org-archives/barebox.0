Delivery-date: Fri, 17 Mar 2023 12:16:41 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pd84e-003qyV-7a
	for lore@lore.pengutronix.de; Fri, 17 Mar 2023 12:16:41 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pd84d-0004Lq-TP
	for lore@pengutronix.de; Fri, 17 Mar 2023 12:16:40 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:To:Subject
	:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SgmBIBGTDXfH/dwrH4Cge8mco0R4QgOyKWe4ps0qw9w=; b=iK4bLNJjeLhv2K
	wHUfxnq0NKEdB5PMeqO/AsCt8ZU4xBx2JGRUEqnKSNzkhE8Wth8qXL6d9w01gPbljc0OojJFeqBT5
	lUT+w7o0fVKWc9hbRe0p5ravcK6P1qb2y5LZoehuYvJY4Glpd5N8rS87WI2bgMqwQ78/azhpVowuH
	xfKr9M+VNWSz14jIwumtRW7+exvlYIjYy1IT22t39B2S2MsXSqIksqA5RZzRzTDVOkMqCq9zCKPSv
	RD6vMDtBdsc8HLO+6MfvyiIhWrwOeVDs56+saOxpi8koswRNOydbBAG2FwoxzOifL1LIdWMCV6Eps
	GFtyBXXEUXCRlX65DoAA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pd83b-0021E0-2m;
	Fri, 17 Mar 2023 11:15:35 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pd83W-0021D9-0D
	for barebox@lists.infradead.org;
	Fri, 17 Mar 2023 11:15:34 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1pd83T-0004BH-BG; Fri, 17 Mar 2023 12:15:27 +0100
Message-ID: <d2afc69c-a775-4538-0416-046d448ad31c@pengutronix.de>
Date: Fri, 17 Mar 2023 12:15:26 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.2
Content-Language: en-US
To: Johannes Zink <j.zink@pengutronix.de>, barebox@lists.infradead.org
References: <20230317110748.835678-1-j.zink@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20230317110748.835678-1-j.zink@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230317_041530_105694_E58F56E7 
X-CRM114-Status: GOOD (  20.65  )
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
Cc: afa@pengutronix.de, jzi@pengutronix.de
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] Documentation: devicetree: list automatic boot argument
 fixups
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hello Johannes,

Thanks for documenting this. Some minor suggestions below.

On 17.03.23 12:07, Johannes Zink wrote:
> Barebox automatically fixes up several entries to the root and

s/entries/properties/

> chosen-node of the devicetree passed to the booted system.

chosen node, device tree

> 
> These entries contain information about the hardware, reset source
> and the barebox version string.
> 
> Add documentation on how to query these information from the booted
> linux system.
> 
> Signed-off-by: Johannes Zink <j.zink@pengutronix.de>
> ---
>  Documentation/devicetree/index.rst | 21 +++++++++++++++++++++
>  1 file changed, 21 insertions(+)
> 
> diff --git a/Documentation/devicetree/index.rst b/Documentation/devicetree/index.rst
> index 36fa69058d1d..92a91dc35a11 100644
> --- a/Documentation/devicetree/index.rst
> +++ b/Documentation/devicetree/index.rst
> @@ -151,3 +151,24 @@ Contents:
>     bindings/regulator/*
>     bindings/rtc/*
>     bindings/watchdog/*
> +
> +automatic boot argument fixups to the devicetree

Title case or at least a capital letter at the beginning?

> +------------------------------------------------
> +
> +Barebox automatically fixes up some arguments in the devicetree.

s/Barebox/barebox/, s/devicetree/device tree/, s/arguments/properties/
or information.

> +
> +In the devicetree root barebox fixes up

, barebox

> +
> + * serial-number (if available)
> + * machine compatible (if available)

s/available/overridden/
There's nearly always a machine compatible.

> +
> +In the ``chosen``-node barebox fixes up

, barebox

> +
> + * barebox-version
> + * reset-source
> + * reset-source-instance (if available)
> + * reset-source-device (phandle, only if available)

node path, not the numeric phandle, compare

 property = &path -> "/path/to/something"

vs.

 property = <&path> -> <0x23>, with &path { phandle = <0x23>; }

> + * bootsource
> + * boot-hartid (only on RISCV)

RISC-V

> +
> +These values can be read from the booted linux system in ``/proc/device-tree/`

"or /sys/firmware/devicetree/base".


Thanks,
Ahmad

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



