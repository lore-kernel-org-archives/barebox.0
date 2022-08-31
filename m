Delivery-date: Wed, 31 Aug 2022 11:29:28 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oTK2K-002X0N-87
	for lore@lore.pengutronix.de; Wed, 31 Aug 2022 11:29:28 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oTK2J-000694-37
	for lore@pengutronix.de; Wed, 31 Aug 2022 11:29:27 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Cvxo3sGhzRWGXytQ9Iuv282NdR+sVVa/OwO62PotPt4=; b=Ji23xaMZqlRURjmk077aWbygPR
	qHQG/d1gRACvLnW9ge24aqzL53RzycQpEWbZ0XVNJlXcIyoQbaCzI3uRH0PxFWrg0YxJVQJdU3hU+
	OGL78bRdhLfS9KwwP8wM/WRTDaPynThyi0kDrBDEEREqRJc2dA6bw9apV2xg6m1b9yme83Zo+iStI
	G5SEa9OlsZfP3r0+JhXej4oaOleuZjROL9JioQ7rNa0TxtdMeTiCgwJtSQ28PQalc8q1GVa4XqzjU
	zWbQ1+4Zcn3KGx0TF+urjFvP3FglwL/K0YQvwpZRq4BhHenOoEzbuec/thT7l/QaLdW/XKhSJa3bg
	WEFgEf+w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oTK10-005GxH-1T; Wed, 31 Aug 2022 09:28:06 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oTK0u-005GuH-OW
	for barebox@lists.infradead.org; Wed, 31 Aug 2022 09:28:02 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1oTK0o-0005uI-DU; Wed, 31 Aug 2022 11:27:54 +0200
Message-ID: <de957bed-44b6-b943-da5b-1d4f2714b799@pengutronix.de>
Date: Wed, 31 Aug 2022 11:27:54 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Content-Language: en-US
To: Antony Pavlov <antonynpavlov@gmail.com>, barebox@lists.infradead.org
References: <20220831092614.68259-1-antonynpavlov@gmail.com>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20220831092614.68259-1-antonynpavlov@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220831_022800_822089_307A0EA8 
X-CRM114-Status: GOOD (  19.50  )
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
X-Spam-Status: No, score=-3.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,
	SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] fixup-next: linux/nvmem-consumer.h: fix warning
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 31.08.22 11:26, Antony Pavlov wrote:
> This fixes the commit 06825a0ec35343a1
> ("nvmem: import Linux nvmem_cell_read_variable_le_u32")
> from the next branch.

Thanks!

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> 
> The warning is:
> 
> include/linux/nvmem-consumer.h:84:9: warning: returning 'void *' from a
> function with return type 'int' makes integer from pointer without a
> cast [-Wint-conversion]
>    84 |  return ERR_PTR(-EOPNOTSUPP);
>       |         ^~~~~~~~~~~~~~~~~~~~
> 
> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
> ---
>  include/linux/nvmem-consumer.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/include/linux/nvmem-consumer.h b/include/linux/nvmem-consumer.h
> index b461f840957..1fce7e1ae09 100644
> --- a/include/linux/nvmem-consumer.h
> +++ b/include/linux/nvmem-consumer.h
> @@ -81,7 +81,7 @@ static inline int nvmem_cell_read_variable_le_u32(struct device_d *dev,
>  						  const char *cell_id,
>  						  u32 *val)
>  {
> -	return ERR_PTR(-EOPNOTSUPP);
> +	return -EOPNOTSUPP;
>  }
>  
>  static inline int nvmem_cell_write(struct nvmem_cell *cell,


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


