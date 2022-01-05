Delivery-date: Wed, 05 Jan 2022 09:02:15 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n51FP-00BW5r-LC
	for lore@lore.pengutronix.de; Wed, 05 Jan 2022 09:02:15 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n51FO-0000rL-8L
	for lore@pengutronix.de; Wed, 05 Jan 2022 09:02:14 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=omPgJgI4vyZTw8PcwPI0h9tergbBJV6Tpk5olMlCF/M=; b=ddFOFFfy7lKzp2YByd5EFjX5yT
	exXdNLtJjvSler0oo11uCoVdVz6cGArJXeP8DNP7Bh4B724v+8NEsEZ0W7kkAkc7GXyvtHq6I2/t4
	vj5slHYCEsZY3JR11ziuRlMXH+vkzaodcYfmdr5dlJvBqeeZ9LRl6t6JzdPLpeBtLPAQYjzei/+mh
	9w42OF2X7/B4D7azZ/EmZEkVdtXiWMpZwTSCoV6pWe43rggOmsBxn6n2G9yD2GFWbI7Npl57/97qb
	OPfmYGHmKJGtHx22CAa1aHPDH+/hDKqmY3DDu2oxr7i0/BLwZhu+RQtnBy68x1cYUNrMSz30afNhj
	nfAyq3jQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n51E3-00E8LZ-Qu; Wed, 05 Jan 2022 08:00:51 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n51Dy-00E8Kv-Rn
 for barebox@lists.infradead.org; Wed, 05 Jan 2022 08:00:48 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1n51Dx-0000ew-C0; Wed, 05 Jan 2022 09:00:45 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1n51Dx-0001k3-2R; Wed, 05 Jan 2022 09:00:45 +0100
Date: Wed, 5 Jan 2022 09:00:45 +0100
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org, ukl@pengutronix.de, rhi@pengutronix.de
Message-ID: <20220105080045.GN6003@pengutronix.de>
References: <20220103120539.1730644-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220103120539.1730644-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 08:58:49 up 25 days, 16:44, 73 users,  load average: 1.11, 1.28, 1.35
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220105_000046_919206_87834D62 
X-CRM114-Status: GOOD (  14.62  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 00/11] treewide: SPDXify files without license statement
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, Jan 03, 2022 at 01:05:28PM +0100, Ahmad Fatoum wrote:
> SPDX for tests, scripts and Documentation will follow. This series
> covers everything else.
> 
> Ahmad Fatoum (11):
>   commands: set SPDX-License-Identifier for files without license
>     statement
>   treewide: add SPDX-License-Identifier for Kbuild/Kconfig
>   treewide: add SPDX-License-Identifier for .gitignore
>   images: add SPDX-License-Identifiers
>   fs: jffs2: add SPDX-License-Identifier: GPL-2.0-only
>   include: add SPDX-License-Identifier
>   ARM: i.MX: add SPDX-License-Identifier for DCD
>   arch: add SPDX-License-Identifier to all headers
>   arch: add SPDX-License-Identifier to all .S files
>   arch: add SPDX-License-Identifier to all .c files
>   treewide: add SPDX-License-Identifier for files without explicit
>     license

Applied, thanks

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

