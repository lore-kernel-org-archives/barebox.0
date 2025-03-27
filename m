Delivery-date: Thu, 27 Mar 2025 08:37:54 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1txhoI-004m9k-35
	for lore@lore.pengutronix.de;
	Thu, 27 Mar 2025 08:37:54 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1txhoI-0007DJ-E0
	for lore@pengutronix.de; Thu, 27 Mar 2025 08:37:54 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=R9M6bv/QhImCnBc2Y3AIfUECIekCzoAeouxQ8BTN9E0=; b=xVFtG/Al0h91iRPDQfyRH17Ebk
	99+yH/VmpqDKYzB+tEjYG8Ij2yM62V2gUQFQO0W58b3GhNf3Z3ZaVrCgDnmd76Nztf2xFfhuuVg9Q
	vJheHw3YHlyQ5xYAUOawt77eXZZy+Bvo2JL1075vCRVMKr91ZGQPfQH/gMpAacueMuI2+4/HjObpg
	sqtmA+91wnbmNqtdnzeJ7bvLLP/p2ujlNug7arvB4WaUHASkj0JsBJJu/VSSRiGfSSyrUSx2tHACn
	2FaOAgn+Tao7C+m2u98JxxhE5syKUHENaNZ9Jqz/nmewhZxkSoFEdiNqGOCx0Vkoo1r8qaJjwLAVG
	iQm+T2DQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1txhnn-0000000ALPu-08MJ;
	Thu, 27 Mar 2025 07:37:23 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1txhnZ-0000000ALNR-4Bff
	for barebox@lists.infradead.org;
	Thu, 27 Mar 2025 07:37:20 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1txhnY-00071X-DN; Thu, 27 Mar 2025 08:37:08 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1txhnY-001t6n-0k;
	Thu, 27 Mar 2025 08:37:08 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1txhnY-003Ljm-0V;
	Thu, 27 Mar 2025 08:37:08 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20250326165949.669187-1-a.fatoum@pengutronix.de>
References: <20250326165949.669187-1-a.fatoum@pengutronix.de>
Message-Id: <174306102815.798497.17801663221164934626.b4-ty@pengutronix.de>
Date: Thu, 27 Mar 2025 08:37:08 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250327_003710_038965_55B9491E 
X-CRM114-Status: UNSURE (   9.48  )
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
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH master] fs: smhfs: fix crash when stat'ing file
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 26 Mar 2025 17:59:49 +0100, Ahmad Fatoum wrote:
> Starting with commit 7d91d564361e ("fs: replace FILE.size by f_inode.i_size"),
> struct file no longer had a size member, but instead the inode's i_size
> member is used. The inode is populated by the file system core when a
> file is first opened.
> 
> However, the semihosting file system creates a fake struct file to pass
> to smhfs_open, which duly fails, because the inode member is
> uninitialized.
> 
> [...]

Applied, thanks!

[1/1] fs: smhfs: fix crash when stat'ing file
      https://git.pengutronix.de/cgit/barebox/commit/?id=3c57263db03b (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



