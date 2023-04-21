Delivery-date: Fri, 21 Apr 2023 08:31:14 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ppkIb-00BBvX-Bz
	for lore@lore.pengutronix.de; Fri, 21 Apr 2023 08:31:14 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ppkIb-0005qf-AS
	for lore@pengutronix.de; Fri, 21 Apr 2023 08:31:13 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Dfgh6WhuFivSBwgjylrLJgZKzb9+J4xvFWZbj8OeWMM=; b=MVY1weGDmxob2jnhx9CVB/i7NE
	t1NiEuNb+zKcaYxcIOgsCmKudv8WUfP2auh0u51C97ULdZkHsSYNVUdDbDSzgqNWA5g+4yssged0i
	6BD2Gr5RJPE++fIJv+Bzt/93n02rAIeV5gXfmGmjaHB+9BaBEansaYideAo80LIv9RUzxjX3VDY8W
	EYadv+GRg6ADIPme1ZcTWQ4jlL3Ranz7J0SuI4RsvFG1TtxW2SIOVnGWjPJQHZyra8jXQJUOjyJki
	a7sFOwZDu8bGp5D+Jw9bcKz6qOnt6bovXgLh4mAgb4kULjg5NAyzAGJR/tUFk056MHUFUpVElIN94
	fJ7Omzcg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1ppkHZ-009pRA-1m;
	Fri, 21 Apr 2023 06:30:09 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1ppkHV-009pNp-0l
	for barebox@lists.infradead.org;
	Fri, 21 Apr 2023 06:30:06 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1ppkHN-0005Y0-0h; Fri, 21 Apr 2023 08:29:57 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1ppkHM-00013E-MU; Fri, 21 Apr 2023 08:29:56 +0200
Date: Fri, 21 Apr 2023 08:29:56 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20230421062956.GS13543@pengutronix.de>
References: <20230418093040.1865982-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230418093040.1865982-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230420_233005_297287_837C28CA 
X-CRM114-Status: GOOD (  19.08  )
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
Subject: Re: [PATCH v2 1/5] mci: core: drop unused DDR/SDR constants
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Tue, Apr 18, 2023 at 11:30:36AM +0200, Ahmad Fatoum wrote:
> These macros are unused and will be replaced by their Linux counterparts
> in a follow up patch, so drop them.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
> v1 -> v2:
>   - new patch
> ---
>  include/mci.h | 6 ------
>  1 file changed, 6 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/include/mci.h b/include/mci.h
> index d356f071f7f2..c38567303241 100644
> --- a/include/mci.h
> +++ b/include/mci.h
> @@ -420,12 +420,6 @@ struct mci_ios {
>  #define MMC_BUS_WIDTH_8		3
>  
>  	enum mci_timing	timing;			/* timing specification used */
> -
> -#define MMC_SDR_MODE		0
> -#define MMC_1_2V_DDR_MODE	1
> -#define MMC_1_8V_DDR_MODE	2
> -#define MMC_1_2V_SDR_MODE	3
> -#define MMC_1_8V_SDR_MODE	4
>  };
>  
>  struct mci;
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


