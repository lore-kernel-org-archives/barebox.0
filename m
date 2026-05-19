Delivery-date: Tue, 19 May 2026 17:15:43 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wPMAZ-001XNs-2D
	for lore@lore.pengutronix.de;
	Tue, 19 May 2026 17:15:43 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wPMAZ-00020i-51
	for lore@pengutronix.de; Tue, 19 May 2026 17:15:43 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=gfdc8mI+zJq+TE02aOD5OICkK/4F7oF/9WScTIpmKCM=; b=XoaEmvmnSMm2oZsghNAU12hPvR
	XBA5fuzsqIw3P4eX6ywsHen0MmdM66ND10VYwHvFGt1RbiOHMY34fzNRCE/CoPnkgwYY5vvCEme5v
	xZJNA64qbp9ApLeMeK1lSQ1XOrdq0AYsQKga3GZ7tDAPDxnPZC2ccLgjqkMUPimytS9RJGRhU8FtN
	x687fhd36Gt8C4EGSoT8Q1ArAlAvEdcQh7PrtOagoGqxCrN0Ie3aA0KK6n6350NOsrjtWUmSfiizn
	986wrh3Bx02iCcQwwVHtye3hsizyT0I93F7JHxU400xx+gPb2QO2fV2LxXgVlAY83pXpAl0NTa9p6
	Oarj13fw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPMAG-00000001xuP-1474;
	Tue, 19 May 2026 15:15:24 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPMAC-00000001xth-3g1t
	for barebox@lists.infradead.org;
	Tue, 19 May 2026 15:15:22 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wPMAB-0001xL-6f; Tue, 19 May 2026 17:15:19 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wPMAA-000mgv-1s;
	Tue, 19 May 2026 17:15:19 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wPMAB-000000067kU-0Ox2;
	Tue, 19 May 2026 17:15:19 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
In-Reply-To: <20260519132846.596555-2-s.hauer@pengutronix.de>
References: <20260519132846.596555-1-s.hauer@pengutronix.de>
 <20260519132846.596555-2-s.hauer@pengutronix.de>
Message-Id: <177920371909.1459699.18393975180967024363.b4-ty@pengutronix.de>
Date: Tue, 19 May 2026 17:15:19 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260519_081520_920395_801B4292 
X-CRM114-Status: UNSURE (   8.75  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=ham autolearn_force=no version=3.4.2
Subject: Re: [PATCH 2/2] fs: jffs2: zero initialize allocated inode
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Tue, 19 May 2026 15:28:46 +0200, Sascha Hauer wrote:
> JFFS2 uses kmem_cache_alloc() to allocate an ubifs_inode. The memory
> returned from kmem_cache_alloc() is not zeroed. jffs2_alloc_inode()
> zeroes all fields in the ubifs_inode except the embedded struct inode.
> In Linux this is done in the kmem_cache constructor function which calls
> inode_init_once(). In barebox we have the constructor function as well,
> but we don't have an equivalent of inode_init_once(), so the constructor
> is empty.  zero the inode in the constructor instead so that barebox
> gets a zeroed inode.
> 
> [...]

Applied, thanks!

[2/2] fs: jffs2: zero initialize allocated inode
      https://git.pengutronix.de/cgit/barebox/commit/?id=e6610f524cec (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



