Delivery-date: Thu, 26 Sep 2024 16:21:18 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1stpMr-00329A-2B
	for lore@lore.pengutronix.de;
	Thu, 26 Sep 2024 16:21:18 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1stpMr-0001dh-W8
	for lore@pengutronix.de; Thu, 26 Sep 2024 16:21:18 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=d4IEOyZRYqEhooQcd+PAMNYx2wZ1+lMCaVBTDktkl3o=; b=vsWpewh7mHWDcjeHl7/3YwG9T7
	ftFHBFdGADXyQtOhL7ZzyYr4BuSZYdagoi0DujEQYzB1z8/Ok8n4+KWh/YJdlTSzxeWIyFEYju7fc
	ouYvWYdbJJSHQo+r34PmAd7KFBDAWGWBO+yr9FZsSSEayoRSPoTmFZxXUvLszlMOIfAJ8OL1A6tuf
	yaKKVi4Rr7yMDOBzHzXreykOJ+z51VLmcvBHCPX2xU1gwtpR+iLCikZbztHBKyWlxqrFzdh8o54WE
	Wiyj39X6x20ggFZE8Q4NoVH1vD5x6y5hzvePFr1DBB+11aWa6f/HPWMLix4IH9+vUYd9RJPuiwwUU
	zXPjdSXQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1stpMO-00000008ZXn-0fw6;
	Thu, 26 Sep 2024 14:20:48 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1stpLs-00000008ZOQ-3jtU
	for barebox@lists.infradead.org;
	Thu, 26 Sep 2024 14:20:18 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1stpLr-0000sJ-D8; Thu, 26 Sep 2024 16:20:15 +0200
Message-ID: <c167427c-961d-44fa-ba03-323569f9c1d2@pengutronix.de>
Date: Thu, 26 Sep 2024 16:20:15 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>,
 "open list:BAREBOX" <barebox@lists.infradead.org>
References: <20240926-vop2-v1-0-fe0581f2020b@pengutronix.de>
 <20240926-vop2-v1-3-fe0581f2020b@pengutronix.de>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240926-vop2-v1-3-fe0581f2020b@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240926_072016_967323_A5DD6F69 
