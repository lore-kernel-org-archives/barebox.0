Delivery-date: Thu, 01 Jun 2023 08:35:46 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q4buV-005R6H-WA
	for lore@lore.pengutronix.de; Thu, 01 Jun 2023 08:35:46 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q4buT-0003jX-LQ
	for lore@pengutronix.de; Thu, 01 Jun 2023 08:35:46 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=xQF86L8bfHPSV4pbbOzL14GujqAMNAdQ3I8QuUS+4eo=; b=qV1mMDTvazg0vSGu8t1piBkrWW
	Zp1DF77CZfcxhYdEBzR4pC7AbH1hvN7dTK5GzbDPVXkuUmxd+1DPe6OAy1ZgzVYw4UKCMdbHtTOqj
	9/73DF0LIwPBSe8e4hnft9/gpwrSTfq1s6qA/OWdeKZi+AUloJ+O47JA5hN6uhDA29GGy+hNtc8go
	0s1I7pSN/rsdT2HWEbNFDl/d5pWlXfxIJH/YEekYtosJHV0FQ3bhubECWcK0fU1Ij/S+gdHu7bx8T
	QeVjLbUjZ5Ru1ps8zL4R3p1dD9BvgSQRe+gdMyz2/a33nqiEOygM1W/m6FtLRsyeoUCQc+vGG7kPN
	XBRwPbgA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q4btG-002DLV-3A;
	Thu, 01 Jun 2023 06:34:30 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q4btD-002DIg-2n
	for barebox@lists.infradead.org;
	Thu, 01 Jun 2023 06:34:29 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1q4bt8-0003NH-W1; Thu, 01 Jun 2023 08:34:23 +0200
Message-ID: <855aba3f-6753-3260-2527-5342a6cdc6e4@pengutronix.de>
Date: Thu, 1 Jun 2023 08:34:21 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Content-Language: en-US
To: Jules Maselbas <jmaselbas@zdiv.net>, barebox@lists.infradead.org
References: <20230524234328.82741-1-jmaselbas@zdiv.net>
 <20230524234328.82741-5-jmaselbas@zdiv.net>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20230524234328.82741-5-jmaselbas@zdiv.net>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230531_233427_903004_3E9D6EC4 
X-CRM114-Status: GOOD (  22.14  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 04/13] ARM: lds: Add SoC specific sections to go before
 .text_head_prologue
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 25.05.23 01:43, Jules Maselbas wrote:
> On sunxi platforms the boot rom (BROM) looks for a specific header which
> will also be loaded in memory, causing pbl, or barebox, image not loaded
> at the expected BASE addresse. This also cause an issue with relocatable
> pbl: instruction used for relocation expect the image to be aligned on a
> 4K page boundary.
> 
> The proposed solution here is to allow to soc specific section to be put
> in the very begging of the .text section, before anything else.
> 
> Signed-off-by: Jules Maselbas <jmaselbas@zdiv.net>
> ---
> rfc->v2:
>  - fix typo in commit title
>  - replace the use of macro with SORT_BY_NAME(.text_head_soc_header*)
> 
>  arch/arm/lib/pbl.lds.S | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/arch/arm/lib/pbl.lds.S b/arch/arm/lib/pbl.lds.S
> index 114ec7bc81..059909806e 100644
> --- a/arch/arm/lib/pbl.lds.S
> +++ b/arch/arm/lib/pbl.lds.S
> @@ -27,6 +27,7 @@ SECTIONS
>  	.text      :
>  	{
>  		_stext = .;
> +		*(SORT_BY_NAME(.text_head_soc_header*))

You shouldn't need SORT_BY_NAME here, because they should be just one.

>  		*(.text_head_prologue*)
>  		*(.text_head_entry*)
>  		__bare_init_start = .;

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



