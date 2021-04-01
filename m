Delivery-date: Thu, 01 Apr 2021 10:27:13 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lRsfZ-0006bO-5u
	for lore@lore.pengutronix.de; Thu, 01 Apr 2021 10:27:13 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lRsfY-00064N-BK
	for lore@pengutronix.de; Thu, 01 Apr 2021 10:27:13 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=3UXbKK2gy3YS9EeKJ+/KL0fKwPRdnDE5IqyiBUaM20s=; b=SJBDAADVLCxkpZleJxcALWsJj
	8Zqc3kRmSJKwgv6MLR3cgxYbXBp0k5lpDDE6+Ot5nn1MzkKpZUmuc9LvA0TFMcYE+h4rzORzsUaTa
	W+t0DdaMlVhxcoOA53ApD+bPKTm6Bx3Ikj1HZy9gIo+wmpDpa8cM/39tFAMLYT8xCJLNkEEjNaf1t
	bCHtRIGtEwXUcvBf5Oa5dGAGCODTIjZvpoj7cQD9CVzTf77HTMjYHAxdlTMshI9erjKCqA5na/MHr
	0juQ4DgDv0RgRlqlC4wMtA9QPToFxlYng9i67mrN2AildOFEPXuihOH7/cxt3M1WGJq2iB0Yzs9v0
	S1j3/ZZBw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lRseZ-008vOY-N3; Thu, 01 Apr 2021 08:26:11 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lRseR-008vNg-Kh
 for barebox@lists.infradead.org; Thu, 01 Apr 2021 08:26:06 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lRseQ-0005ti-3c; Thu, 01 Apr 2021 10:26:02 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lRseP-0003jW-HY; Thu, 01 Apr 2021 10:26:01 +0200
Date: Thu, 1 Apr 2021 10:26:01 +0200
To: Stefan Riedmueller <s.riedmueller@phytec.de>
Cc: barebox@lists.infradead.org
Message-ID: <20210401082601.GR609@pengutronix.de>
References: <20210330065040.5030-1-s.riedmueller@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210330065040.5030-1-s.riedmueller@phytec.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 10:25:51 up 42 days, 11:49, 94 users,  load average: 0.07, 0.08, 0.14
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210401_092603_882748_681CC17B 
X-CRM114-Status: GOOD (  22.73  )
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
X-Spam-Status: No, score=-2.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE,URIBL_BLOCKED
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/4] commands: Kconfig: Remove HW ECC dependency from
 nandtest
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Tue, Mar 30, 2021 at 08:50:37AM +0200, Stefan Riedmueller wrote:
> NAND_ECC_HW is no longer optional so remove the dependency from
> nandtest. Otherwise nandtest won't be build for HW ECC boards.
> 
> Signed-off-by: Stefan Riedmueller <s.riedmueller@phytec.de>
> ---
>  commands/Kconfig | 1 -
>  1 file changed, 1 deletion(-)

Applied all to master, thanks

Sascha

> 
> diff --git a/commands/Kconfig b/commands/Kconfig
> index 6d84c956e576..8e8b5a926fbb 100644
> --- a/commands/Kconfig
> +++ b/commands/Kconfig
> @@ -1884,7 +1884,6 @@ config CMD_NANDTEST
>  	tristate
>  	depends on NAND
>  	depends on PARTITION
> -	depends on NAND_ECC_HW || NAND_ECC_SOFT
>  	prompt "nandtest"
>  	help
>  	  NAND flash memory test
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

