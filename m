Delivery-date: Fri, 26 May 2023 20:43:41 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q2cPf-00FQgA-89
	for lore@lore.pengutronix.de; Fri, 26 May 2023 20:43:41 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q2cPd-0002nf-05
	for lore@pengutronix.de; Fri, 26 May 2023 20:43:41 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=yOtjDfd0HsvAXgL6szxDzqIeJ+wEUNeTWRJNY3ZN37w=; b=N4hOjTP/fFtQ0ww+Ag4xA1ZYx7
	z0psgdA4kYc3zg4fX6Fv6+vxDgUAk0RFTBDhFPqbAaRocKMx5CkwME5FMP4NiDWDrbe6HLbRWWejt
	54/+HKI/G6O8F1SXB7zvLbmsI6q195gypq+ZIXRytIzr6JC+HI//GevVY8y5fdvniPTu9szWWZdrl
	lkS92GYON2+nQPc7ryFChnjGzG/4fYuuP8m5DBn3bBffvzcBucCKr3MkQ6vBr0MTx5xp8zGVb0baj
	kxB+M6xJYyRGvD+emWVDqV+kL2BLSRlCDor1oWpWv/8vp6ObS4F37TTHBuNv+OATSh89vF2S6E02X
	VDJP3bJA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q2cOJ-003WsR-2G;
	Fri, 26 May 2023 18:42:19 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q2cOG-003Wr9-0M
	for barebox@lists.infradead.org;
	Fri, 26 May 2023 18:42:17 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1q2cO9-0002fa-0R; Fri, 26 May 2023 20:42:09 +0200
Message-ID: <96e9652f-76c1-3577-368a-ca12f85e8808@pengutronix.de>
Date: Fri, 26 May 2023 20:42:07 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Content-Language: en-US
To: Johannes Zink <j.zink@pengutronix.de>, barebox@lists.infradead.org
Cc: kernel@pengutronix.de, ahmad@a3f.at, afa@pengutronix.de,
 patchwork-jzi@pengutronix.de
References: <20230526165947.1079052-1-j.zink@pengutronix.de>
 <20230526165947.1079052-2-j.zink@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20230526165947.1079052-2-j.zink@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230526_114216_171563_0D2FBDE6 
X-CRM114-Status: GOOD (  22.34  )
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
Subject: Re: [PATCH 1/2] imx-usb-loader: fix compilation if prepare make
 target was not called before
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 26.05.23 18:59, Johannes Zink wrote:
> As pointed out in [1], compilation failed if the prepare make
> target was not called before compiling the imx-usb-loader, which caused
> the generated file not to exist when building for the sandbox target and
> broke the build.
> 
> After a discussion on the original thread, a different approach has been pursued
> by simply adding utsrelease.h as a dependency to scripts.
> 
> [1] https://lore.barebox.org/barebox/20230525181320.2277320-1-ahmad@a3f.at/
> 
> Fixes: c1b50061f4b3 ("imx-usb-loader: add commandline option for displaying version number")
> Reported-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

Tested-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> Signed-off-by: Johannes Zink <j.zink@pengutronix.de>
> 
> ---
> ---
>  Makefile | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/Makefile b/Makefile
> index 471bbc2679c8..711cba7bed29 100644
> --- a/Makefile
> +++ b/Makefile
> @@ -972,7 +972,7 @@ include/config/kernel.release: FORCE
>  # Carefully list dependencies so we do not try to build scripts twice
>  # in parallel
>  PHONY += scripts
> -scripts: scripts_basic
> +scripts: scripts_basic include/generated/utsrelease.h
>  	$(Q)$(MAKE) $(build)=$(@)
>  
>  # Things we need to do before we recursively start building the kernel

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



