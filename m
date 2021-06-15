Delivery-date: Tue, 15 Jun 2021 20:07:08 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ltDSu-0003cW-Ag
	for lore@lore.pengutronix.de; Tue, 15 Jun 2021 20:07:08 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ltDSs-00063A-Qi
	for lore@pengutronix.de; Tue, 15 Jun 2021 20:07:08 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=FxEw3r9aUtnXDC8AxzTELg1UStakuavLvO8dIc7bqhM=; b=HXpAtGZYfdfDzgGqHU0assWVTZ
	yjXWO2R00wy11Cp5Pe8s7WKfAoX9lAjCxNrt9iEaarkBOi0YpbwR3r4SfUSbkCmp8CLV9yzP+8DNY
	oQepZWwtFsgzO578OiM2hieYSNUoSSybxtrNreYay7usreHBslNubsbiwcsU9JqRY8B1kAH2MTBrn
	zSYxMn3dHZxf925q6feTiQrUyTPYg3hFsuWuJwHLOv+O3gxTmiSZKLVDztdxgV8RUZbuFRW7BFPpb
	fH3JIt6LYQR4EBtff3SDW2N86y+nnHXn7oSua0q28GEU6msAlfwCp0s09zi17NVPlLJPYmSDgN5XL
	wAzznqSA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ltDRh-001yaW-D9; Tue, 15 Jun 2021 18:05:54 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lt9IO-000DwX-2i
 for barebox@bombadil.infradead.org; Tue, 15 Jun 2021 13:40:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=desiato.20200630; h=From:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=1nz/frLcj+UqZkxSe908EDl6RxiAA8IMmMy5WXda+8A=; b=c5JX0eQMF9z0j52qOF9vnEGT/X
 XLkI4pfO9xf6gsD1HpIWXMYvuIzdDr/d2WIH3IEdK9VkApbE+DUN1tzHkIUx8tjduCNB8KgkyzREi
 NA1NG/RCjQ2rnqNupL2LHYaCud8Qf3jE0fYeInduHlYVOTFP4A3fiVy+UwFHe0lyNkE6fxRSMCzq0
 HwFS2UAbV/YZqRUkAcH2QrkAraEWbbcCwRMYvjW1iAQ1Zrgk/bwMITs+CQ+RDhNN7CTbOu6w+1DOy
 ac8VrGmZTpwjVnc6Zhdt6nDXGPjSeOm/aYA1NEpeRH/c+Dym2nraclJ2tCSjJcoP3wIlL0cGw+0pk
 wDISnlwg==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lt56x-007Xz7-HE
 for barebox@lists.infradead.org; Tue, 15 Jun 2021 09:12:04 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lt573-00054H-Ab; Tue, 15 Jun 2021 11:12:01 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lt571-00075o-4O; Tue, 15 Jun 2021 11:11:59 +0200
Date: Tue, 15 Jun 2021 11:11:59 +0200
To: Marc Reilly <marc@cpdesign.com.au>
Cc: barebox@lists.infradead.org
Message-ID: <20210615091159.GE9782@pengutronix.de>
References: <20210613222639.13190-1-marc@cpdesign.com.au>
 <20210613222639.13190-2-marc@cpdesign.com.au>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210613222639.13190-2-marc@cpdesign.com.au>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 11:02:32 up 117 days, 12:26, 119 users,  load average: 0.79, 0.42,
 0.23
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210615_101202_424423_84846F88 
X-CRM114-Status: GOOD (  26.52  )
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
X-Spam-Status: No, score=-4.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 2/4] ARM: beaglebone: add helper init script for checking
 if BBBW
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, Jun 14, 2021 at 08:26:37AM +1000, Marc Reilly wrote:
> This adds a check against the eeprom contents to see if the board is a
> Beaglebone black wireless. (two bytes at offset 0x12 of eeprom will be
> "BW").
> If it is, the global board.variant is updated to "boneblackwireless"
> 
> Signed-off-by: Marc Reilly <marc@cpdesign.com.au>
> ---
>  .../defaultenv-beaglebone/data/bbb-eeprom-0x0C      |  1 +
>  .../defaultenv-beaglebone/init/check-bbb-type       | 13 +++++++++++++
>  2 files changed, 14 insertions(+)
>  create mode 100644 arch/arm/boards/beaglebone/defaultenv-beaglebone/data/bbb-eeprom-0x0C
>  create mode 100644 arch/arm/boards/beaglebone/defaultenv-beaglebone/init/check-bbb-type
> 
> diff --git a/arch/arm/boards/beaglebone/defaultenv-beaglebone/data/bbb-eeprom-0x0C b/arch/arm/boards/beaglebone/defaultenv-beaglebone/data/bbb-eeprom-0x0C
> new file mode 100644
> index 000000000..258b93951
> --- /dev/null
> +++ b/arch/arm/boards/beaglebone/defaultenv-beaglebone/data/bbb-eeprom-0x0C
> @@ -0,0 +1 @@
> +BW
> diff --git a/arch/arm/boards/beaglebone/defaultenv-beaglebone/init/check-bbb-type b/arch/arm/boards/beaglebone/defaultenv-beaglebone/init/check-bbb-type
> new file mode 100644
> index 000000000..b7c8b3683
> --- /dev/null
> +++ b/arch/arm/boards/beaglebone/defaultenv-beaglebone/init/check-bbb-type
> @@ -0,0 +1,13 @@
> +#!/bin/sh
> +
> +memcmp -b -s /dev/eeprom0 -d /env/data/bbb-eeprom-0x0C 0x0c 0x00 2
> +result=$?
> +echo $result
> +
> +if [ $result = 0 ]
> +then
> +        echo "Beaglebone Wireless detected"
> +        global.board.variant=boneblackwireless
> +else
> +        echo "Beaglebone Black (non-wireless) detected"
> +fi

I think it's worth doing this in C code. A good template for this is in
https://git.pengutronix.de/cgit/barebox/tree/arch/arm/boards/skov-imx6/board.c#n435
Here the board compatible is prepended with a more specific variant, for
the BBB this would be "ti,am335x-bone-black-wireless". With this
bootspec could pick the entry with the right devicetree without further
interventions.

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

