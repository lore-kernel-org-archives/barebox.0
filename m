Delivery-date: Wed, 31 May 2023 19:36:07 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q4Pk0-004ZUE-Bk
	for lore@lore.pengutronix.de; Wed, 31 May 2023 19:36:07 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q4Pjx-0006nq-UB
	for lore@pengutronix.de; Wed, 31 May 2023 19:36:06 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=lKD0rEVLU2srLmm9eZfg186AP3DjE3Y8id7U59uTZ30=; b=S072kyKpkTsVo+QTmfI0vJkYbo
	53vGvOmlwPhfVw73t4cmBakWQPIlVHB6KQq+k/1vd3N/TwApn0mg0qsQirmRRl5wcj1gqEW4pvVNa
	Bd+iG3MYikjgycH5aTfiEIGbsz7BI7hdfsUWky+NhGFt+C3/ZxD4jiGSANVtGphweJpGq60sMXo3v
	/EUrhdmn3oTJqgSRsM8lzLgHeOKZ7l59BUYqOV/H1ZlPujrF4nPwRncdbe0vTT5sgzwwQyTQ/vP/z
	KYiaLOk7iv4HpTrDgweVFzBoh4u1ptxIfgmXkONzzbLWyCDq6rDBqGEvhky+71hLOkyEGhWSGee7E
	LLZBoMow==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q4PjH-000eYU-2o;
	Wed, 31 May 2023 17:35:23 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q4PjE-000eXc-1N
	for barebox@lists.infradead.org;
	Wed, 31 May 2023 17:35:21 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1q4PjC-0006Tk-PT; Wed, 31 May 2023 19:35:18 +0200
Received: from mfe by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1q4PjC-0005Ub-IK; Wed, 31 May 2023 19:35:18 +0200
Date: Wed, 31 May 2023 19:35:18 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20230531173518.dmd56xfwnoc5eljs@pengutronix.de>
References: <20230531145927.1399282-1-a.fatoum@pengutronix.de>
 <20230531145927.1399282-14-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230531145927.1399282-14-a.fatoum@pengutronix.de>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230531_103520_480405_4925208B 
X-CRM114-Status: GOOD (  14.06  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 13/18] block: add cdev_is_block_(device,partition,disk)
 helpers
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 23-05-31, Ahmad Fatoum wrote:
> We look too much into struct cdev's guts. Let's add helpers to make
> operating on block device cdevs more concise.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

Reviewed-by: Marco Felsch <m.felsch@pengutronix.de>

> ---
>  include/block.h | 15 +++++++++++++++
>  1 file changed, 15 insertions(+)
> 
> diff --git a/include/block.h b/include/block.h
> index 4dd2aa1f80ef..da258f509b41 100644
> --- a/include/block.h
> +++ b/include/block.h
> @@ -58,4 +58,19 @@ static inline struct block_device *cdev_get_block_device(const struct cdev *cdev
>  }
>  #endif
>  
> +static inline bool cdev_is_block_device(const struct cdev *cdev)
> +{
> +	return cdev_get_block_device(cdev) != NULL;
> +}
> +
> +static inline bool cdev_is_block_partition(const struct cdev *cdev)
> +{
> +	return cdev_is_block_device(cdev) && cdev_is_partition(cdev);
> +}
> +
> +static inline bool cdev_is_block_disk(const struct cdev *cdev)
> +{
> +	return cdev_is_block_device(cdev) && !cdev_is_partition(cdev);
> +}
> +
>  #endif /* __BLOCK_H */
> -- 
> 2.39.2
> 
> 
> 


