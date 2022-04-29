Delivery-date: Fri, 29 Apr 2022 09:36:32 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nkLB3-001mPa-Ih
	for lore@lore.pengutronix.de; Fri, 29 Apr 2022 09:36:32 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nkLB1-0001tB-1u
	for lore@pengutronix.de; Fri, 29 Apr 2022 09:36:31 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=N+5yItzfUNlmnT0xFn/y9tOe31aseGDAMOQKOvSnfoQ=; b=3tXL86+9vl3rVAcAyJ05ZPRe1l
	TvQ+DbraB5gYB1g6wKAm4H+bIHgcDLPNZiGi96UnO9qD1P2C1cztKgChTzbZX9LmGcZs4f05ltzxS
	Y07crb7RVPPi1hNCtU96y49+cvq1XyKo/lVW2WsxCwu+1zVPgmMlemHSg3GQTdsUs0iUAF+EqbhqW
	G2JDXPWD02IQIjTSetwziiQUAo7DypPraTevJvn5mWjkBbqWVzc63AkYFUkLdBcr7so72OKMJpN6D
	3hqKVM/DX9IL6Rj67X+TmEU67yr+o+5okpHDDV+F8Ue5EjrV9+QBDR3cTNIcL9KmD6m60DzDjrwqi
	MU7NCnUQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nkL9s-009zvk-Iz; Fri, 29 Apr 2022 07:35:20 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nkL9n-009zv6-Qr
 for barebox@lists.infradead.org; Fri, 29 Apr 2022 07:35:17 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nkL9m-0001a3-Bf; Fri, 29 Apr 2022 09:35:14 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nkL9m-0004ib-2K; Fri, 29 Apr 2022 09:35:14 +0200
Date: Fri, 29 Apr 2022 09:35:14 +0200
To: Oleksij Rempel <o.rempel@pengutronix.de>
Cc: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <20220429073514.GU4012@pengutronix.de>
References: <20220427121413.1887458-1-o.rempel@pengutronix.de>
 <20220427121413.1887458-2-o.rempel@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220427121413.1887458-2-o.rempel@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 09:34:31 up 29 days, 20:04, 78 users,  load average: 0.08, 0.09, 0.09
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220429_003515_909697_59077775 
X-CRM114-Status: GOOD (  24.00  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v3 1/5] common: add $global.serial_number with device
 tree fixup
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Wed, Apr 27, 2022 at 02:14:09PM +0200, Oleksij Rempel wrote:
> From: Ahmad Fatoum <a.fatoum@pengutronix.de>
> 
> This new variable can be set by boards from C code or from the
> environment to change the serial number fixed up into the kernel device
> tree.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
> ---
>  common/Kconfig   |  5 +++++
>  common/misc.c    | 16 ++++++++++++++++
>  common/oftree.c  |  9 +++++++++
>  include/common.h |  3 +++
>  4 files changed, 33 insertions(+)
> 
> diff --git a/common/Kconfig b/common/Kconfig
> index f7a6a96e87..d08302a573 100644
> --- a/common/Kconfig
> +++ b/common/Kconfig
> @@ -1066,6 +1066,11 @@ config MACHINE_ID
>  	  Note: if no hashable information is available no machine id will be passed
>  	  to the kernel.
>  
> +config SERIAL_NUMBER_FIXUP
> +	bool "fix up board serial number"
> +	help
> +	  fixup serial number supplied by board code info device tree

I Don't think we need a Kconfig option for this.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

