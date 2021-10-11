Delivery-date: Mon, 11 Oct 2021 11:50:53 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mZrxN-0002jT-Md
	for lore@lore.pengutronix.de; Mon, 11 Oct 2021 11:50:53 +0200
Received: from [2607:7c80:54:e::133] (helo=bombadil.infradead.org)
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mZrxL-0004UY-S9
	for lore@pengutronix.de; Mon, 11 Oct 2021 11:50:53 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=BK/ELNOETnceiK9tlwYh/zZxMWRqWEkRn64toZhyZVU=; b=0Nl0ud6bJznobRhv1brlDNElMt
	V82/fl5go1u4MRh89ZOsp+qY1GhvkmrVaxR3igToLfVzkWyQAxWlqHMhL76C1CDYKCEU6UAFxjtDZ
	lKwSMsSvSAxUWHMsPU3OiC3IVMB7MfOc3wl/Xz/1D24P2lL1mxrRg9I5o8XhiQH1wbYepq8+QgdcV
	o8FOCx5CPJLQvPJvI7NL1Kshj1u7K2F/mfpJIcfyFlybXTobqQnqFOim6pvY9QTpi9KCZP24ZQes4
	w0UodTpBBmRLyXr6sia1EpsiYe9MUk0MC0O49w4yeYqqngj3ojWPeEv612U6/Gqg9dIJcNcpeiG12
	MgorR8Fg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mZrvq-008daS-TC; Mon, 11 Oct 2021 09:49:19 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mZrsR-008c08-NO
 for barebox@lists.infradead.org; Mon, 11 Oct 2021 09:45:49 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1mZrsQ-0003VA-Bl; Mon, 11 Oct 2021 11:45:46 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1mZrsP-0004nT-F0; Mon, 11 Oct 2021 11:45:45 +0200
Date: Mon, 11 Oct 2021 11:45:45 +0200
To: Jules Maselbas <jmaselbas@kalray.eu>
Cc: barebox@lists.infradead.org, Ian Abbott <abbotti@mev.co.uk>,
 Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <20211011094545.GB28453@pengutronix.de>
References: <20211006135844.7361b72436286f5accbde0ad@gmail.com>
 <20211007115254.32270-1-jmaselbas@kalray.eu>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211007115254.32270-1-jmaselbas@kalray.eu>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 11:44:14 up 235 days, 13:08, 140 users,  load average: 0.30, 0.25,
 0.20
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211011_024547_799538_74A7C402 
X-CRM114-Status: GOOD (  19.13  )
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
Subject: Re: [RFC PATCH] logo: Makefile: Replace inkscape with convert
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Thu, Oct 07, 2021 at 01:52:54PM +0200, Jules Maselbas wrote:
> The uses of inkscape to convert svg to png hasn't been very stable from
> one version to another, and required quirks from one version to another.
> 
> I hope that convert from imagemagick will be a more stable solution.
> 
> Signed-off-by: Jules Maselbas <jmaselbas@kalray.eu>
> ---
>  lib/logo/Makefile | 19 ++++++++-----------
>  1 file changed, 8 insertions(+), 11 deletions(-)

I applied this one to the tree, thanks for the effort. Inkscape was
mentioned in the Kconfig entry, I changed this to ImageMagick.

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

