Delivery-date: Tue, 19 Nov 2024 20:24:24 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tDTpo-003x0g-2i
	for lore@lore.pengutronix.de;
	Tue, 19 Nov 2024 20:24:24 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tDTpo-0003nC-8F
	for lore@pengutronix.de; Tue, 19 Nov 2024 20:24:24 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=JRc+oFBF2Xg4ZmFTGWPPAE2zyu4FDWqJvC0B/0NAt1o=; b=Obu8oR4qUwP0qQjG0SePVsopWv
	wJEZLLVZpFkKfsan4rnEI/6rgx8O07s2Sg+hy5GbTB/u9NkvJeVyc/dcM04hmi91mLGo9up4HYr+2
	J399yA0Zu2tbcX2fAQ2vaEYmOGAuQxwOLKMJUVe6tC96dzqz2Rp6cir8ZQGCvCkY/A9q88Xci6QNP
	eRBswZOoDQ2q/OwUhqbcVIj7cvRdJrOyFbUo1fCfIpGi1TwT2+KVbe2/lMbb8lw52wPtIJ5Xferw2
	aOP0z77zchArk8kSSUTnrMi86aBDQ3YBy42QEbjPcTslyU/Lzl0ewc0ytIUFdwULLvMx2cxkjZJHx
	8tVRBzmg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tDTpM-0000000DW9X-3uxV;
	Tue, 19 Nov 2024 19:23:56 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tDTpJ-0000000DW8C-1vAm
	for barebox@lists.infradead.org;
	Tue, 19 Nov 2024 19:23:55 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[IPV6:::1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tDTpF-0003dH-U3; Tue, 19 Nov 2024 20:23:49 +0100
Message-ID: <9452ada7-6515-458e-80e0-a5da01fec3a0@pengutronix.de>
Date: Tue, 19 Nov 2024 20:23:49 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Abdelrahman Youssef <abdelrahmanyossef12@gmail.com>,
 barebox@lists.infradead.org
References: <20241119183530.1629261-1-abdelrahmanyossef12@gmail.com>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20241119183530.1629261-1-abdelrahmanyossef12@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241119_112353_497723_310DF874 
X-CRM114-Status: GOOD (  16.25  )
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
Subject: Re: [PATCH] of: fdt: fix overflow caused by fdt_prop extending beyond
 fdt
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 19.11.24 19:35, Abdelrahman Youssef wrote:
> While parsing FDT, fdt_prop sometimes extends beyond FDT resulting in
> heap-overflow.
> 
> dt_ptr_ok() checks a pointer is within bounds of the FDT, so we can use it
> here to fix the issue.
> 
> Suggested-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> Signed-off-by: Abdelrahman Youssef <abdelrahmanyossef12@gmail.com>
> ---
>  drivers/of/fdt.c | 5 +++++
>  1 file changed, 5 insertions(+)
> 
> diff --git a/drivers/of/fdt.c b/drivers/of/fdt.c
> index 75af1844f3..a756483578 100644
> --- a/drivers/of/fdt.c
> +++ b/drivers/of/fdt.c
> @@ -257,6 +257,11 @@ static struct device_node *__of_unflatten_dtb(const void *infdt, int size,
>  
>  		case FDT_PROP:
>  			fdt_prop = infdt + dt_struct;
> +			if (dt_ptr_ok(fdt, fdt_prop)) {

Shouldn't you invert the condition?

Cheers,
Ahmad

> +				ret = -ESPIPE;
> +				goto err;
> +			}
> +
>  			len = fdt32_to_cpu(fdt_prop->len);
>  			nodep = fdt_prop->data;
>  


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


