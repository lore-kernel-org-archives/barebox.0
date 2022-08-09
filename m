Delivery-date: Tue, 09 Aug 2022 11:25:40 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oLLUY-00HCmL-4A
	for lore@lore.pengutronix.de; Tue, 09 Aug 2022 11:25:40 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oLLUZ-0005H6-05
	for lore@pengutronix.de; Tue, 09 Aug 2022 11:25:39 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=To2JpDeinyFmAF+PwYeA9HiXiK5hA21t/fGvtH/pzZ0=; b=OxOhWILokCIvzl6LFU/d5QOHvv
	nIbKI8rdBxGnFQz0fomJdNXFWeatGvGJFc9b/CpjO5g02kGi5vorapINtO9gxz6oN1PPWgNuurO+d
	VnOGNqhi86VEaCBAGUF6VG7ODqzE7A0nJiTSgQ8L741VEEogdDajyf6K3jDuq/5/zAsXjVCgfGcif
	55vujTB/RGHSDriAAnAY5jVZ95K4jq62+GzcdzI5ianeOTCoP3hyuJP5Cz2mgGpj7ZwUBVI+yRx4I
	xan430oNAzDsMrVWecRIWE2ZFXmA6jHtDlYIjsLj78AX1kSMPvzoVo2VJ2PLq88bHW3TkZlK+N/ED
	nJ8gPtUA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oLLTO-0031qJ-15; Tue, 09 Aug 2022 09:24:26 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oLLTH-0031o0-QU
	for barebox@lists.infradead.org; Tue, 09 Aug 2022 09:24:21 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oLLTG-0004xE-KV; Tue, 09 Aug 2022 11:24:18 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oLLTG-000357-Bt; Tue, 09 Aug 2022 11:24:18 +0200
Date: Tue, 9 Aug 2022 11:24:18 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20220809092418.GM31528@pengutronix.de>
References: <20220809055733.1544311-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220809055733.1544311-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220809_022419_886160_794847E2 
X-CRM114-Status: GOOD (  21.25  )
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

On Tue, Aug 09, 2022 at 07:57:32AM +0200, Ahmad Fatoum wrote:
> board code fix up the device tree for OS consumption. Sometimes it's
> useful for the fixup to append onto an existing property.
> Add a helper that simplifies this.
> 
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

	if (!pp) {
		of_new_property(np, name, val, len);
		return 0;
	}

With that you can make the rest of the function more straight forward.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


