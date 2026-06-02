Delivery-date: Tue, 02 Jun 2026 09:59:21 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wUK1x-001Vt3-1D
	for lore@lore.pengutronix.de;
	Tue, 02 Jun 2026 09:59:21 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wUK1w-0005Z3-N7
	for lore@pengutronix.de; Tue, 02 Jun 2026 09:59:21 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Q/r7E8oUDRZw7o53/TE2R4pcucxSYHceUKzN2Ml71xc=; b=ZLdOi3uByHahSVJlHzkIn4NCXX
	7HG0zWkux/Gzkj87Tqxc31F/EnbZyNhUDoO/U9oFlSR2TcfrLgL6fDqhBZrYy+bzWzWLzeQ+LMHMh
	0OhTnw+SPU1oOorOjFbiSk76OLbChJU5wwkSIgmBWR2ZL48fPkle6a9oS9HGMdivlT1I4m1x0zLI0
	l5Cb1wNEGqrV/zB9iJZezrcGB+jRi3tfssrAQ461tfLPlAtZy/5wqjF3H1raVdutILiQKtkxQFFNA
	Rtaqktcy0KXcKtz5G/n0BaqPeqx7RH/KEq3tWeyyNIwDOSUsoGHonwG7l6bfgpw0LvPjfNZmIQxHe
	9ra0y+uw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wUK0p-0000000CWGE-0EaF;
	Tue, 02 Jun 2026 07:58:11 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wUK0m-0000000CWFn-0Um0
	for barebox@lists.infradead.org;
	Tue, 02 Jun 2026 07:58:09 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wUK0k-0005Mx-Cq; Tue, 02 Jun 2026 09:58:06 +0200
Message-ID: <667bad55-4666-4ced-be21-3cd38b0ba5df@pengutronix.de>
Date: Tue, 2 Jun 2026 09:58:05 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Johannes Schneider <johannes.schneider@leica-geosystems.com>,
 barebox@lists.infradead.org
Cc: thomas.haemmerle@leica-geosystems.com
References: <20260602022409.316585-1-johannes.schneider@leica-geosystems.com>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <20260602022409.316585-1-johannes.schneider@leica-geosystems.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260602_005808_157844_5729CD4F 
X-CRM114-Status: GOOD (  18.24  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] lib: gui: png_pico: fix use-after-free and double-free in
 png_open
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello,

Thanks for the fix.

On 6/2/26 4:24 AM, Johannes Schneider wrote:
> From: Thomas Haemmerle <thomas.haemmerle@leica-geosystems.com>
> 
> png_alloc_free_all() frees all picopng-internal allocations, including
> the image->data buffer.  The previous code stored a pointer to this
> buffer in img->data and called png_alloc_free_all() — leaving img->data
> as a dangling pointer.  The subsequent png_close()'s free(img->data)
> then performed a double-free on already-freed memory, causing a crash or
> heap corruption when displaying the boot logo.
> 
> Fix by copying the decoded pixel data into a fresh malloc buffer before
> calling png_alloc_free_all().  png_close() correctly frees this copy.

Never ceases to amaze how long memory corruption can go unnoticed..

> -	pr_debug("png: %d x %d data@0x%p\n", img->width, img->height, img->data);
> +	/*
> +	 * Copy decoded pixels to a stable buffer before png_alloc_free_all()
> +	 * frees the picopng internal allocations (including image->data).
> +	 * Without this copy, img->data would be a dangling pointer and
> +	 * png_close()'s free(img->data) would be a double-free.
> +	 */
> +	imgsize = png_info->width * png_info->height * 4;
> +	imgcopy = malloc(imgsize);
> +	if (!imgcopy) {
> +		ret = -ENOMEM;
> +		goto err;
> +	}
> +	memcpy(imgcopy, png_info->image->data, imgsize);
>  
>  	png_alloc_free_all();
>  
> +	img->data = imgcopy;
> +
> +	pr_debug("png: %d x %d data@0x%p\n", img->width, img->height, img->data);
> +

I would prefer avoiding the memory copy here. My suggestion would be adding
(untested):

void *png_alloc_detach(void *addr)
{
        for (png_alloc_node_t *node = png_alloc_tail; node; node = node->prev) {
                if (node->addr == addr) {
                        png_alloc_remove_node(node);
                        return addr;
                }
        }

        return NULL;
}

and then a single line change in png_open:

-	img->data = png_info->image->data
+	img->data = png_alloc_detach(png_info->image->data);

What do you think?

Cheers,
Ahmad

>  	return img;
>  err:
>  	png_alloc_free_all();

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



