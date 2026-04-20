Delivery-date: Mon, 20 Apr 2026 13:32:56 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wEms4-00EKOF-2L
	for lore@lore.pengutronix.de;
	Mon, 20 Apr 2026 13:32:56 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wEms4-0006cb-35
	for lore@pengutronix.de; Mon, 20 Apr 2026 13:32:56 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=mSKOAO4EgPrlpo8g0dOdR/rcHXKuQGiJNNV6Ikb32s0=; b=Pf6ipJN2VZWkfhv/bCbwRvrNUC
	Tpk622HN1JV/P0kd5lbWamzl2FFwNqbBy+teLhQYTb6DujS1j2Kf1siThNm0fBvgWsgu/kKj9JLyz
	6DGPl3qpeYWfl8rgD0yLPkSBgJFdi6bNlQieSFzN5Hd+6rgUxxzVWLOfM+I/w8RWv/X6CwpzWjXM7
	xnWNCpiqEsvSzxzKolXkjfC9l5Kg7FUF/JG7NdL1J7ONp3RzKscveAl+878Syh/vFKF+YiBPFTu3u
	d7MV5xMQcMvgLxRkcPyCgywuSLVMPG+AW72UWoWCSBjddP8BSyN9Cn6Qi411r/MzAUI6R89UB6sb2
	O6o3c9bA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wEmre-00000006nuq-2cO5;
	Mon, 20 Apr 2026 11:32:30 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wEmrb-00000006nuR-2hrn
	for barebox@lists.infradead.org;
	Mon, 20 Apr 2026 11:32:29 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wEmra-0006X9-1W; Mon, 20 Apr 2026 13:32:26 +0200
Message-ID: <439e4d93-0b31-41a5-93a4-3e0456e60a7b@pengutronix.de>
Date: Mon, 20 Apr 2026 13:32:25 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>,
 BAREBOX <barebox@lists.infradead.org>
Cc: Sascha Hauer <sascha@saschahauer.de>,
 "Claude Sonnet 4.6" <noreply@anthropic.com>
References: <20260420-usb-dwc2-usb-c-stick-v1-0-c86f733f24f8@pengutronix.de>
 <20260420-usb-dwc2-usb-c-stick-v1-1-c86f733f24f8@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <20260420-usb-dwc2-usb-c-stick-v1-1-c86f733f24f8@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260420_043227_828711_45FD72E3 
X-CRM114-Status: GOOD (  23.98  )
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
	autolearn=ham autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/2] usb: dwc2: handle NAK when CHHLTD does not fire
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello,

On 4/20/26 1:20 PM, Sascha Hauer wrote:
> From: Sascha Hauer <sascha@saschahauer.de>
> 
> Some DWC2 configurations do not assert CHHLTD when a NAK is received;
> the hardware keeps the channel active and only sets the NAK bit in HCINT.
> wait_for_chhltd() polls for CHHLTD with a 10ms timeout; when CHHLTD never
> fires the timeout expires and -ETIMEDOUT is returned without inspecting
> HCINT. This causes the caller to treat the NAK as a hard error instead of
> a retryable condition.
> 
> The symptom is that devices which NAK bulk or control transfers during
> initialisation (e.g. some Samsung USB-C flash drives that NAK while their
> firmware starts up) fail immediately rather than being retried via the
> 5-second NAK-retry loop in dwc2_submit_bulk_msg() or the do/while loops
> in dwc2_submit_control_msg().
> 
> Fix by reading HCINT before aborting the channel when the CHHLTD timeout
> fires. If the NAK or FRMOVRUN bit is set, abort the channel, wait for the
> abort to complete, and return -EAGAIN so that the existing retry logic can
> handle the NAK. Log a diagnostic message if the channel abort itself times
> out, which would indicate a real hardware problem.

How does this relate to
https://lore.barebox.org/barebox/20260331034819.227094-1-chalianis1@gmail.com/

Do we need both? Only this one? Is there something over there, which you
would want in your series?

Thanks,
Ahmad

> 
> Co-Authored-By: Claude Sonnet 4.6 <noreply@anthropic.com>
> Signed-off-by: Sascha Hauer <sascha@saschahauer.de>
> ---
>  drivers/usb/dwc2/host.c | 7 ++++++-
>  1 file changed, 6 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/usb/dwc2/host.c b/drivers/usb/dwc2/host.c
> index 93994f0be3..ddad51c882 100644
> --- a/drivers/usb/dwc2/host.c
> +++ b/drivers/usb/dwc2/host.c
> @@ -134,9 +134,14 @@ static int wait_for_chhltd(struct dwc2 *dwc2, u8 hc, uint32_t *sub, u8 *tgl)
>  
>  	ret = dwc2_wait_bit_set(dwc2, HCINT(hc), HCINTMSK_CHHLTD, 10000);
>  	if (ret) {
> +		hcint = dwc2_readl(dwc2, HCINT(hc));
>  		hcchar = dwc2_readl(dwc2, HCCHAR(hc));
>  		dwc2_writel(dwc2, hcchar | HCCHAR_CHDIS, HCCHAR(hc));
> -		dwc2_wait_bit_set(dwc2, HCINT(hc), HCINTMSK_CHHLTD, 10000);
> +		if (dwc2_wait_bit_set(dwc2, HCINT(hc), HCINTMSK_CHHLTD, 10000))
> +			dwc2_err(dwc2, "%s: channel abort timed out: HCINT=%08x HCCHAR=%08x\n",
> +				 __func__, hcint, hcchar);
> +		if (hcint & (HCINTMSK_NAK | HCINTMSK_FRMOVRUN))
> +			return -EAGAIN;
>  		return ret;
>  	}
>  
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



