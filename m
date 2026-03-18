Delivery-date: Wed, 18 Mar 2026 11:23:47 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w2o42-0029Nk-38
	for lore@lore.pengutronix.de;
	Wed, 18 Mar 2026 11:23:46 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w2o42-0005yF-CM
	for lore@pengutronix.de; Wed, 18 Mar 2026 11:23:46 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=GF2CI7972gyuBsvJbrWZa4YRHYp4ypOyHuiStAuRrPE=; b=j/OsI2bJYJrXLw4AdBx8IFCGol
	1LuDKUXbAvt+hPQpmSgPmt/nCebmEaTrq85dP4SRyU4/OEcxOeBjQB8afBm4rfDCFNhs77ya4t9H5
	lsHPGqDAQ8faIiexesGTPqy8Wh9br8eafZlpcrvA4ysP5clUqxpo9MJp2fYMCZFQy4YV3g09xNw3r
	zHR6dYeBKixJW1TJ6GgyQg+qcJmRUFauRp1LdQmhvMQ8FpOkQP4Tpsi5Q3c36crZS2JYXw9SBOGli
	k5gnAoxm+rIvolABwcQgYyG7rxjqmugPTXDwIFM5DDdj+CcXn875lDbSJhefDnwLoRz9mbvT1tjwX
	fWTV5hig==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2o3b-00000008Cb2-2F89;
	Wed, 18 Mar 2026 10:23:19 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2o3Y-00000008CaC-3Hnh
	for barebox@lists.infradead.org;
	Wed, 18 Mar 2026 10:23:17 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1w2o3W-0005sA-UI; Wed, 18 Mar 2026 11:23:14 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1w2o3W-000tKY-2Q;
	Wed, 18 Mar 2026 11:23:14 +0100
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.98.2)
	(envelope-from <sha@pengutronix.de>)
	id 1w2o3W-000000098Vi-2lam;
	Wed, 18 Mar 2026 11:23:14 +0100
Date: Wed, 18 Mar 2026 11:23:14 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Fabian Pflug <f.pflug@pengutronix.de>
Cc: BAREBOX <barebox@lists.infradead.org>,
	Ahmad Fatoum <afa@pengutronix.de>
Message-ID: <abp9Es5u4tm-60rI@pengutronix.de>
References: <20260318-v2026-02-0-topic-sconfig_console-v3-0-e26055294723@pengutronix.de>
 <20260318-v2026-02-0-topic-sconfig_console-v3-2-e26055294723@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260318-v2026-02-0-topic-sconfig_console-v3-2-e26055294723@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260318_032316_825917_E209E426 
X-CRM114-Status: GOOD (  23.24  )
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
X-Spam-Status: No, score=-3.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH v3 2/5] common: bootm: add policy to commandline
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Wed, Mar 18, 2026 at 10:22:00AM +0100, Fabian Pflug wrote:
> If security policies are used, then the variable bootm.provide_policy
> can be set to automatically append the currently selected security
> policy to the kernel commandline with the prefix
> barebox.security.policy=
> This allows the the system to behave different based on the selected
> security policy.
> 
> Signed-off-by: Fabian Pflug <f.pflug@pengutronix.de>
> ---
>  common/bootm.c  | 23 +++++++++++++++++++++++
>  include/bootm.h |  5 +++++
>  2 files changed, 28 insertions(+)
> 
> diff --git a/common/bootm.c b/common/bootm.c
> index d43079bb81..9484539bc3 100644
> --- a/common/bootm.c
> +++ b/common/bootm.c
> @@ -22,6 +22,7 @@
>  #include <uncompress.h>
>  #include <zero_page.h>
>  #include <security/config.h>
> +#include <security/policy.h>
>  
>  static LIST_HEAD(handler_list);
>  static struct sconfig_notifier_block sconfig_notifier;
> @@ -75,6 +76,7 @@ static int bootm_dryrun;
>  static int bootm_earlycon;
>  static int bootm_provide_machine_id;
>  static int bootm_provide_hostname;
> +static int bootm_provide_policy;
>  static int bootm_verbosity;
>  static int bootm_efi_mode = BOOTM_EFI_AVAILABLE;
>  
> @@ -97,6 +99,7 @@ void bootm_data_init_defaults(struct bootm_data *data)
>  	data->appendroot = bootm_appendroot;
>  	data->provide_machine_id = bootm_provide_machine_id;
>  	data->provide_hostname = bootm_provide_hostname;
> +	data->provide_policy = bootm_provide_policy;
>  	data->verbose = bootm_verbosity;
>  	data->dryrun = bootm_dryrun;
>  	data->efi_boot = bootm_efi_mode;
> @@ -118,6 +121,7 @@ void bootm_data_restore_defaults(const struct bootm_data *data)
>  	bootm_appendroot = data->appendroot;
>  	bootm_provide_machine_id = data->provide_machine_id;
>  	bootm_provide_hostname = data->provide_hostname;
> +	bootm_provide_policy = data->provide_policy;
>  	bootm_verbosity = data->verbose;
>  	bootm_dryrun = data->dryrun;
>  	bootm_efi_mode = data->efi_boot;
> @@ -759,6 +763,20 @@ int bootm_boot(struct bootm_data *bootm_data)
>  		free(hostname_bootarg);
>  	}
>  
> +	if (IS_ENABLED(CONFIG_SECURITY_POLICY) && bootm_data->provide_policy) {

This change conflicts with Ahmads bootm override series. In that series

int bootm_boot(struct bootm_data *bootm_data)

is replaced with

int bootm_boot_handler(struct image_data *data)

So bootm_data is no longer available here. I replaced bootm_data->provide_policy
with 0 for now, but this needs a proper fix. Ahmad, Fabian, Could you look into it?

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


