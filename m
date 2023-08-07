Delivery-date: Mon, 07 Aug 2023 09:20:59 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qSuY0-00Ak1p-1w
	for lore@lore.pengutronix.de; Mon, 07 Aug 2023 09:20:59 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qSuXx-0000f6-Q2
	for lore@pengutronix.de; Mon, 07 Aug 2023 09:20:58 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=QL+97sBZemhUGZ4aOgJW9ALq1qm8wtS4CoyKtQ3SmDM=; b=YFOlSq3C3sIH3fjphrJUKzZaR4
	peEBn6ZLt4Vk2h84DTW3wAGOgPPBvGCQckyaYffPgKog5/W52CpQSfWIV6bT3koOiabYqOmppPFy1
	OG4+Md3L1yJ+52UKWd5u7oFKsQX69CacDhC8EV6Zcs/e0dQHMk9/902au0n7D//bGRx3zFsdh1DAa
	GRWMEVRkkdDz3UQDSGTafWTOszvjZSFPIjin7bWftSMxOXJnJPEVP+E8Q0XSEbjzQmbqgfEZ+uK+g
	BT3fOobPbDkRCRdWB/b786EO3go1L/LIZRghpGZX83OLWkpd3prCqwEo+1/879qPpMvjgWXbzp9ST
	Ln8AD4hw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qSuX0-00GLyy-0n;
	Mon, 07 Aug 2023 07:19:58 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qSuWx-00GLyM-1p
	for barebox@lists.infradead.org;
	Mon, 07 Aug 2023 07:19:57 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qSuWw-0000Oo-5o; Mon, 07 Aug 2023 09:19:54 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qSuWv-0006HV-Uf; Mon, 07 Aug 2023 09:19:53 +0200
Date: Mon, 7 Aug 2023 09:19:53 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20230807071953.GK26314@pengutronix.de>
References: <20230802162108.1738676-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230802162108.1738676-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230807_001955_606210_ACB2B7CE 
X-CRM114-Status: GOOD (  21.80  )
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
Subject: Re: [PATCH master] scripts: fix pkg-config use for rsatoc/rkimage
 hosttools
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Wed, Aug 02, 2023 at 06:21:08PM +0200, Ahmad Fatoum wrote:
> Source files built for running on the build host can be given extra
> argument via the HOSTCFLAGS variable. This is evaluates in
> scripts/Makefile.host and results in adding $(HOSTCFLAGS_$(target-stem).o)
> during each HOSTCC invocation.
> 
> We do that correctly at all places, except for two: rsatoc and rkimage
> both use openssl, but they only have HOSTLDLIBS_rsatoc correctly set for
> linking against openssl. HOSTCFLAGS_ however was incorrectly set for
> the targets without the .o suffix and compiling these files only worked,
> because OpenSSL was installed into a directory that's in the default
> include search path. This is not a given, e.g. when building barebox
> through OpenEmbedded inside a container without openssl headers, so
> let's ensure pkg-config is correctly used.
> 
> Fixes: 128ad3cbe043 ("scripts: Add rsatoc tool")
> Fixes: 63f612f9e0ea ("ARM: Rockchip: Add rkimage tool")
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  scripts/Makefile | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/scripts/Makefile b/scripts/Makefile
> index 01b21a61692c..b8dd15cbf798 100644
> --- a/scripts/Makefile
> +++ b/scripts/Makefile
> @@ -12,7 +12,7 @@ hostprogs-always-y					+= bareboxcrc32
>  hostprogs-always-y					+= kernel-install
>  hostprogs-always-$(CONFIG_QOICONV)			+= qoiconv
>  hostprogs-always-$(CONFIG_CRYPTO_RSA_BUILTIN_KEYS)	+= rsatoc
> -HOSTCFLAGS_rsatoc = `$(PKG_CONFIG) --cflags openssl`
> +HOSTCFLAGS_rsatoc.o = `$(PKG_CONFIG) --cflags openssl`
>  HOSTLDLIBS_rsatoc = `$(PKG_CONFIG) --libs openssl`
>  hostprogs-always-$(CONFIG_IMD)				+= bareboximd
>  hostprogs-always-$(CONFIG_KALLSYMS)			+= kallsyms
> @@ -28,7 +28,7 @@ hostprogs-always-$(CONFIG_LAYERSCAPE_PBLIMAGE)		+= pblimage
>  hostprogs-always-$(CONFIG_STM32_IMAGE)			+= stm32image
>  hostprogs-always-$(CONFIG_RISCV)			+= prelink-riscv
>  hostprogs-always-$(CONFIG_RK_IMAGE)			+= rkimage
> -HOSTCFLAGS_rkimage = `$(PKG_CONFIG) --cflags openssl`
> +HOSTCFLAGS_rkimage.o = `$(PKG_CONFIG) --cflags openssl`
>  HOSTLDLIBS_rkimage = `$(PKG_CONFIG) --libs openssl`
>  KBUILD_HOSTCFLAGS += -I$(srctree)/scripts/include/
>  HOSTLDLIBS_mxsimage  = `$(PKG_CONFIG) --libs openssl`
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


