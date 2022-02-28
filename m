Delivery-date: Mon, 28 Feb 2022 11:17:56 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nOd6K-00D83e-5g
	for lore@lore.pengutronix.de; Mon, 28 Feb 2022 11:17:56 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nOd6J-0002va-1y
	for lore@pengutronix.de; Mon, 28 Feb 2022 11:17:55 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zg8YtZUi1LwSRHwx7MeozcvSSmPrsqry8ksiRDjXw54=; b=dhNA3mNJse9sBZ
	ZMq534S7k1aE3L3GiHPT2aWoH1Z3cwR4J6Br6cRoEJuebrR21LvN7w574NhRWFCgBm+xe80d+PM8M
	GRVzkO9ut4IKtoPzNZXoTeWRYFBRLYN64iYm2lA3WIFS4XkzWp08xpJc5KZGlbZHrphob8BuLhiNq
	PM46/RBe8gC6c1gH1xf1qYq6NPBM4QX5Sx7xIFVn8K2rAYJ52W3UJ2J7RAUydN9Nc+DFmmTjD3ZtI
	rCeZwWtrHumFVADS49nMVy583xOIZf3K50smj2jv0GiErDO3C/OK+e0oPSK1BmTP/M+8pcR80mBdn
	L7r2PK0d5iG1P9ASBdCw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nOd57-00BT50-P5; Mon, 28 Feb 2022 10:16:41 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nOd51-00BT3t-R2
 for barebox@lists.infradead.org; Mon, 28 Feb 2022 10:16:37 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nOd50-0002hr-LT; Mon, 28 Feb 2022 11:16:34 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nOd50-0007I3-Bp; Mon, 28 Feb 2022 11:16:34 +0100
Date: Mon, 28 Feb 2022 11:16:34 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Andrej Picej <andrej.picej@norik.com>
Cc: Barebox List <barebox@lists.infradead.org>
Message-ID: <20220228101634.GJ19585@pengutronix.de>
References: <20220211094230.1807262-1-s.hauer@pengutronix.de>
 <20220211094230.1807262-3-s.hauer@pengutronix.de>
 <2fc596cc-031c-0f53-4646-72ad03bbc8a7@norik.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <2fc596cc-031c-0f53-4646-72ad03bbc8a7@norik.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 11:15:31 up 79 days, 19:01, 93 users,  load average: 0.23, 0.25, 0.28
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220228_021635_895923_0685B3B8 
X-CRM114-Status: GOOD (  21.21  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 3/3] Revert "scripts/common: fix write_file when opened
 with mmap"
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Thu, Feb 24, 2022 at 02:22:12PM +0100, Andrej Picej wrote:
> Hi Sascha,
> 
> sorry for responding this late, but we are still getting the same errors as
> before when using bareboximd with these three patches.
> 
> Are you sure we can revert this patch? The file can still be opened in
> bareboximd with mmap(), and then be written with this write_file(), which
> fails with the same error:
> 
> > Cannot write to barebox.bin: Bad address
> > CRC: write crc token to barebox.bin failed: -14
> > Bad address

Damn, my bad. It seems my brain was on vacation. I just created a fix
for this, you should be on Cc.

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

