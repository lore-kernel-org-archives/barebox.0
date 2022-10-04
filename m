Delivery-date: Tue, 04 Oct 2022 09:50:34 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ofchG-005KoX-69
	for lore@lore.pengutronix.de; Tue, 04 Oct 2022 09:50:34 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ofchE-0005Qm-TA
	for lore@pengutronix.de; Tue, 04 Oct 2022 09:50:33 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=HExPHCtW/dGveNfPraTFR8bmAjOdxNdlBAfbfqng1FE=; b=HeGKT+LzL85hMp3zF+/UNrZBj5
	rV/6MBQey9pLhoZzeIO+aP/1g5311w27DbDXtCwrRsPjiaK3ALibhLskXtY85NCY1jVRCBhDyLX18
	INim1IdXx29rYNZYcwPn7Pre5YcztBV+hGHPBE+hWJpOh4ioTiqPV4orXm26ECkKwsu+RPN+hhIbF
	DgV2vlg3m5Q09cioS0/WoEF4LqyDAPMGGAzYCWmIR47qWocP+uzon1CfGkQRe8xTROf1LHT6/1yyz
	aGUPnvkSbxeSuNdg+KgpVXwliNvnVU+QieZFtkDTu86B/aP2K03UCUkU9SFDte31ii1SEItg97XeY
	vEdCDCrg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ofcfe-008o7d-Sg; Tue, 04 Oct 2022 07:48:54 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ofcfL-008o6b-V7
	for barebox@lists.infradead.org; Tue, 04 Oct 2022 07:48:37 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1ofcfK-000574-La; Tue, 04 Oct 2022 09:48:34 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1ofcfK-0004xH-EP; Tue, 04 Oct 2022 09:48:34 +0200
Date: Tue, 4 Oct 2022 09:48:34 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20221004074834.GH986@pengutronix.de>
References: <20220929100502.895553-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220929100502.895553-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221004_004836_024707_BA443E9A 
X-CRM114-Status: GOOD (  22.90  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] usb: have usb_rescan return count of enumerated devices
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Thu, Sep 29, 2022 at 12:05:02PM +0200, Ahmad Fatoum wrote:
> Some USB mass storage devices can take a comparatively long time after
> vbus is applied until they can be enumerated. Board code can reissue
> usb_rescan() to retry enumeration at a later time. It's useful for
> board code to check whether any new devices have been detected by a
> usb_rescan() call. To facilitate this, have usb_rescan() return the
> number of devices found in addition to printing it to the log.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  drivers/usb/core/usb.c | 4 +++-
>  include/usb/usb.h      | 2 +-
>  2 files changed, 4 insertions(+), 2 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/drivers/usb/core/usb.c b/drivers/usb/core/usb.c
> index 34a0f004f7bb..ed3a96cb9e5e 100644
> --- a/drivers/usb/core/usb.c
> +++ b/drivers/usb/core/usb.c
> @@ -599,7 +599,7 @@ int usb_host_detect(struct usb_host *host)
>  	return 0;
>  }
>  
> -void usb_rescan(void)
> +int usb_rescan(void)
>  {
>  	struct usb_host *host;
>  	int ret;
> @@ -613,6 +613,8 @@ void usb_rescan(void)
>  	}
>  
>  	pr_info("%d USB Device(s) found\n", dev_count);
> +
> +	return dev_count;
>  }
>  
>  /*-------------------------------------------------------------------
> diff --git a/include/usb/usb.h b/include/usb/usb.h
> index 39f475091617..04b433ba73ca 100644
> --- a/include/usb/usb.h
> +++ b/include/usb/usb.h
> @@ -201,7 +201,7 @@ int usb_clear_halt(struct usb_device *dev, int pipe);
>  int usb_string(struct usb_device *dev, int index, char *buf, size_t size);
>  int usb_set_interface(struct usb_device *dev, int interface, int alternate);
>  
> -void usb_rescan(void);
> +int usb_rescan(void);
>  
>  /* big endian -> little endian conversion */
>  /* some CPUs are already little endian e.g. the ARM920T */
> -- 
> 2.30.2
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


