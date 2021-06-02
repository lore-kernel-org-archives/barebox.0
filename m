Delivery-date: Wed, 02 Jun 2021 13:29:19 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1loP3n-0001o6-O5
	for lore@lore.pengutronix.de; Wed, 02 Jun 2021 13:29:19 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1loP3k-0007Bz-5K
	for lore@pengutronix.de; Wed, 02 Jun 2021 13:29:19 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:Cc:To:Subject:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=He1XJvgtwYWv/HmTvdQQZHbTCVQ6f6ZYYM4NLFIp+Vk=; b=QG/+UdZmRecsxsT3sP1b6mDEcm
	fKiKSxVuE5PeH3fKAZU8Se0/T3HKHCnOhCtXiElmFj5Ps1Czi413LRCgig6abwXEudQXH2QgIo9gu
	XmF1idje7HV/IMp5NWaHjZE2eEeCe0S+XxiX0B6HF5m6u0Kbg9UtZ/CzPS+rUxXzlhsWQZi41Uq24
	tnmJE+LX7vXJK/4IlAntX5JJ/SP2YxY56Rp7zj2r3mXxpyUbdpb4mwfcHqvE9qbDpOlfnqnWouTfD
	ObHw1gZ5iG5xhiOztBOmG+6R5CEudBjKyw79KjZVQI6ARfjxBjpAyiz2hyHzeZjBfd9DeT81I72Cv
	I1EgLnTA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1loP1s-003jeZ-Ud; Wed, 02 Jun 2021 11:27:21 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1loOwO-003hdV-Kn
 for barebox@lists.infradead.org; Wed, 02 Jun 2021 11:21:44 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1loOwN-00060s-5K; Wed, 02 Jun 2021 13:21:39 +0200
To: Sascha Hauer <sha@pengutronix.de>
Cc: Jules Maselbas <jmaselbas@kalray.eu>, barebox@lists.infradead.org
References: <20210421072704.520-1-a.fatoum@pengutronix.de>
 <20210421084729.GD21066@tellis.lin.mbt.kalray.eu>
 <27969059-7cfb-cb4a-cd49-52c03c156799@pengutronix.de>
 <20210507080722.GS19819@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <043c037e-f423-c13a-8209-8c569106aed6@pengutronix.de>
Date: Wed, 2 Jun 2021 13:21:37 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.2
MIME-Version: 1.0
In-Reply-To: <20210507080722.GS19819@pengutronix.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210602_042140_747493_E516041A 
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH master] usb: dwc2: increase timeout for waiting on host
 mode
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 07.05.21 10:07, Sascha Hauer wrote:
> Instead of applying two patches I suggest we go with the following
> oneliner which is fine for master.

I'd have preferred two patches, because then I've more time to
procrastinate before testing the second one. ;)

FTR: I just tested v2021.05.0 and USB now works (tested by DHCP
over the USB-Ethernet controller).

Thanks,
Ahmad

> 
> Sascha
> 
> ------------------------------8<--------------------------------
> 
> From 9fc2b0364c4b686d110b772be2245be3a513407d Mon Sep 17 00:00:00 2001
> From: Sascha Hauer <s.hauer@pengutronix.de>
> Date: Fri, 7 May 2021 09:58:43 +0200
> Subject: [PATCH] usb: dwc2: Fix wait for mode timeout
> 
> The timeout waiting for host mode should be 110ms instead of 110us.
> The timeout is the same as in Linux now and the same it was before
> fdd30cc251. It takes 49ms to go to host mode on the Raspberry Pi 3b,
> so host mode stopped working with 26459ab780 which removed an additional
> 100ms delay before dwc2_wait_for_mode() was actually called.
> 
> Fixes: fdd30cc251 ("usb: dwc2: Rework dwc2_wait_for_mode to use wait_on_timeout")
> Fixes: 26459ab780 ("usb: dwc2: Rework wait for host mode during core reset")
> Reported-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  drivers/usb/dwc2/core.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/usb/dwc2/core.c b/drivers/usb/dwc2/core.c
> index 5d04a07b03..8a78d8199e 100644
> --- a/drivers/usb/dwc2/core.c
> +++ b/drivers/usb/dwc2/core.c
> @@ -688,7 +688,7 @@ int dwc2_get_dr_mode(struct dwc2 *dwc2)
>   */
>  void dwc2_wait_for_mode(struct dwc2 *dwc2, bool host_mode)
>  {
> -	unsigned int timeout = 110 * USECOND;
> +	unsigned int timeout = 110 * MSECOND;
>  	int ret;
>  
>  	dev_vdbg(dwc2->dev, "Waiting for %s mode\n",
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

