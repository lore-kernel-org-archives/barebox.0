Delivery-date: Wed, 02 Feb 2022 11:41:06 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nFD4U-003ck6-PE
	for lore@lore.pengutronix.de; Wed, 02 Feb 2022 11:41:06 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nFD4T-0008Ma-87
	for lore@pengutronix.de; Wed, 02 Feb 2022 11:41:05 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mjVw8GmGKcgQ1zGPvnQe5leuIJt9TM87mk+9+Ny+lL8=; b=HkkkYGESJieT76
	Ww95HM8uD12hmYCyDTcXVkYDwcV0kHYxul1wSKXF2muLa75mPNZyWMFPFPGia55W6S/iV2LCRY0Zt
	6q9FDwmyrLq6h8V7P7zF+tVAfQkMo3R7LZhVz5cP6u1VVpRYErbUC7y+MxRmMJZDE7riInKqh67pV
	qkIakMEGhdBa5+obGM6kVACruqp9rwteGNecM8dfbKYLNH9nhV3myHPFrqT+J00H9rF7+Vre779mL
	93euXURU5gaQDPm1X6ht4KA5IuiDZlGE6B8nVdzXu/TKGl8Xy2MJQG5AfmavdOq9l7NTcYxe1S6Wh
	ABfQeaEzZ3T6TEhYdMbA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nFD34-00EvuC-OG; Wed, 02 Feb 2022 10:39:38 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nFD2z-00Evt8-NT
 for barebox@lists.infradead.org; Wed, 02 Feb 2022 10:39:35 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[127.0.0.1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1nFD2w-00086G-Pc; Wed, 02 Feb 2022 11:39:30 +0100
Message-ID: <787a09f6-2751-9fa3-e11b-2c264b676881@pengutronix.de>
Date: Wed, 2 Feb 2022 11:39:30 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Content-Language: en-US
To: Michael Tretter <m.tretter@pengutronix.de>, barebox@lists.infradead.org
References: <20220202101119.3924600-1-m.tretter@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20220202101119.3924600-1-m.tretter@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220202_023933_828589_04A40A5D 
X-CRM114-Status: GOOD (  21.44  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] serial: cadence: add ZynqMP compatibles
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 02.02.22 11:11, Michael Tretter wrote:
> Commit 3f2f5980d517 ("dts: update to v5.16-rc1") changes the compatible
> of the ZynqMP uarts to "xlnx,zynqmp-uart" and drops the "xlnx,xuartps"
> compatible.
> 
> The driver worked just fine before and the difference between the r1p8
> and r1p12 compatibles is the use of the RX byte status register which is
> only used with interrupts.
> 
> Add the "xlnx,zynqmp-uart" and the "cdns,uart-r1p12" compatibles to the
> driver.
> 
> Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

Should probably go into master.

> ---
>  drivers/serial/serial_cadence.c | 6 ++++++
>  1 file changed, 6 insertions(+)
> 
> diff --git a/drivers/serial/serial_cadence.c b/drivers/serial/serial_cadence.c
> index 6cf18aa25ac7..84dcd1b76b6e 100644
> --- a/drivers/serial/serial_cadence.c
> +++ b/drivers/serial/serial_cadence.c
> @@ -230,6 +230,12 @@ static __maybe_unused struct of_device_id cadence_serial_dt_ids[] = {
>  	{
>  		.compatible = "xlnx,xuartps",
>  		.data = &cadence_r1p08_data,
> +	}, {
> +		.compatible = "cdns,uart-r1p12",
> +		.data = &cadence_r1p08_data,
> +	}, {
> +		.compatible = "xlnx,zynqmp-uart",
> +		.data = &cadence_r1p08_data,
>  	}, {
>  		/* sentinel */
>  	}


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

