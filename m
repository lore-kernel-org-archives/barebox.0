Delivery-date: Thu, 22 Dec 2022 17:10:51 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1p8O9j-0056BU-Sk
	for lore@lore.pengutronix.de; Thu, 22 Dec 2022 17:10:51 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1p8O9h-0004Gm-0J
	for lore@pengutronix.de; Thu, 22 Dec 2022 17:10:50 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=jkhsOnSaDdCgbpsMAG0XkoZFv+JZi/XNnRiXN5oAJNg=; b=vCowJGqAr7Kfld6W6hg70GzseY
	K8x2IaA44u5CgLGmA6SwLFHYIfXrCvYU6NIX+WdxmV7qfcms16zjprFjBZR2N2PJbTyfz1PZwYMxA
	Pf7YZTAIMh1pQIzPEeaIoozffsYdJPzx7cArb+bx53aykSlNAmTW+pOTpB8ur1shQ50GbuyAfGClY
	LB+9cUWJhU+lUljC5riYhXCpQikCpwTFHSECA/rpx7JJyt6Y5Q6JP8icT5VGNyBALchMkq9ODtZCq
	XGbzk7Fqh//HdPw9d/+3LN/3MlKCNAOLjz/4jWUuvpdHkLi+QA2qGdjQpMVbpT/Kx1TVDUtwasNaI
	rccx1FmA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p8O82-00DsB4-Ea; Thu, 22 Dec 2022 16:09:07 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p8O4u-00DqVU-Jt
	for barebox@lists.infradead.org; Thu, 22 Dec 2022 16:05:54 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1p8O4t-0003Xr-0I; Thu, 22 Dec 2022 17:05:51 +0100
Received: from mfe by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1p8O4s-00038v-Pr; Thu, 22 Dec 2022 17:05:50 +0100
Date: Thu, 22 Dec 2022 17:05:50 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20221222160550.a6ej7e4qivrbxs5z@pengutronix.de>
References: <20221222143513.3182725-1-a.fatoum@pengutronix.de>
 <20221222154759.d77lmqb5z7ykgprz@pengutronix.de>
 <9f20ec1b-8b6c-25dc-261f-d338008bdd2b@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <9f20ec1b-8b6c-25dc-261f-d338008bdd2b@pengutronix.de>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221222_080552_700251_458A2877 
X-CRM114-Status: GOOD (  25.19  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] common: deep-probe: write deep probe enabled message to
 log
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 22-12-22, Ahmad Fatoum wrote:
> Hello Macro,
> 
> On 22.12.22 16:47, Marco Felsch wrote:
> > Hi Ahamd,
> > 
> > thanks for your patch.
> > 
> > On 22-12-22, Ahmad Fatoum wrote:
> >> The "Deep probe supported due to" was not written to log and thus only
> >> shown on startup and not in dmesg output. Make it available in both.
> >>
> >> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> >> ---
> >>  common/deep-probe.c | 4 +++-
> >>  1 file changed, 3 insertions(+), 1 deletion(-)
> >>
> >> diff --git a/common/deep-probe.c b/common/deep-probe.c
> >> index 1020ad93b7f7..931e5a17709d 100644
> >> --- a/common/deep-probe.c
> >> +++ b/common/deep-probe.c
> >> @@ -1,5 +1,7 @@
> >>  // SPDX-License-Identifier: GPL-2.0-only
> >>  
> >> +#define pr_fmt(fmt) "deep-probe: " fmt
> >> +
> >>  #include <common.h>
> >>  #include <deep-probe.h>
> >>  #include <of.h>
> >> @@ -27,7 +29,7 @@ bool deep_probe_is_supported(void)
> >>  		for (; matches->compatible; matches++) {
> >>  			if (of_machine_is_compatible(matches->compatible)) {
> >>  				boardstate = DEEP_PROBE_SUPPORTED;
> >> -				printk("Deep probe supported due to %s\n", matches->compatible);
> >> +				pr_info("supported due to %s\n", matches->compatible);
> > 
> > What do you think, should we move it to pr_debug()? The feature is now
> > more robust and usual this information is only required for developers
> > not for users.
> 
> I just fixed a deep probe regression in the other series, so I think
> we should still leave it in.

Okay, in that case

Reviewed-by: Marco Felsch <m.felsch@pengutronix.de>

> 
> > 
> > Regards,
> >   Marco
> > 
> >>  				return true;
> >>  			}
> >>  		}
> >> -- 
> >> 2.30.2
> >>
> >>
> >>
> > 
> 
> -- 
> Pengutronix e.K.                           |                             |
> Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
> 
> 


