Delivery-date: Thu, 16 May 2024 09:17:26 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s7VMk-00Guz6-2h
	for lore@lore.pengutronix.de;
	Thu, 16 May 2024 09:17:26 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s7VMk-0007vQ-8A
	for lore@pengutronix.de; Thu, 16 May 2024 09:17:26 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=n23PkoD/OcEFm9grQUUeQLsTCKccnENelyIqEcEjYXk=; b=eOY1ohDGkqgDXv27md0bZawH37
	D+0pw+d+Bu404rsoSOdw6Yb80u40LJnyjpxTBMo59yswd+ACubEaCW6YBGrK1045pv8GYCfRAp4qJ
	e/9ucNi2498TdDDHPzgPuc+IDROAMCt7UWs8GDdSJL8RnNIXrcRMlo1U8WmNDJXY2dFPbmPZtddms
	smudVMYJ82Zf/skOXTE4s/wkOizZunGabywbWtD028baTTMlMTrgetOJu2q2CYPPnOOunkd8ac/xA
	1f2dbmEzZnEyN93lBadlquI6+X+bLYyWXGBkSTSIUX6O1IDBJnaBh4W0Etaxv3RWdm1bF/x965vZF
	a8X27f9A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s7VME-00000003xdt-19rC;
	Thu, 16 May 2024 07:16:54 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s7VMA-00000003xbI-3cpo
	for barebox@lists.infradead.org;
	Thu, 16 May 2024 07:16:52 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1s7VM7-0007mh-IJ; Thu, 16 May 2024 09:16:47 +0200
Received: from [2a0a:edc0:2:b01:1d::c5] (helo=pty.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1s7VM7-001flp-5O; Thu, 16 May 2024 09:16:47 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1s7VM7-00EnFw-0F;
	Thu, 16 May 2024 09:16:47 +0200
Date: Thu, 16 May 2024 09:16:47 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <ZkWy30HxMC9dNAgB@pengutronix.de>
References: <20240515060758.3580734-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240515060758.3580734-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240516_001650_964473_DC803BFA 
X-CRM114-Status: GOOD (  23.03  )
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
X-Spam-Status: No, score=-5.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH master 1/2] list: fix CONFIG_DEBUG_LIST link failure in
 PBL
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Wed, May 15, 2024 at 08:07:57AM +0200, Ahmad Fatoum wrote:
> With the addition of PBL handoff data, we now use <linux/list.h> in PBL.
> This works fine with CONFIG_DEBUG_LIST disabled, because all functions are
> inlined, but when building with the option enabled, references to the
> out-of-line sanity checking functions breaks the build.
> 
> Fix this by omitting these references when building for PBL.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  include/linux/list.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/include/linux/list.h b/include/linux/list.h
> index 2b3a39ea81e8..e47a8188e807 100644
> --- a/include/linux/list.h
> +++ b/include/linux/list.h
> @@ -36,7 +36,7 @@ static inline void INIT_LIST_HEAD(struct list_head *list)
>  	list->prev = list;
>  }
>  
> -#ifdef CONFIG_DEBUG_LIST
> +#if defined(CONFIG_DEBUG_LIST) && !defined(__PBL__)
>  extern bool __list_add_valid_or_report(struct list_head *new,
>  				       struct list_head *prev,
>  				       struct list_head *next);

What about compiling list_debug.o for PBL as well?

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


