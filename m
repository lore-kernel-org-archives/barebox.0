Delivery-date: Tue, 25 May 2021 10:56:52 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1llSrs-00006o-IH
	for lore@lore.pengutronix.de; Tue, 25 May 2021 10:56:52 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1llSrr-0007Yk-8g
	for lore@pengutronix.de; Tue, 25 May 2021 10:56:52 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:Cc:To:Subject:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Ie1niN59/1G1HEGVUqTOP4m5Rlf66tgsA13xJfIOja4=; b=AkCaVW8TSEfDuO8rUaw8pNIJIh
	koEf4Tqw5oiLYFUqP4B46hz2o+E2mo7VtB1UBquwH541NZeYZoEF9oENgcYUjxWds7i/SfXzn1nCU
	beP+U+N2hjn+MOZrrfsca2LQh3Vz+VZbQ/BTuokrv0gEz+qV0bfacbiYGGXChHP7K3pIsjzGiOJvH
	2G8uR23HFBo0D+EWErJJogNzMJFRJHfoibrvk64CR5C6BrYJQyK/+N9vJaaZFGvW7Bj7TqHgqfO3F
	S/cJAHBlEZFOj3+heu91eoOqm/ugFbdwy6NJOgQN0k7uKHSwc6m+8WvumGmWoShNaV9N/qFXDJs4s
	TFHVM3gg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1llSqV-004Cqo-8R; Tue, 25 May 2021 08:55:28 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1llSov-004CEY-NQ
 for barebox@lists.infradead.org; Tue, 25 May 2021 08:53:51 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[127.0.0.1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <bst@pengutronix.de>)
 id 1llSou-0006sk-D1; Tue, 25 May 2021 10:53:48 +0200
To: barebox@lists.infradead.org
Cc: a.fatoum@pengutronix.de
References: <20210414130044.6910-1-bst@pengutronix.de>
 <20210414130044.6910-2-bst@pengutronix.de>
From: Bastian Krause <bst@pengutronix.de>
Message-ID: <0f5aa510-5e65-0897-a212-e08305b8eb1c@pengutronix.de>
Date: Tue, 25 May 2021 10:53:48 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.9.0
MIME-Version: 1.0
In-Reply-To: <20210414130044.6910-2-bst@pengutronix.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210525_015349_818163_9F9204D2 
X-CRM114-Status: GOOD (  27.38  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE,URIBL_BLOCKED autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH v2 2/2] of: introduce global.linux.bootargs_append
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 4/14/21 3:00 PM, Bastian Krause wrote:
> From: Ahmad Fatoum <a.fatoum@pengutronix.de>
> 
> By default, barebox overwrites the bootargs in the oftree if it itself
> has any. Make this behavior configurable by adding a new global
> variable.
> 
> The new global variable allows either appending barebox' bootargs to the
> original oftree bootargs (global.linux.bootargs_append=1) or overwriting
> the original oftree bootargs (global.linux.bootargs_append=0) as before.
> The default is to overwrite the original bootargs.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> [bst: dropped a new line removal, extend commit message]
> Signed-off-by: Bastian Krause <bst@pengutronix.de>
> ---
> Changes since (implicit) v1:
> - use global.linux.bootargs_append instead of
>   global.linux.bootargs_overwrite
> - since the meaning is the other way around now, change the default and
>   the check in of_write_bootargs()
> ---
>  common/oftree.c | 22 +++++++++++++++++++++-
>  1 file changed, 21 insertions(+), 1 deletion(-)

Gentle ping.

> 
> diff --git a/common/oftree.c b/common/oftree.c
> index a8e6587a61..ad2eff362d 100644
> --- a/common/oftree.c
> +++ b/common/oftree.c
> @@ -16,6 +16,7 @@
>  #include <reset_source.h>
>  #include <watchdog.h>
>  #include <globalvar.h>
> +#include <magicvar.h>
>  
>  #define MAX_LEVEL	32		/* how deeply nested we will go */
>  
> @@ -161,9 +162,14 @@ static void watchdog_build_bootargs(struct watchdog *watchdog, struct device_nod
>  	free(buf);
>  }
>  
> +static int bootargs_append = 0;
> +BAREBOX_MAGICVAR(global.linux.bootargs_append, "append to original oftree bootargs");
> +
>  static int of_write_bootargs(struct device_node *node)
>  {
>  	const char *str;
> +	char *buf = NULL;
> +	int ret;
>  
>  	if (IS_ENABLED(CONFIG_SYSTEMD_OF_WATCHDOG))
>  		watchdog_build_bootargs(boot_get_enabled_watchdog(), of_get_parent(node));
> @@ -176,7 +182,20 @@ static int of_write_bootargs(struct device_node *node)
>  	if (strlen(str) == 0)
>  		return 0;
>  
> -	return of_property_write_string(node, "bootargs", str);
> +	if (bootargs_append) {
> +		const char *oldstr;
> +
> +		ret = of_property_read_string(node, "bootargs", &oldstr);
> +		if (!ret) {
> +			str = buf = basprintf("%s %s", oldstr, str);
> +			if (!buf)
> +				return -ENOMEM;
> +		}
> +	}
> +
> +	ret = of_property_write_string(node, "bootargs", str);
> +	free(buf);
> +	return ret;
>  }
>  
>  static int of_fixup_bootargs(struct device_node *root, void *unused)
> @@ -218,6 +237,7 @@ static int of_fixup_bootargs(struct device_node *root, void *unused)
>  
>  static int of_register_bootargs_fixup(void)
>  {
> +	globalvar_add_simple_bool("linux.bootargs_append", &bootargs_append);
>  	return of_register_fixup(of_fixup_bootargs, NULL);
>  }
>  late_initcall(of_register_bootargs_fixup);
> 


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

