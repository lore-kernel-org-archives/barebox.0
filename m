Delivery-date: Wed, 04 Jan 2023 11:59:22 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pD1UR-001NDg-0l
	for lore@lore.pengutronix.de; Wed, 04 Jan 2023 11:59:22 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pD1UO-00087A-RH
	for lore@pengutronix.de; Wed, 04 Jan 2023 11:59:21 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=uUVwav47ePPppntAYec85joONeQUu6WohbM8HxMkBCw=; b=qEI2J5IH7QsbVXGf7Yh5h2thaF
	MBOlDTL4mE+GzpND6vWUZKX/OLEjpuJ3bvERWVBYT+cDwn9YxYk34sWcW42TCAkV5H/DguOjhQJ4K
	vkDxnrJ6+r4jlblciqIhZbwVjfHW8lY5umt9O93013F1RgEKvipvpdmzvOFkoLGbotcHpTn3+Er5p
	sLto3kwzFlFtN1+GUOA6RmZDA69IIJfu/jNQPySwsDZUMwecw++gRK6fp2XwPdDiyfXCT05CQLcCK
	dbf4s24sGXOiTwV8A2gImLeCtYLNtDHdKKmzaqmLNHREGQwTaLTPf6JM5xOGhG48BttIWNO7UKmVJ
	HlYtE7pw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pD1Sz-008ann-3e; Wed, 04 Jan 2023 10:57:53 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pD1Lc-008XmU-Sp
	for barebox@lists.infradead.org; Wed, 04 Jan 2023 10:50:26 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pD1LY-000799-Ie; Wed, 04 Jan 2023 11:50:12 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pD1LY-000852-8s; Wed, 04 Jan 2023 11:50:12 +0100
Date: Wed, 4 Jan 2023 11:50:12 +0100
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org, BAUER Bernd <bernd.bauer@ses-imagotag.com>
Message-ID: <20230104105012.GQ11668@pengutronix.de>
References: <20230103215448.3655459-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230103215448.3655459-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230104_025018_997903_81142599 
X-CRM114-Status: GOOD (  26.13  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] Documentation: i.MX8M: add EVK barebox installation
 documentation
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Tue, Jan 03, 2023 at 10:54:48PM +0100, Ahmad Fatoum wrote:
> The barebox i.MX images have a preamble that pads the i.MX header to the
> offset expected by the BootROM. This allows writing barebox images
> directly to offset 0 on SD-Cards and eMMC user area. For some i.MX8M,
> these images can't be directly written to eMMC boot partitions and
> instead require special handling. Add a note about this to the
> documentation.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  Documentation/boards/imx/nxp-imx8mm-evk.rst | 18 ++++++++++++++++
>  Documentation/boards/imx/nxp-imx8mn-evk.rst | 24 +++++++++++++++++++++
>  Documentation/boards/imx/nxp-imx8mp-evk.rst | 24 +++++++++++++++++++++
>  3 files changed, 66 insertions(+)
> 
> diff --git a/Documentation/boards/imx/nxp-imx8mm-evk.rst b/Documentation/boards/imx/nxp-imx8mm-evk.rst
> index c3cd35ae38a2..7ed7459c08a6 100644
> --- a/Documentation/boards/imx/nxp-imx8mm-evk.rst
> +++ b/Documentation/boards/imx/nxp-imx8mm-evk.rst
> @@ -69,3 +69,21 @@ board for serial download mode as printed on the PCB. You can start barebox with
>  the imx-usb-loader tool that comes with barebox like this:
>  
>  ./scripts/imx/imx-usb-loader images/barebox-nxp-imx8mm-evk.img
> +
> +Installing barebox
> +==================
> +
> +When the EVK is strapped to boot from eMMC, the i.MX8M bootrom will
> +consult the eMMC ext_csd register to determine whether to boot
> +from the active eMMC boot partition or from the user area.
> +
> +The same barebox image written to the start of the SD-Card can
> +be written to the start of the eMMC user area. Power-fail installation
> +to the eMMC boot partition requires special handling:

"Power-fail installation" sounds strange. What you mean is an
installation into the boot partitions which can be updated power fail
safely.

I don't know how to put that into two words, maybe just drop the
"Power-fail" part.

Sascha


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


