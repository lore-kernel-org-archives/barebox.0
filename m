Delivery-date: Fri, 05 Dec 2025 15:33:57 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vRWsf-008ELn-1n
	for lore@lore.pengutronix.de;
	Fri, 05 Dec 2025 15:33:57 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vRWsf-0007Rm-13
	for lore@pengutronix.de; Fri, 05 Dec 2025 15:33:57 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=aj6cNBPh3BnvI1957Ck2+TWIMZaV8NFlUA5jbPJhedo=; b=xzVvXNTl+oywvTSCy2iBkwR+pA
	i4WjVaRtE7ganZZl/XRZolsfIGjhRKCgz82xVZxXVZOPyLQF2+avQcS/C+9Bk6tKR1ADQXI1FXLJf
	XbHCdoOWrjKAG+1fTnJYDGCKz+fDW94ucGSBO52sFauQf8ELf/ie5NoUSbVBn02AXd4draiEqLWNL
	zDo65XTrr3EW4ObVbSwyz/YX61YeJBACt5csv19E4nfIstk6xBz3fMZ0M1CwTaabBGFAVUy2YrkW8
	4DErJmEgq7OuGSJrk6n7TOeelFUwCXxSCk25xuICv0jfftHpqXrtdtigO7wyJy310nfip0W7oEDuN
	e4M0plww==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vRWsJ-00000009bMf-16B2;
	Fri, 05 Dec 2025 14:33:35 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vRWsG-00000009bLw-2AdF
	for barebox@lists.infradead.org;
	Fri, 05 Dec 2025 14:33:33 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vRWsD-0007Na-KY; Fri, 05 Dec 2025 15:33:29 +0100
Message-ID: <218f30a8-a711-431b-bcec-92dd89d5428f@pengutronix.de>
Date: Fri, 5 Dec 2025 15:33:29 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>,
 Barebox List <barebox@lists.infradead.org>
References: <20251205143112.1180264-1-s.hauer@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <20251205143112.1180264-1-s.hauer@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251205_063332_587726_C82A5A1C 
X-CRM114-Status: GOOD (  17.60  )
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
Subject: Re: [PATCH] ARM: i.MX: dts: imx93-tqma9352-mba93xxla: add eeprom
 aliases
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi,

On 12/5/25 3:31 PM, Sascha Hauer wrote:
> eeprom0 has an alias in the upstream device tree whereas the other
> EEPROMs have not. Add aliases for the other EEPROMs. Without it the
> other devices will also try to register themselves as eeprom0 which
> fails with -EEXIST.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

Should we fix the driver to use dynamic IDs in absence of EEPROMs?

We could use of_alias_get_highest_id() to get a start ID.

Cheers,
Ahmad

> ---
>  arch/arm/dts/imx93-tqma9352-mba93xxla.dts | 7 +++++++
>  1 file changed, 7 insertions(+)
> 
> diff --git a/arch/arm/dts/imx93-tqma9352-mba93xxla.dts b/arch/arm/dts/imx93-tqma9352-mba93xxla.dts
> index d1d68a55e1..4b1624cdaa 100644
> --- a/arch/arm/dts/imx93-tqma9352-mba93xxla.dts
> +++ b/arch/arm/dts/imx93-tqma9352-mba93xxla.dts
> @@ -3,3 +3,10 @@
>  #include <arm64/freescale/imx93-tqma9352-mba93xxla.dts>
>  #include "imx93.dtsi"
>  #include "imx93-tqma93xx.dtsi"
> +
> +/ {
> +	aliases {
> +		eeprom1 = &eeprom1;
> +		eeprom2 = &eeprom2;
> +	};
> +};

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



