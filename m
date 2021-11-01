Delivery-date: Mon, 01 Nov 2021 18:53:47 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mhbVD-0005e6-NQ
	for lore@lore.pengutronix.de; Mon, 01 Nov 2021 18:53:47 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mhbVC-0007ZA-NS
	for lore@pengutronix.de; Mon, 01 Nov 2021 18:53:47 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:Cc:To:Subject:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=MS3S/l3MlJQNKGF5TLEbuOE8hJCFweeCVydWpB/hETk=; b=d2DhA60Dh5UHZQ5E80aoXtQ5wU
	QP/A0WNoWdqMhe1AKpK/ifaWrYhrqwuTzcznb1107CbEG32dOimtNf0r6ovWuO466av36XrdHR2zR
	AYy5BXytRsu3dVtQd7afi8o5RQtXqMa1IAtm2IiN3ly/Y7r+qFysbiMvQl7QKQ/mEnERTD8gVFWCp
	DwkFWMkNG6yRM5FCtC1Tz4abKzbKYTGnUPA5YDhSpJRy5lHEP1sGj5As6HTLQbJHVMf1QYsMSkC86
	TBLvyAhkuoHHgb2kzNxN2QOWQtHcxCxYDLV6Zx4pbZP0knLUTkF1/PvgyCjUzWqyINvwBpQj6/eCe
	jnNxGDbw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mhbU1-00GxCT-Qt; Mon, 01 Nov 2021 17:52:33 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mhbTw-00GxBM-RK
 for barebox@lists.infradead.org; Mon, 01 Nov 2021 17:52:30 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1mhbTv-0007PB-Jk; Mon, 01 Nov 2021 18:52:27 +0100
To: Ian Abbott <abbotti@mev.co.uk>, barebox@lists.infradead.org
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>
References: <20211101174053.68486-1-abbotti@mev.co.uk>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <81e7492a-e822-72ce-e230-05d53abe22f7@pengutronix.de>
Date: Mon, 1 Nov 2021 18:52:27 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <20211101174053.68486-1-abbotti@mev.co.uk>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211101_105228_921511_33A6C0C9 
X-CRM114-Status: GOOD (  23.65  )
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
X-Spam-Status: No, score=-5.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] ARM: socfpga: Set reset-names property for &mmc
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hello Ian,

On 01.11.21 18:40, Ian Abbott wrote:
> Since commit 90bdf1e5d1e4 ("mci: dw_mmc: match against StarFive MMC
> compatibles"), the dw_mmc driver requires a reset line called "reset".
> The slightly earlier commit a3cf324593ea ("mci: dw_mmc: add optional
> reset line") introduced the reset line support, but made it optional.

Ouch. That doesn't look intended. Perhaps it's an artifact of a rebase. :/
I've sent out a partial revert. We can still apply this patch here to
actually use the reset, but forcing platforms to specify a reset was
not my intention as described in the first commit you referenced.

> The device tree node for SoCFPGA's MMC device has the "resets" property,
> but is missing the "reset-names" property, so MMC no longer works.
> Barebox produces the error message:
> 
> ERROR: dw_mmc ff704000.dwmmc0@ff704000.of: probe failed: Invalid argument
> 
> Add the missing "reset-names" property to the "&mmc" node in
> "arch/arm/dts/socfpga.dtsi".  It probably needs fixing in the upstream
> Linux device tree sources too!
> 
> Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
> Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>
> Signed-off-by: Ian Abbott <abbotti@mev.co.uk>
> ---
>  arch/arm/dts/socfpga.dtsi | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/arch/arm/dts/socfpga.dtsi b/arch/arm/dts/socfpga.dtsi
> index 7789c9d3b5..56dbf0b97d 100644
> --- a/arch/arm/dts/socfpga.dtsi
> +++ b/arch/arm/dts/socfpga.dtsi
> @@ -4,6 +4,10 @@
>  	};
>  };
>  
> +&mmc {
> +	reset-names = "reset";

FWIW, this now adheres to the synopsys-dw-mshc-common binding:

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> +};
> +
>  &watchdog0 {
>  	resets = <&rst L4WD0_RESET>;
>  };
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

