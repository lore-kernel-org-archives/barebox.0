Delivery-date: Tue, 14 Apr 2026 10:39:13 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wCZIf-00C15l-0S
	for lore@lore.pengutronix.de;
	Tue, 14 Apr 2026 10:39:13 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wCZIe-0007EP-Jj
	for lore@pengutronix.de; Tue, 14 Apr 2026 10:39:13 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=/iufCFWdT7ixYoNt10wlEn5O9ipg6t4j3bVMifj0QQ0=; b=OTxcXDEtqlJ/pAX1Qum85CEQLm
	H4CTUJKfQ7vMUcFVlktS2y/8XdAknqGL58LHrnV1RozikZksWWGw7xmBpgIfqcFjUiDmldhJJi7kD
	FpILmfK3GjdodY347LrjD2FWV7CW6snejYyEXoL4ujKEUhJER+R45NNxYWBkIIkM4OTVebgljbZNX
	LNqJJXLYKutPkSNtDpdNs7UyVHFQ3yOUQcj3JgVY1Ah0S8xKUt1R6zKk9Ild7L1+ZzueV+gEcpAev
	6xFpogEXjbZ0U9nsVCheO14UCAcF5LxyZiHNForxIsmbLtkGc8fHW7KxnCvPdvKx7NoxfU3c8Vbym
	ivYlchew==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCZI8-0000000H0MD-49VL;
	Tue, 14 Apr 2026 08:38:40 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCZI6-0000000H0LJ-2dBR
	for barebox@lists.infradead.org;
	Tue, 14 Apr 2026 08:38:39 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wCZI4-00077z-Un; Tue, 14 Apr 2026 10:38:36 +0200
Message-ID: <8071f55f-4c93-44bc-8dba-d3c8c083c3b1@pengutronix.de>
Date: Tue, 14 Apr 2026 10:38:36 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>,
 Barebox List <barebox@lists.infradead.org>
References: <20260413195124.2910057-1-s.hauer@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <20260413195124.2910057-1-s.hauer@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260414_013838_673223_AD889B5F 
X-CRM114-Status: GOOD (  16.58  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] usb: gadget: Use put_unaligned_le16() from
 asm/unaligned.h
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)



On 4/13/26 9:51 PM, Sascha Hauer wrote:
> usbstring.c has its own put_unaligned_le16() function instead of using
> the existing one from asm/unaligned.h. This was never a problem, but
> since 87d3ae4bee ("filetype: fix unaligned access for x86_linux_bootimage")
> the conflicting definition from asm/unaligned.h leaks in which results
> in a failed build. Drop the duplicate function and explicitly include
> the correct definition.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> ---
>  drivers/usb/gadget/usbstring.c | 7 +------
>  1 file changed, 1 insertion(+), 6 deletions(-)
> 
> diff --git a/drivers/usb/gadget/usbstring.c b/drivers/usb/gadget/usbstring.c
> index 58eb28ad1a..209a3d01d8 100644
> --- a/drivers/usb/gadget/usbstring.c
> +++ b/drivers/usb/gadget/usbstring.c
> @@ -8,12 +8,7 @@
>  
>  #include <linux/usb/ch9.h>
>  #include <linux/usb/gadget.h>
> -
> -static inline void put_unaligned_le16(u16 val, u8 *p)
> -{
> -	*p++ = val;
> -	*p++ = val >> 8;
> -}
> +#include <asm/unaligned.h>
>  
>  static int utf8_to_utf16le(const char *s, __le16 *cp, unsigned len)
>  {

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



