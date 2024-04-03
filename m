Delivery-date: Wed, 03 Apr 2024 14:16:00 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rrzX6-0066af-2T
	for lore@lore.pengutronix.de;
	Wed, 03 Apr 2024 14:16:00 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rrzX6-0004VN-7A
	for lore@pengutronix.de; Wed, 03 Apr 2024 14:16:00 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=tqaUDA8a5jageL+soGgf5Qn7RW/I1JkdHR6H56pNLOI=; b=JGH+Pyt7q2ouMjqDJ9Yk4Akfuq
	DWG/5dfEXZ4+TTSE6d4c3nLP10qFuTnIEwMH3uSc9TUyaYB3KqWpNwXL6dOH81sPo6LYTQqhdNhG9
	yBBEP8jVFgi9aln6oJHTk+t17OSChtYCXhzjfdbEb3V0GyHfWD9sQWVhoYHH5wUmqOUltoUBE6/Yl
	EXDgMt+zlVDqWOJVuYDCQ6YH3HXeDA0zNFuTU+DbSFDko/ndWROLBtFVt/aMwjBdhwCKy6jwQTq01
	LCSENp2RSQTCIrg5Re0JHdPgU2ra6A2vcO3l5rb701On150jIjcdQDDN4rVJ6W+QnXZvyVtJ4uWSB
	bfiePgoA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rrzWf-0000000Fup4-49HQ;
	Wed, 03 Apr 2024 12:15:33 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rrzWc-0000000Fuo5-3Thc
	for barebox@lists.infradead.org;
	Wed, 03 Apr 2024 12:15:32 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1rrzWb-00048G-GC; Wed, 03 Apr 2024 14:15:29 +0200
Received: from [2a0a:edc0:2:b01:1d::c5] (helo=pty.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1rrzWb-00AAoq-3U; Wed, 03 Apr 2024 14:15:29 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1rrzWb-00CR3c-05;
	Wed, 03 Apr 2024 14:15:29 +0200
Date: Wed, 3 Apr 2024 14:15:29 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>
Message-ID: <Zg1IYSCfYYuI7_TT@pengutronix.de>
References: <20240403080703.4098404-1-s.hauer@pengutronix.de>
 <20240403080703.4098404-2-s.hauer@pengutronix.de>
 <6172e753-5de0-41f8-a38a-1e96abc8b698@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <6172e753-5de0-41f8-a38a-1e96abc8b698@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240403_051530_887767_C12AA435 
X-CRM114-Status: GOOD (  16.30  )
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
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 2/3] phy: rockchip: add pcie3 phy driver
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Wed, Apr 03, 2024 at 10:26:48AM +0200, Ahmad Fatoum wrote:
> Hello Sascha,
> 
> On 03.04.24 10:07, Sascha Hauer wrote:
> > This adds support for the Rockchip PCIe3 phy found on RK35x8 SoCs. The
> > code is taken from Linux as of Linux-6.9-rc2.
> > 
> > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> 
> Should we update the defconfigs?

Yes, but this is done as part of the MECSBC board support already, so
should be fine.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


