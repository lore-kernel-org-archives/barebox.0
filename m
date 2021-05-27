Delivery-date: Thu, 27 May 2021 09:12:34 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lmAC2-00036S-EL
	for lore@lore.pengutronix.de; Thu, 27 May 2021 09:12:34 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lmAC1-00055O-EL
	for lore@pengutronix.de; Thu, 27 May 2021 09:12:34 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=msNkfusUn39g361EUT4W9ZYjASIFFZF1NYhPfbbomgo=; b=cKRNq7grgzMwr1bzdyrcobGTyV
	cdAeNW3bGMv9rLv8MuVHyHDxwaAhTUQdRxhaxqOG2nR9m8iriCeNxVBCBOrvboAefbaxOGYheuxDC
	6emsefrUvbqjMSYV9gV1f//ZSON7kXuA0fDCwA2d96/ucCRB+RrQqMqXEKGPdxBkX2MFAGsZ7q3mA
	N6fHVS4nhL0vGOKdjBCOHfviazoffOcAYK+0wRx5vgRLAuPau2TzPGwYVjN41Qe2lmckkkh6ZGb6R
	LQJ+WjdZ80RRH9+u381YPgmscFy4UXgU83aadSKUzg14jPosMiPux+njiw0f2JDVCDiaqkSJNfdbQ
	RwSB497Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lmAAi-003FsN-7o; Thu, 27 May 2021 07:11:12 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lmAAd-003FrH-LM
 for barebox@lists.infradead.org; Thu, 27 May 2021 07:11:09 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lmAAc-0004fR-Co; Thu, 27 May 2021 09:11:06 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lmAAb-0006rA-R6; Thu, 27 May 2021 09:11:05 +0200
Date: Thu, 27 May 2021 09:11:05 +0200
To: Trent Piepho <tpiepho@gmail.com>
Cc: barebox@lists.infradead.org
Message-ID: <20210527071105.GC19819@pengutronix.de>
References: <20210526065856.368345-1-trent.piepho@igorinstitute.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210526065856.368345-1-trent.piepho@igorinstitute.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 08:52:12 up 98 days, 10:16, 108 users,  load average: 0.10, 0.13,
 0.09
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210527_001107_718137_6C1C20CF 
X-CRM114-Status: GOOD (  25.35  )
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
X-Spam-Status: No, score=-4.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] imx-image: Fix uninitialized add_barebox_header
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Tue, May 25, 2021 at 11:58:56PM -0700, Trent Piepho wrote:
> From: Trent Piepho <tpiepho@gmail.com>
> 
> It's set to 1 if the -b option is used, but is neither initialized nor
> set to 0 if not.  Since the barebox image building recipies only uses -b
> with this tool, it wasn't noticed.

Applied to master, thanks.

> 
> Note that ommiting -b, so as to not add a barebox header, still adds a
> 1024 byte header, it's just blank.  I think it would be better if it was
> not added at all.  If flashing to an SD card or eMMC main block, this
> header overlaps the partition table, and so needs to not be flashed.
> It's not part of the imx image.  It's just padding to place the imx
> image at the correct location w.r.t. the start of flash.

The idea is that you can put the imx image at the beginning of an SD/MMC
card without knowing any offsets. Yes, you'll overwrite the partition
table in that case, but once you know that you can skip/seek 512 bytes
on both the image and the card and be done. Note that with newer i.MX
SoCs like i.MX8 the offset was changed to 33k to support GPT partition
tables. With i.MX8MP they changed the offset again to 32k. I think
Having to know all these offsets is not better than the current
situation.

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

