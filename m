Delivery-date: Thu, 10 Aug 2023 07:31:28 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qTyGf-00El7E-Cb
	for lore@lore.pengutronix.de; Thu, 10 Aug 2023 07:31:28 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qTyGd-0005eV-9z
	for lore@pengutronix.de; Thu, 10 Aug 2023 07:31:27 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=+FTdxlgXvzKw2xysRpD7hm8Ns4+yJ9TQjGEEBUeLe0U=; b=T733Od+sAyYP05ZPg7bKX+h/Zw
	IreGgi8nXXA/RfMDf0NTaiU4AMUWDMg50ihBy2ynxvqfO/xEYx4dZOlwnmfVBJryp//OjQ0BuItXg
	VxevrihKm9mbheKKxsUUeAWKTRT/fG2rGIg0x4GyEEAY/UcpkHO6+ZjDgr1hmZNmPLkMoDtYjOj38
	moRYkDSrtO8A+++cVEkC07Yv8/MZ5rnzPtS0B0AfHZxmxQUHKgYAM+vgZtnc8T3ZHhjpAzNkZo8+m
	/yQ9kJFIV+CpL3zEruHilrBuJxfmd5ayDAKGkAmQc3+pZ9EsyV22ekdo6fvmrx78UT/NPyJMLEKg/
	Vkhxhw3w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qTyFB-006Zwi-3C;
	Thu, 10 Aug 2023 05:29:57 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qTyF9-006ZvC-0T
	for barebox@lists.infradead.org;
	Thu, 10 Aug 2023 05:29:56 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qTyF5-0005Hb-Eq; Thu, 10 Aug 2023 07:29:51 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qTyF5-0000t3-83; Thu, 10 Aug 2023 07:29:51 +0200
Date: Thu, 10 Aug 2023 07:29:51 +0200
To: Michael Tretter <m.tretter@pengutronix.de>
Cc: barebox@lists.infradead.org, mtr@pengutronix.de
Message-ID: <20230810052951.GU26314@pengutronix.de>
References: <20230809100559.2505416-1-m.tretter@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230809100559.2505416-1-m.tretter@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230809_222955_183298_5E42BECD 
X-CRM114-Status: GOOD (  25.67  )
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
Subject: Re: [PATCH v2] of_firmware: fix lookup of fpga manager
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Wed, Aug 09, 2023 at 12:05:59PM +0200, Michael Tretter wrote:
> The of_parse_phandle() looks for the phandle in the root device tree,
> but as np is resolved for the target device tree, the phandle refers to
> the target device tree and may return a wrong node in the root tree.
> 
> Therefore, we must ensure that we look for the manager-node in the
> target device tree, which is the root node of np, and look for the
> manager with that name.
> 
> firmwaremgr_find_by_node already uses the name for the lookup.
> 
> Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
> ---
> Changelog:
> 
> v1 -> v2:
> 
> - Use of_parse_phandle_from instead of open coding the phandle lookup
> ---
>  drivers/of/of_firmware.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)

Applied, thanks

Sascha

> 
> diff --git a/drivers/of/of_firmware.c b/drivers/of/of_firmware.c
> index 80feb3b90dba..c1b69aac045c 100644
> --- a/drivers/of/of_firmware.c
> +++ b/drivers/of/of_firmware.c
> @@ -11,7 +11,8 @@ static struct firmware_mgr *of_node_get_mgr(struct device_node *np)
>  	struct device_node *mgr_node;
>  
>  	do {
> -		mgr_node = of_parse_phandle(np, "fpga-mgr", 0);
> +		mgr_node = of_parse_phandle_from(np, of_find_root_node(np),
> +						 "fpga-mgr", 0);
>  		if (mgr_node)
>  			return firmwaremgr_find_by_node(mgr_node);
>  	} while ((np = of_get_parent(np)) != NULL);
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


