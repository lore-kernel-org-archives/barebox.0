Delivery-date: Thu, 26 Oct 2023 16:20:25 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qw1Dm-004dDF-5e
	for lore@lore.pengutronix.de; Thu, 26 Oct 2023 16:20:25 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qw1Dk-00009I-Sv
	for lore@pengutronix.de; Thu, 26 Oct 2023 16:20:25 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=PQNeoJnScjSHYGyld6PTh5mQmyfgqKus28T6XZVBTJQ=; b=Aknq57PZ1pjaBvKtGYhIeJ/B3I
	oTN2LFu+I8Vyt5ERcVwWpqUm/w5u1Cr5kmRZf1ZiOhxoqJ6+69Rj7N+63uEx0hV/CAQ2z+l+411hS
	JEvGMyupvQtmSWD1VcpROW9k2rr/DdD1jATxk/ZlAAxUd9Y3Bqvhpe3/B8/B2LttKDHvn/3CZCFb3
	jhePerCxHWnTAItHXwcYP2/AQ7zWIQYGwBzASna5X8AxbigkcRdH1U8iMWXHx5p79WOvLk4LjMhIr
	YqdkkuUWKEzzi7FrnqlF9zoMELi+6JTfLVKgJ1ax/ZVcH4nA6qype9gRb0FlPgVozFLIHwJbLHa9o
	8QDN3HGw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qw1CV-00EeF0-2i;
	Thu, 26 Oct 2023 14:19:07 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qw1CQ-00EeE9-1h
	for barebox@lists.infradead.org;
	Thu, 26 Oct 2023 14:19:04 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1qw1CK-0008JJ-4O; Thu, 26 Oct 2023 16:18:56 +0200
Message-ID: <2e8afb0f-8ac4-575e-3029-9c1fffdb71fc@pengutronix.de>
Date: Thu, 26 Oct 2023 16:18:52 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Content-Language: en-US
To: Marco Felsch <m.felsch@pengutronix.de>, barebox@lists.infradead.org
References: <20231026124623.4054582-1-m.felsch@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20231026124623.4054582-1-m.felsch@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231026_071902_566692_AA83DCCD 
X-CRM114-Status: GOOD (  18.08  )
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
X-Spam-Status: No, score=-6.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/2] usb: gadget: initialize serialnumber as empty string
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Marco,

On 26.10.23 14:46, Marco Felsch wrote:
> Windows hosts do require the serial number to be set to any ascii string
> to enumerate correctly. Set the serial number to "empty" to provide a
> sane default which works for both hosts. Users can still override this
> via the gadget.serialnumber variable.
> 
> Reported-by: Andrey Zhizhikin <andrey.zhizhikin@leica-geosystems.com>
> Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
> ---
>  drivers/usb/gadget/udc/core.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/usb/gadget/udc/core.c b/drivers/usb/gadget/udc/core.c
> index b58498680ad1..dc5d1daa14bf 100644
> --- a/drivers/usb/gadget/udc/core.c
> +++ b/drivers/usb/gadget/udc/core.c
> @@ -1204,7 +1204,7 @@ int usb_add_gadget(struct usb_gadget *gadget)
>  	gadget->productname = xstrdup(barebox_get_model());
>  	dev_add_param_string(&gadget->dev, "productname", NULL, NULL,
>  			     &gadget->productname, NULL);
> -	gadget->serialnumber = xstrdup("");
> +	gadget->serialnumber = xstrdup("empty");

Given that we initialize productname to model, it makes sense to initialize
serialnumber to global.serial_number now that we have that generic variable.

If that's unset, you can use a fixed value, I'd prefer "unset" though
instead of "empty".

Cheers,
Ahmad

>  	dev_add_param_string(&gadget->dev, "serialnumber", NULL, NULL,
>  			     &gadget->serialnumber, NULL);
>  

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



