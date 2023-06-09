Delivery-date: Fri, 09 Jun 2023 08:32:07 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q7VfM-00GpxJ-M8
	for lore@lore.pengutronix.de; Fri, 09 Jun 2023 08:32:07 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q7VfK-0001kA-1V
	for lore@pengutronix.de; Fri, 09 Jun 2023 08:32:06 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=b+gMaET9r+7eolLNFVk3NyI1Ou5cgtUCJ9PpMfyweX4=; b=GGliDALm56q8Pmv/cWgItIaYw2
	x+3pnP86PxkWFyS7O5sMO3d1RTK4xjXr1128mIyZZepozsaVBQrpmgE8ZLAijb9ynZmAwYZWc6Qnx
	yBPqx1ds5gL26TvfgCtqZ1efD6iZtE8ee/iV+Yt4NnS1p/fZAqJTiATNguhMrRZpKkI0gcxsovIqP
	8hkGFqgoZ4nIgdGseo2/xFQWeKpDDYudkJuZHMlPQJnAsC0+w/WV0BbfBmK5y07wIxuyODizXBlbT
	yMFYwV/gyr96FDtfob+0vl6uqL1YzDZUIKdFFD4E574jv/mVprcPTRu5AkNIp7Roo/L8/cH8axUM6
	O7NcUQgw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q7Ve8-00BsO3-2c;
	Fri, 09 Jun 2023 06:30:52 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q7Ve4-00BsMY-2t
	for barebox@lists.infradead.org;
	Fri, 09 Jun 2023 06:30:51 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1q7Ve3-0001Z6-E6; Fri, 09 Jun 2023 08:30:47 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1q7Ve3-00080b-84; Fri, 09 Jun 2023 08:30:47 +0200
Date: Fri, 9 Jun 2023 08:30:47 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Denis Orlov <denorl2009@gmail.com>
Cc: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <20230609063047.GN18491@pengutronix.de>
References: <20230609045829.2225-1-denorl2009@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230609045829.2225-1-denorl2009@gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230608_233048_929829_8C8081FC 
X-CRM114-Status: GOOD (  15.51  )
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
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 0/3] include: bitops/const: partial update from Linux
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Fri, Jun 09, 2023 at 07:54:06AM +0300, Denis Orlov wrote:
> This updates some of the definitions in those files, mainly to make
> BIT*/GENMASK() macros usable in assembly code.
> 
> Denis Orlov (3):
>   include: const: make UL/ULL() macros commonly available
>   include: bitops: allow BIT* macros to be used in assembly code
>   include: bitops: import more BITS_TO_* defines from linux

Applied, thanks

Sascha

> 
>  arch/arm/include/asm/memory.h    |  5 -----
>  arch/arm/include/asm/pgtable64.h |  2 --
>  arch/kvx/include/asm/sfr_defs.h  |  2 --
>  include/linux/bitops.h           | 24 +++++++++++++++++-------
>  include/linux/const.h            | 10 ++++++++--
>  5 files changed, 25 insertions(+), 18 deletions(-)
> 
> -- 
> 2.41.0
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


