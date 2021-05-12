Delivery-date: Wed, 12 May 2021 07:37:54 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lghZC-0005F9-Je
	for lore@lore.pengutronix.de; Wed, 12 May 2021 07:37:54 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lghZB-0005KP-Se
	for lore@pengutronix.de; Wed, 12 May 2021 07:37:54 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=/EaYPAnKsjJQApOCWqbCL406tIa6qnm3UF4EtwHblB0=; b=Bu1QWl6wIqovOBwUvcFcE0ztr
	7Ms88G/w5g4YRfpxdFO15OrNG3Iw9ZJj8pkNbCpC64HHrhKK/IsDEOik2NHvrSFn0E+3XemUyBZjK
	m9++hsPQ5OhTylgEG3PeCsnzsqXechfxMoeiQaLNVn6dkY02f4AFNAFffCK9by5w8Er+H6EHaiGVo
	qa6nFt11mDl6xLIuBpfGfCV5fjC1a09e7v9ZzBpjlHDdzcG6UuAvgxEQbTCMv2bfuaYjgqs6CtYXK
	N+HY6yF4pkbB8odNi3D6my/slWtfaBoU97YQTDda1BFGEW9skB8ZSJFJnuFuIP8pKexMTAXuXs5Iq
	kcjGT4B+w==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lghYO-0025dx-L6; Wed, 12 May 2021 05:37:04 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lghYL-0025dV-0B
 for barebox@desiato.infradead.org; Wed, 12 May 2021 05:37:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=In-Reply-To:Content-Type:MIME-Version
 :References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=QyoPGcWumIz0rj8lSXU0EWrt47p/aXKGfFoq8yxQrrQ=; b=KgGcY217kOGy46VGGJwd3nxhZi
 ZR+VMLQ4S74vMbktB5fjhY7xW+JHNQ9/sVGbLVhXu7zZXSchGs8gnz2zRv2crKizvET7hPx2zv68r
 xAPs33Caw0H+Fyxd04+5CJlQ2WcauONWCqktpvVGlIPXogqGgUrfTSjZ0mphtOcTX9WQE6QkVZvIs
 ahRO5aFX3yJs4ltCrqkCqCeQcWIlc7qN9IEDZA6UNkRLwuBD7816T6oXIikpcEyTZ5/QI8xbi6YN5
 BuPO9y/KVj96V02fTGsEVP6ycRU+iNIhN+sqsoE2eXm8VDLfS6CIdkrt1Pk24t6ReJpr3XsrNzB2N
 VE+DtoWA==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lghYI-00A7kP-6m
 for barebox@lists.infradead.org; Wed, 12 May 2021 05:36:59 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lghYG-00059n-W5; Wed, 12 May 2021 07:36:56 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lghYG-0003JD-MG; Wed, 12 May 2021 07:36:56 +0200
Date: Wed, 12 May 2021 07:36:56 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org
Message-ID: <20210512053656.GL19819@pengutronix.de>
References: <20210511083648.134890-1-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210511083648.134890-1-antonynpavlov@gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 07:35:58 up 83 days,  8:59, 78 users,  load average: 0.07, 0.09, 0.10
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210511_223658_267760_507088FF 
X-CRM114-Status: GOOD (  23.71  )
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
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2] startup: introduce global.endianness variable
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Tue, May 11, 2021 at 11:36:48AM +0300, Antony Pavlov wrote:
> The global.endianness variable makes it possible
> to determine current endian mode from command
> line or from script on bi-endian capable system.
> 
> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
> ---
>  common/globalvar.c | 13 +++++++++++++
>  1 file changed, 13 insertions(+)

Applied, thanks

Sascha

> 
> diff --git a/common/globalvar.c b/common/globalvar.c
> index a55b38b00f..8bb5015ce4 100644
> --- a/common/globalvar.c
> +++ b/common/globalvar.c
> @@ -641,6 +641,8 @@ int globalvar_add_simple_ip(const char *name, IPaddr_t *ip)
>  
>  static int globalvar_init(void)
>  {
> +	const char *endianness;
> +
>  	register_device(&global_device);
>  
>  	if (IS_ENABLED(CONFIG_NVVAR))
> @@ -651,6 +653,16 @@ static int globalvar_init(void)
>  	if (strlen(buildsystem_version_string) > 0)
>  		globalvar_add_simple("buildsystem.version", buildsystem_version_string);
>  
> +#ifdef __BIG_ENDIAN
> +	endianness = "big";
> +#elif defined(__LITTLE_ENDIAN)
> +	endianness = "little";
> +#else
> +#error "could not determine byte order"
> +#endif
> +
> +	globalvar_add_simple("endianness", endianness);
> +
>  	return 0;
>  }
>  pure_initcall(globalvar_init);
> @@ -658,6 +670,7 @@ pure_initcall(globalvar_init);
>  BAREBOX_MAGICVAR(global.version, "The barebox version");
>  BAREBOX_MAGICVAR(global.buildsystem.version,
>  		 "version of buildsystem barebox was built with");
> +BAREBOX_MAGICVAR(global.endianness, "The barebox endianness");
>  
>  /**
>   * nvvar_save - save NV variables to persistent environment
> -- 
> 2.31.1
> 
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

