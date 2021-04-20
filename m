Delivery-date: Tue, 20 Apr 2021 10:48:51 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lYm3v-0008Jh-HO
	for lore@lore.pengutronix.de; Tue, 20 Apr 2021 10:48:51 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lYm3u-0001DK-LH
	for lore@pengutronix.de; Tue, 20 Apr 2021 10:48:51 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=fPp3ZLYgJPimzzXskTMCDJIsMuen/a52QZlypgfIoN0=; b=asYbC6ZfMMo3XdNt8Fe1iKUZm
	2LfPUjyrvW83iN7jgAfU8q/Owx47/BdQei98plpMLDGQCmsTUqe4m3OhYs7cm84jqtxlVKSt4Eq6+
	Qj81mmqTFWL/RBc/WaTepIFyUV3vg/b6Fl6DixSeOm+8n+qeCzBcBn+XYwKiu7eVRqqZeZDkHzaEJ
	z2npcWMXFiz1Qkzd7ytbOk2uZkPcj02oPX7jDts/dj60AzeP8riSd14MzQK6XlG12f2r4Iu20YQqL
	CWjxUOFGBhUsbkSglYmFo2pizKv9jevlGjcOaicsweHAliJm8Zww/SEPo170xEAVDeV7WxvRv7/Jn
	2byMr87Qw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lYm2z-00BdI4-1u; Tue, 20 Apr 2021 08:47:53 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lYm2o-00BdGG-VJ
 for barebox@desiato.infradead.org; Tue, 20 Apr 2021 08:47:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:References:To:
 Subject:Sender:Reply-To:Cc:Content-ID:Content-Description;
 bh=X2atcqMihynLYljhEa63Nvg66YVomQYew8zhrTG/ngU=; b=TdkF/Eu8WMS/s2uF3yE1n1z/IU
 kXq0s+PnnLn+sY7J2kGA6/iF82IGGFy1RNETisDvg1iSqocpmU2kt0aIgYkdGqts/9ia2NlHCLIY6
 a1QsVnuJESU/ZmFjVlWtsdhqMyvQ0rF7SwCG5bbiCOnHcQCWxBtL7Yn+tHfeQQi7Sn7wMFNBXr8Ec
 wMrzCpjeNKndZdymCK10zbZqcdzZrpzEjp+hl4MYPbVlpYSabPo1SKbQ1JaZ42RDEhSkp9LQ2AKww
 V03/+yEow0DwowRDDQZa33KGhWtgHyF26n+omlg5ENbYegdPWFfaE+SelQK86yG5maprSD67mS+Ow
 Ir8Ef3XA==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lYm2m-00BwKd-Aw
 for barebox@lists.infradead.org; Tue, 20 Apr 2021 08:47:41 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1lYm2l-000180-3L; Tue, 20 Apr 2021 10:47:39 +0200
To: Rouven Czerwinski <r.czerwinski@pengutronix.de>,
 barebox@lists.infradead.org
References: <20210420075700.246124-1-r.czerwinski@pengutronix.de>
 <20210420075700.246124-2-r.czerwinski@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <5f177d10-ab4e-fc5f-a888-28219a4e041e@pengutronix.de>
Date: Tue, 20 Apr 2021 10:47:39 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.0
MIME-Version: 1.0
In-Reply-To: <20210420075700.246124-2-r.czerwinski@pengutronix.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210420_014740_412586_9AB86EE5 
X-CRM114-Status: GOOD (  20.76  )
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
Subject: Re: [PATCH 2/8] of: export of_get_reserve_map
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)



On 20.04.21 09:56, Rouven Czerwinski wrote:
> This allows the retrieval of the reserve map for usage in other
> functions, in this case one of the next commits will use this
> information to modify the MMU map.
> 
> Signed-off-by: Rouven Czerwinski <r.czerwinski@pengutronix.de>

Function existed before. Please adjust commit message to note what
actually changes: A new stub is introduced for !CONFIG_OFTREE.

With this comment addressed:

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> ---
>  include/of.h | 5 +++++
>  1 file changed, 5 insertions(+)
> 
> diff --git a/include/of.h b/include/of.h
> index 7c8640a1d6..088b088223 100644
> --- a/include/of.h
> +++ b/include/of.h
> @@ -117,6 +117,7 @@ struct device_node *of_unflatten_dtb_const(const void *infdt);
>  struct cdev;
>  
>  #ifdef CONFIG_OFTREE
> +struct of_reserve_map *of_get_reserve_map(void);
>  extern int of_bus_n_addr_cells(struct device_node *np);
>  extern int of_n_addr_cells(struct device_node *np);
>  extern int of_bus_n_size_cells(struct device_node *np);
> @@ -774,6 +775,10 @@ static inline int of_autoenable_i2c_by_component(char *path)
>  	return -ENODEV;
>  }
>  
> +static inline struct of_reserve_map *of_get_reserve_map(void)
> +{
> +	return NULL;
> +}
>  
>  #endif

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

