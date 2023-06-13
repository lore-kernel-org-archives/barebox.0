Delivery-date: Tue, 13 Jun 2023 10:05:33 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q8z1y-004uEw-JJ
	for lore@lore.pengutronix.de; Tue, 13 Jun 2023 10:05:33 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q8z1v-0007j9-TT
	for lore@pengutronix.de; Tue, 13 Jun 2023 10:05:32 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=zBU6SKAL9FaLxFxQSU+lsWSC+gYgwN1vUvPcRQMoQ7k=; b=dQkVKvBqJtrbQNbBja1d5SonJn
	aX+dQJ9g7jWqnUEyPVZ9sAQaLs+BNT0WSwQTSigksm8gpgSurfHC01R6Ht5qYn3hw+Ud554jjkXE7
	MaRKRyGdp8N0M8Bdd4xZf1FNPf/2JN4A0quPJtqyUh9U1R1L/ovVTY5HiEAEbV7cp5fnpVqvA6E6J
	TYlZRw1x1xiPQrLFGMc67s5PkQYDVMc6l2eUnlO2wsYnnfOK9wmKBX8bWiOT/pD7a0iAdwoETaIgY
	idKpeD560PZKJI1D/zyFJzjbP8NpWNB3VIIQBP8KU57lNxzyjot4EBnasVBZM1zY0pnFnJzFFIQRe
	6XrTODoQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q8z1H-007Jtp-2A;
	Tue, 13 Jun 2023 08:04:51 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q8z1E-007JtB-1b
	for barebox@lists.infradead.org;
	Tue, 13 Jun 2023 08:04:49 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1q8z1D-0007ND-8D
	for barebox@lists.infradead.org; Tue, 13 Jun 2023 10:04:47 +0200
Message-ID: <11d89cd2-8d88-60df-2282-23db6903b23f@pengutronix.de>
Date: Tue, 13 Jun 2023 10:04:46 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.2
Content-Language: en-US
To: "barebox@lists.infradead.org" <barebox@lists.infradead.org>
References: <20230605063719.1431079-1-a.fatoum@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20230605063719.1431079-1-a.fatoum@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230613_010448_539379_3147A962 
X-CRM114-Status: GOOD (  27.71  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] Kbuild: include arch/ Makefile before other directories
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi,

On 05.06.23 08:37, Ahmad Fatoum wrote:
> Unless overridden by SORT*, LD will place sections matched by wildcards
> in the order they were seen in the link. So far, this meant that
> arch/ initcalls and device trees compiled into barebox proper, were
> always last.
> 
> For platforms with PBL or with only one device tree in barebox proper,
> this didn't matter much, but when enabling the of_manipulation selftest,
> a second device tree would be built into barebox on kvx, openrisc and
> some MIPS.
> 
> Because all directories appear before arch/, this had the effect that
> on kvx, openrisc and some MIPS, __dtb_start would end up pointing at the
> test's device tree instead of the board device tree breaking the build.
> 
> Switching the affected platforms to use PBL would be one fix for the
> issue, but there's a simple one: let's do what Linux does in its
> top-level Kbuild file and have arch/ not be the last in sequence.
> 
> This may fause fallout for code that depended on specific ordering of
> initcalls or other linker-defined lists, which would need to be fixed.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
> While a fix, I think this needs to sit a while in next first.

Any feedback?

> ---
>  Makefile | 5 +++--
>  1 file changed, 3 insertions(+), 2 deletions(-)
> 
> diff --git a/Makefile b/Makefile
> index 711cba7bed29..4fdb8f1b41af 100644
> --- a/Makefile
> +++ b/Makefile
> @@ -586,11 +586,12 @@ endif
>  # We need some generic definitions.
>  include $(srctree)/scripts/Makefile.lib
>  
> -# Objects we will link into barebox / subdirs we need to visit
> -common-y		:= common/ drivers/ commands/ lib/ crypto/ net/ fs/ firmware/ test/
>  
> +# Objects we will link into barebox / subdirs we need to visit
>  include $(srctree)/arch/$(SRCARCH)/Makefile
>  
> +common-y		+= common/ drivers/ commands/ lib/ crypto/ net/ fs/ firmware/ test/
> +
>  ifdef need-config
>  ifdef may-sync-config
>  # Read in dependencies to all Kconfig* files, make sure to run syncconfig if

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



