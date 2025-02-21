Delivery-date: Fri, 21 Feb 2025 14:22:59 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tlSzc-0057tY-0w
	for lore@lore.pengutronix.de;
	Fri, 21 Feb 2025 14:22:59 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tlSzb-0001Gt-4V
	for lore@pengutronix.de; Fri, 21 Feb 2025 14:22:59 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=nveepsCPjIbt7Cr4D2zX5/oSgGax84lPn3nMKBRlxCg=; b=W6OesXjd4Zsmh5xSprsvU32RTK
	1r/yEM4s4an0wjQzAcfjy0RSVH1MZi0bu0H5dxdSPXHZ/CSI9SqP6P1uSSid+m/KpjokKgOHLh/Ri
	ALaeehj6wWXHd14VQx0EIC6D54Z2tN6/aNWr25bFunMndMjn7J4y/DUF5tM6JbH+hRoF+ytfagyCW
	rEbEuMZGWQfSfdA8XVZ1MoMSdm0k7x3Cj/Rid9h/VTKrdXtoj3RIeAt7an8KMNvBgdhq5YUryA16K
	7YJZ2Hqf0aOW6rlrL2U00bV5oD9cW1PAYlthkwRJQYND8vy2oaGyvjIFSV99TpZ68goJLz9Q9JBA1
	0mIHtf9A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tlSzB-00000005dId-0Mbh;
	Fri, 21 Feb 2025 13:22:33 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tlSz8-00000005dHa-0fli
	for barebox@lists.infradead.org;
	Fri, 21 Feb 2025 13:22:31 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1tlSz6-00019y-O6; Fri, 21 Feb 2025 14:22:28 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1tlSz6-0026qy-1c;
	Fri, 21 Feb 2025 14:22:28 +0100
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1tlSz6-009ywf-1K;
	Fri, 21 Feb 2025 14:22:28 +0100
Date: Fri, 21 Feb 2025 14:22:28 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org, Jules Maselbas <jmaselbas@zdiv.net>,
	Enrico Joerns <ejo@pengutronix.de>
Message-ID: <Z7h-FCovLsUCFvBE@pengutronix.de>
References: <20250205102549.27015-1-jmaselbas@zdiv.net>
 <173891686844.239361.18192152268825416500.b4-ty@pengutronix.de>
 <ddc2507d-47e4-4cc0-98fe-ef85f34cbd98@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ddc2507d-47e4-4cc0-98fe-ef85f34cbd98@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250221_052230_197161_502CF913 
X-CRM114-Status: GOOD (  16.92  )
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
X-Spam-Status: No, score=-5.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] scripts: include: rename printk.h to printf.h
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Thu, Feb 20, 2025 at 07:38:47AM +0100, Ahmad Fatoum wrote:
> Hello Sascha,
> 
> On 07.02.25 09:27, Sascha Hauer wrote:
> > 
> > On Wed, 05 Feb 2025 11:25:49 +0100, Jules Maselbas wrote:
> >> The include scripts/include/asm-generic/bug.h relied on a printk.h
> >> compatible header which is located in the scripts/include/ and was
> >> not updated when printk.h was renamed to printf.h.
> >>
> >>
> > 
> > Applied, thanks!
> 
> Please apply this patch to master as the musl build is otherwise broken
> (glibc provides a <printf.h> header).

Did that

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


