Delivery-date: Mon, 03 May 2021 14:34:04 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ldXm0-0003AT-3s
	for lore@lore.pengutronix.de; Mon, 03 May 2021 14:34:04 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ldXly-0005xK-6N
	for lore@pengutronix.de; Mon, 03 May 2021 14:34:03 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=E7I9r4p2Rfuc0jIvCFuxE7pomRV5ih6OJdJBBZn0T0M=; b=ZRTB6otfFYS4XcotJaWssPwqd
	lNfJFmi9wiAxmlAky2NuTvxqH/dC3WnyLIbiYooyyubotEOoU1R5pB7rCmQQ7PfnFvVPjBN1CxZF9
	g7q6EPjdP8n2WW3m84OfMe//kkKISm0OXbXdsxQ/McyikBp6kyqH5628aB7SikCjiwCW3Lb7IvAKL
	Q2Cxbi2hBKXSY5vOGYi1bwr9abyYmZ3x9KHZzRfopFJttSeueIyrQbzNL/D5jeTxd2K+yiNTp0Jxl
	QPR1AdEeawWWyqNB2Z04NYcWLv+QFTxCVNIgTCO6hunoCaitsB7/8L1/9Ey/TfYBfg0abzkzRLalk
	fqfXJggrw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1ldXkj-00Drki-TV; Mon, 03 May 2021 12:32:46 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1ldXkb-00Drk8-Db
 for barebox@desiato.infradead.org; Mon, 03 May 2021 12:32:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=From:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=j8OAiHHRD1iRQMpgWBx6FTstRnieQ56fhJgZkEOi8QY=; b=xApy30wBqXFognTEBxEd9S9npx
 Xv1ISZLyldsPhU4kNcbz3oj5QXqf8mqI8asV4X2+xTgTg03CRnbOIIn2F+JgGzUwuwM+LTZUQeB84
 c316OXFuuGh4638aLv37vpXjFAarH06KHcYIaNrv8GrQr+2YKjGONV5TPc4xXrTUEmi22dkSdlcUF
 Bw0Wo4+swELKMdTvG9X267xayIeKB1bzeh3vY4nI5zWN7KkZYXLmiFAsq1tYWTzUZhcfWE9Qg7gUI
 efTjidTtq8g5kT93almos+lpFRN5/QumhOBtUMEGpLsO+McldRux9xkiBZPezLeIghWnX85/eUjPB
 lL8wWJhQ==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1ldXkY-0033an-MO
 for barebox@lists.infradead.org; Mon, 03 May 2021 12:32:36 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1ldXkX-0005qE-FI; Mon, 03 May 2021 14:32:33 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1ldXkX-0005LA-1I; Mon, 03 May 2021 14:32:33 +0200
Date: Mon, 3 May 2021 14:32:33 +0200
To: "Middelschulte, Leif" <Leif.Middelschulte@klsmartin.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>
Message-ID: <20210503123232.GJ19819@pengutronix.de>
References: <78f79375e21e753086868b2212485b488443bcb1.camel@klsmartin.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <78f79375e21e753086868b2212485b488443bcb1.camel@klsmartin.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 14:11:28 up 74 days, 15:35, 100 users,  load average: 0.17, 0.16,
 0.15
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210503_053234_751891_4C1240B0 
X-CRM114-Status: GOOD (  23.35  )
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
Subject: Re: imx6 nand: dbbt version/layout
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi Leif,

On Thu, Apr 22, 2021 at 12:13:59PM +0000, Middelschulte, Leif wrote:
> Hi,
> 
> I'm in the process of fixing up imx-kobs to support
> - boot configuration dumps
> - boot stream extracts/updates
> on iMX6QDL using the GPMI-NAND interface, as provided by some more
> "recent" kernels.
> 
> I updated barebox on the NAND flash storage using another instance of
> barebox. Now it turns out that the dbbt version used (i.e. written) by
> barebox and supported by imx-kobs (as it was) is not documented in the
> i.MX6 QDL reference manual.
> Barebox uses[0] DBBT version 0x1000000, while the reference manual
> describes (i.MX6DQRM Rev 3., section 8.5.2.4) layout version 0x1.

It's stored in big endian. Just endianess swap 0x01000000 and you have
your 0x00000001.

> 
> Besides that, the reference manual apparently does not describe the
> field `BBMarkerPhysicalOffsetInSpareData` at the end of the FCB
> structure. Yet again, imx-kobs and barebox are reading/writing it.

barebox doesn't actively sets the value to anything else than 0x0. I
have no idea if and how the ROM interprets this value. Indeed the name
of the field seems to be inconsistent to the reference manual.

Regards,
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

