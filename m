Delivery-date: Fri, 01 Oct 2021 16:30:56 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mWJYu-0003rO-Gs
	for lore@lore.pengutronix.de; Fri, 01 Oct 2021 16:30:56 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mWJYt-0003Iq-8k
	for lore@pengutronix.de; Fri, 01 Oct 2021 16:30:56 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=vH9TneISRu32E3m55OxQxxnyi/ztIL5kQioY0QH3NU8=; b=PHXcujgzkYCP5RNEAuCkQ9LQwh
	TA5lh2PRUIvUPnrVed8vgvZGJ9mmrHwQ1RZFeULXAQ1J7XojQvxBCkH4SpvfM/2LI4D9VpHzcmCvQ
	9S2XJbCQn7aOQpyDk4OdtdlxHlVYH6qZeRgbpD/l59w75RF9yo4pBiNr74SKSzZUCfTgFh+BbT17h
	A86gayOZQWLWDTelweisbcN9AA9EHF4VdIKeHrdf5hchzsdLRNxgeO/L5o/D+nYJxWhoicyYA9rnt
	HdKwDOy/u30ItwztszvCCOWguUWaoF37mneDroqy7XxqTJUNx/TOt5vYgERbkLf5agDiaegs6TYgE
	BJ6nLxDQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mWJXK-000XRa-QW; Fri, 01 Oct 2021 14:29:18 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mWJXG-000XQf-4m
 for barebox@lists.infradead.org; Fri, 01 Oct 2021 14:29:15 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1mWJXE-00035x-23; Fri, 01 Oct 2021 16:29:12 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1mWJXD-00039s-Oi; Fri, 01 Oct 2021 16:29:11 +0200
Date: Fri, 1 Oct 2021 16:29:11 +0200
To: Oleksij Rempel <o.rempel@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20211001142911.GY24834@pengutronix.de>
References: <20210920111528.14575-1-o.rempel@pengutronix.de>
 <20210920111528.14575-4-o.rempel@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210920111528.14575-4-o.rempel@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 16:00:12 up 225 days, 17:24, 134 users,  load average: 1.07, 0.59,
 0.34
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211001_072914_216782_BDC3EB9B 
X-CRM114-Status: GOOD (  33.10  )
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
X-Spam-Status: No, score=-4.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v3 3/7] ARM: boards: skov-imx6: add switch detection
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, Sep 20, 2021 at 01:15:24PM +0200, Oleksij Rempel wrote:
> There are board variants with same board ID but not switch. Detect this
> variants.
> 
> Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
> ---
>  arch/arm/boards/skov-imx6/board.c | 158 +++++++++++++++++++++++++-----
>  1 file changed, 134 insertions(+), 24 deletions(-)
> 
> diff --git a/arch/arm/boards/skov-imx6/board.c b/arch/arm/boards/skov-imx6/board.c
> index 030ac62c52..a94c2cd25c 100644
> --- a/arch/arm/boards/skov-imx6/board.c
> +++ b/arch/arm/boards/skov-imx6/board.c
> @@ -11,6 +11,7 @@
>  #include <net.h>
>  #include <of_gpio.h>
>  #include <gpio.h>
> +#include <linux/micrel_phy.h>
>  
>  #include "version.h"
>  
> @@ -130,6 +131,9 @@ copy_mac_from_eth0:
>  	return eth_of_fixup_node_from_eth_device(root, node_path, ethname);
>  }
>  
> +#define SKOV_GPIO_MDIO_BUS	0
> +#define SKOV_LAN1_PHY_ADDR	1
> +
>  #define MAX_V_GPIO 8
>  
>  struct board_description {
> @@ -303,20 +307,121 @@ static const struct board_description imx6_variants[] = {
>  };
>  
>  static int skov_board_no = -1;
> +static bool skov_no_switch = false;

I think a skov_have_switch variable would be more intuitive.

> +static const char *no_switch_suffix = "-noswitch";
>  
> -static int skov_imx6_fixup(struct device_node *root, void *unused)
> +static void fixup_machine_compatible(const char *compat,
> +				     struct device_node *root)
>  {
> +	int cclen = 0, clen = strlen(compat) + 1;
> +	const char *curcompat;
> +	void *buf;
> +
> +	if (!root) {
> +		root = of_get_root_node();
> +		if (!root)
> +			return;
> +	}
> +
> +	curcompat = of_get_property(root, "compatible", &cclen);
> +
> +	buf = xzalloc(cclen + clen);
> +
> +	memcpy(buf, compat, clen);
> +	memcpy(buf + clen, curcompat, cclen);
> +
> +	/*
> +	 * Prepend the compatible from board entry to the machine compatible.
> +	 * Used to match bootspec entries against it.
> +	 */
> +	of_set_property(root, "compatible", buf, cclen + clen, true);
> +
> +	free(buf);
> +}
> +
> +static void fixup_noswitch_machine_compatible(struct device_node *root)
> +{
> +	const char *compat = imx6_variants[skov_board_no].dts_compatible;
> +	const char *generic = "skov,imx6";
> +	size_t size, size_generic;
> +	char *buf;
>  	int ret;
> -	const char *val;
> -	uint32_t brightness;
> +
> +	size = strlen(compat) + strlen(no_switch_suffix) + 1;
> +	size_generic = strlen(generic) + strlen(no_switch_suffix) + 1;
> +	size = max(size, size_generic);
> +	buf = xzalloc(size);
> +	if (!buf) {
> +		pr_warn("Can't allocate buffer\n");
> +		return;
> +	}

No need to check xzallox return value.

> +
> +	/* add generic compatible, so systemd&co can make right decisions */
> +	ret = snprintf(buf, size, "%s%s", generic, no_switch_suffix);
> +	if (ret >= 0)
> +		fixup_machine_compatible(buf, root);
> +	else
> +		pr_warn("Can't prepare generic compatible string\n");
> +
> +	/* add specific compatible as fallback, in case this board has new
> +	 * challenges.
> +	 */
> +	ret = snprintf(buf, size, "%s%s", compat, no_switch_suffix);
> +	if (ret >= 0)
> +		fixup_machine_compatible(buf, root);
> +	else
> +		pr_warn("Can't prepare specific compatible string\n");
> +
> +	free(buf);

Looks like this code could be more straight forward using two xasprintf
calls.

> +}
> +
> +static void skov_imx6_no_switch(struct device_node *root)
> +{
>  	struct device_node *node;
> -	struct device_node *chosen = of_create_node(root, "/chosen");
> +	int ret;
> +
> +	fixup_noswitch_machine_compatible(root);
>  
> +	node = of_find_node_by_path_from(root, "/soc/bus@2100000/ethernet@2188000");
> +	if (!node) {
> +		pr_warn("Did not find node to disable it\n");
> +	} else {

Please use positive logic like you did below.

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

