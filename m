Delivery-date: Mon, 14 Aug 2023 15:09:08 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qVXJl-003lwz-Hj
	for lore@lore.pengutronix.de; Mon, 14 Aug 2023 15:09:08 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qVXJj-0005cO-Di
	for lore@pengutronix.de; Mon, 14 Aug 2023 15:09:07 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=NPMZGNhZW8uoBkqB4H0P/k1jE8tuw7P7A617z7fbQRU=; b=Jnd2rq4qcwNJHdFqPXwDqUR4Vi
	9i6iI6n8lmDDSiJ01YWQxGu/wLmfktOhmbBfJPulpPKt/00rUSnTKt/c3MVf64TAYki0iaWtP/Mlv
	8juQz0+zFvjZP09QFMBymr6hniltQgSBeli0i7gEXXIbSxGx/kwY77y+TmkErj3JQvbF118v89jyy
	Y4SIVaQcf14MQptjP/fA1GW5NwzkxPCp/MXyyo29rpH5rXaBP7KwsmhspaVCji9NaroX1NBA2dyJ0
	XKAcwylF2z9RMZjbm1TX0mKkt5gIHBoNHWbTpG6FeYIM8gKmok/KDblBZeXrJVGGikKajK6kYGDwa
	SidvKHkQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qVXIk-00H7K5-0f;
	Mon, 14 Aug 2023 13:08:06 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qVXIf-00H7J3-0v
	for barebox@lists.infradead.org;
	Mon, 14 Aug 2023 13:08:05 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qVXId-0005Uc-Tb; Mon, 14 Aug 2023 15:07:59 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qVXId-0001df-MT; Mon, 14 Aug 2023 15:07:59 +0200
Date: Mon, 14 Aug 2023 15:07:59 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20230814130759.GB5650@pengutronix.de>
References: <20230807074445.1042385-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230807074445.1042385-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230814_060801_325583_6EE60B7B 
X-CRM114-Status: GOOD (  21.42  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] ARM: i.MX25: image: consult pkg-config for openssl cflags
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, Aug 07, 2023 at 09:44:45AM +0200, Ahmad Fatoum wrote:
> For i.MX HABv3, we already ask pkg-config about the flags
> to link the image generation utility against OpenSSL, but we assumed
> that the headers would be found in the toolchain's default system header
> search path. This may not always be the case, so explicitly ask
> pkg-config about the CFLAGS as well.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  scripts/imx/Makefile | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Applied, thanks

Sascha

> 
> diff --git a/scripts/imx/Makefile b/scripts/imx/Makefile
> index 9544974d523f..739641b47707 100644
> --- a/scripts/imx/Makefile
> +++ b/scripts/imx/Makefile
> @@ -15,7 +15,7 @@ HOSTCFLAGS_imx-image.o = -I$(srctree) -I$(srctree)/include/mach
>  HOSTCFLAGS_imx-usb-loader.o += -I$(srctree) -I$(srctree)/include/mach
>  imx-usb-loader-target-userccflags += -I$(srctree) -I$(srctree)/include/mach
>  ifdef CONFIG_ARCH_IMX_IMXIMAGE_SSL_SUPPORT
> -HOSTCFLAGS_imx-image.o += -DIMXIMAGE_SSL_SUPPORT
> +HOSTCFLAGS_imx-image.o += -DIMXIMAGE_SSL_SUPPORT `$(PKG_CONFIG) --cflags openssl`
>  HOSTLDLIBS_imx-image  = `$(PKG_CONFIG) --libs openssl`
>  endif
>  
> -- 
> 2.39.2
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


