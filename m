Delivery-date: Thu, 14 Jul 2022 11:22:23 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oBv3A-007Pwb-7w
	for lore@lore.pengutronix.de; Thu, 14 Jul 2022 11:22:23 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oBv37-0003Lo-Ea
	for lore@pengutronix.de; Thu, 14 Jul 2022 11:22:22 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=j1PQYkUh30wU+ix1NEr6E1jc+ZCtCVOCF449HjtjIug=; b=jLmet0FmL1/k0kiXalO1X1nKX6
	xc8siopJT0IGqhIyRfJAIqmnMPE0CB3EP9zZJfsOshdg2LJCzfA0wnB+r81p9OWbdZMjCYVxFeUYn
	9RXkXNgVP8Zcrcy5MwORk8Ns6eDe4af8PYC+3Jn7/91LuaA88V++fAE+BMzMzj32W5W57jXdNmIp/
	NLZop2Q3Eb63ffYvZwnLw7gV4GEF64qthrmOh1d3oqp+x3TF7AfviQC9JzuYaDWQRK44A2Z3Zebq8
	xlwMVsDdZIdzuduzsvmA97RmE8e8DBqQNWDumcymAHrOWtwsQo5DCm4NYDKjrkecE1g/4FqDsjR3a
	VOENmBfA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oBv1f-00ClRp-Iu; Thu, 14 Jul 2022 09:20:51 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oBv1X-00ClO6-Sq
	for barebox@lists.infradead.org; Thu, 14 Jul 2022 09:20:45 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oBv1W-00032Q-Ep; Thu, 14 Jul 2022 11:20:42 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oBv1W-0008JA-5v; Thu, 14 Jul 2022 11:20:42 +0200
Date: Thu, 14 Jul 2022 11:20:42 +0200
From: Sascha Hauer <sha@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20220714092042.GL23482@pengutronix.de>
References: <20220713100922.1880282-1-a.fatoum@pengutronix.de>
 <20220713100922.1880282-6-a.fatoum@pengutronix.de>
 <20220714084513.GJ23482@pengutronix.de>
 <c2815e3a-dfd4-3398-0da0-cc494df3513e@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <c2815e3a-dfd4-3398-0da0-cc494df3513e@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220714_022043_963867_3825E41F 
X-CRM114-Status: GOOD (  21.65  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 5/5] lib: uncompress: add general zstd support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Thu, Jul 14, 2022 at 10:54:47AM +0200, Ahmad Fatoum wrote:
> On 14.07.22 10:45, Sascha Hauer wrote:
> > On Wed, Jul 13, 2022 at 12:09:22PM +0200, Ahmad Fatoum wrote:
> >> So far, we only supported zstd in squashfs and ubifs. Add support
> >> everywhere else: In PBL for decompressing barebox proper, in uncompress
> >> for compression arbitrary files and for bootm to decompress zstd
> >> kernel images.
> > 
> > Have you tested this with the uncompress command?
> > 
> > a zstd compressed barebox works here, but using uncompress
> > on a zstd compressed file results in:
> > 
> > ZSTD-compressed data is corrupt
> > 
> > or sometimes:
> > 
> > Out of memory while allocating ZSTD_DStream
> 
> I didn't test the uncompress command, no. How did you create
> the zstd file?

just a plain 'zstd foo' without any options.

> The Linux zstd decompression expects the size
> to be trailing the decompressed data and doesn't parse the
> zstd header. See the comment in scripts/Makefile.lib for details.

When it's expected that we can't use the uncompress command on zstd
files then we shouldn't support it.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


