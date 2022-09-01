Delivery-date: Thu, 01 Sep 2022 10:46:20 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oTfq6-003KhL-7B
	for lore@lore.pengutronix.de; Thu, 01 Sep 2022 10:46:20 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oTfq6-0003TE-Px
	for lore@pengutronix.de; Thu, 01 Sep 2022 10:46:19 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=8yr44ttCUJ33JJBp/tuk+e3AzJk1qYRNQzXU2jTIt9E=; b=fEaZCW8kluP7NplJZj09jkSWdP
	O03mA+X4wZZbmAnDuMD2+aj5aravXTSot5VdUY3anlyv0+/jEGj/uTyGtYgYK3H82BMNb2z0lS+sN
	he/IuA4Eiql6MfIw01rTlUExj5RqzUZUt1uX8NYWa6mwsWps4zuh234IG+NRrMzdLDCwQ9dbtOSsQ
	8S4LkrVqOSKYkzo/ADiLw0MJPq0TFxSrD+jZrgvOPj8JO3nKXk5nmQ1K903J3QGYZuNOMjcNRMmoY
	O20fZ8xwe572jYHiCmpZaXZWclqxg6PMwdG/UigmW3Vyyg7Q7SkeBpUx8La0vShRpyvXEg19z8SNl
	CLAVfQng==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oTfoU-00AdDl-1V; Thu, 01 Sep 2022 08:44:38 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oTfoO-00AdCI-S1
	for barebox@lists.infradead.org; Thu, 01 Sep 2022 08:44:34 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oTfoK-00034C-94; Thu, 01 Sep 2022 10:44:28 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oTfoJ-0002ko-MZ; Thu, 01 Sep 2022 10:44:27 +0200
Date: Thu, 1 Sep 2022 10:44:27 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <20220901084427.GR24324@pengutronix.de>
References: <20220831092614.68259-1-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220831092614.68259-1-antonynpavlov@gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220901_014432_924111_311E3214 
X-CRM114-Status: GOOD (  22.05  )
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
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] fixup-next: linux/nvmem-consumer.h: fix warning
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Wed, Aug 31, 2022 at 12:26:14PM +0300, Antony Pavlov wrote:
> This fixes the commit 06825a0ec35343a1
> ("nvmem: import Linux nvmem_cell_read_variable_le_u32")
> from the next branch.
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

Applied, thanks

Sascha

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
> -- 
> 2.37.2
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


