Delivery-date: Mon, 06 Jan 2025 15:49:29 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tUoQ4-00HWrL-1Q
	for lore@lore.pengutronix.de;
	Mon, 06 Jan 2025 15:49:28 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tUoQ4-0001oT-BX
	for lore@pengutronix.de; Mon, 06 Jan 2025 15:49:28 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=FGT45Hg9mONPz7FrH/1/9ImI40DlF4quTKq44hjlXf0=; b=pY80m+Dnbb4WCbIZEHI+UEBnsR
	U4eFzngipesfl7OpRpECKLzrpegb9qmGbWLrHp9QEHWjNepXKJ5/KsLKGj1Tw0u9ZFeGfOTGBntST
	8vNrXbtfcC2cFg94r8xOOJ66bji9VVBvfsEfAgOGji+D4p+TMFdqEQgL80QC69JsLuCrvh82ZL8xp
	9dXxA/N626htPpoKsPlrOJmgmduX9k3bH6g+aPl200ZR9dlHKIm+Cq1mEVajygihrnvgpC+Si545U
	zj1k3WwW+A70sHRXR8A/LJDnXjvaQvYNhwFiAARnO6l9B2A6hHajOs/AxQipiDm7AheoGubJ/ZZ0C
	Fwuxj4kQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tUoPY-00000001ds7-1vVX;
	Mon, 06 Jan 2025 14:48:56 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tUoAP-00000001aYY-2qnd
	for barebox@lists.infradead.org;
	Mon, 06 Jan 2025 14:33:18 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tUoAO-0006aN-Ds; Mon, 06 Jan 2025 15:33:16 +0100
Message-ID: <eb9a9d27-ca97-4bc5-b7c3-b6f4ea37b3b6@pengutronix.de>
Date: Mon, 6 Jan 2025 15:33:16 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>,
 "open list:BAREBOX" <barebox@lists.infradead.org>
References: <20250106-k3-r5-v2-0-9de6270089ef@pengutronix.de>
 <20250106-k3-r5-v2-18-9de6270089ef@pengutronix.de>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20250106-k3-r5-v2-18-9de6270089ef@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250106_063317_718855_8CD825B3 
X-CRM114-Status: GOOD (  17.40  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 18/22] ARM: beagleplay: add binary files
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Sascha,

On 06.01.25 14:47, Sascha Hauer wrote:
> These files are generated from yaml files in U-Boot. Ideally we would
> use these yaml files and convert them ourselves, but for now just use
> the binary files and leave the conversion for later patches.
> 

What do these blobs do?

> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  arch/arm/boards/beagleplay/combined-dm-cfg.bin    | Bin 0 -> 1346 bytes
>  arch/arm/boards/beagleplay/combined-sysfw-cfg.bin | Bin 0 -> 1740 bytes
>  2 files changed, 0 insertions(+), 0 deletions(-)
> 
> diff --git a/arch/arm/boards/beagleplay/combined-dm-cfg.bin b/arch/arm/boards/beagleplay/combined-dm-cfg.bin
> new file mode 100644
> index 0000000000..83fb5ee925
> Binary files /dev/null and b/arch/arm/boards/beagleplay/combined-dm-cfg.bin differ
> diff --git a/arch/arm/boards/beagleplay/combined-sysfw-cfg.bin b/arch/arm/boards/beagleplay/combined-sysfw-cfg.bin
> new file mode 100644
> index 0000000000..25f35d46ce
> Binary files /dev/null and b/arch/arm/boards/beagleplay/combined-sysfw-cfg.bin differ

We haven't had any binary files in barebox' git so far. Do we want to start now?

Can we make these firmware/ blobs, until the YAML tooling is imported?

Cheers,
Ahmad


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


