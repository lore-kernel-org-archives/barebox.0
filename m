Delivery-date: Tue, 10 Dec 2024 09:08:09 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tKvHt-006Ijd-0S
	for lore@lore.pengutronix.de;
	Tue, 10 Dec 2024 09:08:09 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tKvHt-0007zu-3k
	for lore@pengutronix.de; Tue, 10 Dec 2024 09:08:09 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=qUJS12sw9nWS0dY/8u7LQPgvsb+6RJ7d7hSqz91ngSE=; b=STtrDsRAVsKPLzhpxmlMtdRz7T
	hcUkTdvtgzugFT3eQ5cFOoOqDi+aWb9+Jv5JGY3gUB+AmQQP+aoTZ0dk+MrWXvSsM7BsChjioyc32
	hUQ2vEoY0dYKNvDwVcirPyF6hBRVGdVtN2dpusKeYDBPDrZ6H8+TNhRCtJRhSXO2YeSFG6qBPHSn/
	ZsMIMF530rZW7s1IdHsx+Z3JVZEAF8OqkYPtQcr/5kD9lIcu9CqUvVrHsdMLZkCtCHkXR6emY3bBR
	9UuEmwAIHkKf+Gb7JUHb3o2mSc9d5JEIWIdAQ5brzhwThxwO7onKLoaSqZJQLO/o//M25p4pQc8vL
	+hH4a03w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tKvHT-0000000Aeqi-3DJY;
	Tue, 10 Dec 2024 08:07:43 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tKvHQ-0000000Aepb-0jSG
	for barebox@lists.infradead.org;
	Tue, 10 Dec 2024 08:07:41 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tKvHN-0007tZ-KZ; Tue, 10 Dec 2024 09:07:37 +0100
Message-ID: <256ba4fa-ecfe-4019-8f59-2b742b0b7923@pengutronix.de>
Date: Tue, 10 Dec 2024 09:07:37 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: =?UTF-8?Q?Sven_P=C3=BCschel?= <s.pueschel@pengutronix.de>,
 barebox@lists.infradead.org
References: <20241210080519.1236134-1-s.pueschel@pengutronix.de>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20241210080519.1236134-1-s.pueschel@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241210_000740_207679_34CED22E 
X-CRM114-Status: GOOD (  15.00  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] video: mipi_dbi: fix swapped width and height in
 mipi_dbi_blank
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 10.12.24 09:05, Sven Püschel wrote:
> Fix swapped width and height values in the mipi_dbi_blank function. This
> caused a non quadratic display not being cleared entirely when disabling
> the framebuffer device.
> 
> Signed-off-by: Sven Püschel <s.pueschel@pengutronix.de>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

Good catch, thanks,
Ahmad

> ---
>  drivers/video/mipi_dbi.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/video/mipi_dbi.c b/drivers/video/mipi_dbi.c
> index c202ecc1c7..1e2883020b 100644
> --- a/drivers/video/mipi_dbi.c
> +++ b/drivers/video/mipi_dbi.c
> @@ -307,8 +307,8 @@ EXPORT_SYMBOL(mipi_dbi_enable_flush);
>  
>  static void mipi_dbi_blank(struct mipi_dbi_dev *dbidev)
>  {
> -	u16 height = dbidev->mode.xres;
> -	u16 width = dbidev->mode.yres;
> +	u16 height = dbidev->mode.yres;
> +	u16 width = dbidev->mode.xres;
>  	struct mipi_dbi *dbi = &dbidev->dbi;
>  	size_t len = width * height * 2;
>  


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


