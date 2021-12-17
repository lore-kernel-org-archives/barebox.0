Delivery-date: Fri, 17 Dec 2021 14:24:56 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1myDEG-009UJk-15
	for lore@lore.pengutronix.de; Fri, 17 Dec 2021 14:24:56 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1myDEE-0006NX-PN
	for lore@pengutronix.de; Fri, 17 Dec 2021 14:24:55 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=R7vHvBrxX0hlgQYcn1zVaBQ32b4/AaqHd4k5/atj1YE=; b=VMP83vXqQQumzr
	jOMPLv4Cztpc+K88d5EY0ShPk4NZdzmrlwCS1f6pxUKhgy2xsvbBAdjFpbrkzJ68DOggeRbDsphOX
	IG5wb8T1WCimjjhiNvxiaH0JtEcQx9uIUm9RQ7JbjUWaM5j1+tU00FGVbBulCQb7YRwP/bi5O7qBP
	dmd+mD+aqIC0voNgZtWhBXSER70+BTRvU6JJLDUveK/0ouwAYTgFcGaTCt5DwUkQk/uWmk/Efpezc
	omAqdG1L7F7m8gw64TAJi2GfWaJHF8NB5QsyBKtboLNjyAfhpT5b4rrWLAsHKrvu+A7hAF5h/5HmD
	+Z1vTRw22HvVH7F3GcQw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1myDCy-00AN4U-Jn; Fri, 17 Dec 2021 13:23:36 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1myDCt-00AN3Y-CH
 for barebox@lists.infradead.org; Fri, 17 Dec 2021 13:23:32 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1myDCs-00069S-52; Fri, 17 Dec 2021 14:23:30 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1myDCr-0001MP-Ki; Fri, 17 Dec 2021 14:23:29 +0100
Date: Fri, 17 Dec 2021 14:23:29 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Jules Maselbas <jmaselbas@kalray.eu>
Cc: Barebox List <barebox@lists.infradead.org>
Message-ID: <20211217132329.GR6003@pengutronix.de>
References: <20211213210905.3399551-1-s.hauer@pengutronix.de>
 <20211213210905.3399551-6-s.hauer@pengutronix.de>
 <20211216122125.GF3394@tellis.lin.mbt.kalray.eu>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211216122125.GF3394@tellis.lin.mbt.kalray.eu>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 14:14:32 up 6 days, 22:00, 64 users, load average: 1.09, 1.16, 1.14
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211217_052331_446514_FCF1C869 
X-CRM114-Status: GOOD (  19.64  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 05/25] console: Fix message colours
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi Jules,

On Thu, Dec 16, 2021 at 01:21:25PM +0100, Jules Maselbas wrote:
> Hi,
> 
> On Mon, Dec 13, 2021 at 10:08:45PM +0100, Sascha Hauer wrote:
> > The correct code to change colours is "\033[1;31m", not "\033[31m". Fix
> > that.
> 
> Uhmm I am curious why this is the "correct" way. From what I can tell
> the terminfo for me says that 'setaf' red is '\e[31m'.
> Maybe the EFI consol doesn't support setaf "termcap", an only has the
> 'sgr' capability, and the non-bold red selected as '\e[0;31m'.

Looking again at it, '\e[31m' is correct. Maybe it would have been
better to say "Change to what efi-stdio can parse"

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

