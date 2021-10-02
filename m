Delivery-date: Sat, 02 Oct 2021 11:27:57 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mWbJF-0003Xi-KX
	for lore@lore.pengutronix.de; Sat, 02 Oct 2021 11:27:57 +0200
Received: from [2607:7c80:54:e::133] (helo=bombadil.infradead.org)
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mWbJE-0002aH-M6
	for lore@pengutronix.de; Sat, 02 Oct 2021 11:27:57 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=1I+f6rhGxLNl1u/gfOow9ZZRP2UwCGDrm3LClETde1I=; b=xHLOpd0zJwubD6XUCho+cgZ75G
	QoLfM3Qf6fUppeDUqNbYG2RV12TxrqfXs0Q+1nEiThwF7XDHcphkimrdubz7RhoawFm/5nmEsvK0N
	meCoLecijki/DqjzlJ+t4//KJb8Ip1o0ZJL7xyt09dySXWftExljeAJdxktNrxPgwUUn4ssm4ecM3
	LA4z4fU96Ihbg+ZzomueU5MnL1M8zDwSs5IZMkNVM8S2Wbz2jFaPD3URr8/RxmBA0G8DgitFzdjqZ
	mPvWm63HOn0UWonsm4Eu7Fv6GqL7DyHklL9Yhe26fjcQkN+w8QzKcWDVo2o/MryreKK+0ghVv2wvw
	oTEoz/Ew==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mWbHp-001zny-60; Sat, 02 Oct 2021 09:26:29 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mWbHj-001znL-VJ
 for barebox@lists.infradead.org; Sat, 02 Oct 2021 09:26:25 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1mWbHg-0002P0-L6; Sat, 02 Oct 2021 11:26:20 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1mWbHg-0001lp-Bg; Sat, 02 Oct 2021 11:26:20 +0200
Date: Sat, 2 Oct 2021 11:26:20 +0200
To: Ahmad Fatoum <ahmad@a3f.at>
Cc: barebox@lists.infradead.org,
 Rouven Czerwinski <r.czerwinski@pengutronix.de>
Message-ID: <20211002092620.GG28453@pengutronix.de>
References: <20210915123644.1292607-1-ahmad@a3f.at>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210915123644.1292607-1-ahmad@a3f.at>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 11:26:01 up 226 days, 12:49, 94 users,  load average: 0.08, 0.09,
 0.13
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211002_022624_031157_78403C31 
X-CRM114-Status: GOOD (  22.16  )
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
X-Host-Lookup-Failed: Reverse DNS lookup failed for 2607:7c80:54:e::133 (failed)
X-Broken-Reverse-DNS: no host name for IP address 2607:7c80:54:e::133
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-2.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,PTX_BROKEN_RDNS,RCVD_IN_DNSWL_MED,RDNS_NONE,
	SPF_HELO_NONE,SPF_NONE autolearn=no autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2] console: add new CONFIG_CONSOLE_DISABLE_INPUT option
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Wed, Sep 15, 2021 at 02:36:44PM +0200, Ahmad Fatoum wrote:
> From: Rouven Czerwinski <r.czerwinski@pengutronix.de>
> 
> Add CONFIG_CONSOLE_DISABLE_INPUT to initialize the consoles without
> input support, making default bootup effectively non-interactive.
> 
> Signed-off-by: Rouven Czerwinski <r.czerwinski@pengutronix.de>
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
> v1 is <20201013075925.2984-1-r.czerwinski@pengutronix.de>
> v1 -> v2:
>   - Make it the default for CONSOLE_NONE. This allows skipping
>     count down there early.
>   - rename write-only to disable input. This is arguably clearer
>   - allow re-enabling input on a per console basis. This way
>     e.g. a gpio-key with limited function can be reenabled,
>     but all other consoles have input disabled by default.
>   - add new CONSOLE_STDIOE to make the three bits easier to
>     write as a group.
> ---
>  common/Kconfig          | 11 +++++++++++
>  common/console.c        | 12 +++++++-----
>  common/console_simple.c |  5 ++++-
>  common/startup.c        |  5 +++++
>  include/console.h       |  2 ++
>  5 files changed, 29 insertions(+), 6 deletions(-)

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

