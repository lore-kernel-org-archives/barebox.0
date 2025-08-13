Delivery-date: Wed, 13 Aug 2025 07:43:59 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1um4HH-0004xV-2S
	for lore@lore.pengutronix.de;
	Wed, 13 Aug 2025 07:43:59 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1um4HG-00074I-HK
	for lore@pengutronix.de; Wed, 13 Aug 2025 07:43:59 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=MKpf3gtGE0aq12ArwkacpAyinaHR5wxRNR35vrRmqXo=; b=Ukvn+fogKJtDhPATRSZu98Q4wE
	09yD/N6TBarvk7TfbLF+F8CxVNpNT99MfIufIgW9bmp9ZBzngaikSTwMs8DU3s5ZX/D8ceHi9sPJf
	g96Cir0jWk/1VXqbK/ynPJOB77dC7WWronIA075cG3kFiwyCm2Ts0t6iRU45L/9R6CMlOCOZMHPte
	XMt36KnqjkODa45qdzvAkLEF1fiJ/XQKShcIcJWYoSBac7j282c358amPf7LFZkYmVAyIh/z6DDkY
	7puRT4v+V1S1u3DnEJWgJvMIA8Tku5wMH5zigSHDm9d7kwR3t7eTAlnUdBUe80/C/5bnWbaFWOtww
	MV+W2HOA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1um4Gl-0000000CgBe-1Di7;
	Wed, 13 Aug 2025 05:43:27 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1um4Bk-0000000CfV9-3R51
	for barebox@lists.infradead.org;
	Wed, 13 Aug 2025 05:38:18 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1um4Bi-0006GX-9c; Wed, 13 Aug 2025 07:38:14 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1um4Bi-0002ck-0M;
	Wed, 13 Aug 2025 07:38:14 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1um4Bi-008z5n-04;
	Wed, 13 Aug 2025 07:38:14 +0200
Date: Wed, 13 Aug 2025 07:38:14 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@barebox.org>
Cc: barebox@lists.infradead.org
Message-ID: <aJwkxpEQf0orTn1A@pengutronix.de>
References: <20250811122824.1667791-1-a.fatoum@barebox.org>
 <20250811122824.1667791-40-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250811122824.1667791-40-a.fatoum@barebox.org>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250812_223816_869831_F70B562F 
X-CRM114-Status: GOOD (  25.64  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 39/44] clk: implement clk_have_nonfixed_providers
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Mon, Aug 11, 2025 at 02:28:19PM +0200, Ahmad Fatoum wrote:
> This function will be called from the upcoming bfetch command to
> determine whether the running barebox has a CCF clock tree that goes
> beyond fixed regulators for board-level oscillators.

s/regulators/clocks/

Sascha

> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
> ---
>  drivers/clk/clk-fixed.c |  7 +++++++
>  drivers/clk/clk-fixed.h | 11 +++++++++++
>  drivers/clk/clk.c       | 14 ++++++++++++++
>  include/linux/clk.h     |  9 +++++++++
>  4 files changed, 41 insertions(+)
>  create mode 100644 drivers/clk/clk-fixed.h
> 
> diff --git a/drivers/clk/clk-fixed.c b/drivers/clk/clk-fixed.c
> index 6ec2feb84f9e..ea081d0f22de 100644
> --- a/drivers/clk/clk-fixed.c
> +++ b/drivers/clk/clk-fixed.c
> @@ -9,6 +9,8 @@
>  #include <linux/clk.h>
>  #include <linux/err.h>
>  
> +#include "clk-fixed.h"
> +
>  struct clk_fixed {
>  	struct clk_hw hw;
>  	unsigned long rate;
> @@ -27,6 +29,11 @@ static struct clk_ops clk_fixed_ops = {
>  	.is_enabled = clk_is_enabled_always,
>  };
>  
> +bool clk_is_fixed(struct clk *clk)
> +{
> +	return clk->ops == &clk_fixed_ops;
> +}
> +
>  struct clk *clk_register_fixed_rate(const char *name,
>  				    const char *parent_name, unsigned long flags,
>  				    unsigned long rate)
> diff --git a/drivers/clk/clk-fixed.h b/drivers/clk/clk-fixed.h
> new file mode 100644
> index 000000000000..d7f7a12cb60d
> --- /dev/null
> +++ b/drivers/clk/clk-fixed.h
> @@ -0,0 +1,11 @@
> +/* SPDX-License-Identifier: GPL-2.0 */
> +#ifndef _CLK_FIXED_H
> +#define _CLK_FIXED_H
> +
> +#include <linux/types.h>
> +
> +struct clk;
> +
> +bool clk_is_fixed(struct clk *clk);
> +
> +#endif
> diff --git a/drivers/clk/clk.c b/drivers/clk/clk.c
> index 1fa9027bc6cd..89a007a12c5b 100644
> --- a/drivers/clk/clk.c
> +++ b/drivers/clk/clk.c
> @@ -14,8 +14,22 @@
>  #include <linux/clk/clk-conf.h>
>  #include <pinctrl.h>
>  
> +#include "clk-fixed.h"
> +
>  static LIST_HEAD(clks);
>  
> +bool clk_have_nonfixed_providers(void)
> +{
> +	struct clk *c;
> +
> +	list_for_each_entry(c, &clks, list) {
> +		if (!clk_is_fixed(c))
> +			return true;
> +	}
> +
> +	return false;
> +}
> +
>  static int clk_parent_enable(struct clk *clk)
>  {
>  	struct clk *parent = clk_get_parent(clk);
> diff --git a/include/linux/clk.h b/include/linux/clk.h
> index f893d9071371..526641927754 100644
> --- a/include/linux/clk.h
> +++ b/include/linux/clk.h
> @@ -11,6 +11,7 @@
>  #define __LINUX_CLK_H
>  
>  #include <linux/err.h>
> +#include <linux/types.h>
>  #include <linux/spinlock.h>
>  #include <linux/stringify.h>
>  #include <linux/string.h>
> @@ -971,6 +972,9 @@ static inline void clk_hw_unregister(struct clk_hw *hw)
>  
>  #ifdef CONFIG_COMMON_CLK
>  
> +bool clk_have_nonfixed_providers(void);
> +
> +
>  /**
>   * clk_bulk_get - lookup and obtain a number of references to clock producer.
>   * @dev: device for clock "consumer"
> @@ -1085,6 +1089,11 @@ int __must_check clk_bulk_enable(int num_clks,
>  void clk_bulk_disable(int num_clks, const struct clk_bulk_data *clks);
>  
>  #else
> +static inline bool clk_have_nonfixed_providers(void)
> +{
> +	return false;
> +}
> +
>  static inline int __must_check clk_bulk_get(struct device *dev, int num_clks,
>  					    struct clk_bulk_data *clks)
>  {
> -- 
> 2.39.5
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


