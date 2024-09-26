Delivery-date: Thu, 26 Sep 2024 13:12:57 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1stmQa-002yU9-0n
	for lore@lore.pengutronix.de;
	Thu, 26 Sep 2024 13:12:57 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1stmQa-00048s-OE
	for lore@pengutronix.de; Thu, 26 Sep 2024 13:12:57 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=sGjFc40Tuxwt5ANJhv9mOkoFHjRLTnGpI2gOJr6H+iw=; b=pVsRc/atL4le4Jw5ewYEAobApO
	rqmLVAMKi1WP2S4ycer8nosPVciTSSFseifw40P8ImImiOXQfenljgf5ucmSPMv4ZZ+5in4UNFI2l
	HphW8SFvK7THuYXrtaSJdc/mMlhLcpcreLLh9wPBKa3APmpOzWtw1OzSk+YOBNaGSnHezDw/OuzTs
	XH/kQgN7tiBk/Rybxt72Fj+HQ71ZWwj4UYghcAqwwuJq6m7i6mx29fKVsRukquRygYWcCcESN/z0g
	5/xJ7BAitxuicxE5yE2F51yuQxoUNglxCukwidlVCUUw6UUMoVWqBRCG7Q20yt1TkphPCiBud6rpz
	Mvo2Sq1g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1stmQA-00000008BXw-1sFn;
	Thu, 26 Sep 2024 11:12:30 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1stmQ7-00000008BXZ-1YY3
	for barebox@lists.infradead.org;
	Thu, 26 Sep 2024 11:12:28 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1stmQ5-0003m8-JZ; Thu, 26 Sep 2024 13:12:25 +0200
Received: from [2a0a:edc0:2:b01:1d::c5] (helo=pty.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1stmQ5-001fjK-79; Thu, 26 Sep 2024 13:12:25 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1stmQ5-00DAXZ-0S;
	Thu, 26 Sep 2024 13:12:25 +0200
Date: Thu, 26 Sep 2024 13:12:25 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: "open list:BAREBOX" <barebox@lists.infradead.org>
Message-ID: <ZvVBmekX5ktGIIfc@pengutronix.de>
References: <20240925-arm-assembly-memmove-v1-0-0d92103658a0@pengutronix.de>
 <20240925-arm-assembly-memmove-v1-10-0d92103658a0@pengutronix.de>
 <9029ceab-9417-4340-8304-25500a1f4b64@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <9029ceab-9417-4340-8304-25500a1f4b64@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240926_041227_430489_123C9F0A 
X-CRM114-Status: GOOD (  17.86  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 10/10] ARM: add optimized memmove
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Thu, Sep 26, 2024 at 07:48:31AM +0200, Ahmad Fatoum wrote:
> Hello Sascha,
> 
> On 25.09.24 15:55, Sascha Hauer wrote:
> > Until now there has been no assembler optimized version of memmove() for
> > ARM. Add this from Linux for both ARM32 and ARM64. This also updates
> > memcpy() for ARM64 from Linux.
> > 
> > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> 
> Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> 
> Small nitpick below:
> 
> >  /* SPDX-License-Identifier: GPL-2.0-only */
> > -/* SPDX-FileCopyrightText: 2013 ARM Ltd. */
> > -/* SPDX-FileCopyrightText: 2013 Linaro */
> 
> Can you restore the hunks related to SPDX-FileCopyrightText again?

No, because it's a different implementation. See Linux commit:

| commit 285133040e6ce0e6f37db962f2b4dad10ea46da0
| Author: Robin Murphy <robin.murphy@arm.com>
| Date:   Thu May 27 16:34:46 2021 +0100
| 
|     arm64: Import latest memcpy()/memmove() implementation

I just realized this makes copy_template.S unused. I'll remove this file
for the next round.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


