Delivery-date: Tue, 05 Dec 2023 08:58:11 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rAQJn-003vIb-0H
	for lore@lore.pengutronix.de;
	Tue, 05 Dec 2023 08:58:11 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rAQJn-0002FN-2V
	for lore@pengutronix.de; Tue, 05 Dec 2023 08:58:11 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=rL2CgnTsZiInQ0YsSlJqcYTmbrYLrpDgqvsjpQH3STc=; b=DYbT2EzBhhtXiIROynqKcUUvcv
	DBVGDRFVo6XEyyJZs+h/cP6u/8AlM8/RbKi3nH3jaUluKdhM+pcSoHjN6hZa5HLS9jKQQbwzEAimk
	oo5ts9EVB4oVqOf2me/ozepQ/q5YsF4CapETqQG9ueE0ZRQcknqpaJltd9kJQvxfvuGjsGQA8tucC
	h6rtyu7kDLCWk3aK64XGpzx1oLsvJaA7/dex3K3AlNS51+EWS30haGea77T1JbZ2W2dalRQzJtZfC
	eltq1+l83Td6jJVH4Vfst0uUtJW6v5Yv4TyhMKeXAJSPzVXfhs0JFKMGG0GeIDrjF0bcs7Biz4S3r
	h38FsRzQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rAQId-006Ywk-2b;
	Tue, 05 Dec 2023 07:56:59 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rAQIW-006Yvd-1U
	for barebox@lists.infradead.org;
	Tue, 05 Dec 2023 07:56:54 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1rAQIU-00020l-QQ; Tue, 05 Dec 2023 08:56:50 +0100
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1rAQIU-00Dh46-Dy; Tue, 05 Dec 2023 08:56:50 +0100
Received: from sha by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1rAQIU-005LoV-BY; Tue, 05 Dec 2023 08:56:50 +0100
Date: Tue, 5 Dec 2023 08:56:50 +0100
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org, Simon Glass <sjg@chromium.org>
Message-ID: <20231205075650.GN1057032@pengutronix.de>
References: <20231129203106.2417486-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231129203106.2417486-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231204_235652_498471_9B589A74 
X-CRM114-Status: GOOD (  26.86  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] FIT: support kernel images with type = "kernel_noload"
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Wed, Nov 29, 2023 at 09:31:06PM +0100, Ahmad Fatoum wrote:
> U-Boot interprets "kernel_noload" to mean that the load and entry
> addresses shall be ignored[1] and that the kernel image should be executed
> in-place, unless compressed[2]. The entry and load addresses are still
> mandatory and need to be initialized to some dummy value according to
> spec[3].
> 
> barebox, which is unaware of any special semantics for the kernel_noload
> type, would thus try to place a kernel_noload image at the dummy load
> address specified and fail if that's not possible. Fix this by treating
> type = "kernel_noload" as if load and entry properties were omitted,
> in which case barebox falls back to find a suitable memory region at
> runtime.
> 
> This change is motivated by the Linux kernel series adding FIT as
> additional Kbuild target for ARM64[4]. With the change here, it's possible
> to consume these FIT images in barebox as well.
> 
> [1]: U-Boot commit b9b50e89d317 ("image: Implement IH_TYPE_KERNEL_NOLOAD")
> [2]: https://patchwork.ozlabs.org/project/uboot/list/?series=382849&state=*
> [3]: https://github.com/open-source-firmware/flat-image-tree/releases/download/v0.8/fit-specification-v0.8.pdf
> [4]: https://lore.kernel.org/linux-arm-kernel/20231129172200.430674-1-sjg@chromium.org/T/#meb5bda548de8d8d403c67ee90f639923c8a182fa
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  common/image-fit.c | 6 ++++++
>  1 file changed, 6 insertions(+)

Applied, thanks

Sascha

> 
> diff --git a/common/image-fit.c b/common/image-fit.c
> index 0352dc5cbd0c..5ef5013bd41d 100644
> --- a/common/image-fit.c
> +++ b/common/image-fit.c
> @@ -545,6 +545,7 @@ int fit_get_image_address(struct fit_handle *handle, void *configuration,
>  {
>  	struct device_node *image;
>  	const char *unit = name;
> +	const char *type;
>  	int ret;
>  
>  	if (!address || !property || !name)
> @@ -554,6 +555,11 @@ int fit_get_image_address(struct fit_handle *handle, void *configuration,
>  	if (ret)
>  		return ret;
>  
> +	/* Treat type = "kernel_noload" as if entry/load address is missing */
> +	ret = of_property_read_string(image, "type", &type);
> +	if (!ret && !strcmp(type, "kernel_noload"))
> +	    return -ENOENT;
> +
>  	ret = fit_get_address(image, property, address);
>  
>  	return ret;
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


