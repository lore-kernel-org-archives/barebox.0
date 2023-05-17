Delivery-date: Wed, 17 May 2023 14:55:01 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pzGgI-004J6N-Vn
	for lore@lore.pengutronix.de; Wed, 17 May 2023 14:55:01 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pzGgG-0000hH-MO
	for lore@pengutronix.de; Wed, 17 May 2023 14:55:01 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=woXXCdw+G/HyJKOHB3nE9QJlZgCYFHBULJoj5uwEPZU=; b=A0t+2jy/9T28EeE74iM12nRpuW
	ooDSDcmaPW+QP7M8MHK7v+v6uQVchm5F88dYEXK6/e2HYJUHW17HBF0b3Z29L1INNQMn5c7lu33KM
	7LpjHRHhMizaISzvwihdDQCcbZFaJB7Cgltbzv77uPAy3WU0h5fbMkeXNqnJggxsVFiiftxZ0Icln
	oIYBqnpX8AZ1uPkYD17Q/KIHGfFsCDEctifHkaOEARKeg7vgee0dfLjXXDNixZYO/qWBsjnhLIUJM
	NN4FzDzxQlx80zVaWhh/kL0+1VaPV8Q0RdKa3NqB2d7tCq9hMcWtI3OkWXxv9shBABUw8tZ5NseeZ
	H3o4iXzQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pzGfG-009rnt-1I;
	Wed, 17 May 2023 12:53:58 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pzGfE-009rnK-0B
	for barebox@lists.infradead.org;
	Wed, 17 May 2023 12:53:57 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1pzGfC-0000bU-Bh; Wed, 17 May 2023 14:53:54 +0200
Message-ID: <bb589dd1-e87d-523d-5c57-07541b737089@pengutronix.de>
Date: Wed, 17 May 2023 14:53:53 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Content-Language: en-US
To: Sascha Hauer <s.hauer@pengutronix.de>,
 Barebox List <barebox@lists.infradead.org>
References: <20230517090340.3954615-1-s.hauer@pengutronix.de>
 <20230517090340.3954615-7-s.hauer@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20230517090340.3954615-7-s.hauer@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230517_055356_090235_09EDE2D5 
X-CRM114-Status: GOOD (  18.63  )
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
X-Spam-Status: No, score=-5.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 06/34] ARM: make arm_mem_scratch() a static inline
 function
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 17.05.23 11:03, Sascha Hauer wrote:
> Most other arm_mem_* are functions, convert arm_mem_scratch to a
> function as well.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> ---
>  arch/arm/include/asm/barebox-arm.h | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm/include/asm/barebox-arm.h b/arch/arm/include/asm/barebox-arm.h
> index 8ab1e90e94..139ecce06d 100644
> --- a/arch/arm/include/asm/barebox-arm.h
> +++ b/arch/arm/include/asm/barebox-arm.h
> @@ -76,7 +76,10 @@ static inline unsigned long arm_mem_optee(unsigned long endmem)
>  	return endmem - OPTEE_SIZE;
>  }
>  
> -#define arm_mem_scratch(endmem) ((endmem) - OPTEE_SIZE - SZ_32K)
> +static inline unsigned long arm_mem_scratch(unsigned long endmem)
> +{
> +	return arm_mem_optee(endmem) - SZ_32K;
> +}
>  
>  static inline const void *arm_mem_scratch_get(void)
>  {

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



