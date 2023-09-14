Delivery-date: Thu, 14 Sep 2023 09:47:48 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qgh4n-00ElEv-OC
	for lore@lore.pengutronix.de; Thu, 14 Sep 2023 09:47:48 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qgh4l-0007yc-PI
	for lore@pengutronix.de; Thu, 14 Sep 2023 09:47:48 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=pWasUrjZ281Sau8la2WBw84WtmUjAw0nANtN4e6Rm8k=; b=eRDXnS+IRxS4SK702jYImG9rCP
	KEl0/7M3RcJnIsPsT92ij8LBp+RrM7eI3GssTpIjtdkjswXsGihT2kusz2y6zJRBoo7XcYDn5neRJ
	PAN/NBFFtC+mvW3dNL7Cj0lzuQkdR9oxJSkQLwfM3iA5oapVIv6P7WR784DhFxunLxcQ6GYK63Qot
	hptz5InXIICUW4RmuuLiiSfEwnp9VRe1vjhSC25HjwhJUNWjkd64GibRyJH8jDx9o9twdfiowsjb7
	UfWCn3jxSgrcIH64gakpHXvDNuZLRzbgHW/fkkVxdYaC4vIqU8yUGYn3ydyKT+ea5dyzDrEFzzZiP
	KBwAvq2Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qgh3l-007cTc-2T;
	Thu, 14 Sep 2023 07:46:45 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qgh3i-007cTI-07
	for barebox@lists.infradead.org;
	Thu, 14 Sep 2023 07:46:43 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qgh3g-0007NH-TJ; Thu, 14 Sep 2023 09:46:40 +0200
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1qgh3g-006Fcb-Go; Thu, 14 Sep 2023 09:46:40 +0200
Received: from sha by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qgh3g-006euZ-EI; Thu, 14 Sep 2023 09:46:40 +0200
Date: Thu, 14 Sep 2023 09:46:40 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20230914074640.GI637806@pengutronix.de>
References: <20230913120807.1869600-1-a.fatoum@pengutronix.de>
 <20230913120807.1869600-2-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230913120807.1869600-2-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230914_004642_093292_A73EC24A 
X-CRM114-Status: GOOD (  22.73  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/2] clk: implement clk_get_enabled helper
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Wed, Sep 13, 2023 at 02:08:06PM +0200, Ahmad Fatoum wrote:
> Kernel code increasingly uses devm_clk_get_enabled to make driver code
> more compact. Port a devres-less version to barebox to make porting such
> Linux code easier.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  include/linux/clk.h | 29 +++++++++++++++++++++++++++++
>  1 file changed, 29 insertions(+)
> 
> diff --git a/include/linux/clk.h b/include/linux/clk.h
> index 82022e78e39d..398427eca676 100644
> --- a/include/linux/clk.h
> +++ b/include/linux/clk.h
> @@ -951,4 +951,33 @@ static inline struct clk *clk_get_optional(struct device *dev, const char *id)
>  	return clk;
>  }
>  
> +/**
> + * clk_get_enabled - clk_get() + clk_prepare_enable()
> + * @dev: device for clock "consumer"
> + * @id: clock consumer ID
> + *
> + * Return: a struct clk corresponding to the clock producer, or
> + * valid IS_ERR() condition containing errno.  The implementation
> + * uses @dev and @id to determine the clock consumer, and thereby
> + * the clock producer.  (IOW, @id may be identical strings, but
> + * clk_get may return different clock producers depending on @dev.)
> + *
> + * The returned clk (if valid) is enabled.
> + */
> +static inline struct clk *clk_get_enabled(struct device *dev, const char *id)
> +{
> +	struct clk *clk;
> +	int ret;
> +
> +	clk = clk_get(dev, id);
> +	if (IS_ERR(clk))
> +		return clk;
> +
> +	ret = clk_enable(clk);
> +	if (ret)
> +		return ERR_PTR(ret);

As this isn't devm managed you should release the clock in the error
path.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


