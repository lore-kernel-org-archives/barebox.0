Delivery-date: Wed, 23 Apr 2025 12:42:56 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u7XZA-004Viq-0R
	for lore@lore.pengutronix.de;
	Wed, 23 Apr 2025 12:42:56 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u7XZ9-0007mW-H7
	for lore@pengutronix.de; Wed, 23 Apr 2025 12:42:56 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=cZ6BgkR7bhSEuHRZoByvQMQKvCKGuUqaOE/a6Exb2sU=; b=g4dhCzku2q9mtZSo/vJeJpHQ/r
	LRW/rrdLymCzFciMbKGMKGJh0BEe+J7wzGysPcDn3pKl6rE7cwZ01x7F7BjFaYH1Aw3jzipNNb2PU
	s9ES5xSJwLNP2jI2ECH5DPoLVsBYXjDg8ro5711SQRAOh+H4RADijAsGtsGywtedZkbryUUgXWnQl
	tHuYxyU5OUs8OxwQaGHo5Nc5+6yDwcNSFcz79ls9jVLCLOxi/BNAqljRbZWtXmfqtfhIT0EU9VRsg
	fiFdqCiAqwqLiBggkIuM6TpWgU3BJb5iKcJxpL1jBtakRgtj1gGI2E2aRFz704e0GfbaE/YsANsxh
	3xXjl8uQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u7XYa-0000000ADE4-3imK;
	Wed, 23 Apr 2025 10:42:20 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u7Wkg-0000000A43m-2JrO
	for barebox@lists.infradead.org;
	Wed, 23 Apr 2025 09:50:47 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1u7Wkd-0004mN-FR; Wed, 23 Apr 2025 11:50:43 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1u7Wkd-001hAl-0r;
	Wed, 23 Apr 2025 11:50:43 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1u7Wkd-00GzWG-0T;
	Wed, 23 Apr 2025 11:50:43 +0200
Date: Wed, 23 Apr 2025 11:50:43 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <aAi38zZGv8FWDIG_@pengutronix.de>
References: <20250423083801.4137407-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250423083801.4137407-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250423_025046_601500_7B47D1D4 
X-CRM114-Status: GOOD (  21.22  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] fixup! mci: move mci_setup_cmd definition into header
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Wed, Apr 23, 2025 at 10:38:01AM +0200, Ahmad Fatoum wrote:
> mci: dwcmshc-sdhci: fix redefinition of mci_setup_cmd
> 
> No defconfigs currently enable the driver, so it went unnoticed that it
> already defines mci_setup_cmd and that this would clash with defining it
> in a header.
> 
> The allyesconfig CI test noticed that though, so drop the now duplicate
> definition.
> 
> We likely will want to enable this driver in the kvx defconfig though
> going forward.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  drivers/mci/dwcmshc-sdhci.c | 8 --------
>  1 file changed, 8 deletions(-)
> 
> diff --git a/drivers/mci/dwcmshc-sdhci.c b/drivers/mci/dwcmshc-sdhci.c
> index a7306fdb44a4..8398889a703c 100644
> --- a/drivers/mci/dwcmshc-sdhci.c
> +++ b/drivers/mci/dwcmshc-sdhci.c
> @@ -40,14 +40,6 @@ static inline struct dwcmshc_host *priv_from_mci_host(struct mci_host *h)
>  	return container_of(h, struct dwcmshc_host, mci);
>  }
>  
> -static void mci_setup_cmd(struct mci_cmd *p, unsigned int cmd, unsigned int arg,
> -			  unsigned int response)
> -{
> -	p->cmdidx = cmd;
> -	p->cmdarg = arg;
> -	p->resp_type = response;
> -}
> -

I already fixed this one, thanks

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


