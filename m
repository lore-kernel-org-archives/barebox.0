Delivery-date: Wed, 02 Jul 2025 09:31:40 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uWrwS-00DE9Q-2c
	for lore@lore.pengutronix.de;
	Wed, 02 Jul 2025 09:31:40 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uWrwS-0002Tj-Ag
	for lore@pengutronix.de; Wed, 02 Jul 2025 09:31:40 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Qotx6+Cf+uUAwUBoWnvmNHvramcNxgUNF2mIEyJ/5ps=; b=4M6ZSBrh+RCkl+HRj1T/U5N3Q0
	aLBK/nExOQRfuHMUJJ1r4wb8JVQRIqiuXdjsdQneHi2q5cOOIbH9ZpoAjjYSfFk1vgaQaQLHWkCAV
	s2XNinn0dBLzuVQnz1zdAlL3GsYDUoWAZMCWEWX2p+OxvGLRkHHLi/LeThNS2FHnlvcezFSU99f0z
	rzUVnGNetKMEJd4fbhNO8rJYVptYHDIFDhC0OAOtZgCUoySi3M9uDk4nAnabC+ula3oZWLReNDfWv
	VKO+pLyAW+YRJburqYI7jQCMZOfq2rCJzXbslQqtx2/6L4pYatMrdiQ089Ru8xUldDpxNcG6MuMB9
	P1Bcs+uA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uWrvw-00000007VH2-2oox;
	Wed, 02 Jul 2025 07:31:09 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uWrvs-00000007VG6-0Frw
	for barebox@lists.infradead.org;
	Wed, 02 Jul 2025 07:31:07 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uWrvo-0001yg-Rg; Wed, 02 Jul 2025 09:31:00 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uWrvo-006Ok5-28;
	Wed, 02 Jul 2025 09:31:00 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uWrvo-004a07-1x;
	Wed, 02 Jul 2025 09:31:00 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
In-Reply-To: <20250701071637.390845-1-s.hauer@pengutronix.de>
References: <20250701071637.390845-1-s.hauer@pengutronix.de>
Message-Id: <175144146060.1091573.13243748826617303478.b4-ty@pengutronix.de>
Date: Wed, 02 Jul 2025 09:31:00 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250702_003104_102456_1FC09329 
X-CRM114-Status: UNSURE (   5.52  )
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
Subject: Re: [PATCH] common: drop duplicate inclusion of
 common/boards/Kconfig
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Tue, 01 Jul 2025 09:16:37 +0200, Sascha Hauer wrote:
> Commit b3d50a2b40 ("common: factor out debugging options into separate
> files") accidently added a second inclusion of common/boards/Kconfig.
> Drop the duplicate.
> 
> 

Applied, thanks!

[1/1] common: drop duplicate inclusion of common/boards/Kconfig
      https://git.pengutronix.de/cgit/barebox/commit/?id=9e13d690b9ee (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



