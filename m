Delivery-date: Tue, 20 Apr 2021 12:34:29 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lYni9-0008Qb-OK
	for lore@lore.pengutronix.de; Tue, 20 Apr 2021 12:34:29 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lYni9-000679-18
	for lore@pengutronix.de; Tue, 20 Apr 2021 12:34:29 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=4Sm6FaCB5OqwLagpjJzniJvjkdup5iZPDrRFwTMUvHA=; b=gjxUIUTJ5Rash0WbIbzF3j1ab
	PdAiQJuf32Dm7i61M3eW3ZT1leZg+4xi+5XO5ILFQnMBcvBfUQV8DFBIB8jOMQBWOGH+Tv4IiR4eV
	I3Sv8BmXgvsB0jTxnG7bMHGviOehdhHsMUbH1+zDsW2MWxN+atYGt8RsLPKi+/S8bDY8XBmNc9GMc
	pb7DnCeMZh3paAjuDb0QapN+/fhxwopDb4VaWSjjjqEXSDLzzy0+r6hpfR3NKyc5/wPXUx8UwACeO
	SjXeHfi1Mhgj61arXTa/T48oDWPKtv4OrJTxDvn3TYVr3ekVpBYKBsj2XgkcqEPWpm/5DFlZBWbex
	V11cuiCZg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lYnhD-00BtJw-TS; Tue, 20 Apr 2021 10:33:32 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lYnhA-00BtJe-2g
 for barebox@desiato.infradead.org; Tue, 20 Apr 2021 10:33:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:References:To:
 Subject:Sender:Reply-To:Cc:Content-ID:Content-Description;
 bh=9G9/Fnx20AIiVLW4pfIYRSjKIbPM8OvYFkm2OJ9ZlqI=; b=yarAQS+tspGh31dlpn+7/TULi9
 s0h8RiPuSQ3+mDSHWUGwWP0MnGACKp9/0bPBcRJvkkozQk0iHXAsPKfaXja+SqcccUreGhZlM3X4z
 D64KgrLZHoCrW2c7CSEO9Qi8ATcFZM1pAVM65l1qiAL9hFkftp0lX+NfS4pH+TrhAZ2EtHtaT31nY
 MfiCaM25wOaMeUEdAinc2MU6bh4IaKXEsc27e38tFFLLnDIme4a0JTheTunw2pzWntg/b/UUlf7zZ
 YEIcjeT2l1AOyYWUXPigXECfL7348I56LLtBQs2oISr0UBrkb7o65xeYMVskDZavVxFg20t5ediGl
 Xe7lp/TA==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lYnh7-00C1cS-Ht
 for barebox@lists.infradead.org; Tue, 20 Apr 2021 10:33:26 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1lYnh6-0005tk-BY; Tue, 20 Apr 2021 12:33:24 +0200
To: Rouven Czerwinski <r.czerwinski@pengutronix.de>,
 barebox@lists.infradead.org
References: <20210420075700.246124-1-r.czerwinski@pengutronix.de>
 <20210420075700.246124-8-r.czerwinski@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <31b81531-82fe-1407-b87b-93a6e4f31097@pengutronix.de>
Date: Tue, 20 Apr 2021 12:33:24 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.0
MIME-Version: 1.0
In-Reply-To: <20210420075700.246124-8-r.czerwinski@pengutronix.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210420_033325_622423_57FF4376 
X-CRM114-Status: GOOD (  18.62  )
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
Subject: Re: [PATCH 8/8] PBL: enable LIBFDT for OP-TEE early loading
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)



On 20.04.21 09:57, Rouven Czerwinski wrote:
> This allows the OP-TEE early loaded board to add the reserved memory
> entries for the correct MMU setup. This is done by including pbl/fdt.h
> and using fdt_fill_reserve_mem().
> 
> Signed-off-by: Rouven Czerwinski <r.czerwinski@pengutronix.de>
> ---
>  common/Kconfig | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/common/Kconfig b/common/Kconfig
> index bddf802d3b..469cc3e06a 100644
> --- a/common/Kconfig
> +++ b/common/Kconfig
> @@ -1088,6 +1088,7 @@ config BOOTM_OPTEE
>  
>  config PBL_OPTEE
>  	bool "Enable OP-TEE early start"
> +	select LIBFDT
>  	depends on ARM
>  	depends on !THUMB2_BAREBOX

Should this

depends on !CONFIG_OPTEE_SIZE

?

>  	help
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

