Delivery-date: Wed, 22 Mar 2023 09:30:08 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1petrD-00ADox-6F
	for lore@lore.pengutronix.de; Wed, 22 Mar 2023 09:30:08 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1petrC-0000vn-Ji
	for lore@pengutronix.de; Wed, 22 Mar 2023 09:30:07 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Content-Type:References:In-Reply-To:Date:To:From:Subject:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=D+ftqD8vpFxPS5MLeoiuMAQcLfLiJ3SA9LonBNBnwz4=; b=KcQ8ZZGvElw7yGbU63es2mpXr7
	sY+mpDmfpZLIk+KKmsN0HC3E17ZboCosu5eGSdZ9mQNTHJNMn8UAMHPFp8v05XBZ/GkSskldvSHHB
	3ZgG8P6mfXGQer2fw6Ykv/Pf9AlMYhRWE06j5QQrcfBmIXllxDe3U7nDYwgusq4E0h48rbBVAVCA1
	HipMuCsUJKQtn/Sxcu++Dy4AWAa5ed2ObZpu5TzVyG+4Iwh4+dDUDKYu8aKX74xaGU/U6mZEBL2g2
	edtilIDTuZLof+AiaE8kadmFmTltrGxUWjXJ/jKGU2IslPf10APB1B+9++wNksmvCMiN1vutPuBIv
	bAZzV15w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1petq2-00FBEH-1A;
	Wed, 22 Mar 2023 08:28:54 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1petpz-00FBA2-0x
	for barebox@lists.infradead.org;
	Wed, 22 Mar 2023 08:28:52 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=irc.pengutronix.de)
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <j.zink@pengutronix.de>)
	id 1petpv-0000p9-8t; Wed, 22 Mar 2023 09:28:47 +0100
Message-ID: <e1ff34b699e9d2df04f75d1dc90cffb03d09db06.camel@pengutronix.de>
From: Johannes Zink <j.zink@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, Barebox List
	 <barebox@lists.infradead.org>
Date: Wed, 22 Mar 2023 09:28:21 +0100
In-Reply-To: <20230320152941.3155428-16-s.hauer@pengutronix.de>
References: <20230320152941.3155428-1-s.hauer@pengutronix.de>
	 <20230320152941.3155428-16-s.hauer@pengutronix.de>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.38.3-1+deb11u1 
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230322_012851_330855_DCF5C51C 
X-CRM114-Status: GOOD (  19.70  )
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
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 15/18] usb: gadget: fastboot: Add super speed descriptors
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi Sascha,

there is a small typo in the commit message:

On Mon, 2023-03-20 at 16:29 +0100, Sascha Hauer wrote:
> Add super speed descriptors to the fasboot gadget. These are taken

s/fasboot/fastboot/

Best regards
Johannes

> from
> U-Boot v2023.04-rc4.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  drivers/usb/gadget/function/f_fastboot.c | 34
> +++++++++++++++++++++++-
>  1 file changed, 33 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/usb/gadget/function/f_fastboot.c
> b/drivers/usb/gadget/function/f_fastboot.c
> index 4e9c373796..4266b78b40 100644
> --- a/drivers/usb/gadget/function/f_fastboot.c
> +++ b/drivers/usb/gadget/function/f_fastboot.c
> @@ -109,6 +109,36 @@ static struct usb_descriptor_header
> *fb_hs_descs[] = {
>         NULL,
>  };
>  
> +static struct usb_endpoint_descriptor ss_ep_in = {
> +       .bLength                = USB_DT_ENDPOINT_SIZE,
> +       .bDescriptorType        = USB_DT_ENDPOINT,
> +       .bEndpointAddress       = USB_DIR_IN,
> +       .bmAttributes           = USB_ENDPOINT_XFER_BULK,
> +       .wMaxPacketSize         = cpu_to_le16(1024),
> +};
> +
> +static struct usb_endpoint_descriptor ss_ep_out = {
> +       .bLength                = USB_DT_ENDPOINT_SIZE,
> +       .bDescriptorType        = USB_DT_ENDPOINT,
> +       .bEndpointAddress       = USB_DIR_OUT,
> +       .bmAttributes           = USB_ENDPOINT_XFER_BULK,
> +       .wMaxPacketSize         = cpu_to_le16(1024),
> +};
> +
> +static struct usb_ss_ep_comp_descriptor fb_ss_bulk_comp_desc = {
> +       .bLength =              sizeof(fb_ss_bulk_comp_desc),
> +       .bDescriptorType =      USB_DT_SS_ENDPOINT_COMP,
> +};
> +
> +static struct usb_descriptor_header *fb_ss_descs[] = {
> +       (struct usb_descriptor_header *)&interface_desc,
> +       (struct usb_descriptor_header *)&ss_ep_in,
> +       (struct usb_descriptor_header *)&fb_ss_bulk_comp_desc,
> +       (struct usb_descriptor_header *)&ss_ep_out,
> +       (struct usb_descriptor_header *)&fb_ss_bulk_comp_desc,
> +       NULL,
> +};
> +
>  /*
>   * static strings, in UTF-8
>   */
> @@ -255,6 +285,8 @@ static int fastboot_bind(struct usb_configuration
> *c, struct usb_function *f)
>  
>         hs_ep_out.bEndpointAddress = fs_ep_out.bEndpointAddress;
>         hs_ep_in.bEndpointAddress = fs_ep_in.bEndpointAddress;
> +       ss_ep_out.bEndpointAddress = fs_ep_out.bEndpointAddress;
> +       ss_ep_in.bEndpointAddress = fs_ep_in.bEndpointAddress;
>  
>         f_fb->out_req = fastboot_alloc_request(f_fb->out_ep);
>         if (!f_fb->out_req) {
> @@ -266,7 +298,7 @@ static int fastboot_bind(struct usb_configuration
> *c, struct usb_function *f)
>         f_fb->out_req->complete = rx_handler_command;
>         f_fb->out_req->context = f_fb;
>  
> -       ret = usb_assign_descriptors(f, fb_fs_descs, fb_hs_descs,
> NULL, NULL);
> +       ret = usb_assign_descriptors(f, fb_fs_descs, fb_hs_descs,
> fb_ss_descs, fb_ss_descs);
>         if (ret)
>                 goto err_free_in_req;
>  

-- 
Pengutronix e.K.                | Johannes Zink                  |
Steuerwalder Str. 21            | https://www.pengutronix.de/    |
31137 Hildesheim, Germany       | Phone: +49-5121-206917-0       |
Amtsgericht Hildesheim, HRA 2686| Fax:   +49-5121-206917-5555    |



