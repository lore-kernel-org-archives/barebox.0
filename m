Delivery-date: Tue, 09 Aug 2022 09:28:58 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oLJfb-00H41B-VN
	for lore@lore.pengutronix.de; Tue, 09 Aug 2022 09:28:58 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oLJfc-00061d-Fi
	for lore@pengutronix.de; Tue, 09 Aug 2022 09:28:57 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=6fdh362d6fmB0o5mmmxYa06Ds2bUGKPuCbtFC7IjeTM=; b=KuxvY//64nof4/Wb7p0CP5NLg1
	ICyFSiqWQohFBOPrEHAZ+BllxxSdX83D/mGNkW5qyfPfnVr3JuZOyc9+KanyQSbOHjs1EQ92IHnk8
	gpRk1OssG0an9Bj8AacXlfU0Y7I30vOLpA94k3gNsBMb5AvwTKkzaJxnOERXl7IrVd79tGHZ5DWyu
	FPIaCMcpctnqJZywgtbuHXA5j2VIwGPypmxmyz1E2IsyWQxP1RiUo++IFaHelozKwgUBDLnNHQ7mm
	HgvV4vQKE/hxRk/wMMlxOxof0h5jUj4n1ntq2HmZU0/F1kMFiLzw6ftyE9QjEoQTF9bQKTgxpqhLy
	yoY9mtHw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oLJdv-002N36-Mq; Tue, 09 Aug 2022 07:27:11 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oLJdn-002Mxk-W6
	for barebox@lists.infradead.org; Tue, 09 Aug 2022 07:27:07 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1oLJdj-0005xP-T5; Tue, 09 Aug 2022 09:26:59 +0200
Received: from mfe by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1oLJdj-0000Ky-KL; Tue, 09 Aug 2022 09:26:59 +0200
Date: Tue, 9 Aug 2022 09:26:59 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20220809072659.qq7pdgm3rqwhoiwv@pengutronix.de>
References: <20220809055733.1544311-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220809055733.1544311-1-a.fatoum@pengutronix.de>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220809_002704_071752_3A0EAEA7 
X-CRM114-Status: GOOD (  19.05  )
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
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 1/2] of: implement of_append_property
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi Ahmad,

On 22-08-09, Ahmad Fatoum wrote:
> board code fix up the device tree for OS consumption. Sometimes it's
> useful for the fixup to append onto an existing property.
> Add a helper that simplifies this.

do you have a particular use-case for this?

Regards,
  Marco

> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  drivers/of/base.c | 36 ++++++++++++++++++++++++++++++++++++
>  include/of.h      |  8 ++++++++
>  2 files changed, 44 insertions(+)
> 
> diff --git a/drivers/of/base.c b/drivers/of/base.c
> index 101b2f74c74f..0893bdf3e04f 100644
> --- a/drivers/of/base.c
> +++ b/drivers/of/base.c
> @@ -2321,6 +2321,42 @@ int of_set_property(struct device_node *np, const char *name, const void *val, i
>  	return 0;
>  }
>  
> +int of_append_property(struct device_node *np, const char *name, const void *val, int len)
> +{
> +	struct property *pp;
> +	void *buf = NULL;
> +	int orig_len = 0;
> +
> +	if (!np)
> +		return -ENOENT;
> +
> +	pp = of_find_property(np, name, NULL);
> +	if (pp) {
> +		buf = pp->value;
> +		orig_len = pp->length;
> +	}
> +
> +	buf = realloc(buf, orig_len + len);
> +	if (!buf)
> +		return -ENOMEM;
> +
> +	memcpy(buf + orig_len, val, len);
> +
> +	if (pp) {
> +		pp->value = buf;
> +		pp->length += len;
> +
> +		if (pp->value_const) {
> +			memcpy(buf, pp->value_const, orig_len);
> +			pp->value_const = NULL;
> +		}
> +	} else {
> +		pp = __of_new_property(np, name, buf, len);
> +	}
> +
> +	return 0;
> +}
> +
>  int of_property_sprintf(struct device_node *np,
>  			const char *propname, const char *fmt, ...)
>  {
> diff --git a/include/of.h b/include/of.h
> index c65cef5a5a7c..97b4b3dd79bd 100644
> --- a/include/of.h
> +++ b/include/of.h
> @@ -131,6 +131,8 @@ extern struct device_node *of_get_cpu_node(int cpu, unsigned int *thread);
>  
>  extern int of_set_property(struct device_node *node, const char *p,
>  			const void *val, int len, int create);
> +extern int of_append_property(struct device_node *np, const char *p,
> +			      const void *val, int len);
>  extern struct property *of_new_property(struct device_node *node,
>  				const char *name, const void *data, int len);
>  extern struct property *of_new_property_const(struct device_node *node,
> @@ -515,6 +517,12 @@ static inline int of_set_property(struct device_node *node, const char *p,
>  	return -ENOSYS;
>  }
>  
> +static inline int of_append_property(struct device_node *np, const char *p,
> +				      const void *val, int len)
> +{
> +	return -ENOSYS;
> +}
> +
>  static inline struct property *of_new_property(struct device_node *node,
>  				const char *name, const void *data, int len)
>  {
> -- 
> 2.30.2
> 
> 
> 


