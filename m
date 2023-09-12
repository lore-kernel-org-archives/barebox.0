Delivery-date: Tue, 12 Sep 2023 11:30:38 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qfzjE-00CUQo-1M
	for lore@lore.pengutronix.de; Tue, 12 Sep 2023 11:30:38 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qfzjB-0006eI-N9
	for lore@pengutronix.de; Tue, 12 Sep 2023 11:30:38 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=MuDGv0RgQfs0ragum/0umDWtAlIgxualmq3TmY4+n8E=; b=ffIkvaYoukU1sz1rZHeyR5H+gb
	64ha8DGLAMwz2txbtKmy8Dmlwv1WuObT9u4PL85/9LXTyU/OvUbCG7+eiVlY1xUfAoMksyVt0UCgs
	cNOwynksn/I/4QUe2lB09BWI4mHsnro/8S0NV53bkuhUXmq6ovMStpJicO5LBxmghbc2dUhihQJiK
	GCPgt9YyTOdBH8LanX4c35bvs9NayiA74WoId5xZMr/wQJGIJGeLpyd3bdYmF4R96OQ7PL30wlpjq
	iHwj8gdNpXiRj9IKy+a5YgqRj59eojV+lf8oxUS/vvWammrkRdbgFFnxOUEKU7twFAZRhWTxtOnmx
	0E6TuwiQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qfzi3-002jyO-24;
	Tue, 12 Sep 2023 09:29:27 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qfzi0-002jwE-1I
	for barebox@lists.infradead.org;
	Tue, 12 Sep 2023 09:29:25 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qfzhz-0006IO-6t; Tue, 12 Sep 2023 11:29:23 +0200
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1qfzhy-005kLY-Qe; Tue, 12 Sep 2023 11:29:22 +0200
Received: from sha by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qfzhy-005ZrE-CT; Tue, 12 Sep 2023 11:29:22 +0200
Date: Tue, 12 Sep 2023 11:29:22 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20230912092922.GY637806@pengutronix.de>
References: <20230911101633.2189427-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230911101633.2189427-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230912_022924_439353_EF5946B5 
X-CRM114-Status: GOOD (  18.17  )
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
Subject: Re: [PATCH] include: linux/kernel.h: define
 PTR_ALIGN_DOWN/PTR_IS_ALIGNED
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Mon, Sep 11, 2023 at 12:16:33PM +0200, Ahmad Fatoum wrote:
> Pointer casts to integers are a common cause of 64-bit incompatibilities.
> Import PTR_ALIGN_DOWN/PTR_IS_ALIGNED macros from Linux to hide the cast.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  include/linux/kernel.h | 2 ++
>  1 file changed, 2 insertions(+)

Applied, thanks

Sascha

> 
> diff --git a/include/linux/kernel.h b/include/linux/kernel.h
> index bf820de22ca7..0e4ba243915b 100644
> --- a/include/linux/kernel.h
> +++ b/include/linux/kernel.h
> @@ -14,6 +14,8 @@
>  #define ALIGN_DOWN(x, a)	ALIGN((x) - ((a) - 1), (a))
>  #define __ALIGN_MASK(x, mask)	(((x) + (mask)) & ~(mask))
>  #define PTR_ALIGN(p, a)		((typeof(p))ALIGN((unsigned long)(p), (a)))
> +#define PTR_ALIGN_DOWN(p, a)	((typeof(p))ALIGN_DOWN((unsigned long)(p), (a)))
> +#define PTR_IS_ALIGNED(x, a)	IS_ALIGNED((unsigned long)(x), (a))
>  #define IS_ALIGNED(x, a)		(((x) & ((typeof(x))(a) - 1)) == 0)
>  
>  #define ARRAY_SIZE(arr) (sizeof(arr) / sizeof((arr)[0]) + __must_be_array(arr))
> -- 
> 2.39.2
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


