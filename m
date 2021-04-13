Delivery-date: Tue, 13 Apr 2021 15:42:35 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lWJJL-0007up-Da
	for lore@lore.pengutronix.de; Tue, 13 Apr 2021 15:42:35 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lWJJK-0006SX-GC
	for lore@pengutronix.de; Tue, 13 Apr 2021 15:42:35 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=lkvs1Ofaygv0eZc1OFrkOajMiuTHI6WY9YLuoe43+l8=; b=pSOBncv7Itg/z0+EcFFdJZS90
	IKHxP9cYQBuGr50Bmk7tH44KV1wsA8zp5UVBqZWtLmzqEVPR+0TR7QzJ0onJE9O3ItNwexaAMxxH4
	0zqcnKpqUm9acmW9lIxH3v0+1OQNXNWpFTwespjBmnGTYe2IH4w/HulPrEfwkmrvAsQNA2rJZ5JSH
	1mbYfksy99reeC68FyVGNBxwkc20vToJmDt126JvRKauGE3OL0xChXqQWSCfSxPB9gTY5eSKI2qX9
	3aBd20KUeeyhP9JZbEx+fpLBfE71a44n/8SjTQ/Lw1ugIJGrppUtEBOM+njn2mYuHh6H6CzGvR8q0
	W32JGe4EA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lWJHz-009PlN-Pk; Tue, 13 Apr 2021 13:41:11 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lWJHh-009Pjm-OS
 for barebox@desiato.infradead.org; Tue, 13 Apr 2021 13:41:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=From:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=eNWaUukCqk0+5dLW8oiOQ8gUojgv7bH4PPV73YOzBH0=; b=cT1Q5KkwkWOMwrjgjy+tGSZUOu
 3qMVZ4owtmYakkgdqpRVeUPdnwdS7xo1yjTo/ZrgpMre2CXtFZDRIophJ6IudI/dXtHsLjsf4PJyC
 AoXfOyXnne5EDsl3ymApQZpqbrlDt7aCrFuTuWoavAQ/9+SkCzuNeiHhyMCFVHKsfRyc9tNCAl4z4
 5ue05WncAHAO3h3uAP3LIzxGcD0moJ8fbx10zQ/93bQbaPRgGCKhDJrwp2PDX5SvyosZ3WJdKcZqa
 Ox7citwkuNfJOkco8nA556MRhRrYCzmE5fPLk7xn3UwEFLgZCo/PxGINVaqYKgIVzH4CpqH9WZ5LC
 Ur/FxEdQ==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lWJHf-0074Ab-7y
 for barebox@lists.infradead.org; Tue, 13 Apr 2021 13:40:52 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lWJHd-00065S-3k; Tue, 13 Apr 2021 15:40:49 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lWJHc-0006n1-Pu; Tue, 13 Apr 2021 15:40:48 +0200
Date: Tue, 13 Apr 2021 15:40:48 +0200
To: Lars Pedersen <lapeddk@gmail.com>
Cc: barebox@lists.infradead.org, Bruno Thomsen <bruno.thomsen@gmail.com>
Message-ID: <20210413134048.GO19819@pengutronix.de>
References: <20210413061727.186938-1-lapeddk@gmail.com>
 <20210413092340.241337-1-lapeddk@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210413092340.241337-1-lapeddk@gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 15:34:57 up 54 days, 16:58, 104 users,  load average: 0.33, 0.19,
 0.12
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210413_064051_301929_5734F401 
X-CRM114-Status: GOOD (  20.86  )
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
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-2.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE,URIBL_BLOCKED
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] ARM: i.MX: Fix Kamstrup mx7 concentrator default cfg
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi Lars,

On Tue, Apr 13, 2021 at 11:23:40AM +0200, Lars Pedersen wrote:
> Select CONFIG_POWER_RESET_GPIO_RESTART for Kamstrup mx7 concentrator
> board.
> 
> Signed-off-by: Lars Pedersen <lapeddk@gmail.com>
> Reviewed-by: Bruno Thomsen <bruno.thomsen@gmail.com>
> ---
> Requires patch ARM: i.MX: Kamstrup mx7 concentrator board support
> 
>  arch/arm/mach-imx/Kconfig | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
> index cc73d0a0d..4ee8ffe4b 100644
> --- a/arch/arm/mach-imx/Kconfig
> +++ b/arch/arm/mach-imx/Kconfig
> @@ -530,6 +530,7 @@ config MACH_KAMSTRUP_MX7_CONCENTRATOR
>  	bool "Kamstrup i.MX7 Concentrator"
>  	select ARCH_IMX7
>  	select ARM_USE_COMPRESSED_DTB
> +	select CONFIG_POWER_RESET_GPIO_RESTART

I wouldn't select it. CONFIG_POWER_RESET_GPIO_RESTART depends on other
options and Kconfig can't automatically select the dependencies.

Also if you don't want to make use of the gpio restart driver then you
don't want to be forced to compile it in.

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

