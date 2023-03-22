Delivery-date: Wed, 22 Mar 2023 10:26:24 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1peujf-00AHTr-W7
	for lore@lore.pengutronix.de; Wed, 22 Mar 2023 10:26:24 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1peujf-0001Um-OX
	for lore@pengutronix.de; Wed, 22 Mar 2023 10:26:24 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=DIGfx1E6Ys1c4LlpRBVrubNr1IzI5qOTLw6w3su+mHs=; b=oHsf82/FU5wv/WqV2RUKXQrmDp
	KVAl1c/UPE/EKbx26irfrtHiotE/3mb0YU6vb9qx7JYnklmPCyohJetJb2I1rAv5vAnhHeXNx4tWk
	IjzcBsNTyrHjvtYhyO5gK0+XP52Ejp9JNU9P+YSsiysGAKldslRk3bRWEOP1hB1iu/M942B0sYWsO
	co25QhdfmWwejrR0L2+SLEOh35D24/ts2vPRz8qCUlL6KA/ypzGk+zKG+rO/dtH8IRAE5Pa1j80uH
	9Ti81QoqG0iFJofvYEWAR2hpZlMHiI8wFEhDxZ23L9jqEOONoAo57vrVct+pjIqIL2SWg/cv9gm/1
	kwhRxMLA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1peuiW-00FOYs-05;
	Wed, 22 Mar 2023 09:25:12 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1peuiS-00FOX3-0y
	for barebox@lists.infradead.org;
	Wed, 22 Mar 2023 09:25:09 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1peuiQ-0001Aj-NU; Wed, 22 Mar 2023 10:25:06 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1peuiQ-0001jj-HP; Wed, 22 Mar 2023 10:25:06 +0100
Date: Wed, 22 Mar 2023 10:25:06 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Message-ID: <20230322092506.GO7446@pengutronix.de>
References: <20230322083245.251340-1-s.hauer@pengutronix.de>
 <20230322083245.251340-5-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230322083245.251340-5-s.hauer@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230322_022508_353607_4659AAD4 
X-CRM114-Status: GOOD (  23.67  )
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
Subject: Re: [PATCH 4/4] commands: of_overlay: Allow to register clocks from
 overlay
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Wed, Mar 22, 2023 at 09:32:45AM +0100, Sascha Hauer wrote:
> When clocks are added from an overlay calling of_probe() is enough
> for devices handled by regular drivers, but not for clocks declared
> with CLK_OF_DECLARE(). Additionally call of_clk_init() to support
> these as well.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  commands/of_overlay.c | 8 ++++++--
>  1 file changed, 6 insertions(+), 2 deletions(-)
> 
> diff --git a/commands/of_overlay.c b/commands/of_overlay.c
> index 37d29b88e5..1bd54a7b10 100644
> --- a/commands/of_overlay.c
> +++ b/commands/of_overlay.c
> @@ -10,6 +10,7 @@
>  #include <getopt.h>
>  #include <libfile.h>
>  #include <of.h>
> +#include <linux/clk.h>
>  
>  static int do_of_overlay(int argc, char *argv[])
>  {
> @@ -49,8 +50,11 @@ static int do_of_overlay(int argc, char *argv[])
>  
>  	if (live_tree) {
>  		ret = of_overlay_apply_tree(of_get_root_node(), overlay);
> -		if (!ret)
> -			ret = of_probe();
> +		if (ret)
> +			goto err;
> +
> +		of_probe();
> +		of_clk_init();

Just realized we better call of_clk_init() first in case the just added
clock is really used by the devices added in the overlay.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


