Delivery-date: Mon, 12 Sep 2022 12:27:04 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oXgee-0029ew-EH
	for lore@lore.pengutronix.de; Mon, 12 Sep 2022 12:27:04 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oXgec-0005b6-1E
	for lore@pengutronix.de; Mon, 12 Sep 2022 12:27:03 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=hA629kD4YaE3+hgxELg2E+Jgm4ZvW0dz7893C1JuXL8=; b=ExfjnFtMqzbWR0xBWxVAjxWWbk
	VUv8ubMoiR3lnIALng3bWAmXPX5l7KZW0j1h2UYmIYjhJMZk2KZ6uQ3+6F6237QaQC0pn43trQYRx
	8a+cKo5gwvurzyF6Xxu4xRaCOV1ccrRm+Jemn+uBlz1q9ANIlugafLwzlKoh+7me0z8knbeQfut4K
	DF+YMRDP6jNoxzgVnm/xnUyrZZHyGefRoT8fCBbsn4NIK+EmQqfunbzojMx/2Z4sFdkKpC2zsGDj2
	L2mxeQD/f7MLBNKb+jq2J36iPOezAWrlq7TBMGQQ0THZxrEC7EllxNbR4M79l9ntfVFA5Vt9wuR2g
	zSrASTpg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oXgd3-008ihY-4o; Mon, 12 Sep 2022 10:25:27 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oXgQt-008dGL-5e
	for barebox@lists.infradead.org; Mon, 12 Sep 2022 10:12:56 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oXgQr-0003UO-RW; Mon, 12 Sep 2022 12:12:49 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oXgQr-00022t-IV; Mon, 12 Sep 2022 12:12:49 +0200
Date: Mon, 12 Sep 2022 12:12:49 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20220912101249.GC6477@pengutronix.de>
References: <20220905070448.539531-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220905070448.539531-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220912_031251_417005_F8FA9AD4 
X-CRM114-Status: GOOD (  25.34  )
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
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] commands: add pm_domain for listing power domains
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, Sep 05, 2022 at 09:04:48AM +0200, Ahmad Fatoum wrote:
> Like the regulator command, this new pm_domain command gives an easy
> way for listing registered power domains and whether barebox had them
> activated.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  commands/Kconfig     |  8 ++++++++
>  commands/Makefile    |  1 +
>  commands/pm_domain.c | 18 ++++++++++++++++++
>  drivers/base/power.c | 10 ++++++++++
>  include/pm_domain.h  |  2 ++
>  5 files changed, 39 insertions(+)
>  create mode 100644 commands/pm_domain.c

Applied, thanks

Sascha

> 
> diff --git a/commands/Kconfig b/commands/Kconfig
> index 3e21dc4c0500..9894ecb9aa31 100644
> --- a/commands/Kconfig
> +++ b/commands/Kconfig
> @@ -240,6 +240,14 @@ config CMD_REGULATOR
>  	  the regulator command lists the currently registered regulators and
>  	  their current state.
>  
> +config CMD_PM_DOMAIN
> +	bool
> +	depends on PM_GENERIC_DOMAINS
> +	prompt "pm_domain command"
> +	help
> +	  The pm_domain command lists the currently registered power domains and
> +	  their current state.
> +
>  config CMD_NVMEM
>  	bool
>  	depends on NVMEM
> diff --git a/commands/Makefile b/commands/Makefile
> index 0aae8893d696..068fbb32dad7 100644
> --- a/commands/Makefile
> +++ b/commands/Makefile
> @@ -116,6 +116,7 @@ obj-$(CONFIG_CMD_READF)		+= readf.o
>  obj-$(CONFIG_CMD_MENUTREE)	+= menutree.o
>  obj-$(CONFIG_CMD_2048)		+= 2048.o
>  obj-$(CONFIG_CMD_REGULATOR)	+= regulator.o
> +obj-$(CONFIG_CMD_PM_DOMAIN)	+= pm_domain.o
>  obj-$(CONFIG_CMD_LSPCI)		+= lspci.o
>  obj-$(CONFIG_CMD_IMD)		+= imd.o
>  obj-$(CONFIG_CMD_HWCLOCK)	+= hwclock.o
> diff --git a/commands/pm_domain.c b/commands/pm_domain.c
> new file mode 100644
> index 000000000000..ec8b769df193
> --- /dev/null
> +++ b/commands/pm_domain.c
> @@ -0,0 +1,18 @@
> +// SPDX-License-Identifier: GPL-2.0-only
> +
> +#include <common.h>
> +#include <command.h>
> +#include <pm_domain.h>
> +
> +static int do_pm_domain(int argc, char *argv[])
> +{
> +	pm_genpd_print();
> +
> +	return 0;
> +}
> +
> +BAREBOX_CMD_START(pm_domain)
> +	.cmd		= do_pm_domain,
> +	BAREBOX_CMD_DESC("list power domains")
> +	BAREBOX_CMD_GROUP(CMD_GRP_INFO)
> +BAREBOX_CMD_END
> diff --git a/drivers/base/power.c b/drivers/base/power.c
> index 4a206051b137..3eabf3c897b2 100644
> --- a/drivers/base/power.c
> +++ b/drivers/base/power.c
> @@ -266,3 +266,13 @@ int genpd_dev_pm_attach(struct device_d *dev)
>  	return __genpd_dev_pm_attach(dev, dev->device_node, 0, true);
>  }
>  EXPORT_SYMBOL_GPL(genpd_dev_pm_attach);
> +
> +void pm_genpd_print(void)
> +{
> +	struct generic_pm_domain *genpd;
> +
> +	printf("%-20s %6s\n", "name", "active");
> +	list_for_each_entry(genpd, &gpd_list, gpd_list_node)
> +		printf("%-20s %6s\n", genpd->name,
> +		       genpd->status == GPD_STATE_ACTIVE ? "on" : "off");
> +}
> diff --git a/include/pm_domain.h b/include/pm_domain.h
> index 48fd170007fd..ff1aa3751165 100644
> --- a/include/pm_domain.h
> +++ b/include/pm_domain.h
> @@ -54,6 +54,8 @@ int pm_genpd_init(struct generic_pm_domain *genpd, void *gov, bool is_off);
>  int of_genpd_add_provider_simple(struct device_node *np,
>  				 struct generic_pm_domain *genpd);
>  
> +void pm_genpd_print(void);
> +
>  #else
>  
>  static inline int pm_genpd_init(struct generic_pm_domain *genpd,
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


