Delivery-date: Wed, 23 Feb 2022 13:00:01 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nMqJN-007bTy-50
	for lore@lore.pengutronix.de; Wed, 23 Feb 2022 13:00:01 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nMqJL-000544-Dg
	for lore@pengutronix.de; Wed, 23 Feb 2022 13:00:00 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=N1QhGN01gCy27lrre0ROFEFZ6gib8ub+YgwGoF9fA28=; b=zF1RzaRQIey8tHPovpb7IHlki3
	fTXmxCOvw7AQ6MW5WVMZLH1Bervw1iv07/dn6M/vlv+LHx/Cv+4vbtD4Oso1awiFZ2OijbD6RDaRf
	q5u2eO46hv6YUDLDl9azJvEi1gVYkJHgWXmE+/sES7J2o5DlxXPm2HnQfsvQ+pcXf8iV8/gvHbNAf
	MqdTTqHlDGEBmICe4L3CGbgwSCGRdFdmg6UtlC3CK72AIqhuoT5GBevPPbARarHj4TRR5AoltZKKa
	lTf6fbDXXRbn8F/65y8odVhUapL31C4DVf/O9if5lcogJZVDAOqBd5vW+eJIwHgTZZn8Fcp65V2cv
	H0L6L9+g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nMqHo-00E1cj-78; Wed, 23 Feb 2022 11:58:24 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nMpwm-00DuRz-Jz
 for barebox@lists.infradead.org; Wed, 23 Feb 2022 11:36:42 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nMpwl-0001Gm-7E; Wed, 23 Feb 2022 12:36:39 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nMpwk-0008UX-UH; Wed, 23 Feb 2022 12:36:38 +0100
Date: Wed, 23 Feb 2022 12:36:38 +0100
To: Juergen Borleis <jbe@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20220223113638.GO9136@pengutronix.de>
References: <20220222104859.44391-1-jbe@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220222104859.44391-1-jbe@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 12:33:01 up 74 days, 20:18, 90 users,  load average: 0.26, 0.21, 0.21
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220223_033640_691393_DDE4F4CA 
X-CRM114-Status: GOOD (  19.51  )
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
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 1/3] ARM: webasto-ccbv2: consider the available memory
 size for optee
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Tue, Feb 22, 2022 at 11:48:57AM +0100, Juergen Borleis wrote:
> Signed-off-by: Juergen Borleis <jbe@pengutronix.de>
> ---
>  arch/arm/boards/webasto-ccbv2/lowlevel.c | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/arch/arm/boards/webasto-ccbv2/lowlevel.c b/arch/arm/boards/webasto-ccbv2/lowlevel.c
> index 32117b0..84de271 100644
> --- a/arch/arm/boards/webasto-ccbv2/lowlevel.c
> +++ b/arch/arm/boards/webasto-ccbv2/lowlevel.c
> @@ -32,7 +32,7 @@ static void configure_uart(void)
>  
>  }
>  
> -static void noinline start_ccbv2(u32 r0)
> +static void noinline start_ccbv2(u32 r0, unsigned long memSize)

NoCamelCasePlease

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

