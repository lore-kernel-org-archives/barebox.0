Delivery-date: Wed, 02 Jul 2025 14:29:04 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uWwaG-00DISp-0C
	for lore@lore.pengutronix.de;
	Wed, 02 Jul 2025 14:29:04 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uWwaF-0008AE-HS
	for lore@pengutronix.de; Wed, 02 Jul 2025 14:29:03 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=cHQA+hKNo9hiFHjVpVTPgwO3uQ6nhziHZwxzjLwqw1s=; b=n/88XerYtNQhf+XLbKhmo5QrRU
	b0zReNZU0d78Pl3cHQEoVMeshn6k/6X3HlemZIRsMxUo30pyagP0P2mMxObSNs5UpvDnjOeVv16NS
	iHO/waDE/fNKiI1gn4Dc6Wytw/3Lx4SG1RDdQV5bfTDVBmgYvs0yH27YhORsRcG0magKUjheZv6XR
	c8vXKzNYhn9nFrYpag7A7O87qLCXGTd4tA3TKSsUWRsjZMb6TYSSZtZwnjcCBKRbrdl7ogtVWqkZA
	Pv5ZVQ6xHGedDm7hAdWLBGrZVVFXs6dbeVxaUqp58XpZdh22yka6pljFJE2CIVlAgBBqXyzoosm6J
	5lD6ejSw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uWwZm-00000008K4X-3xM0;
	Wed, 02 Jul 2025 12:28:34 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uWvxG-00000008C8e-1gxU
	for barebox@lists.infradead.org;
	Wed, 02 Jul 2025 11:48:48 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uWvxF-0005Ef-5S; Wed, 02 Jul 2025 13:48:45 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uWvxE-006Qiw-39;
	Wed, 02 Jul 2025 13:48:44 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uWvxE-00EVwc-2y;
	Wed, 02 Jul 2025 13:48:44 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
In-Reply-To: <20250701101641.549515-1-s.hauer@pengutronix.de>
References: <20250701101641.549515-1-s.hauer@pengutronix.de>
Message-Id: <175145692491.3459217.16559983469524926232.b4-ty@pengutronix.de>
Date: Wed, 02 Jul 2025 13:48:44 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250702_044846_446419_3DC1ED17 
X-CRM114-Status: UNSURE (   7.95  )
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
Subject: Re: [PATCH] ARM: ARM32: Fix FIT image booting
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Tue, 01 Jul 2025 12:16:41 +0200, Sascha Hauer wrote:
> Commit 8f71bf6146acc3 ("bootm: create generic FIT image handler")
> introduced a generic FIT image handler. With this ARM32 FIT images can
> no longer be booted. The ARM32 FIT image handler used to call
> do_bootm_linux(), but with the generic FIT image handler we select the
> boot handler based on the filetype of the Kernel image which is a zImage
> and consequently we call do_bootz_linux(). do_bootz_linux() operates on
> data->os_file which points to the original FIT image, so booting fails
> with:
> 
> [...]

Applied, thanks!

[1/1] ARM: ARM32: Fix FIT image booting
      https://git.pengutronix.de/cgit/barebox/commit/?id=c2ee359ef2e0 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



