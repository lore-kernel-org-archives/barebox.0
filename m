Delivery-date: Fri, 15 Jul 2022 12:55:11 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oCIyW-008uS9-5a
	for lore@lore.pengutronix.de; Fri, 15 Jul 2022 12:55:11 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oCIyU-0006ia-6t
	for lore@pengutronix.de; Fri, 15 Jul 2022 12:55:11 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=jHHK+w3Cxbwu9IWbzLMXJM0IcwumgDGrhcQctnFUvz4=; b=aTYILMO50cIA9/iasIjqqTf399
	6JwvyY1QJuEEXmoh518YQCUIQmTdjMQAwl64WuSBMTk7fwOyrOTi/Ehiy7wGHx+khcNIJZwlWGVU8
	MtkuTc8pgFVo4zJdUOkDVqjRbSXnVTf67cOZhjPatRj6LgXU9cs/qv1ICoJGQvYDcViV0KCyTbrVQ
	NpPBiZ0lVT9XFdZ5MAbxSIpraERk9rcKJ+OBd64WlZmMmqYZKAb3Y7t0tUi1HiV2J4DJC3jfhWTE6
	ptruM11H8sMY90HDO6XQi/EoqxLMQxxuIrGs2Qmn8K7iHmVTYcRbElC6WS0brMsYf8U8C1amjBD+/
	5NMNQR4g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oCIwq-006R9G-Fh; Fri, 15 Jul 2022 10:53:28 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oCIwl-006R7R-DB
	for barebox@lists.infradead.org; Fri, 15 Jul 2022 10:53:25 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oCIwh-0006d6-7b; Fri, 15 Jul 2022 12:53:19 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oCIwg-0007Vf-Uo; Fri, 15 Jul 2022 12:53:18 +0200
Date: Fri, 15 Jul 2022 12:53:18 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20220715105318.GO2387@pengutronix.de>
References: <20220713095730.1878941-1-a.fatoum@pengutronix.de>
 <20220713095730.1878941-6-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220713095730.1878941-6-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 12:52:00 up 106 days, 23:21, 87 users,  load average: 0.12, 0.19,
 0.17
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220715_035323_470618_BB8934FA 
X-CRM114-Status: GOOD (  21.24  )
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
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 6/6] kbuild: pbl: use same compression algo for both
 barebox and DTB
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi Ahmad,

On Wed, Jul 13, 2022 at 11:57:30AM +0200, Ahmad Fatoum wrote:
> From: Ahmad Fatoum <ahmad@a3f.at>
> 
> lzop hasn't seen any activity since 2017 and has been recently removed
> from OpenEmbedded, which is unfortunate as we unconditionally use LZO
> for compressing device trees that are referenced via __dtb_z_.
> 
> To make barebox easier to integrate, use the same compression algorithm
> for both barebox and compressed DTB.
> 
> Note that the decompressor code will be in the image twice: Once in PBL
> in uncompressed form to decompress barebox proper and once in compressed
> form to decompress the DTB.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
> v1 -> v2:
>   - drop LZO/LZ4 hardcoding with autodetection, instead use same algo for both
> ---
>  arch/arm/cpu/start.c | 11 ++++++++---
>  images/Makefile      |  6 ------
>  pbl/Kconfig          |  5 ++++-
>  scripts/Makefile.lib | 11 ++++++++++-
>  4 files changed, 22 insertions(+), 11 deletions(-)

This patch breaks compilation of virt2real_defconfig:

/bin/sh: 1: Syntax error: ";" unexpected
make[1]: *** [scripts/Makefile.lib:349: arch/arm/dts/virt2real.dtb.z] Error 2
make: *** [Makefile:953: arch/arm/dts] Error 2
make: *** Waiting for unfinished jobs....

I haven't looked into it yet.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


