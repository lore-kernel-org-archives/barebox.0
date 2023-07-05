Delivery-date: Wed, 05 Jul 2023 16:51:44 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qH3r8-00GKwX-3q
	for lore@lore.pengutronix.de; Wed, 05 Jul 2023 16:51:44 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qH3r5-0002qa-EH
	for lore@pengutronix.de; Wed, 05 Jul 2023 16:51:43 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=SmE/bOMGJ9Q/GfJSrhiLoUN02G0FIbBERS3MCgU5JyA=; b=gg3MFQm+5nV1aXboLh24YaZpIk
	4CpeUAP/uDWEqyY5kK0xUxsj3sokilyBQsV3ZncKm1yfxc/qj4ZBJ4cftifU2ubs2s7J4PnNkR5+z
	+qcM7z7x0W3zP+YpHBMQNGULmgtw+a4T8jPVbTeqnGGdRMRWt8G2gwkQDWkgFffH4j8IsKJ3FRAVv
	VXLZi1elyx2nB2fjXWOU+ceU0AwhUJsvGN2Rp3jAQnUdWznUsgzSrAf27vV1gd+vD6qQE+aazfFjB
	Rhr9tAVL0OTDe2g41v1KTabWFXa67QIex+ZvrR5sSJ6UyX9yZNcpqTReEsJEpDEYLsucsvfHjDjKv
	vC9NJbNg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qH3py-00GCpE-3C;
	Wed, 05 Jul 2023 14:50:34 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qH3pv-00GCog-26
	for barebox@lists.infradead.org;
	Wed, 05 Jul 2023 14:50:33 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1qH3pt-0002b7-Vo; Wed, 05 Jul 2023 16:50:30 +0200
Message-ID: <013f7b89-b024-62c2-5dc4-3cb5ffc32d3b@pengutronix.de>
Date: Wed, 5 Jul 2023 16:50:29 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.2
Content-Language: en-US
To: Rouven Czerwinski <r.czerwinski@pengutronix.de>,
 barebox@lists.infradead.org
References: <20230705144219.504194-1-r.czerwinski@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20230705144219.504194-1-r.czerwinski@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230705_075031_684978_9C2F892C 
X-CRM114-Status: GOOD (  14.50  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 1/6] kbuild: clean start*_*.{p,ps}imximg files
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 05.07.23 16:42, Rouven Czerwinski wrote:
> Cleanup files build during i.MX8M image generation.
> 
> Signed-off-by: Rouven Czerwinski <r.czerwinski@pengutronix.de>
> ---
>  images/Makefile | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/images/Makefile b/images/Makefile
> index c1cb56f5b1..85e5f0503c 100644
> --- a/images/Makefile
> +++ b/images/Makefile
> @@ -221,5 +221,6 @@ $(flash-list): $(image-y-path)
>  clean-files := *.pbl *.pblb *.map start_*.imximg *.img barebox.z start_*.kwbimg \
>  	start_*.kwbuartimg *.socfpgaimg *.mlo *.t20img *.t20img.cfg *.t30img \
>  	*.t30img.cfg *.t124img *.t124img.cfg *.mlospi *.mlo *.mxsbs *.mxssd *.rkimg \
> -	start_*.simximg start_*.usimximg *.zynqimg *.image *.swapped *.missing-firmware
> +	start_*.simximg start_*.usimximg start_*.pimximg start_*.psimximg *.zynqimg \
> +        *.image *.swapped *.missing-firmware

Nitpick: just glob start_*.*img and call it a day?

>  clean-files += pbl.lds

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



