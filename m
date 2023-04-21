Delivery-date: Fri, 21 Apr 2023 08:57:06 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ppkhe-00BD3e-27
	for lore@lore.pengutronix.de; Fri, 21 Apr 2023 08:57:06 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ppkhd-0008Tn-Lb
	for lore@pengutronix.de; Fri, 21 Apr 2023 08:57:06 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=X3++8dVJNU9cc8Cj+QbL/SiwZPVomR4qXZDXd44uZ0Y=; b=j243Cc77dXSw++bXaTA2FH4+Ot
	YON4qZQw6+Q+LKNy/3ijRre4rqSXCF/3icdh8oTq6FuJDPlAqu75WLnS7j7zCD9cOsaSAn9vIftbH
	QJUL70mXE1iM5LVwT7R9oCA2lyORV4OZb1fImfG8RtGRHbyozkXdW8TVsSWMBK9Ybk3rlAAqUwD/M
	kcfBxUS0opVZl2yFWIECxJGFUWQig9qPFr50a0GJpnMwgWAuMUSWOV6aw7R7vaA90dAMDWbrjXbRf
	USGJL2YR63uAaWqqQzUQubt6CnXUNInLdPRv9j7jqtlyimcHdZTghEBD412Mz/zdYLYm48OJoTr9Y
	s9WbGQTA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1ppkgL-009tCx-0D;
	Fri, 21 Apr 2023 06:55:45 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1ppkgH-009tBo-2M
	for barebox@lists.infradead.org;
	Fri, 21 Apr 2023 06:55:42 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1ppkgE-0008Jy-Rn; Fri, 21 Apr 2023 08:55:38 +0200
Received: from mfe by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1ppkgE-0001zo-DI; Fri, 21 Apr 2023 08:55:38 +0200
Date: Fri, 21 Apr 2023 08:55:38 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: Andreas Kemnade <andreas@kemnade.info>
Cc: barebox@lists.infradead.org
Message-ID: <20230421065538.xlb7a7nxlyapop6s@pengutronix.de>
References: <20230420195255.1153119-1-andreas@kemnade.info>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20230420195255.1153119-1-andreas@kemnade.info>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230420_235541_765479_B9953D15 
X-CRM114-Status: GOOD (  13.07  )
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
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] ARM: i.MX: bbu: fix compilation without
 CONFIG_BAREBOX_UPDATE
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi Andreas,

On 23-04-20, Andreas Kemnade wrote:
> Fix
> include/mach/imx/bbu.h:208:1: error: expected identifier or ‘(’ before ‘{’ token

argh.. thanks a lot.

> Signed-off-by: Andreas Kemnade <andreas@kemnade.info>

Reviewed-by: Marco Felsch <m.felsch@pengutronix.de>

> ---
>  include/mach/imx/bbu.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
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


