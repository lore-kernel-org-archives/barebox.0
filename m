Delivery-date: Wed, 07 Dec 2022 08:00:19 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1p2oPj-00DLOi-2n
	for lore@lore.pengutronix.de; Wed, 07 Dec 2022 08:00:19 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1p2oPi-0008FG-Oy
	for lore@pengutronix.de; Wed, 07 Dec 2022 08:00:19 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=rg+BduleSVs5joWdcW+B38DTYxJIrHIYfAAtPDeHu1E=; b=iE9LRvyT2S/mXXWCeAT7lEIbGJ
	mYX9kkOM1/d1Fi76DkWwDdhq2TG+CBLti3pDWKwbu1m9xjONOah0g5xokWJ6K9dT8ZiPdhdGsgboO
	rufghM/ZFoOu/pWrUUELCGkgE2FjXp287JTguBkiyYMqPbfCwKQm/EmDSi5IOXA++8rZvp8WizvHM
	rPda5ywWpstLiDPa/P52fXzZSjo1xvpogF6gFBlT6CIwmYxOJ0dMOniqAZ7vWJJEresDEGZI/Vag2
	PKjfrAFVe8oM1k4Dqr6/wGhDZdgrMOBW0RwUxDWV8wKLCOMPsVoHsCIqa5wQW89tllZm2F+xfWPk2
	9NPsOjAA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p2oOa-00DblT-3G; Wed, 07 Dec 2022 06:59:08 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p2oOV-00Dbkl-KV
	for barebox@lists.infradead.org; Wed, 07 Dec 2022 06:59:04 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1p2oOU-0007pi-B5; Wed, 07 Dec 2022 07:59:02 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1p2oOU-0000Ra-49; Wed, 07 Dec 2022 07:59:02 +0100
Date: Wed, 7 Dec 2022 07:59:02 +0100
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20221207065902.GA29728@pengutronix.de>
References: <20221205133602.3016471-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20221205133602.3016471-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221206_225903_687554_DD5EAA3E 
X-CRM114-Status: GOOD (  18.83  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] common: boards: qemu-virt: fix env path for QEMU RISC-V
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, Dec 05, 2022 at 02:36:02PM +0100, Ahmad Fatoum wrote:
> At least with QEMU emulator version 7.1.0 (Debian 1:7.1+dfsg-2+b2),
> the flash node is no longer in /soc and is instead top-level like
> ARM Virt. Fix the path in the overlay accordingly.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  common/boards/qemu-virt/overlay-of-flash.dts | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/common/boards/qemu-virt/overlay-of-flash.dts b/common/boards/qemu-virt/overlay-of-flash.dts
> index ace2c7026b7a..3f2beaac3798 100644
> --- a/common/boards/qemu-virt/overlay-of-flash.dts
> +++ b/common/boards/qemu-virt/overlay-of-flash.dts
> @@ -4,8 +4,8 @@
>  /plugin/;
>  
>  #ifdef RISCV_VIRT
> -#define PARTS_TARGET_PATH	"/soc/flash@20000000"
> -#define ENV_DEVICE_PATH		"/soc/flash@20000000/partitions/partition@3c00000"
> +#define PARTS_TARGET_PATH	"/flash@20000000"
> +#define ENV_DEVICE_PATH		"/flash@20000000/partitions/partition@3c00000"
>  #else
>  #define PARTS_TARGET_PATH	"/flash@0"
>  #define ENV_DEVICE_PATH		"/flash@0/partitions/partition@3c00000"
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


