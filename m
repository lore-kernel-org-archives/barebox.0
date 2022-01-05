Delivery-date: Wed, 05 Jan 2022 10:15:56 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n52Oi-00BaMl-TJ
	for lore@lore.pengutronix.de; Wed, 05 Jan 2022 10:15:56 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n52Oh-0007NC-IQ
	for lore@pengutronix.de; Wed, 05 Jan 2022 10:15:56 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=kHdJAPUZyjjN+buR1xmtJEr1oI9qWmYSMRw8PQvcA3s=; b=ouCrGKD5L+JnJlAExPUj2ON1Ni
	wnBIt6ZJTVLW5RzOpsvSVUvdGoQ38CX6PHAOEyY/sqp7/QFv7ptgR7r9BlGM2HaFjDXeoH7R6Oqlv
	L8dJprAop+A0ciD7jd5oJYa/JXrGI9mXgGcONZ1v7GLdHRGu87F11Bwrmoc4P0dfX887uihZN5s1E
	vUVIHzT8u8AGljMDxmVlaB+r15FhoVRk+q2LoOXkv8i0MBPq648ZuZ7ucBr/FbMtYiYS22cOaTfzV
	HMKtBS0M4hBUgdel+Zo9lvtgEq+uGF7XqzuR5o30IaJYsiSxEuUzF7yLkrzaeHbANAmn8hk7PJenC
	NtbizaAQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n52NK-00EIrL-8D; Wed, 05 Jan 2022 09:14:30 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n52NF-00EIqB-Hq
 for barebox@lists.infradead.org; Wed, 05 Jan 2022 09:14:26 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1n52NE-00077O-9C; Wed, 05 Jan 2022 10:14:24 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1n52NE-0006bw-0l; Wed, 05 Jan 2022 10:14:24 +0100
Date: Wed, 5 Jan 2022 10:14:24 +0100
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20220105091423.GQ6003@pengutronix.de>
References: <20220103120336.1729791-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220103120336.1729791-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 10:07:39 up 25 days, 17:53, 75 users,  load average: 1.05, 1.17, 1.15
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220105_011425_619235_F32B264B 
X-CRM114-Status: GOOD (  26.89  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] commands: regulator: add support for enabling/disabling
 regulators
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, Jan 03, 2022 at 01:03:36PM +0100, Ahmad Fatoum wrote:
> For testing regulator drivers, it can be handy to enable/disable them
> from the shell prompt. Extend the regulator command to support this.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  commands/regulator.c     | 38 +++++++++++++++++++++++++++++++++++---
>  drivers/regulator/core.c |  8 ++++++++
>  include/regulator.h      |  1 +
>  3 files changed, 44 insertions(+), 3 deletions(-)
> 
> diff --git a/commands/regulator.c b/commands/regulator.c
> index 3e2595f8bfc1..e6b2f4852db4 100644
> --- a/commands/regulator.c
> +++ b/commands/regulator.c
> @@ -6,16 +6,48 @@
>  #include <common.h>
>  #include <command.h>
>  #include <regulator.h>
> +#include <getopt.h>
>  
>  static int do_regulator(int argc, char *argv[])
>  {
> -	regulators_print();
> +	struct regulator *chosen;
> +	int opt, ret;
> +
> +	while ((opt = getopt(argc, argv, "e:d:")) > 0) {
> +		switch (opt) {
> +		case 'e':
> +		case 'd':
> +			chosen = regulator_get_name(optarg);
> +			if (IS_ERR_OR_NULL(chosen)) {
> +				printf("regulator not found\n");
> +				return COMMAND_ERROR;
> +			}
> +
> +			ret = opt == 'e' ? regulator_enable(chosen)
> +				         : regulator_disable(chosen);
> +			regulator_put(chosen);
> +			return ret;

The barebox regulator core distinguishes between struct regulator and
struct regulator_internal. regulator_internal represents the physical
regulator whereas regulator is allocated for each consumer. If the
regulator core were a bit more sophisticated then a regulator would
have it's own enable count and you would be warned when a regulators
enable count goes below zero.

I agree that controlling regulators on the command line would be useful,
but I also don't want to block extending the regulator core in such a
way.

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

