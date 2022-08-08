Delivery-date: Mon, 08 Aug 2022 15:22:09 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oL2hr-00GDHS-Qn
	for lore@lore.pengutronix.de; Mon, 08 Aug 2022 15:22:09 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oL2hs-0001yF-JI
	for lore@pengutronix.de; Mon, 08 Aug 2022 15:22:09 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:References:Message-ID:
	Subject:Cc:To:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=tLcc8hqPEeaMClYQLdOl7hToS8pEzijzXkeedrO1O0E=; b=F8pmNXtIYKAuxFgJUNu6QPMxyJ
	ZvA5VxXeIO8ghVAJmi5gKiP3C9YuO2Mn8Eovi/L8xZ4VNLEs6hL4SCinfQhQofQcGqFe5eEEPCxvz
	ppoBLVR9bFHsCs+7xQYXrOF7/cTNsItaQUIBsB98NAP3T0wXCcj0EXfQ8pbjQ2hyIqPIO0tWL2pVm
	LTfn3NThdd/CQ5+/WjQZ4sAq6jJfjBWRizk2i/ONmCFKQ0zCkIQRtotmj9pEEY6vouoc6H12CXxH2
	eyUJXrdED5X9zfSjy3HRJKkzRpmGyU4vSf5ZB1WoBf6bZ6PZGct8MvtvTkTcW4HdfcD2w5iUVqM7d
	xcR6wceg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oL2ga-00E2dc-9M; Mon, 08 Aug 2022 13:20:48 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oL2gU-00E2bt-TP
	for barebox@lists.infradead.org; Mon, 08 Aug 2022 13:20:44 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oL2gS-0001iW-Td; Mon, 08 Aug 2022 15:20:40 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oL2gS-0003Zx-Kg; Mon, 08 Aug 2022 15:20:40 +0200
Date: Mon, 8 Aug 2022 15:20:40 +0200
To: Daniel =?iso-8859-15?Q?Br=E1t?= <danek.brat@gmail.com>
Cc: barebox@lists.infradead.org
Message-ID: <20220808132040.GP31528@pengutronix.de>
References: <20220729205441.9512-1-danek.brat@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-15
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220729205441.9512-1-danek.brat@gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220808_062043_235075_C52806BC 
X-CRM114-Status: GOOD (  25.69  )
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
Subject: Re: [PATCH v2] image-fit: use real size of fit image
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Fri, Jul 29, 2022 at 10:54:41PM +0200, Daniel Brát wrote:
> The real size of the fit image might be significantly smaller than it may
> appear to be based on the specified filename. For example, if path to raw disk
> partition is passed (eg. /dev/disk0.1), the size of the partition itself
> might be several times larger than the fit image it contains at the moment
> (so it has headroom for possible future image size changes).
> This modification uses the fdt header field 'totalsize' to read-in only what
> is needed.
> 
> Signed-off-by: Daniel Brát <danek.brat@gmail.com>
> ---
> v2: use fdt32_to_cpu to read the totalsize from header
> ---
>  common/image-fit.c | 27 ++++++++++++++++++++++++---
>  1 file changed, 24 insertions(+), 3 deletions(-)
> 
> diff --git a/common/image-fit.c b/common/image-fit.c
> index a410632d7..de65e3dd1 100644
> --- a/common/image-fit.c
> +++ b/common/image-fit.c
> @@ -774,13 +774,18 @@ struct fit_handle *fit_open_buf(const void *buf, size_t size, bool verbose,
>  				enum bootm_verify verify)
>  {
>  	struct fit_handle *handle;
> +	struct fdt_header *header;
>  	int ret;
>  
> +	if (size < sizeof(*header))
> +		return ERR_PTR(-EINVAL);
> +
> +	header = (struct fdt_header*)buf;
>  	handle = xzalloc(sizeof(struct fit_handle));
>  
>  	handle->verbose = verbose;
>  	handle->fit = buf;
> -	handle->size = size;
> +	handle->size = fdt32_to_cpu(header->totalsize);

Should we check that header->totalsize doesn't exceed the passed buffer
size?

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


