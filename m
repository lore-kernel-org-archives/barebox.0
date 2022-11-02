Delivery-date: Wed, 02 Nov 2022 08:36:56 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oq8Iy-00Byua-9Z
	for lore@lore.pengutronix.de; Wed, 02 Nov 2022 08:36:56 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oq8Ix-0006T7-Ae
	for lore@pengutronix.de; Wed, 02 Nov 2022 08:36:55 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=k7xuTU+4N/Bf/PeTaCIAVJNULfBmfdFEOFeoaB5DmNk=; b=XAi8keV0N/67yGM1ycq9Opwd+N
	WezYWrxDcKBG7pbHQn5t/HkJt7q/fL2E2cAhoa07mLRc7P8eNUJ1wi6hhnWPgY4f7hj73gadEtwGZ
	gzDTgIWY3JoR1GRJAEHUwZqN4i1Nj3DBAiJ80Xl/1+hVk4bp86FVLhAhb2U7dza96+39UkXEGaZXc
	elFfetgHvO2ZtF9GYzCjLmOt6619Nzxva0Eu5NvrSgQoJPJ06PqymvF5vlEcZaaD3JkG5c7aq8TWM
	4pLjVE+GqxZ+10K9Cf0L8u40SuRLn3+cuqer5u4XZpFTMFpVb5qWHFBBaGWZtoQ5LQ/45YcGeWsWU
	eaV8YOiw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oq8He-008dmx-C6; Wed, 02 Nov 2022 07:35:34 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oq8HZ-008dm2-2X
	for barebox@lists.infradead.org; Wed, 02 Nov 2022 07:35:30 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oq8HX-000642-RY; Wed, 02 Nov 2022 08:35:27 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oq8HX-0005Ap-KX; Wed, 02 Nov 2022 08:35:27 +0100
Date: Wed, 2 Nov 2022 08:35:27 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Denis Orlov <denorl2009@gmail.com>
Cc: barebox@lists.infradead.org
Message-ID: <20221102073527.GB3143@pengutronix.de>
References: <20221031073429.1656245-1-denorl2009@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20221031073429.1656245-1-denorl2009@gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221102_003529_135018_AF38494D 
X-CRM114-Status: GOOD (  23.67  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] reset: add missing stub for of_reset_control_get()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, Oct 31, 2022 at 10:34:29AM +0300, Denis Orlov wrote:
> Every other function in reset.h has a corresponding stub that is used
> when the option RESET_CONTROLLER is disabled in config. This allows for
> code that uses this function to still be compilable even when the reset
> controller subsystem is disabled.
> 
> Signed-off-by: Denis Orlov <denorl2009@gmail.com>
> ---
>  include/linux/reset.h | 6 ++++++
>  1 file changed, 6 insertions(+)

Applied, thanks

Sascha

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
> -- 
> 2.30.2
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


