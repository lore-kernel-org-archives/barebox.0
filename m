Delivery-date: Tue, 05 Aug 2025 11:34:28 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ujE3w-007FTT-09
	for lore@lore.pengutronix.de;
	Tue, 05 Aug 2025 11:34:28 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ujE3u-0003JA-A5
	for lore@pengutronix.de; Tue, 05 Aug 2025 11:34:27 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=cRvcX3C0vOJlp+419E/R2pmUiUrbA/W1fdwzMHfBezs=; b=1w+2my6LN2/aMljA+PpuLVyzmT
	3lbP/MdIdElY+kmjifpokrehOypz00rR1RwxCxD3k8oYsLRQPtjNh60glXvbIzSnl8xm3pIJGenHD
	W/jj+9fkVRjTLnfnCh1LVt8JibgIyik+VWIye9cH8PaPeQChAYjy6djLTaDj9UCd1DDHQ2XWsP8Vu
	hr6/2ZcQRLt5mBjKoMWq2e8J4sY12EwhF/SRYB4JpMn2ZRAgsneHsMmaXNoj2BJl7tF2I4fjKw5gW
	KwMt0rjLHFtiRBpG6WB4NfY53sR7tA3rScmTqVE0QNDD6N2YRPRDDD6FwC7CIXyrMAx8rmeiA1GnP
	QuCeZRpg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujE38-0000000CMbI-0eGg;
	Tue, 05 Aug 2025 09:33:38 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujDbV-0000000CIo0-3v31
	for barebox@lists.infradead.org;
	Tue, 05 Aug 2025 09:05:07 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1ujDbU-0007ko-Pq; Tue, 05 Aug 2025 11:05:04 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1ujDbU-00C16g-1y;
	Tue, 05 Aug 2025 11:05:04 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1ujDbU-00Ehc8-1m;
	Tue, 05 Aug 2025 11:05:04 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>, 
 Michael Tretter <m.tretter@pengutronix.de>
In-Reply-To: <20250805-rkimage-cleanup-v2-0-5d015f6c9059@pengutronix.de>
References: <20250805-rkimage-cleanup-v2-0-5d015f6c9059@pengutronix.de>
Message-Id: <175438470455.3504197.13119408455484215237.b4-ty@pengutronix.de>
Date: Tue, 05 Aug 2025 11:05:04 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250805_020505_982887_DAEE0FB2 
X-CRM114-Status: GOOD (  10.60  )
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
Subject: Re: [PATCH v2 0/5] scripts: rockchip: fix and cleanup rkimage
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Tue, 05 Aug 2025 09:33:45 +0200, Michael Tretter wrote:
> This series prepares the Rockchip tooling for creating and handling
> signed images. The patch series for adding code to sign the images will
> follow as a second step.
> 
> Fix the wrong size when calculating the hash over the image header.
> Rename the hashtype field in the header to flags, because there are
> other flags in this field, too. Extend the rk-usb-loader to accept
> signed images and load signed images to a board via USB.
> 
> [...]

Applied, thanks!

[1/5] scripts: rockchip: use correct header size
      https://git.pengutronix.de/cgit/barebox/commit/?id=c18d35095359 (link may not be stable)
[2/5] scripts: rockchip: rename hashtype to flags
      https://git.pengutronix.de/cgit/barebox/commit/?id=6c4a4a53e5ed (link may not be stable)
[3/5] scripts: rockchip: add helper for updating hash
      https://git.pengutronix.de/cgit/barebox/commit/?id=962206c43dcb (link may not be stable)
[4/5] scripts: rockchip: rename NEWIDB_MAGIC to NEWIDB_MAGIC_RKNS
      https://git.pengutronix.de/cgit/barebox/commit/?id=e9fac66f7ca1 (link may not be stable)
[5/5] scripts: rockchip: support RKSS images
      https://git.pengutronix.de/cgit/barebox/commit/?id=b41d4972d9a9 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



