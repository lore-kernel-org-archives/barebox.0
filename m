Delivery-date: Wed, 19 Aug 2026 11:15:46 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wwcOf-004oa6-2e
	for lore@lore.pengutronix.de;
	Wed, 19 Aug 2026 11:15:46 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 6C28F201AC8
	for <lore@pengutronix.de>; Wed, 19 Aug 2026 11:15:46 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=VLr7r9Ps;
	dmarc=none;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org"
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=p+nnDaMHTOk0ryy1ut5618bGk2FKxRhdJiKRdwLOUsQ=; b=VLr7r9PsR9ofT7iGQJOyC2prqV
	uY6jaEayCj5JCQ4ZSbEws/9TPWDSbl0v5AMCdXunhzU45xfhD5gdwKKkbJivVO1YFPdFU1dUHXwjW
	VTvQKEB8/lEYyYBK8+rhXs+VMxqoUruq2PKcdPHNPmW+lFadA9zNbH5jFXDlrw1wRbs4ueEXBkJBC
	0Trxv8UwGFrAS/8QPdOP3g0KnKjs51hODFRuubYz4vWPErzsOKLp2CPVAvWzdeT7sc6rvAz65F1sV
	ZVHrSAsvjetK/yRhyUdUPrkML+DOeyL5OpoYYMZgGn01hjv97KhVFaS+qo98o9tDGrfbnp2tv+Qme
	Pa9lZJ4w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wwcOH-00000009OX1-0utk;
	Wed, 19 Aug 2026 09:15:21 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wwcOD-00000009OWO-0RFJ
	for barebox@lists.infradead.org;
	Wed, 19 Aug 2026 09:15:19 +0000
Received: from [0.0.0.0] (ptz.office.stw.pengutronix.de [IPv6:2a0a:edc0:0:900:1d::77])
	(Authenticated sender: afa@pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id B8D2A20128B;
	Wed, 19 Aug 2026 11:15:14 +0200 (CEST)
Message-ID: <6693f1b5-f896-4eba-8647-b9902c76c316@pengutronix.de>
Date: Wed, 19 Aug 2026 11:15:14 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/5] usb: core: make usb_set_maxpacket_ep public
To: Fabian Pflug <f.pflug@pengutronix.de>,
 Sascha Hauer <s.hauer@pengutronix.de>, BAREBOX <barebox@lists.infradead.org>
References: <20260817-v2026-06-0-topic-efi_usb-v2-0-3d45c1782ccc@pengutronix.de>
 <20260817-v2026-06-0-topic-efi_usb-v2-2-3d45c1782ccc@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20260817-v2026-06-0-topic-efi_usb-v2-2-3d45c1782ccc@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260819_021517_308128_1F8F5441 
X-CRM114-Status: GOOD (  21.33  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On 8/17/26 10:47 AM, Fabian Pflug wrote: > The function will
    be used by the efi usb driver to set the maxpackets > per endpoint. > > Signed-off-by:
    Fabian Pflug <f.pflug@pengutronix.de> Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
    
 
 Content analysis details:   (-1.9 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
                             [score: 0.0000]
  0.0 DMARC_MISSING          Missing DMARC policy
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
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Stat-Signature: b1cdk41wdqzez3sxb3r3nebthw7p4f5t
X-Spamd-Result: default: False [-7.51 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	R_SPF_ALLOW(-0.20)[+mx:c];
	RCVD_IN_DNSWL_LOW(-0.10)[2a0a:edc0:0:900:1d::77:received];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[3];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[barebox@lists.infradead.org];
	TO_DN_ALL(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	FORGED_SENDER(0.00)[a.fatoum@pengutronix.de,barebox-bounces@lists.infradead.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[a.fatoum@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Queue-Id: 6C28F201AC8


On 8/17/26 10:47 AM, Fabian Pflug wrote:
> The function will be used by the efi usb driver to set the maxpackets
> per endpoint.
> 
> Signed-off-by: Fabian Pflug <f.pflug@pengutronix.de>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> ---
>  drivers/usb/core/usb.c | 12 ++----------
>  drivers/usb/core/usb.h |  2 ++
>  2 files changed, 4 insertions(+), 10 deletions(-)
> 
> diff --git a/drivers/usb/core/usb.c b/drivers/usb/core/usb.c
> index ae87137447..ce10b71f40 100644
> --- a/drivers/usb/core/usb.c
> +++ b/drivers/usb/core/usb.c
> @@ -127,16 +127,8 @@ static int usb_set_configuration(struct usb_device *dev, int configuration)
>  		return res;
>  }
>  
> -/* The routine usb_set_maxpacket_ep() is extracted from the loop of routine
> - * usb_set_maxpacket(), because the optimizer of GCC 4.x chokes on this routine
> - * when it is inlined in 1 single routine. What happens is that the register r3
> - * is used as loop-count 'i', but gets overwritten later on.
> - * This is clearly a compiler bug, but it is easier to workaround it here than
> - * to update the compiler (Occurs with at least several GCC 4.{1,2},x
> - * CodeSourcery compilers like e.g. 2007q3, 2008q1, 2008q3 lite editions on ARM)
> - */
> -static void  noinline
> -usb_set_maxpacket_ep(struct usb_device *dev, struct usb_endpoint_descriptor *ep)
> +void usb_set_maxpacket_ep(struct usb_device *dev,
> +			  struct usb_endpoint_descriptor *ep)
>  {
>  	int b;
>  
> diff --git a/drivers/usb/core/usb.h b/drivers/usb/core/usb.h
> index 0d4f80c21d..b503e5b4a8 100644
> --- a/drivers/usb/core/usb.h
> +++ b/drivers/usb/core/usb.h
> @@ -6,5 +6,7 @@ struct usb_device *usb_alloc_new_device(void);
>  void usb_free_device(struct usb_device *dev);
>  int usb_new_device(struct usb_device *dev);
>  void usb_remove_device(struct usb_device *dev);
> +void usb_set_maxpacket_ep(struct usb_device *dev,
> +			  struct usb_endpoint_descriptor *ep);
>  
>  #endif /* __CORE_USB_H */
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



