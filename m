Delivery-date: Wed, 22 Mar 2023 08:42:22 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pet6z-00ABZJ-8s
	for lore@lore.pengutronix.de; Wed, 22 Mar 2023 08:42:22 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pet6z-0003j0-4x
	for lore@pengutronix.de; Wed, 22 Mar 2023 08:42:21 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=xZSeBjU9hFR67a7lnxkcElHPLhOGTuN6kZnkLH23kLY=; b=rS9DV9rvSDKzMgdqKg5/SJWzjY
	zDGtAJiYrLEgB11hhnlClOKmntp2W/GRmJ6yhc1et6ugqYuVxT6Wg67ra9J33UNOSpbnXYjCo2ZGD
	v/WfyCIv2PAwbYF0UVOZKRoJapfrI4PnfGUbpdayyzuK8Fco5Gyyf8Qkgg8isXjEk4dR0Oixgq3Kf
	tDGVlqqiMDCrnnt+Mrn9EAw0ksshwX7OhtRji+WJaFypb4u3rUeLu9T2W7q6ERHueZO/1pUuovYPL
	jzqSW12WyRTA75PZN9YP5GQamdW1GlCAxgyF2wTTJOVKRz2w7wIg6I+zTpTXuu1LFbYTUUX2OXN0x
	QUUGLO1A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pet5u-00F2Do-22;
	Wed, 22 Mar 2023 07:41:14 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pet5r-00F2DB-0c
	for barebox@lists.infradead.org;
	Wed, 22 Mar 2023 07:41:12 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pet5p-0003eb-TT; Wed, 22 Mar 2023 08:41:09 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pet5p-00044E-J2; Wed, 22 Mar 2023 08:41:09 +0100
Date: Wed, 22 Mar 2023 08:41:09 +0100
To: Wolfram Sang <wsa@kernel.org>
Cc: barebox@lists.infradead.org
Message-ID: <20230322074109.GN7446@pengutronix.de>
References: <20230319154909.24047-1-wsa@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230319154909.24047-1-wsa@kernel.org>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230322_004111_250034_5200CECE 
X-CRM114-Status: GOOD (  17.13  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 0/3] mtd: nand: atmel: legacy: fix boot on USB-A9G20
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Sun, Mar 19, 2023 at 04:49:06PM +0100, Wolfram Sang wrote:
> While trying to unbrick my Calao USB-A9G20, barebox couldn't read the
> NAND BB tables unlike the binary-only barebox from 2013. The first two
> patches fix that. The third one is a cleanup.
> 
> Happy hacking!
> 
> 
> Wolfram Sang (3):
>   mtd: nand: atmel: legacy: add 'algo' to use
>   mtd: nand: atmel: legacy: use proper ecc_shift
>   mtd: nand: atmel: legacy: remove superfluous code
> 
>  drivers/mtd/nand/atmel/legacy.c | 11 +++--------
>  1 file changed, 3 insertions(+), 8 deletions(-)

Applied, thanks

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


