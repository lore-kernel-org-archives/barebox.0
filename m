Delivery-date: Tue, 25 May 2021 10:56:38 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1llSre-00006R-51
	for lore@lore.pengutronix.de; Tue, 25 May 2021 10:56:38 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1llSrc-0007WF-Pf
	for lore@pengutronix.de; Tue, 25 May 2021 10:56:37 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:Cc:To:Subject:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=+ZAprOLJHNiBt9HRiwjvERw5TrYoLJQ1Jc5kGy6mhyE=; b=VoLiU73aEmDCfufYn0QchdtDdx
	w13Z/5PszFhfkPs1HUfe3zGAfPWaEUmXkLZX1L9yyjD1SjHu/6RgvMwqT9kqij4NQm1pQv7nQcDlT
	Z71S0aHTkOQKIB2XqnolgH1rt0BwSv61hNxzmCxYpZ6VM4fw22KbJtDfVRVuwMPXiPmAAwF0Mk6uj
	9U1u9+SDcgaWXL3wDgiMjuS8cx073qhxUE3sc0ro06/r7YSQNvHeagokSKABH9kWccvJScceROuV3
	AzyR0y8C+gILE1BX/fk+HooG8XXfUJCwRFXBKlPBNqrQ/G8nxabqX0Rp4bBOKnGbiXjhQ2XQgMewc
	uxDqTHwA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1llSqC-004Cip-Bn; Tue, 25 May 2021 08:55:08 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1llSod-004C71-G0
 for barebox@lists.infradead.org; Tue, 25 May 2021 08:53:33 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[127.0.0.1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <bst@pengutronix.de>)
 id 1llSoa-0006rG-1x; Tue, 25 May 2021 10:53:28 +0200
To: barebox@lists.infradead.org
Cc: a.fatoum@pengutronix.de
References: <20210414130044.6910-1-bst@pengutronix.de>
From: Bastian Krause <bst@pengutronix.de>
Message-ID: <b66b5544-ae32-7711-4920-65e63927a876@pengutronix.de>
Date: Tue, 25 May 2021 10:53:27 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.9.0
MIME-Version: 1.0
In-Reply-To: <20210414130044.6910-1-bst@pengutronix.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210525_015331_601277_6C4E8125 
X-CRM114-Status: GOOD (  24.42  )
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
Subject: Re: [PATCH v2 1/2] of: fix up /chosen node even when there are no
 bootargs
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 4/14/21 3:00 PM, Bastian Krause wrote:
> From: Ahmad Fatoum <a.fatoum@pengutronix.de>
> 
> Currently the /chosen fixups of "reset-source",
> "reset-source-instance", "reset-source-device" and "bootsource" do not
> happen if no bootargs are available.
> 
> Fix that by moving the actual bootargs fixup to a dedicated function
> of_write_bootargs() and only return there early on empty bootargs, but
> still perform the /chosen fixups mentioned above.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> [bst: dropped new line deletions and modified string comparison, moved of_write_bootargs() call to original position, add commit message]
> Signed-off-by: Bastian Krause <bst@pengutronix.de>
> ---
> No changes since (implicit) v1.
> ---
>  common/oftree.c | 20 +++++++++++++-------
>  1 file changed, 13 insertions(+), 7 deletions(-)

Gentle ping.

> 
> diff --git a/common/oftree.c b/common/oftree.c
> index 075b9d6b8b..a8e6587a61 100644
> --- a/common/oftree.c
> +++ b/common/oftree.c
> @@ -161,16 +161,12 @@ static void watchdog_build_bootargs(struct watchdog *watchdog, struct device_nod
>  	free(buf);
>  }
>  
> -static int of_fixup_bootargs(struct device_node *root, void *unused)
> +static int of_write_bootargs(struct device_node *node)
>  {
> -	struct device_node *node;
>  	const char *str;
> -	int err;
> -	int instance = reset_source_get_instance();
> -	struct device_d *dev;
>  
>  	if (IS_ENABLED(CONFIG_SYSTEMD_OF_WATCHDOG))
> -		watchdog_build_bootargs(boot_get_enabled_watchdog(), root);
> +		watchdog_build_bootargs(boot_get_enabled_watchdog(), of_get_parent(node));
>  
>  	str = linux_bootargs_get();
>  	if (!str)
> @@ -180,13 +176,23 @@ static int of_fixup_bootargs(struct device_node *root, void *unused)
>  	if (strlen(str) == 0)
>  		return 0;
>  
> +	return of_property_write_string(node, "bootargs", str);
> +}
> +
> +static int of_fixup_bootargs(struct device_node *root, void *unused)
> +{
> +	struct device_node *node;
> +	int err;
> +	int instance = reset_source_get_instance();
> +	struct device_d *dev;
> +
>  	node = of_create_node(root, "/chosen");
>  	if (!node)
>  		return -ENOMEM;
>  
>  	of_property_write_string(node, "barebox-version", release_string);
>  
> -	err = of_property_write_string(node, "bootargs", str);
> +	err = of_write_bootargs(node);
>  	if (err)
>  		return err;
>  
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

