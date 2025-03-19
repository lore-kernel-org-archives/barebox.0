Delivery-date: Wed, 19 Mar 2025 13:36:14 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tusec-001SEq-1p
	for lore@lore.pengutronix.de;
	Wed, 19 Mar 2025 13:36:14 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tuseb-00043n-DS
	for lore@pengutronix.de; Wed, 19 Mar 2025 13:36:13 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=gNp1Ek9mIZWI1esm+dSFNLbRr9IjzwKqOuZSO9bzIrA=; b=HSH80Fo/TBS/Y5967SDli/i0kG
	SCfeSYj64CWLIAQ3+/ftmsdi3RhrPG7/WokF9Fa4s0i2moGMHr47ncnjRgjBT+V/nI+htyizT0dSP
	scl5M+LdQaY/SIOF2QRfr/chwpT8Im9WU/nARw5qVZ+SZ1WWfpLuonX1OTKgNwd6Qs3auESGhdhb1
	XNgGqmS3tmIbeTzQzAe7TlYLffYcd3FiSHyuxlJO5Ud2h+aogA30JULM8IiCV4JKNcz30LCCpM2Zf
	ziJoqMxm3gJ0DOiWSzFCKlirnPji2YeM9UUYLU/FBj70LZp/40tsb0T09d4wPK1IpSfsEg5v+pEFs
	jw/C2LFA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tusdy-00000008zYn-31tP;
	Wed, 19 Mar 2025 12:35:34 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tusb4-00000008z0Z-2ArZ
	for barebox@lists.infradead.org;
	Wed, 19 Mar 2025 12:32:36 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tusb2-0003H7-L0; Wed, 19 Mar 2025 13:32:32 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tusb2-000air-09;
	Wed, 19 Mar 2025 13:32:32 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tusb2-00APV5-1I;
	Wed, 19 Mar 2025 13:32:32 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: "open list:BAREBOX" <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
In-Reply-To: <20250318-filetype-size-reduction-v1-0-4f463ffae7d0@pengutronix.de>
References: <20250318-filetype-size-reduction-v1-0-4f463ffae7d0@pengutronix.de>
Message-Id: <174238755239.2481153.12007766666223606397.b4-ty@pengutronix.de>
Date: Wed, 19 Mar 2025 13:32:32 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250319_053234_559267_37038912 
X-CRM114-Status: UNSURE (   8.21  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 0/7] filetype: Some size reduction patches
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Tue, 18 Mar 2025 15:41:41 +0100, Sascha Hauer wrote:
> The am335x_mlo_defconfig is very size constrained and doesn't build
> within these constraint anymore for some time. The filetype detection
> code has become quite big and offers some opportunities for size
> reduction. Specifically file_detect_type() is quite big, but many
> callers are only interested in some specific file types like supported
> file systems or supported compressed binary formats. This series
> introduces some more specific smaller file detection functions so that
> we can get rid of the big file_detect_type() in the binary.
> 
> [...]

Applied, thanks!

[1/7] filetype: add file_detect_compression_type()
      https://git.pengutronix.de/cgit/barebox/commit/?id=519153fd74cb (link may not be stable)
[2/7] filetype: add file_detect_fs_type()
      https://git.pengutronix.de/cgit/barebox/commit/?id=b25680a9c995 (link may not be stable)
[3/7] filetype: add function pointer to file_name_detect_type_offset()
      https://git.pengutronix.de/cgit/barebox/commit/?id=834d9b644638 (link may not be stable)
[4/7] filetype: let cdev_detect_type() only detect filesystems
      https://git.pengutronix.de/cgit/barebox/commit/?id=dcf835a983c9 (link may not be stable)
[5/7] filetype: make file type strings optional
      https://git.pengutronix.de/cgit/barebox/commit/?id=09702e4a00ec (link may not be stable)
[6/7] ARM: am33xx: myirtech-myd: add MLO specific device tree
      https://git.pengutronix.de/cgit/barebox/commit/?id=75914e1c1983 (link may not be stable)
[7/7] ARM: am335x_mlo_defconfig: disable file type strings
      https://git.pengutronix.de/cgit/barebox/commit/?id=285d88922cad (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



