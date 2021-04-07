Delivery-date: Wed, 07 Apr 2021 09:08:11 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lU2IN-0003yD-MO
	for lore@lore.pengutronix.de; Wed, 07 Apr 2021 09:08:11 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lU2IM-00027h-US
	for lore@pengutronix.de; Wed, 07 Apr 2021 09:08:11 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:References:
	Cc:To:Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=/gETzpV+r9pwYecblE00ajDNP+0ltpsjB4nPpGodpZ0=; b=AcnHp17tfam3+V78JOvvCI7aZ
	4xQOQ5t5yS8QfIz+JSo6pDNxKdjpwyp1omnl2KVVa+pyhrGcRfCSDynt5tLyzEYZSOGsX7wl14IeH
	8kWHPIZ/pnbVfjSKaOszWqCzl/cKFXMsZ4O3uaMfkNCwtTCRLDnlDbrMJm2Jn6fMVl26Psk3+36pF
	EsP/pKQ6lf80RMGMp0S2R4V0nRIpRDCm/q39skzPtf41n1pfsTxSxKZIliRjedQbk0JaActrJgl/h
	NswVQ9qZXdh+l2QFUitDaR2l1zAfQat7a5uC+At0fkBv0dSYmJEPdFG6xn3zPhu0BCH+L0NWVP/Mt
	rY+OfQqqg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lU2GB-004HbJ-E4; Wed, 07 Apr 2021 07:05:55 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lU2G5-004HaU-Nk
 for barebox@lists.infradead.org; Wed, 07 Apr 2021 07:05:52 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[127.0.0.1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1lU2G2-0001Xo-UE; Wed, 07 Apr 2021 09:05:46 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: Vivien Didelot <vivien.didelot@gmail.com>, barebox@lists.infradead.org
Cc: Anees Rehman <anees.rehman@atlascopco.com>,
 Vivien Didelot <vdidelot@pbsc.com>
References: <20210406150052.4193972-1-vivien.didelot@gmail.com>
Message-ID: <583e5045-2b3d-b28e-7727-353678a6ffe0@pengutronix.de>
Date: Wed, 7 Apr 2021 09:05:45 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.0
MIME-Version: 1.0
In-Reply-To: <20210406150052.4193972-1-vivien.didelot@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210407_080550_095898_95356FE7 
X-CRM114-Status: GOOD (  19.77  )
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
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] ARM: fix typo in sxb state variable
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hello Vivien,

On 06.04.21 17:00, Vivien Didelot wrote:
> From: Vivien Didelot <vdidelot@pbsc.com>
> 
> The sxb state contains a variable with two typos in it:
> sucessfull -> successful, fix it.
> 
> Signed-off-by: Vivien Didelot <vdidelot@pbsc.com>
> ---
>  arch/arm/dts/ac-sxb.dts | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm/dts/ac-sxb.dts b/arch/arm/dts/ac-sxb.dts
> index 8f2eec0fa0..8a030a5c66 100644
> --- a/arch/arm/dts/ac-sxb.dts
> +++ b/arch/arm/dts/ac-sxb.dts
> @@ -68,7 +68,7 @@
>  				default= <1>;
>  			};
>  
> -			last_chosen_sucessfull@1c {
> +			last_chosen_successful@1c {

This changes API for Linux userspace (barebox-state command) and is
probably best left alone unless Anees says it's ok.

>  				reg = <0x1c 0x4>;
>  				type = "uint32";
>  				default = <0>;
> 

Cheers,
Ahmad

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

