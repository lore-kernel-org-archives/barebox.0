Delivery-date: Wed, 26 Apr 2023 21:11:26 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1prkY1-00189T-0r
	for lore@lore.pengutronix.de; Wed, 26 Apr 2023 21:11:26 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1prkY0-0003Cz-JK
	for lore@pengutronix.de; Wed, 26 Apr 2023 21:11:25 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Message-ID:Subject:To:From:Date:Reply-To:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=cze6YlGV8lkGo7HBOVqYp18v1wvQ0SSiahlNJcZKJp8=; b=a9ThkAn5xnW9+Ach+wNGNvEgEY
	wlrZN75hppnyACKAPYLoz51pG3ZEB+yqqv2y9ZpbgAVlQusWOgFTisWmNWlNLC/Ky0yZrVuW2Dph2
	47u8kK8kZZvh00FU2F5iFLHg2LwCNHbWDEfEafEa4xeH94DSgv/ss+8+4gjqrhLJR0pQq6QlL6Oa7
	TSIm+D9iXST535seGSzuyCZX4G2FYKUabKJ4mjPqT6eniVmKsTeuTlnc5UPIolrNDwA9J4dFkZ4OD
	l8bE/8CNP4R9p6FbiYELUZH2ZlbMQL4mEOkgd7cX84q/sCAMDdckMmiBadgegwV4Q4Zivcsdqf3mY
	+y3XL8Fg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1prkWT-004fsy-2g;
	Wed, 26 Apr 2023 19:09:49 +0000
Received: from mail.andi.de1.cc ([2a01:238:4321:8900:456f:ecd6:43e:202c])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1prkWQ-004fsQ-26
	for barebox@lists.infradead.org;
	Wed, 26 Apr 2023 19:09:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=kemnade.info; s=20220719; h=Content-Transfer-Encoding:Content-Type:
	MIME-Version:Message-ID:Subject:To:From:Date:Sender:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=cze6YlGV8lkGo7HBOVqYp18v1wvQ0SSiahlNJcZKJp8=; b=e9r/vM41SjWYIHwq8KFHNH5J6L
	8VxzA76r27OysNqyOkMRa/bqYBWWvJG/gqc98RQ7L2FyGNUQwXo5Mr2pAtnQyiPW+Dq3tgmnDKxPF
	uDgCeneApcmvrbGnkt4Am41mCW6YEEeP3uZzzMNzc3/yfdLc1zrLBYDg49sV226nV1pq3/fzj+7fo
	MPMw2mAg82yt06gNoN57lrH8/aDaHZOuKuIsG/xBhekOABuzdWnM6eA7wmFhav9E2G7+3uLH6pcD5
	GINZXYIo6PImZ0s+TobVZF611qNXD7l2EM7YBDzGlsmLDr1co+Fm9xoLPiV6sUHwF2iH+EuGBvN93
	DvEt22Cg==;
Received: from p200300ccff09c2001a3da2fffebfd33a.dip0.t-ipconnect.de ([2003:cc:ff09:c200:1a3d:a2ff:febf:d33a] helo=aktux)
	by mail.andi.de1.cc with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.89)
	(envelope-from <andreas@kemnade.info>)
	id 1prkWI-0007u0-Pm; Wed, 26 Apr 2023 21:09:38 +0200
Date: Wed, 26 Apr 2023 21:09:36 +0200
From: Andreas Kemnade <andreas@kemnade.info>
To: barebox@lists.infradead.org, jbe@pengutronix.de
Message-ID: <20230426210936.7531e177@aktux>
X-Mailer: Claws Mail 4.1.1 (GTK 3.24.24; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230426_120946_865643_4D0DEEE2 
X-CRM114-Status: UNSURE (   5.67  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: rn5t618 vs. rn5t568
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi,

just looked a bit around in the source and stumbled across drivers/mfd/rn5t568.c

It contains
 * MFD core driver for Ricoh RN5T618 PMIC

but the filename is rn5t568.c That is very confusing.
 a compatible ricoh,rn5t568 (but 567) does not exist in the kernel.

So which chip this is really about? Did not analyse things deeper yet.

I am also curious because I wrote most stuff in the kernel about the rn5t618/rc5t619.

Regards,
Andreas


