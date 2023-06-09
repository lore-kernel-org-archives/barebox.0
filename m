Delivery-date: Fri, 09 Jun 2023 08:43:13 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q7Vq6-00GqTF-Vf
	for lore@lore.pengutronix.de; Fri, 09 Jun 2023 08:43:13 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q7Vq4-0003Fz-Mq
	for lore@pengutronix.de; Fri, 09 Jun 2023 08:43:13 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=gkbHFEbxjZEdsUbdlyHvtjbGdIjSic7OF7y3WUpByO0=; b=GtypmeTxCQKLozmYxONGHa0I56
	uPLpix/jkZXwuKbuotO0gdkvwcfngxeVhPfLgaLqICedH4yFJ2O3K4emwT+aV9lfLk6/rqbekhiyC
	C4Bw417TsIBkStahbQToeciDg9XxoEJMEnJqDrj3ch9/d3/LrdqX0PfzXQab+sCTAnW2gCshNMU9T
	4lWqmHtwk6MZ59v6ZYjleEg1zpuJXJ5F9wfTGQ5Dt83ODUZAmy5Q2Acmp6HyK0CtnuxdVCfNBkY7k
	VnePCq1Fnw77gdwHDhHpthxJEfv68t+LzGA54ih8LasTCIdvsn0umqvqI00fCgGaV5DA5QU4aBWTV
	PUtDpoWA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q7Vp0-00Buvu-1B;
	Fri, 09 Jun 2023 06:42:06 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q7Vov-00BusN-1v
	for barebox@lists.infradead.org;
	Fri, 09 Jun 2023 06:42:04 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1q7Vos-00037T-Jk; Fri, 09 Jun 2023 08:41:58 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1q7Vos-0008Gp-Cl; Fri, 09 Jun 2023 08:41:58 +0200
Date: Fri, 9 Jun 2023 08:41:58 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20230609064158.GO18491@pengutronix.de>
References: <20230608134040.2123869-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230608134040.2123869-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230608_234201_646219_BC16201E 
X-CRM114-Status: GOOD (  21.50  )
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
Subject: Re: [PATCH 0/3] commands: of_diff: support applying fixups on
 arbitrary device trees
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Thu, Jun 08, 2023 at 03:40:38PM +0200, Ahmad Fatoum wrote:
> of_diff - + is quite useful to find what fixups barebox would apply to
> its own device tree. But for some cases, like barebox-state or OP-TEE
> reservations, the nodes that would be fixed up into the kernel device
> tree already exist within the barebox device tree and wouldn't be shown
> by of_diff - +. To make them visible, let's redefine +:
> 
>   - Previously, it always meant the fixed up barebox DT
>   - Now, it means the other DT with fixups applied
> 
> That way, of_diff - + continues to work, but kernel DTs can now be
> diffed against their fixed up version by doing:
> 
>    of_diff /mnt/tftp/afa-oftree-myboard +
> 
> Ahmad Fatoum (3):
>   of: change superfluous of_fix_tree int return type to void
>   commands: of_diff: simplify error handling
>   commands: of_diff: support applying fixups on arbitrary device trees

Applied, thanks

Sascha

> 
>  commands/of_compatible.c |  7 ++---
>  commands/of_diff.c       | 63 +++++++++++++++++++---------------------
>  commands/of_dump.c       |  7 ++---
>  common/oftree.c          | 10 ++-----
>  drivers/of/base.c        |  3 ++
>  include/of.h             |  2 +-
>  6 files changed, 40 insertions(+), 52 deletions(-)
> 
> -- 
> 2.39.2
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


