Delivery-date: Fri, 07 May 2021 09:29:42 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1leuve-00041J-Gg
	for lore@lore.pengutronix.de; Fri, 07 May 2021 09:29:42 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1leuvd-0003gb-MV
	for lore@pengutronix.de; Fri, 07 May 2021 09:29:42 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=HzCDC1qws5vURWsFPjdxn2adZJr+zQjmuZsaUoLPZww=; b=UKE1v+9SlOjaXEWydC6GhTvLe
	PhNnSBxEGjzXSfqILEpRSLbWCEiLoh+UDILt6R+S+E8hAO7Xv8nuF9LZL0aDRd8ONbSnF+kd/Q5rC
	XOaWAtGolz5GtGtU/NKOsQaDlJfkuUwemN2Mw9JnrJ6iMYVCLyIuQ3zfThB1knNm9WWDmociGFBbU
	4RKQa0iPlchmjIGv2P/y42XNtjgwpRChL9mn1Yk13DcvsNQdNDn2lSYCR88zQWozZTht2l1MYhW6q
	3WohSZje06vHSDVb9mOJPS2Y2TX/lEOEU+bmKz+fvATyfWXW7XTCbAfv7ap4FUvbX6EPs2Q2Qgn+1
	+wISkFGQw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1leuum-006NJS-Lc; Fri, 07 May 2021 07:28:48 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1leuuh-006NJ3-Ub
 for barebox@desiato.infradead.org; Fri, 07 May 2021 07:28:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=From:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=XKKT/v5DVgp+lq+OhzBDPdYS78c5bVHHwI56mA9HS80=; b=JtuVZODx8cH9arrvruXyHi2ZqJ
 evgCcLCaN/e1RjwjZ7tDaE1cOHF0JZELbPj3iWWA9zxqtwdijbiFnOOmkcMHsEYrBgxnnJVatPHMD
 W+XRYpSUN+LMu+JWlNK1LbjPQxTMZ166a0bWkWkVljDFftH5/mN4/89eaAm1SHtth1Y7bJye/HvHw
 eyjMFkRQLn7igsp4aId+jYcHVb18DCTNXKx13evlZyIacWWABKtT2FzjEff3VFKqVHpQ5z6K+rLSU
 ag2AVunZANsBvJtjpJiYCEWkpZzRry6LpQyRVwdKMyNBhCeKNezX/iQ8mPaIwNX8ynPdQEziN11Ka
 cajT0DSQ==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1leuuf-006eWA-DK
 for barebox@lists.infradead.org; Fri, 07 May 2021 07:28:42 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1leuud-0003aI-79; Fri, 07 May 2021 09:28:39 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1leuuc-0007lx-SG; Fri, 07 May 2021 09:28:38 +0200
Date: Fri, 7 May 2021 09:28:38 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20210507072838.GQ19819@pengutronix.de>
References: <20210504104513.2640-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210504104513.2640-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 09:28:12 up 78 days, 10:52, 85 users,  load average: 0.14, 0.16, 0.10
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210507_002841_471212_1A936032 
X-CRM114-Status: GOOD (  18.85  )
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
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/3] bootm: move ARM64 Linux image parsing to common
 directory
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Tue, May 04, 2021 at 12:45:11PM +0200, Ahmad Fatoum wrote:
> Linux on RISC-V adopts the same structure as on ARM64 for both 32-
> and 64-bit kernel images and it's likely future architectures will
> as well. In preparation for adding RISC-V Linux boot support,
> move the bulk of the code to a common location for reusability.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  arch/arm/lib64/armlinux.c | 74 +++------------------------------------
>  common/Makefile           |  2 +-
>  common/booti.c            | 66 ++++++++++++++++++++++++++++++++++
>  include/bootm.h           |  2 ++
>  4 files changed, 74 insertions(+), 70 deletions(-)
>  create mode 100644 common/booti.c

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

