Delivery-date: Thu, 01 Aug 2024 13:31:16 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sZU1c-0057BG-1X
	for lore@lore.pengutronix.de;
	Thu, 01 Aug 2024 13:31:16 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sZU1b-0003xY-U7
	for lore@pengutronix.de; Thu, 01 Aug 2024 13:31:16 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=SmkWTpmAMKMzHMhCG2gYxbXbV00c93EVstPus8zbTP8=; b=Lkg7mQLZlwQhcOXxZSBo+8Syps
	e2hqhux1NAej26Voy7TJ2qN+O4b+8++r/15YYwWSE3fnNgX2dvzabv+vrKnAB/KFWgQcGTEKp1yOY
	Bj26eI913x7XhGarMj8JIUFePUPurJeN1vwuIaIoMAuASXZSbJmSAWu+JmzwrXqvo2J2qadNTs/T5
	OXyJRh00VNUOnXA/NCDV6Kn24RPqfPIXSqPloKVgzz+5y3VGkHWe8p/w5OKE5B8mT1OCtupwIMj25
	ZpJmjTAxbjD46BMfhHxK+ZhUGa7JJvstCy10MR7sLQs/Doxs/i1bcgP66AdRWugUXyqqTPQLwQYEb
	fsqohWrA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZU19-00000004uxW-3V3a;
	Thu, 01 Aug 2024 11:30:47 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZU16-00000004uw4-2jst
	for barebox@lists.infradead.org;
	Thu, 01 Aug 2024 11:30:46 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sZU15-0003qN-6u; Thu, 01 Aug 2024 13:30:43 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sZU14-003kxo-QK; Thu, 01 Aug 2024 13:30:42 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sZU14-00Fdlt-2P;
	Thu, 01 Aug 2024 13:30:42 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240731071321.2557241-1-a.fatoum@pengutronix.de>
References: <20240731071321.2557241-1-a.fatoum@pengutronix.de>
Message-Id: <172251184274.3727764.17431215393697114114.b4-ty@pengutronix.de>
Date: Thu, 01 Aug 2024 13:30:42 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240801_043044_731048_B5452885 
X-CRM114-Status: UNSURE (   6.16  )
X-CRM114-Notice: Please train this message.
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] efi: define extra efi_memory_type flags
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 31 Jul 2024 09:13:21 +0200, Ahmad Fatoum wrote:
> We already define a number of memory types, but we are missing some
> bits in-between. Add them for completion's sake.
> 
> 

Applied, thanks!

[1/1] efi: define extra efi_memory_type flags
      https://git.pengutronix.de/cgit/barebox/commit/?id=e6701ffd6f1d (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



