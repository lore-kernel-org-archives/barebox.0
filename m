Delivery-date: Fri, 17 Apr 2026 10:04:00 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wDeBE-00D6wE-2a
	for lore@lore.pengutronix.de;
	Fri, 17 Apr 2026 10:04:00 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wDeBE-00088W-8L
	for lore@pengutronix.de; Fri, 17 Apr 2026 10:04:00 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=J6JLMrAYB3DQNrjQbrqp8kGYVCKd0mKCpYSZm5mDmPo=; b=lyZusVEmFUrUEbfGr1ygu3edCQ
	9mXlNZK5dmy+CB1l80bky9FH2+IoY4YaV5pBb5Fuignk+FhaIbq9zRQ5WzvTxnf/r6AuIweWpXHyu
	BJjKL0wkYBoysj+OyzFWfEiLn3AZJS+LqNWtLoj3Pw9VgepaHua1K5joYTkB+hGXx/rryBvs02Owr
	XqWIq/nM1mMspbI3r0V2xufMgQXFhP9ZmSKiGdBSIiEpsptQmRKMD8EYO6iy1xQVc2q2bwOSs1Vgh
	DqfwJShkhrk9dfnmxyG3zbYAgcD6/QwIXFWi5+dc2QEMdNtjgt6Wk4jSpdNr2WWJBFcwrMkzsRZcL
	m1JYg2ow==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wDeAs-00000003e6K-2ISR;
	Fri, 17 Apr 2026 08:03:38 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wDeAn-00000003e5H-2TBN
	for barebox@lists.infradead.org;
	Fri, 17 Apr 2026 08:03:36 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wDeAm-0007vU-5F; Fri, 17 Apr 2026 10:03:32 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wDeAl-005oT1-38;
	Fri, 17 Apr 2026 10:03:31 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wDeAl-00000000Rzr-3prO;
	Fri, 17 Apr 2026 10:03:31 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
In-Reply-To: <20260415130854.3826102-1-s.hauer@pengutronix.de>
References: <20260415130854.3826102-1-s.hauer@pengutronix.de>
Message-Id: <177641301190.107522.14886044130174848836.b4-ty@pengutronix.de>
Date: Fri, 17 Apr 2026 10:03:31 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260417_010333_631462_37008934 
X-CRM114-Status: UNSURE (   7.60  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=ham autolearn_force=no version=3.4.2
Subject: Re: [PATCH] fs: Do not mntput() the root device parent
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 15 Apr 2026 15:08:54 +0200, Sascha Hauer wrote:
> The vfs rootfs ("/") parent points to itself, so do not call mntput() on
> the parent when it's the root device as the reference counter would
> become negative.
> 
> This doesn't happen in normal configurations as we normally have a ramfs
> mounted at / and we leave fs_remove() early in that case. Some xload
> configurations have a FAT from SD/eMMC mounted at / though which leads
> to a "refcount for mount \"%s\" becomes negative\n" warning.
> 
> [...]

Applied, thanks!

[1/1] fs: Do not mntput() the root device parent
      https://git.pengutronix.de/cgit/barebox/commit/?id=e0bf33757b78 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



