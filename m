Delivery-date: Thu, 21 May 2026 12:12:25 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wQ0O9-002Ca3-1h
	for lore@lore.pengutronix.de;
	Thu, 21 May 2026 12:12:25 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wQ0O8-0003rK-UC
	for lore@pengutronix.de; Thu, 21 May 2026 12:12:25 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=J0EIBpF4HQ8bq7p3P2vuX53EwS9n0ZIOqx7sa/g3bf4=; b=3RhRl0wWmccT+q2+OiHSp0Q5mu
	/HZcIKmF9VyXCdzxdJ23oR6zGR07gY7jxBtPU2JioJom1TuDAWjXRbVpZ/yUb/4yglDvJ/8yEJnrf
	JJRVFqPuyUjRLpxgtzHy65OnqaI8YqAJ60CR9YRw9EdFOTNXbGDCdnUAHNJKb73oj2CAx0GH41VGs
	d5DQ5ylisjWRIWtHaJ5ApSVFKFf05RmeuUNsVB/7gtmFszUI+dDExFFklXRni4C+wj6iwF5OoUsf1
	SbM4MkfegukR+lUDLOScgfTDBhAcN5u0TpZpdgFA/0huNT0zuIGi45neEhQDwIWMKHBiKBuLEXIGJ
	ch5snopA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPyYg-0000000761c-0h5o;
	Thu, 21 May 2026 08:15:10 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPyYd-0000000760l-2qW5
	for barebox@lists.infradead.org;
	Thu, 21 May 2026 08:15:09 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wPyYc-0007dz-74; Thu, 21 May 2026 10:15:06 +0200
Message-ID: <4bb90ae2-125e-40d3-9bc4-b685e16fbecd@pengutronix.de>
Date: Thu, 21 May 2026 10:15:06 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>,
 Barebox List <barebox@lists.infradead.org>
References: <20260521080608.3204583-1-s.hauer@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20260521080608.3204583-1-s.hauer@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260521_011507_744811_21870A49 
X-CRM114-Status: GOOD (  18.68  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] ARM: ARM64: linker: Do not put first function at
 __image_start
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Sascha,

On 5/21/26 10:06 AM, Sascha Hauer wrote:
> The very first function in the barebox binary starts at __image_start
> aka _stext, so resolving its name with %pS results in "__image_start"
> instead of the function name. This can be confusing, so add a small
> offset to the first function so that its name resolves properly.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

This patch confused me a bit at first, so I would suggest adding
following clarification to the commit message:

"""
This is safe to do for barebox proper, because it's always an ELF on
ARM64 and thus there is no special significance to code at the start of
the text segment.
"""

Thanks,
Ahmad

> ---
>  arch/arm/lib64/barebox.lds.S | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/arch/arm/lib64/barebox.lds.S b/arch/arm/lib64/barebox.lds.S
> index bd76a0ca96..1dddd6d1a9 100644
> --- a/arch/arm/lib64/barebox.lds.S
> +++ b/arch/arm/lib64/barebox.lds.S
> @@ -26,6 +26,7 @@ SECTIONS
>  	.text      :
>  	{
>  		_stext = .;
> +		. += 16;
>  		*(.text*)
>  	} :text
>  

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



