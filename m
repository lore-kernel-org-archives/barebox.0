Delivery-date: Tue, 01 Nov 2022 10:02:47 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1opnAV-00AXoE-7w
	for lore@lore.pengutronix.de; Tue, 01 Nov 2022 10:02:47 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1opnAU-0002Q0-21
	for lore@pengutronix.de; Tue, 01 Nov 2022 10:02:46 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=xjYL9y1FWgwWoawXnngy3qXly+x5YrbFwI3zBIhIzKI=; b=F/zX8BM7UNDO8ZjfvOEHlDRY5C
	Fi/S4+rBBMwikoSomQ6VtDnKWnrJm84Po7V+CvuUICskfXbtcSR1+tp+pJtpSkhfm6e18jFTJu/L2
	SoWImhUCg7Li8hqBeuxKncZUpdMSfMNjBxf3EQsfyFwVTJGp8dhAJ5y2u3bmh4VKYn2s4nB39t2GX
	+t6aaNHoGklB455xSgW4gGknFOz8ldsrgDj5MT7asFNg5V9Gnh8TA3bVYxZ7QYxU8LA3mk2cTHhzk
	2i4puIlUmrUDl8YgLCxWGix7TIYNoKZQLobQTPZo1yAptLZMPayNa3nZZKD3RGFVI8f0FQteZZka1
	JX4DdpmA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1opn8i-003QBO-IP; Tue, 01 Nov 2022 09:00:56 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1opn8d-003QAe-T9
	for barebox@lists.infradead.org; Tue, 01 Nov 2022 09:00:53 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1opn8a-0001n1-Db; Tue, 01 Nov 2022 10:00:48 +0100
Message-ID: <a778d7f4-15cb-6a17-342a-72bed5d1bb5e@pengutronix.de>
Date: Tue, 1 Nov 2022 10:00:47 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.0
Content-Language: en-US
To: Denis Orlov <denorl2009@gmail.com>, barebox@lists.infradead.org
References: <20221031073429.1656245-1-denorl2009@gmail.com>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20221031073429.1656245-1-denorl2009@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221101_020051_988126_EF8DFF3F 
X-CRM114-Status: GOOD (  20.24  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE,URIBL_BLOCKED autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] reset: add missing stub for of_reset_control_get()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 31.10.22 08:34, Denis Orlov wrote:
> Every other function in reset.h has a corresponding stub that is used
> when the option RESET_CONTROLLER is disabled in config. This allows for
> code that uses this function to still be compilable even when the reset
> controller subsystem is disabled.
> 
> Signed-off-by: Denis Orlov <denorl2009@gmail.com>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> ---
>  include/linux/reset.h | 6 ++++++
>  1 file changed, 6 insertions(+)
> 
> diff --git a/include/linux/reset.h b/include/linux/reset.h
> index c1282a84c7..2d788547f4 100644
> --- a/include/linux/reset.h
> +++ b/include/linux/reset.h
> @@ -48,6 +48,12 @@ static inline int reset_control_deassert(struct reset_control *rstc)
>  	return 0;
>  }
>  
> +static inline struct reset_control *
> +of_reset_control_get(struct device_node *node, const char *id)
> +{
> +	return NULL;
> +}
> +
>  static inline struct reset_control *
>  reset_control_get(struct device_d *dev, const char *id)
>  {

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



