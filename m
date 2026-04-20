Delivery-date: Mon, 20 Apr 2026 12:43:23 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wEm67-00EJW5-30
	for lore@lore.pengutronix.de;
	Mon, 20 Apr 2026 12:43:23 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wEm67-0007QR-Bk
	for lore@pengutronix.de; Mon, 20 Apr 2026 12:43:23 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=T8bGuxwpUrPXdDMYXa/DFeHyAv2cP7cgMblxLjHxv1w=; b=RjK3vDx4h4n91erCjwXnCidpgI
	FqscUU6kPDU6VILd03RYkou65vMkNgh9F+B8bFWIXnCRLZFQ5yTSFpTXLkHVhgKzk6DL10aqCt4Jh
	teX7GE65HTERGvKDERPuzIf2nXmCEr5X1OzZaGCBYeVSlE+akvZnlgBmhr27VtaOuIsA1jrOV9lkB
	u5MdU+y4kbI79UskgSRKSRWDycVG/+Vw1sshTEN62Uqdq4q2mmCWoStF6e+zonwd8XobWGQTBPBU0
	2JEz4y3ncS2S0XUthVd43UwMGDFsXtsbyotyC+FNYpdkticcUkKUGtaK/aG5QqmHGe50ZOncUnPjI
	3so4nHew==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wEm5S-00000006k3X-2pN5;
	Mon, 20 Apr 2026 10:42:42 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wEm5O-00000006k38-3vkj
	for barebox@lists.infradead.org;
	Mon, 20 Apr 2026 10:42:40 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wEm5M-0007HL-3c; Mon, 20 Apr 2026 12:42:36 +0200
Message-ID: <1165e329-6af8-4763-bf32-9ef49db33b5a@pengutronix.de>
Date: Mon, 20 Apr 2026 12:42:35 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>,
 BAREBOX <barebox@lists.infradead.org>
References: <20260420-usb-typec-stusb160x-v1-0-5875bbae80ab@pengutronix.de>
 <20260420-usb-typec-stusb160x-v1-1-5875bbae80ab@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20260420-usb-typec-stusb160x-v1-1-5875bbae80ab@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260420_034239_064185_0630AF89 
X-CRM114-Status: GOOD (  21.80  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/4] usb: otg: Add function to set dr_mode
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi,

On 4/20/26 11:02 AM, Sascha Hauer wrote:
> So far we can only set the dr_mode on the command line. Add a function
> for it.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  drivers/usb/otg/otgdev.c | 20 ++++++++++++++++++++
>  include/linux/usb/usb.h  |  1 +
>  2 files changed, 21 insertions(+)
> 
> diff --git a/drivers/usb/otg/otgdev.c b/drivers/usb/otg/otgdev.c
> index 5a86263430..50d8105be3 100644
> --- a/drivers/usb/otg/otgdev.c
> +++ b/drivers/usb/otg/otgdev.c
> @@ -74,6 +74,26 @@ int otg_device_get_mode(struct device *dev)
>  	return otg->cur_mode;
>  }
>  
> +int otg_device_set_dr_mode(struct device *dev, enum usb_dr_mode mode)
> +{
> +	struct otg_mode *otg;
> +	int ret;
> +
> +	if (dev->bus != &otg_bus_type)
> +		return -ENODEV;
> +
> +	otg = dev->priv;
> +
> +	ret = otg->set_mode_callback(otg->ctx, mode);
> +	if (ret)
> +		return ret;

This doesn't guard against switching from peripheral to host and back
unlike the param version, which only allows switching away from otg.

I think the existing logic should be moved into this function and
otg_set_mode changed to a wrapper around it.

> +
> +	otg->cur_mode = mode;
> +	otg->var_mode = mode;
> +
> +	return 0;
> +}
> +
>  int usb_register_otg_device(struct device *parent,
>  			    int (*set_mode)(void *ctx, enum usb_dr_mode mode), void *ctx)
>  {
> diff --git a/include/linux/usb/usb.h b/include/linux/usb/usb.h
> index c25f3d73c3..6aa9e55cc9 100644
> --- a/include/linux/usb/usb.h
> +++ b/include/linux/usb/usb.h
> @@ -477,6 +477,7 @@ int usb_register_otg_device(struct device *parent,
>  			    int (*set_mode)(void *ctx, enum usb_dr_mode mode), void *ctx);
>  
>  int otg_device_get_mode(struct device *dev);
> +int otg_device_set_dr_mode(struct device *dev, enum usb_dr_mode mode);
>  
>  extern struct bus_type otg_bus_type;
>  
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



