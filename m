Delivery-date: Tue, 23 Sep 2025 08:31:21 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v0wYZ-0006C6-1B
	for lore@lore.pengutronix.de;
	Tue, 23 Sep 2025 08:31:21 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v0wYY-00052t-Ok
	for lore@pengutronix.de; Tue, 23 Sep 2025 08:31:19 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=hFELh90OYw4BlAnKtGOoGclF4WKB+l2dTAPfx6QECZY=; b=z45LRcC5oV+5+IG5L1OCbb2taB
	+bLtTH50JkCuCW6g48PBg2ZO+8T57wlDjL1WEuCGThMEA+rJxgavkNhss3kKXZ8GWkCc/54pnbs+3
	pd+ev+caGNdcuFg6PsNpu2PXMyogPKwaJPkODrVNTAwXCDKN1wGf/fCR4Bmwq3xTpiIVL+ueG1Gnp
	uKC+yMwLdJ2u3WoBLlNTHUihSxBUiULyWPsofIBAF4NEgpW7pPnDeCagYZ0nBR+JV1a/WI1cxXQGU
	HJoCsIjPlL0rFGYlI1iRy0kGdnYIzExAbTFGKJ1eX2FvCaOLZv+pVIym4Lz+3viFn1SUbvcQxIlex
	M/xubyNA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v0wXx-0000000CZb2-0S7l;
	Tue, 23 Sep 2025 06:30:41 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v0wXu-0000000CZaX-0zyZ
	for barebox@lists.infradead.org;
	Tue, 23 Sep 2025 06:30:39 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1v0wXs-0004xN-7O; Tue, 23 Sep 2025 08:30:36 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1v0wXr-0002rY-32;
	Tue, 23 Sep 2025 08:30:35 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1v0wXr-00000005Gea-3Xlh;
	Tue, 23 Sep 2025 08:30:35 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Tobias Waldekranz <tobias@waldekranz.com>
In-Reply-To: <20250918074455.891780-1-tobias@waldekranz.com>
References: <20250918074455.891780-1-tobias@waldekranz.com>
Message-Id: <175860903583.1255555.5295886650847434916.b4-ty@pengutronix.de>
Date: Tue, 23 Sep 2025 08:30:35 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250922_233038_280970_07A9C341 
X-CRM114-Status: UNSURE (   9.40  )
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
X-Spam-Status: No, score=-1.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	SUBJECT_IN_BLACKLIST,SUBJECT_IN_BLOCKLIST autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 00/11] dm: verity: Add transparent integrity checking
 target
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Thu, 18 Sep 2025 09:43:10 +0200, Tobias Waldekranz wrote:
> This series adds initial support for dm-verity. Notably, it does not
> include any support for validation of any root hash signature. As
> such, practical use in a production setting is still limited, unless
> you have some other way of securely determining that the root hash is
> valid.
> 
> 3/11 is where the action is.
> 
> [...]

Applied, thanks!

[01/11] dm: Add helper to manage a lower device
        https://git.pengutronix.de/cgit/barebox/commit/?id=80da07bfd0e0 (link may not be stable)
[02/11] dm: linear: Refactor to make use of the generalized cdev management
        https://git.pengutronix.de/cgit/barebox/commit/?id=bc2d05fa2df9 (link may not be stable)
[03/11] dm: verity: Add transparent integrity checking target
        https://git.pengutronix.de/cgit/barebox/commit/?id=3afa68742281 (link may not be stable)
[04/11] dm: verity: Add helper to parse superblock information
        https://git.pengutronix.de/cgit/barebox/commit/?id=f2cc4a0a5f3c (link may not be stable)
[05/11] commands: veritysetup: Create dm-verity devices
        https://git.pengutronix.de/cgit/barebox/commit/?id=086f03c157b9 (link may not be stable)
[06/11] ci: pytest: Open up testfs to more consumers than the FIT test
        https://git.pengutronix.de/cgit/barebox/commit/?id=739a1a7855f5 (link may not be stable)
[07/11] ci: pytest: Enable testfs feature on malta boards
        https://git.pengutronix.de/cgit/barebox/commit/?id=e58164d5436c (link may not be stable)
[08/11] ci: pytest: Generate test data for dm-verity
        https://git.pengutronix.de/cgit/barebox/commit/?id=812e36a3ffb2 (link may not be stable)
[09/11] test: pytest: add basic dm-verity test
        https://git.pengutronix.de/cgit/barebox/commit/?id=59eb868b8c63 (link may not be stable)
[10/11] ci: pytest: Centralize feature discovery to a separate step
        https://git.pengutronix.de/cgit/barebox/commit/?id=37caa86ca175 (link may not be stable)
[11/11] ci: pytest: Enable device-mapper labgrid tests
        https://git.pengutronix.de/cgit/barebox/commit/?id=0407b4e8400a (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



