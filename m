Delivery-date: Wed, 04 Jan 2023 13:32:50 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pD2ws-001RdU-Qu
	for lore@lore.pengutronix.de; Wed, 04 Jan 2023 13:32:50 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pD2wq-0005gb-NV
	for lore@pengutronix.de; Wed, 04 Jan 2023 13:32:49 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=r2d9ez1v0SR33dXDQElzc+dsAkO3JRFyPZ1xv0qT+YA=; b=svnn4fsQV637gRRJMGiR3FSTgb
	ix67iziEctAzC6Cp9VG5DgIy2Wzw3akcqBAsPE28WlI6/SLihlSvtg3uahEIVq4OwkIBK0HFV5ObX
	L/MgjIuiBLEc/mQURbB7GbsmZS4/89svMiSnaQoV8LHnnUBAYSoXXFuRYTMXSmy4W4MNLs302b/FC
	MV5u1sNM1xczQsKlT2WiC87tBg+6WTDDf88ef2BVUQtaLfodj/GSgCqJ6jrSL6O+Dvdkr3DpCp7b2
	PRxqJbiKUvHUdhV6kok7iKrrfQJK7fmxylmujECw27oYx1nl/nn8KA76vrKQHEk4xO78ctQobl60X
	vmqvAoIQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pD2vL-0092P0-TS; Wed, 04 Jan 2023 12:31:15 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pD2hZ-0090I2-5f
	for barebox@lists.infradead.org; Wed, 04 Jan 2023 12:17:02 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pD2hX-0003k8-Ey; Wed, 04 Jan 2023 13:16:59 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pD2hX-0005SH-6w; Wed, 04 Jan 2023 13:16:59 +0100
Date: Wed, 4 Jan 2023 13:16:59 +0100
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20230104121659.GV11668@pengutronix.de>
References: <20221222143513.3182725-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20221222143513.3182725-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230104_041701_283252_7AEFCF4E 
X-CRM114-Status: GOOD (  21.96  )
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
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] common: deep-probe: write deep probe enabled message to
 log
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Thu, Dec 22, 2022 at 03:35:13PM +0100, Ahmad Fatoum wrote:
> The "Deep probe supported due to" was not written to log and thus only
> shown on startup and not in dmesg output. Make it available in both.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  common/deep-probe.c | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)

Applied, thanks

Sascha

> 
> diff --git a/common/deep-probe.c b/common/deep-probe.c
> index 1020ad93b7f7..931e5a17709d 100644
> --- a/common/deep-probe.c
> +++ b/common/deep-probe.c
> @@ -1,5 +1,7 @@
>  // SPDX-License-Identifier: GPL-2.0-only
>  
> +#define pr_fmt(fmt) "deep-probe: " fmt
> +
>  #include <common.h>
>  #include <deep-probe.h>
>  #include <of.h>
> @@ -27,7 +29,7 @@ bool deep_probe_is_supported(void)
>  		for (; matches->compatible; matches++) {
>  			if (of_machine_is_compatible(matches->compatible)) {
>  				boardstate = DEEP_PROBE_SUPPORTED;
> -				printk("Deep probe supported due to %s\n", matches->compatible);
> +				pr_info("supported due to %s\n", matches->compatible);
>  				return true;
>  			}
>  		}
> -- 
> 2.30.2
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


