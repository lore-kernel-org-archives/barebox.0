Delivery-date: Mon, 21 Oct 2024 11:08:00 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t2oOO-0070lX-2h
	for lore@lore.pengutronix.de;
	Mon, 21 Oct 2024 11:08:00 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t2oOO-000176-6B
	for lore@pengutronix.de; Mon, 21 Oct 2024 11:08:00 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=UE72wiEaRD1y5b+IaUsO5pa4copeRPRoF5A79xgG2IU=; b=B9e8Mc7RmABpPl1vIwwRFbtVDF
	OUkLYuwsFIx9yO/2WCllE4NIe+EfhBWUsyfqZz+U2sdv6YLcFDmsGjT2lYTD8xi+YWHijP7NUevxs
	L70bXswnikLBhm8bIz1jOqP6kZJRqsjMJOfQTUZo/7uZpUSvfqfqwaY7hRcvvt2ppQyhRYxnhSMDD
	/EJSEHXvsZtJp5D7zHqEaAweRCuDue6sk9sEG2tm0zUkyOL1Vu39VzPppdUQec+g8mE1RWpvDlHi0
	HLlOGMz93bwkB2jFHWqWDVJKP1r47GSDdkFPbetasMx+X1Tlp7uQ6IhtRrJj2zyntGbr/L7LdE6Er
	5AL7IsbA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t2oNv-00000006ehw-13BL;
	Mon, 21 Oct 2024 09:07:31 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t2oNF-00000006eXf-13df
	for barebox@lists.infradead.org;
	Mon, 21 Oct 2024 09:06:50 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[IPV6:::1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1t2oNE-0000wH-0x; Mon, 21 Oct 2024 11:06:48 +0200
Message-ID: <f4a3b122-28c3-4e23-aba1-2a41d3c77425@pengutronix.de>
Date: Mon, 21 Oct 2024 11:06:47 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>,
 "open list:BAREBOX" <barebox@lists.infradead.org>
References: <20241021-arm-layerscape-tfa-v1-0-0980697b6f66@pengutronix.de>
 <20241021-arm-layerscape-tfa-v1-2-0980697b6f66@pengutronix.de>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20241021-arm-layerscape-tfa-v1-2-0980697b6f66@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241021_020649_326803_CE3C8A23 
X-CRM114-Status: GOOD (  20.07  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 2/9] ARM: Layerscape: TQMLS1046a: add support for 8GiB
 variant
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Sascha,

On 21.10.24 09:21, Sascha Hauer wrote:
> The tqmls1046a also has a 8GiB DDR variant. This patch adds support for
> this variant as an additional image with suffix _8g in the name.
> 
> The 8GiB boards use two different types of DDR chips which can be
> distinguished by reading the EEPROM. There is one regular version which
> has the string "TQMLS1046A-P2.0201" is the EEPROM. The other one is
> possibly only used for Arkona and has the string "TQMLS1046A-CA.0202"
> in the EEPROM. There might be other possible strings we are currently
> not aware of, we fall back to the P2 variant in this case.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---

[snip]

> -static int tqmls1046a_mem_init(void)
> +static void ls1046a_add_memory(void)
>  {
> +	u32 cs0_bnds;
> +	unsigned long long memsize, lower, upper;

Nitpick: u64

> +ENTRY_PROC(start_tqmls1046a_8g)
> +	mov x3, #STACK_TOP
> +	mov sp, x3
> +	b tqmls1046a_8g_entry

We should be able to migrate these assembly entry points to
use ENTRY_FUNCTION_WITHSTACK.

> +ENTRY_PROC_END(start_tqmls1046a_8g)
> diff --git a/images/Makefile.layerscape b/images/Makefile.layerscape
> index 9cb88270d7..cfbe4ca35b 100644
> --- a/images/Makefile.layerscape
> +++ b/images/Makefile.layerscape
> @@ -62,8 +62,20 @@ $(obj)/barebox-tqmls1046a-qspi.image: $(obj)/start_tqmls1046a.pblb \
>  		$(board)/tqmls1046a/tqmls1046a_pbi.cfg
>  	$(call if_changed,lspbl_spi_image,ls1046a)
>  
> +$(obj)/barebox-tqmls1046a-8g-sd.image: $(obj)/start_tqmls1046a_8g.pblb \
> +		$(board)/tqmls1046a/tqmls1046a_rcw_sd_3333_5559.cfg \
> +		$(board)/tqmls1046a/tqmls1046a_pbi.cfg

There should be a FORCE dependency here, given that if_changed is used.

> +	$(call if_changed,lspbl_image,ls1046a)
> +
> +$(obj)/barebox-tqmls1046a-8g-qspi.image: $(obj)/start_tqmls1046a_8g.pblb \
> +		$(board)/tqmls1046a/tqmls1046a_rcw_qspi_3333_5559.cfg \
> +		$(board)/tqmls1046a/tqmls1046a_pbi.cfg

Likewise.

Cheers,
Ahmad



-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


