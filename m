Delivery-date: Mon, 22 Nov 2021 10:23:54 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mp5YI-0004Yt-SS
	for lore@lore.pengutronix.de; Mon, 22 Nov 2021 10:23:54 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mp5YH-0006a4-LV
	for lore@pengutronix.de; Mon, 22 Nov 2021 10:23:54 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=c5+/jTypSeTKXv31eWfYnYFEHf/zPbPq90TwkCQX7DU=; b=PgQSr3juUikZpkL7bZjK4KcVfK
	NG7xFui8nr2LIeEuEhGXLigMIBsns2OtoxmmH8q3rX+nRCH7xAAwkDGkE7bpb7mm+B0qa6dSIEDOz
	cQrC9GGtWOeo8yMZxNEJyk1gzzRAIIu27HyCRPO7HKaDq0tPV8lfQJunqpV/yWXLoZQRivmZ+OqpO
	BsVAMMGyVROFmTsIjkf7yygtTkw4rxQEMu8QX151N/mJL7dhOwDkhAl7+F4vOTHejEf/iPpXpZ79n
	IU+vV6FMIRvQWyXpVDkGxTnevSH+FPnQcpsJGdNzi23GKindSEiAV0MraCyIJXmqig7V6I2AU9Dnr
	Q1itvD/A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mp5Wd-00FY60-UH; Mon, 22 Nov 2021 09:22:12 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mp5Lc-00FV2O-Ei
 for barebox@lists.infradead.org; Mon, 22 Nov 2021 09:10:49 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1mp5La-0004hi-VG; Mon, 22 Nov 2021 10:10:46 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1mp5La-0004wB-LZ; Mon, 22 Nov 2021 10:10:46 +0100
Date: Mon, 22 Nov 2021 10:10:46 +0100
To: Jules Maselbas <jmaselbas@kalray.eu>
Cc: barebox@lists.infradead.org
Message-ID: <20211122091046.GX6556@pengutronix.de>
References: <20211004073842.14809-1-jmaselbas@kalray.eu>
 <20211118123357.GF1022@tellis.lin.mbt.kalray.eu>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211118123357.GF1022@tellis.lin.mbt.kalray.eu>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 10:09:50 up 277 days, 12:33, 143 users,  load average: 0.34, 0.52,
 0.34
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211122_011048_567453_31FC0124 
X-CRM114-Status: GOOD (  14.06  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] debug_ll: ns16550: Fix interrupt disable on init
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Thu, Nov 18, 2021 at 01:33:57PM +0100, Jules Maselbas wrote:
> ping

Sorry, I misconfigured my .procmailrc when you sent this patch, so I
lost it.

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

