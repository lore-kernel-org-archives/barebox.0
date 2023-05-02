Delivery-date: Tue, 02 May 2023 13:49:46 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ptoVv-002FQ0-JT
	for lore@lore.pengutronix.de; Tue, 02 May 2023 13:49:46 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ptoVt-0007HK-MU
	for lore@pengutronix.de; Tue, 02 May 2023 13:49:46 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:References:Message-ID:
	Subject:Cc:To:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ywpzha6+TiPH81GcYRXPiGNXgG5hLxKEHR62WU++ai0=; b=QV1TXtVqQoj5S75AAFnyp2r74g
	cOKr0uOJed7SNKWABs3iUvgPB9uBpeLsGcq3huFeRa3ICvOroWmhND5K+cDZlLlVs4tFWM52lD75r
	Ddhblc//xz6C0jntOMtTWdZ6vlFwQx6z9QhjlAl81u+I+2oPD/UxWJNTueVwQs4DUxVdKmqQSPs7Z
	1H8OqkQ2deay2FbgOGtUa0wCqV6aLTRbEap4ZCoBS+pA1WMGpj0T1corswODG4zeSvDgt05zTLz64
	7R5doauwwrljtcWODao6d46Y8euphtj+AAFbkK1048Cd5Mb+KMRp/I7Mq+lScW9zvXoDLCPHuFU4M
	cv0LoC+A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1ptoUu-001ILY-2G;
	Tue, 02 May 2023 11:48:44 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1ptoUr-001IKr-0m
	for barebox@lists.infradead.org;
	Tue, 02 May 2023 11:48:42 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1ptoUp-0007AI-Rk; Tue, 02 May 2023 13:48:39 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1ptoUo-00062G-P9; Tue, 02 May 2023 13:48:38 +0200
Date: Tue, 2 May 2023 13:48:38 +0200
To: Andreas Kemnade <andreas@kemnade.info>
Cc: barebox@lists.infradead.org
Message-ID: <20230502114838.GI29365@pengutronix.de>
References: <20230420195255.1153119-1-andreas@kemnade.info>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20230420195255.1153119-1-andreas@kemnade.info>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230502_044841_277681_0ACF82EA 
X-CRM114-Status: GOOD (  18.41  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] ARM: i.MX: bbu: fix compilation without
 CONFIG_BAREBOX_UPDATE
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Thu, Apr 20, 2023 at 09:52:55PM +0200, Andreas Kemnade wrote:
> Fix
> include/mach/imx/bbu.h:208:1: error: expected identifier or ‘(’ before ‘{’ token
> 
> Signed-off-by: Andreas Kemnade <andreas@kemnade.info>
> ---
>  include/mach/imx/bbu.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Applied, thanks

Sascha

> 
> diff --git a/include/mach/imx/bbu.h b/include/mach/imx/bbu.h
> index 451ae15740..50657d9895 100644
> --- a/include/mach/imx/bbu.h
> +++ b/include/mach/imx/bbu.h
> @@ -204,7 +204,7 @@ imx7_bbu_internal_spi_i2c_register_handler(const char *name, char *devicefile,
>  
>  static inline int
>  imx8m_bbu_internal_flexspi_nor_register_handler(const char *name, const char *devicefile,
> -						unsigned long flags);
> +						unsigned long flags)
>  {
>  	return -ENOSYS;
>  }
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


