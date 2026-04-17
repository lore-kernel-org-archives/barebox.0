Delivery-date: Fri, 17 Apr 2026 10:45:14 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wDep8-00D7w5-1S
	for lore@lore.pengutronix.de;
	Fri, 17 Apr 2026 10:45:14 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wDep7-0004H5-QH
	for lore@pengutronix.de; Fri, 17 Apr 2026 10:45:14 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=iyPhmw1Bq4vo/Ve/+5BgL4oC9vajtfJCo35WiTPaW8M=; b=fzTrYsM8suA/pdPzt3/dzfs9X7
	PNy2VIV8xG2N5Pl/+Y/fNEofdbgX3x+VlRlgoE7Va3/9lFCyHGRtVEML02TS7DK4IUK55G6IjJUIk
	tgklrxkuObBQpMzPVMl0nkopJkTkew4LJD2M1veA1JYdbGmc8+4yvO+EP9Y6bCII11hfteiQTs/Jm
	SP5U2DaWgpHdjrA0IbtsrPmRcv3eKbY9vj1Y8QDVgA+qQweqvnuqNV/qXChQGnsY6AMGS+Cn2gb/m
	xDYTSYGC/nvTyWs+LH43kIhRf922AGjT82cbGlu1dRObn1s3AtuP4kAhmMEFhVZFDo+YkOT//uEJT
	G47ewrRQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wDeoo-00000003hWy-0VZr;
	Fri, 17 Apr 2026 08:44:54 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wDeom-00000003hWB-0d5X
	for barebox@lists.infradead.org;
	Fri, 17 Apr 2026 08:44:53 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1wDeoj-00047z-EL; Fri, 17 Apr 2026 10:44:49 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1wDeoj-005osB-0p;
	Fri, 17 Apr 2026 10:44:49 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.98.2)
	(envelope-from <sha@pengutronix.de>)
	id 1wDeoj-0000000FlY2-0edu;
	Fri, 17 Apr 2026 10:44:49 +0200
Date: Fri, 17 Apr 2026 10:44:49 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Alexander Shiyan <eagle.alexander923@gmail.com>
Cc: barebox@lists.infradead.org
Message-ID: <aeHzAfUsNYQL3S4h@pengutronix.de>
References: <20260416125512.3275056-1-eagle.alexander923@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260416125512.3275056-1-eagle.alexander923@gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260417_014452_185615_2B759F84 
X-CRM114-Status: GOOD (  17.66  )
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
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] bootm: filter out "<NULL>" rootopts to avoid kernel
 cmdline noise
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi Alexander,

On Thu, Apr 16, 2026 at 03:55:12PM +0300, Alexander Shiyan wrote:
> When rootopts is set to the literal string "<NULL>" (e.g., due to a
> missing or invalid value in cdev_get_linux_root_and_opts), the resulting
> kernel command line contains "root=/dev/... <NULL>", which is invalid
> and may cause boot failures or confusion.
> 
> This patch checks for the "<NULL>" string in rootopts and replaces it
> with NULL before calling format_root_bootarg(), effectively omitting
> the erroneous token from the command line.

I would rather avoid setting it to "<NULL>" in the first place.

Does the patch I just sent help or is there another place where this
happens?

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


