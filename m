Delivery-date: Thu, 14 Sep 2023 10:03:02 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qghJX-00EmUt-2r
	for lore@lore.pengutronix.de; Thu, 14 Sep 2023 10:03:02 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qghJV-0000Os-Cp
	for lore@pengutronix.de; Thu, 14 Sep 2023 10:03:01 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=7CbFq0QLApbIOd3Jvzan4lDMVIvLfDw+ZfEEDleQsXA=; b=v9npRZfjId4ftnHs/g2WgBkZn6
	ls/SinpS3u6gseXOZTSiUGaFBrSnTooksLnm35RaAJ6Cfk/yzw2C63rlVBsvcXcWXou3Bt3Vzujfk
	bYO30EuFJOG3KkkLO0mmEgzI/3HHvWu0WSuH1VD+aTXgGKsR27GWf7SGCPdCK/B8j16Cli1uMXw3I
	1Gobc6GBzy8vh+L2aP3AW87y8+8pqAARp5DgQ9ALAfkH+Un3xPj1Sh1Nlp9kkkqykPCW+7KArkjxh
	Axf0zA+tzWZpi/rDpdfFSgCTCi2POsLTy9vom5zWTQ7PGv1JUEpFhC9whAE3WwMYExTgXNNVO0vmA
	EcPp5KrQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qghIO-007dsU-0j;
	Thu, 14 Sep 2023 08:01:52 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qghIL-007drC-2O
	for barebox@lists.infradead.org;
	Thu, 14 Sep 2023 08:01:51 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qghIK-0007se-Fl; Thu, 14 Sep 2023 10:01:48 +0200
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1qghIK-006Feo-37; Thu, 14 Sep 2023 10:01:48 +0200
Received: from sha by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qghIK-006g5s-0k; Thu, 14 Sep 2023 10:01:48 +0200
Date: Thu, 14 Sep 2023 10:01:48 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20230914080148.GL637806@pengutronix.de>
References: <20230913122614.1898504-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230913122614.1898504-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230914_010149_779598_DA93BA49 
X-CRM114-Status: GOOD (  20.66  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] ARM: drop unreferenced left-over lib/Makefile
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Wed, Sep 13, 2023 at 02:26:14PM +0200, Ahmad Fatoum wrote:
> There used to be implementations of boot commands in arch/arm/lib, but
> this has been moved to either arch/arm/lib32 or lib64 for since.
> 
> The Makefile still bears witness to that past, but it's unreferenced, so
> have it it too retire to git history.
> 
> Fixes: 79e3038089f5 ("ARM: aarch64: disable 32bit boot commands")
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  arch/arm/lib/Makefile | 4 ----
>  1 file changed, 4 deletions(-)
>  delete mode 100644 arch/arm/lib/Makefile

Applied, thanks

Sascha

> 
> diff --git a/arch/arm/lib/Makefile b/arch/arm/lib/Makefile
> deleted file mode 100644
> index 1a8144f6c64a..000000000000
> --- a/arch/arm/lib/Makefile
> +++ /dev/null
> @@ -1,4 +0,0 @@
> -# SPDX-License-Identifier: GPL-2.0-only
> -
> -obj-$(CONFIG_BOOTM)	+= bootm.o
> -obj-$(CONFIG_CMD_BOOTU)	+= bootu.o
> -- 
> 2.39.2
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


