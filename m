Delivery-date: Thu, 01 Jun 2023 10:36:41 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q4dnW-005XwQ-G6
	for lore@lore.pengutronix.de; Thu, 01 Jun 2023 10:36:41 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q4dnU-00053Q-3w
	for lore@pengutronix.de; Thu, 01 Jun 2023 10:36:40 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Up4Alqep6QC8kcjP4AHoeKlOyNlds6qtNfoaT8c/5nQ=; b=ZbUc9r8q1+lGq45NHstkn7z13L
	5kLTpc+8j3K/0X5cgk2z9KDCFkIkk5BX4brPOQ4CVigdcpwHgW68BVjHYDo0tB32b1UExOn5VMuET
	6DhJZ/c1cZjz5zousHBN3+cvJ7AnVnstfM6JlKSgwIFDZr9kCUDerCsTs0u1l9dbAfwYu7ufOdmb2
	qq3j/oqo59kywDVsc1B3VR7UMG1N9jcubzbjMEmDv7EaZ3qjS9mJAKCv1PbP2hWn0ASwVW3dTguQ0
	SN29l4HD2WLfoUsaVERMxbgBr1KancSp15gymnYT9+UqbR9iYV3rkTp7lKklapn6iQjuYQSU0mTI+
	mjYicroQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q4dmX-002aWa-1Q;
	Thu, 01 Jun 2023 08:35:41 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q4dmU-002aVL-2J
	for barebox@lists.infradead.org;
	Thu, 01 Jun 2023 08:35:40 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1q4dmT-0004oG-A5; Thu, 01 Jun 2023 10:35:37 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1q4dmS-0005J0-Vl; Thu, 01 Jun 2023 10:35:36 +0200
Date: Thu, 1 Jun 2023 10:35:36 +0200
From: Sascha Hauer <sha@pengutronix.de>
To: Jules Maselbas <jmaselbas@zdiv.net>
Cc: barebox@lists.infradead.org
Message-ID: <20230601083536.GM18491@pengutronix.de>
References: <20230524234328.82741-1-jmaselbas@zdiv.net>
 <20230524234328.82741-10-jmaselbas@zdiv.net>
 <20230530081420.GX17518@pengutronix.de>
 <ZHg3j6puvstgy4HT@tour>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ZHg3j6puvstgy4HT@tour>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230601_013538_755792_61DF2DC4 
X-CRM114-Status: GOOD (  18.29  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 09/13] mci: Add sunxi-mmc driver
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Thu, Jun 01, 2023 at 08:15:43AM +0200, Jules Maselbas wrote:
> On Tue, May 30, 2023 at 10:14:20AM +0200, Sascha Hauer wrote:
> > +#ifdef __PBL__
> > > +#if 0 /* TODO: test this */
> > > +#include <asm/system.h>
> > > +/* TODO: test this ! */
> > > +#define get_time_ns()		get_cntpct()
> > > +#define is_timeout(s, t)	(s + (t * get_cntfrq() / 1000000) < get_cntpct()
> > 
> > You could base your timeout loop on udelay which is available for
> > Aarch64 PBL
> Can I make a version of is_timeout for aarch64 PBl ? instead of doing a hack in
> the mmc driver ?

Sure, even better.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


