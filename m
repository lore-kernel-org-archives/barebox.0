Delivery-date: Mon, 13 May 2024 15:59:20 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s6WD2-00CgxJ-0T
	for lore@lore.pengutronix.de;
	Mon, 13 May 2024 15:59:20 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s6WD1-0006ie-Ey
	for lore@pengutronix.de; Mon, 13 May 2024 15:59:20 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=4vDuKg9W5wJre0QJ/hlJRUNkLe8420Jkdb6GCXdyoAU=; b=ou4wJwqIMyMsDx32lPsioS7AG2
	wD34bOUhuARktAFSPt4WumoGTFasL/vr6bysGfFGRQU1rrWJ9N0MFEm7bdf3BLi75q1zjdxXZ0KeG
	k1zKHGi1+UvA1R5J5TRW5qVUM90PpT6v2u4HCdXaZCpJonVeBc8/crEoMN+I5vfYR/ix4dZfWzEBs
	tdoNa040Jq++uxjWyfTaG+ZbUbylI159VB4fE6tBM7oRQbC6Wn4KvhG3SD1DsaWUGFJ+Sicr/22tY
	i9FBxOwHa1OyK0fec1ymEOg3omui/kEclzZUGwSXlTuCWggLTmdEr8mNZmf6/XZ00RBh+LGH/JF6F
	UrxsLxZg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s6WCa-0000000D5yg-1RLZ;
	Mon, 13 May 2024 13:58:52 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s6WCV-0000000D5xB-3BGd
	for barebox@lists.infradead.org;
	Mon, 13 May 2024 13:58:50 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1s6WCS-0006ba-S8; Mon, 13 May 2024 15:58:44 +0200
Message-ID: <86f40ad4-bf4b-4192-85a1-e32c90957cc5@pengutronix.de>
Date: Mon, 13 May 2024 15:58:44 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Thomas Haemmerle <thomas.haemmerle@leica-geosystems.com>,
 barebox@lists.infradead.org
Cc: m.felsch@pengutronix.de
References: <20240513134938.4100056-1-thomas.haemmerle@leica-geosystems.com>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240513134938.4100056-1-thomas.haemmerle@leica-geosystems.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240513_065847_847102_EE7DB803 
X-CRM114-Status: GOOD (  24.27  )
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
X-Spam-Status: No, score=-5.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] fastboot: add possibility to register OEM commands
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Thomas,

On 13.05.24 15:49, Thomas Haemmerle wrote:
> Currently it is not possible to add additional OEM commands without
> extending the array `cmd_oem_dispatch_info[]`.
> Add the possibility to register commands from e.g. board files by
> replacing the array with a list.

struct fastboot_opts has cmd_exec and cmd_flash callback for exactly the
purpose of board code handling custom OEM and flash commands.

To make use of this, you'd probably want to call usb_multi_register()
from board code with a suitable argument instead of having it done by
usbgadget command or autostart.

Would that work for you?

Cheers,
Ahmad

> 
> Signed-off-by: Thomas Haemmerle <thomas.haemmerle@leica-geosystems.com>
> ---
>  common/fastboot.c  | 53 +++++++++++++++++++++++++++++++++++-----------
>  include/fastboot.h |  9 ++++++++
>  2 files changed, 50 insertions(+), 12 deletions(-)
> 
> diff --git a/common/fastboot.c b/common/fastboot.c
> index f8a01dea7a..8f78b0e517 100644
> --- a/common/fastboot.c
> +++ b/common/fastboot.c
> @@ -885,24 +885,41 @@ static void cb_oem_exec(struct fastboot *fb, const char *cmd)
>  		fastboot_tx_print(fb, FASTBOOT_MSG_OKAY, "");
>  }
>  
> -static const struct cmd_dispatch_info cmd_oem_dispatch_info[] = {
> -	{
> -		.cmd = "getenv ",
> -		.cb = cb_oem_getenv,
> -	}, {
> -		.cmd = "setenv ",
> -		.cb = cb_oem_setenv,
> -	}, {
> -		.cmd = "exec ",
> -		.cb = cb_oem_exec,
> -	},
> +struct oem_command {
> +	char *cmd;
> +	void (*cb)(struct fastboot *fb, const char *opt);
> +	struct list_head list;
>  };
>  
> +LIST_HEAD(oem_cmd_list);
> +
> +int fastboot_register_oem_command(char *cmd, void (*cb)(struct fastboot *fb, const char *opt))
> +{
> +	struct oem_command *oem_cmd = xzalloc(sizeof(*oem_cmd));
> +
> +	oem_cmd->cmd = xstrdup(cmd);
> +	oem_cmd->cb = cb;
> +
> +	list_add_tail(&oem_cmd->list, &oem_cmd_list);
> +
> +	return 0;
> +}
> +
>  static void __maybe_unused cb_oem(struct fastboot *fb, const char *cmd)
>  {
> +	struct oem_command *oem_cmd;
> +
>  	pr_debug("%s: \"%s\"\n", __func__, cmd);
>  
> -	fb_run_command(fb, cmd, cmd_oem_dispatch_info, ARRAY_SIZE(cmd_oem_dispatch_info));
> +	list_for_each_entry(oem_cmd, &oem_cmd_list, list) {
> +		if (!strcmp_l1(oem_cmd->cmd, cmd)) {
> +			oem_cmd->cb(fb, cmd + strlen(oem_cmd->cmd));
> +			return;
> +		}
> +	}
> +
> +	fastboot_tx_print(fb, FASTBOOT_MSG_FAIL, "unknown OEM command %s",
> +			  cmd);
>  }
>  
>  static const struct cmd_dispatch_info cmd_dispatch_info[] = {
> @@ -969,6 +986,18 @@ struct file_list *get_fastboot_partitions(void)
>  	return system_partitions_get_null();
>  }
>  
> +static int fastboot_oem_cmds_init(void)
> +{
> +	if (!IS_ENABLED(CONFIG_FASTBOOT_CMD_OEM))
> +		return 0;
> +
> +	fastboot_register_oem_command("getenv ", cb_oem_getenv);
> +	fastboot_register_oem_command("setenv ", cb_oem_setenv);
> +	fastboot_register_oem_command("exec ", cb_oem_exec);
> +	return 0;
> +}
> +device_initcall(fastboot_oem_cmds_init);
> +
>  static int fastboot_globalvars_init(void)
>  {
>  	if (IS_ENABLED(CONFIG_FASTBOOT_SPARSE)) {
> diff --git a/include/fastboot.h b/include/fastboot.h
> index cd415847e3..38b0728a89 100644
> --- a/include/fastboot.h
> +++ b/include/fastboot.h
> @@ -78,6 +78,15 @@ static inline struct file_list *get_fastboot_partitions(void)
>  }
>  #endif
>  
> +#ifdef CONFIG_FASTBOOT_CMD_OEM
> +int fastboot_register_oem_command(char *cmd, void (*cb)(struct fastboot *fb, const char *opt));
> +#else
> +static inline int fastboot_register_oem_command(char *cmd, void (*cb)(struct fastboot *fb, const char *opt))
> +{
> +	return -ENOSYS;
> +}
> +#endif
> +
>  int fastboot_generic_init(struct fastboot *fb, bool export_bbu);
>  void fastboot_generic_close(struct fastboot *fb);
>  void fastboot_generic_free(struct fastboot *fb);
> 
> base-commit: e70a514bce4bc84429c46fa378622024ac6c6863

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