X-CRM114-Status: GOOD (  19.56  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 03/13] media-bus-format: update from kernel
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 26.09.24 15:15, Sascha Hauer wrote:
> There are several new media bus formats since we last updated
> media-bus-format.h from Linux. Update it from Linux-6.10 to
> get the new formats.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> ---
>  include/video/media-bus-format.h | 55 +++++++++++++++++++++++++++++++++++++---
>  1 file changed, 52 insertions(+), 3 deletions(-)
> 
> diff --git a/include/video/media-bus-format.h b/include/video/media-bus-format.h
> index 190d491d5b..d4c1d99101 100644
> --- a/include/video/media-bus-format.h
> +++ b/include/video/media-bus-format.h
> @@ -1,3 +1,4 @@
> +/* SPDX-License-Identifier: GPL-2.0 WITH Linux-syscall-note */
>  /*
>   * Media Bus API header
>   *
> @@ -33,7 +34,7 @@
>  
>  #define MEDIA_BUS_FMT_FIXED			0x0001
>  
> -/* RGB - next is	0x1018 */
> +/* RGB - next is	0x1026 */
>  #define MEDIA_BUS_FMT_RGB444_1X12		0x1016
>  #define MEDIA_BUS_FMT_RGB444_2X8_PADHI_BE	0x1001
>  #define MEDIA_BUS_FMT_RGB444_2X8_PADHI_LE	0x1002
> @@ -45,20 +46,34 @@
>  #define MEDIA_BUS_FMT_RGB565_2X8_BE		0x1007
>  #define MEDIA_BUS_FMT_RGB565_2X8_LE		0x1008
>  #define MEDIA_BUS_FMT_RGB666_1X18		0x1009
> +#define MEDIA_BUS_FMT_RGB666_2X9_BE		0x1025
> +#define MEDIA_BUS_FMT_BGR666_1X18		0x1023
>  #define MEDIA_BUS_FMT_RBG888_1X24		0x100e
>  #define MEDIA_BUS_FMT_RGB666_1X24_CPADHI	0x1015
> +#define MEDIA_BUS_FMT_BGR666_1X24_CPADHI	0x1024
> +#define MEDIA_BUS_FMT_RGB565_1X24_CPADHI	0x1022
>  #define MEDIA_BUS_FMT_RGB666_1X7X3_SPWG		0x1010
>  #define MEDIA_BUS_FMT_BGR888_1X24		0x1013
> +#define MEDIA_BUS_FMT_BGR888_3X8		0x101b
>  #define MEDIA_BUS_FMT_GBR888_1X24		0x1014
>  #define MEDIA_BUS_FMT_RGB888_1X24		0x100a
>  #define MEDIA_BUS_FMT_RGB888_2X12_BE		0x100b
>  #define MEDIA_BUS_FMT_RGB888_2X12_LE		0x100c
> +#define MEDIA_BUS_FMT_RGB888_3X8		0x101c
> +#define MEDIA_BUS_FMT_RGB888_3X8_DELTA		0x101d
>  #define MEDIA_BUS_FMT_RGB888_1X7X4_SPWG		0x1011
>  #define MEDIA_BUS_FMT_RGB888_1X7X4_JEIDA	0x1012
> +#define MEDIA_BUS_FMT_RGB666_1X30_CPADLO	0x101e
> +#define MEDIA_BUS_FMT_RGB888_1X30_CPADLO	0x101f
>  #define MEDIA_BUS_FMT_ARGB8888_1X32		0x100d
>  #define MEDIA_BUS_FMT_RGB888_1X32_PADHI		0x100f
> +#define MEDIA_BUS_FMT_RGB101010_1X30		0x1018
> +#define MEDIA_BUS_FMT_RGB666_1X36_CPADLO	0x1020
> +#define MEDIA_BUS_FMT_RGB888_1X36_CPADLO	0x1021
> +#define MEDIA_BUS_FMT_RGB121212_1X36		0x1019
> +#define MEDIA_BUS_FMT_RGB161616_1X48		0x101a
>  
> -/* YUV (including grey) - next is	0x2026 */
> +/* YUV (including grey) - next is	0x202f */
>  #define MEDIA_BUS_FMT_Y8_1X8			0x2001
>  #define MEDIA_BUS_FMT_UV8_1X8			0x2015
>  #define MEDIA_BUS_FMT_UYVY8_1_5X8		0x2002
> @@ -70,6 +85,7 @@
>  #define MEDIA_BUS_FMT_YUYV8_2X8			0x2008
>  #define MEDIA_BUS_FMT_YVYU8_2X8			0x2009
>  #define MEDIA_BUS_FMT_Y10_1X10			0x200a
> +#define MEDIA_BUS_FMT_Y10_2X8_PADHI_LE		0x202c
>  #define MEDIA_BUS_FMT_UYVY10_2X10		0x2018
>  #define MEDIA_BUS_FMT_VYUY10_2X10		0x2019
>  #define MEDIA_BUS_FMT_YUYV10_2X10		0x200b
> @@ -79,6 +95,8 @@
>  #define MEDIA_BUS_FMT_VYUY12_2X12		0x201d
>  #define MEDIA_BUS_FMT_YUYV12_2X12		0x201e
>  #define MEDIA_BUS_FMT_YVYU12_2X12		0x201f
> +#define MEDIA_BUS_FMT_Y14_1X14			0x202d
> +#define MEDIA_BUS_FMT_Y16_1X16			0x202e
>  #define MEDIA_BUS_FMT_UYVY8_1X16		0x200f
>  #define MEDIA_BUS_FMT_VYUY8_1X16		0x2010
>  #define MEDIA_BUS_FMT_YUYV8_1X16		0x2011
> @@ -90,14 +108,20 @@
>  #define MEDIA_BUS_FMT_YVYU10_1X20		0x200e
>  #define MEDIA_BUS_FMT_VUY8_1X24			0x2024
>  #define MEDIA_BUS_FMT_YUV8_1X24			0x2025
> +#define MEDIA_BUS_FMT_UYYVYY8_0_5X24		0x2026
>  #define MEDIA_BUS_FMT_UYVY12_1X24		0x2020
>  #define MEDIA_BUS_FMT_VYUY12_1X24		0x2021
>  #define MEDIA_BUS_FMT_YUYV12_1X24		0x2022
>  #define MEDIA_BUS_FMT_YVYU12_1X24		0x2023
>  #define MEDIA_BUS_FMT_YUV10_1X30		0x2016
> +#define MEDIA_BUS_FMT_UYYVYY10_0_5X30		0x2027
>  #define MEDIA_BUS_FMT_AYUV8_1X32		0x2017
> +#define MEDIA_BUS_FMT_UYYVYY12_0_5X36		0x2028
> +#define MEDIA_BUS_FMT_YUV12_1X36		0x2029
> +#define MEDIA_BUS_FMT_YUV16_1X48		0x202a
> +#define MEDIA_BUS_FMT_UYYVYY16_0_5X48		0x202b
>  
> -/* Bayer - next is	0x3019 */
> +/* Bayer - next is	0x3021 */
>  #define MEDIA_BUS_FMT_SBGGR8_1X8		0x3001
>  #define MEDIA_BUS_FMT_SGBRG8_1X8		0x3013
>  #define MEDIA_BUS_FMT_SGRBG8_1X8		0x3002
> @@ -122,6 +146,14 @@
>  #define MEDIA_BUS_FMT_SGBRG12_1X12		0x3010
>  #define MEDIA_BUS_FMT_SGRBG12_1X12		0x3011
>  #define MEDIA_BUS_FMT_SRGGB12_1X12		0x3012
> +#define MEDIA_BUS_FMT_SBGGR14_1X14		0x3019
> +#define MEDIA_BUS_FMT_SGBRG14_1X14		0x301a
> +#define MEDIA_BUS_FMT_SGRBG14_1X14		0x301b
> +#define MEDIA_BUS_FMT_SRGGB14_1X14		0x301c
> +#define MEDIA_BUS_FMT_SBGGR16_1X16		0x301d
> +#define MEDIA_BUS_FMT_SGBRG16_1X16		0x301e
> +#define MEDIA_BUS_FMT_SGRBG16_1X16		0x301f
> +#define MEDIA_BUS_FMT_SRGGB16_1X16		0x3020
>  
>  /* JPEG compressed formats - next is	0x4002 */
>  #define MEDIA_BUS_FMT_JPEG_1X8			0x4001
> @@ -134,4 +166,21 @@
>  /* HSV - next is	0x6002 */
>  #define MEDIA_BUS_FMT_AHSV8888_1X32		0x6001
>  
> +/*
> + * This format should be used when the same driver handles
> + * both sides of the link and the bus format is a fixed
> + * metadata format that is not configurable from userspace.
> + * Width and height will be set to 0 for this format.
> + */
> +#define MEDIA_BUS_FMT_METADATA_FIXED		0x7001
> +
> +/* Generic line based metadata formats for serial buses. Next is 0x8008. */
> +#define MEDIA_BUS_FMT_META_8			0x8001
> +#define MEDIA_BUS_FMT_META_10			0x8002
> +#define MEDIA_BUS_FMT_META_12			0x8003
> +#define MEDIA_BUS_FMT_META_14			0x8004
> +#define MEDIA_BUS_FMT_META_16			0x8005
> +#define MEDIA_BUS_FMT_META_20			0x8006
> +#define MEDIA_BUS_FMT_META_24			0x8007
> +
>  #endif /* __LINUX_MEDIA_BUS_FORMAT_H */
> 


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


