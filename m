Delivery-date: Fri, 24 Mar 2023 09:49:16 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pfd6p-00D2m9-3S
	for lore@lore.pengutronix.de; Fri, 24 Mar 2023 09:49:16 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pfd6o-00050w-UU
	for lore@pengutronix.de; Fri, 24 Mar 2023 09:49:15 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=azuxU9E+lNd2LA/pvvuEvdDwfrTYxSYpXE01nilAslI=; b=fNUnSZcTepvL/ZtCZlcYwD7jg+
	cZ8U57yiO+CS4uXi7crj4omDzUKMmeTvgiTFP1DLQ4S/FaCTWIzribLTDs/rWLBuPF4NYUsgd8suh
	MwnIX/QIBv/mL9FbbJowY7tCWn9ESFKu8AMuOZFVQTXS0PMq/xOtKYcUvh3SElPZGxfxJ1TA+Gp5P
	RGlj6XUaHwhir6F3Jnocn9KsKt7dgVzG1aGxlLtEhzIWaqyJ1NbUmqgmyk8yeXsOZGNvPXgs5Bj+X
	igSJmdlIoKEptAlEYvptOsPYC2/+uxONutmUoD1bSiRh1eq7u8rf/PQas2hXll+NcN9py190PwObC
	mtDk6GtQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pfd5o-003uYk-0L;
	Fri, 24 Mar 2023 08:48:12 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pfd5l-003uY4-1k
	for barebox@lists.infradead.org;
	Fri, 24 Mar 2023 08:48:10 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1pfd5k-0004rw-1a; Fri, 24 Mar 2023 09:48:08 +0100
Received: from mfe by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1pfd5j-0004ic-QP; Fri, 24 Mar 2023 09:48:07 +0100
Date: Fri, 24 Mar 2023 09:48:07 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>
Message-ID: <20230324084807.m445atwiirq477ve@pengutronix.de>
References: <20230324082748.987672-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230324082748.987672-1-s.hauer@pengutronix.de>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230324_014809_581078_ADD680C3 
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] usb: gadget: fastboot: Do not dequeue idle request
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 23-03-24, Sascha Hauer wrote:
> In fastboot_disable() all endpoints are disabled which will complete
> all outstanding requests with -ESHUTDOWN. fastboot_unbind() is called
> after that, so we do not need to deqeueue any requests there.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

Reviewed-by: Marco Felsch <m.felsch@pengutronix.de>

> ---
>  drivers/usb/gadget/function/f_fastboot.c | 1 -
>  1 file changed, 1 deletion(-)
> 
> diff --git a/drivers/usb/gadget/function/f_fastboot.c b/drivers/usb/gadget/function/f_fastboot.c
> index 4266b78b40..41450268fc 100644
> --- a/drivers/usb/gadget/function/f_fastboot.c
> +++ b/drivers/usb/gadget/function/f_fastboot.c
> @@ -319,7 +319,6 @@ static void fastboot_unbind(struct usb_configuration *c, struct usb_function *f)
>  {
>  	struct f_fastboot *f_fb = func_to_fastboot(f);
>  
> -	usb_ep_dequeue(f_fb->out_ep, f_fb->out_req);
>  	free(f_fb->out_req->buf);
>  	usb_ep_free_request(f_fb->out_ep, f_fb->out_req);
>  	f_fb->out_req = NULL;
> -- 
> 2.30.2
> 
> 


