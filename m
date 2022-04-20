Delivery-date: Wed, 20 Apr 2022 08:47:47 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nh47w-008qCC-D9
	for lore@lore.pengutronix.de; Wed, 20 Apr 2022 08:47:47 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nh47t-0002b1-GW
	for lore@pengutronix.de; Wed, 20 Apr 2022 08:47:46 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=QuFPQL1e7sAo/tOLXlF/9W8TtednWkUZ7sLIXGQdbkI=; b=lcfRroFUoYe5fjH9tofmiqnQOF
	iqc4Pfnf4pXGOKwl1eSjpkdx8sud3Yjd3tYc4n9/oSE4gAg9zwlS/5aSU0R6gi6ZNu814OdGb4MUe
	042JgGfwXKFrSgg+JSfo+n2G9FE+9ZWk3+D4UIrielkYdyUnvnb0MHD6BZAXusU6NGJErgwcyvP0S
	ww00ArZT+dIr8d2n9I/5Lic1zdjS/breNSpQJrKKHUXhEagpMgbxB0KKIOjLODLZwpFc0fWse6R6n
	1ACQoB+5voy2ZuZh+XoClCfzeaYuYhwjcysiyHE1S+62JxRvi3JQUBBY5n3ZwOKEaYIEv1yBBoDTM
	zN05E9DQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nh46h-007c51-6i; Wed, 20 Apr 2022 06:46:31 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nh46c-007c3x-Nb
 for barebox@lists.infradead.org; Wed, 20 Apr 2022 06:46:28 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nh46b-0002I9-Hc; Wed, 20 Apr 2022 08:46:25 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nh46b-0004Qv-05; Wed, 20 Apr 2022 08:46:25 +0200
Date: Wed, 20 Apr 2022 08:46:24 +0200
To: Andrej Picej <andrej.picej@norik.com>
Cc: barebox@lists.infradead.org, upstream@phytec.de
Message-ID: <20220420064624.GS4012@pengutronix.de>
References: <20220419124659.257134-1-andrej.picej@norik.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220419124659.257134-1-andrej.picej@norik.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 08:46:16 up 20 days, 19:15, 57 users,  load average: 0.15, 0.15, 0.16
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220419_234626_805110_51CA6026 
X-CRM114-Status: GOOD (  25.56  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH v2] ARM: pbab01: allow USB-OTG port runtime configuration
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Tue, Apr 19, 2022 at 02:46:59PM +0200, Andrej Picej wrote:
> Since commit a5a4c1d5a3 ("dts: update to v5.13-rc1"), which synced
> kernel dts, USB-OTG port on phyFLEX board was set to work only in
> peripheral mode. This has to do with phyFLEX baseboard hardware bug,
> which prevents correct USB OTG ID pin detection in kernel code.
> 
> Unlike linux kernel, barebox doesn't support OTG auto-detection mode via
> ID pin. In barebox, user has to select desired USB mode of operation by
> setting 'otg.mode' variable. Thus set the 'dr_mode' property to "otg" to
> be able to later select USB OTG operating mode at runtime (either host
> or peripheral).
> 
> Signed-off-by: Andrej Picej <andrej.picej@norik.com>
> ---
> - rather than deleting the dr_mode property, set the property to "otg"
>   to explicitly set the mode to OTG
> ---
>  arch/arm/dts/imx6qdl-phytec-pbab01.dtsi | 4 ++++
>  1 file changed, 4 insertions(+)

Applied, thanks

Sascha

> 
> diff --git a/arch/arm/dts/imx6qdl-phytec-pbab01.dtsi b/arch/arm/dts/imx6qdl-phytec-pbab01.dtsi
> index 991c7e4fab..88db962535 100644
> --- a/arch/arm/dts/imx6qdl-phytec-pbab01.dtsi
> +++ b/arch/arm/dts/imx6qdl-phytec-pbab01.dtsi
> @@ -15,6 +15,10 @@
>  	status = "okay";
>  };
>  
> +&usbotg {
> +	dr_mode = "otg";
> +};
> +
>  #ifdef USE_STATE_EXAMPLE
>  #include "state-example.dtsi"
>  #endif
> -- 
> 2.25.1
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
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

