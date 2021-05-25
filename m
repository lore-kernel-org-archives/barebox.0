Delivery-date: Tue, 25 May 2021 07:57:31 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1llQ4J-0007TF-PO
	for lore@lore.pengutronix.de; Tue, 25 May 2021 07:57:31 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1llQ4I-000229-St
	for lore@pengutronix.de; Tue, 25 May 2021 07:57:31 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=odHTg9+DzPPVa1l+nVyHCpD7imADLjpExJtjFJD9JqQ=; b=da68TeFV+4CA4MJBKXUCheb5fv
	ayyPWIWWnVWC9IpZDs2s/AZJ2AJRq5C3l7kuRZ9fhPJ7MbNF+kE91ltZ0qmUWNWfqUs/Eb7x1C8z/
	82OfF8U5zU9G9a3j2c7YVl6XIQFZHdiY7j7CUfSQkwhTO4J9Sp158mt0Xp99APKuLEBsbPpgp8SM5
	DnQ8IPpSNJf+m6Ts9zxWok+CDLtdeYsRgjfi2RyG0hyDzmXfy4/QK0LGtv45nr5q5AaURDntSYG+C
	RrDOQi6aPrnqPCUTZYYx/Jnwsi0aoNK1owX41fQd+hIhZewmLyOwYwodcDCliMNgJ3VLv+41fFkDD
	4HJbj9NA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1llQ33-003V1x-UE; Tue, 25 May 2021 05:56:14 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1llQ2A-003UnW-KP
 for barebox@lists.infradead.org; Tue, 25 May 2021 05:55:20 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1llQ29-0001ZZ-7e; Tue, 25 May 2021 07:55:17 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1llQ28-0008MQ-UQ; Tue, 25 May 2021 07:55:16 +0200
Date: Tue, 25 May 2021 07:55:16 +0200
To: Holger Assmann <h.assmann@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20210525055516.GN19819@pengutronix.de>
References: <20210521144313.14990-1-h.assmann@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210521144313.14990-1-h.assmann@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 07:54:45 up 96 days,  9:18, 78 users,  load average: 0.02, 0.08, 0.09
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210524_225518_715284_FF1DB1F4 
X-CRM114-Status: GOOD (  20.08  )
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
X-Spam-Status: No, score=-4.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v4] ARM: webasto-ccbv2: Add variant with 512MB RAM
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Fri, May 21, 2021 at 04:43:13PM +0200, Holger Assmann wrote:
> Add variant for 512MB RAM board.
> 
> Two firmware files will be generated - one for 256MB and 512MB
> respectively; the choice for shipment has to be done and depends on the
> underlying hardware.
> 
> Signed-off-by: Holger Assmann <h.assmann@pengutronix.de>
> 
> v4 ARM: webasto-ccbv2: Add variant with 512MB RAM
> ---
> v3 -> v4:
> 
>  by Ahmad Fatoum <a.fatoum@pengutronix.de>:
>  - give both *.imxcfg their respective entry points
> 
> v2 -> v3:
> 
>  by Rouven Czerwinski <r.czerwinski@pengutronix.de>:
>  - keep omitting RAM-size-dependent handling in lowlevel.c
>  - rectify flash header handling in Makefile.imx
> 
> v1 -> v2:
> 
>  by Rouven Czerwinski <r.czerwinski@pengutronix.de>:
>   - just ship one single firmware version, depending on the underlying
>     board variant
> 
>  by Ahmad Fatoum <a.fatoum@pengutronix.de>:
>   - account for the 512MB variant by hard-coding memsize == SZ_512
> 
>  ...sh-header-imx6ul-webasto-ccbv2-256.imxcfg} |  0
>  ...ash-header-imx6ul-webasto-ccbv2-512.imxcfg | 88 +++++++++++++++++++
>  arch/arm/boards/webasto-ccbv2/lowlevel.c      | 18 +++-
>  images/Makefile.imx                           |  4 +-
>  4 files changed, 107 insertions(+), 3 deletions(-)

Applied, thanks


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

