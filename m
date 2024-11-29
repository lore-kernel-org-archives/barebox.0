Delivery-date: Fri, 29 Nov 2024 13:02:48 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tGzhv-001qPD-2H
	for lore@lore.pengutronix.de;
	Fri, 29 Nov 2024 13:02:48 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tGzht-0001m9-TE
	for lore@pengutronix.de; Fri, 29 Nov 2024 13:02:48 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=7mH+WZLOP+Us/lxkI8zkVZzmBYBaG7Mj1OdFmCah/7U=; b=AowGvBJfuy0nVTcg0g3thsbGp3
	1k3kjdeK0CNJjh45DZrw5TDpTxh/GGnrqJPWEMI9RxL402yboP4Q5kfYPZFz8pe0moueh2JFAtPVw
	S5hxYToEqH7tuFmHWJhcVp/RLFjSZCVphGVkYnieoJSpSWXP1/juJCP+QlONln7ajEL930trEEREw
	5kIY7OfIME802eoc1TxVpbhK2pOw6rDzz9KrtiIpNOc0FXIZMpVA/4BukcwTB59fnoHBaI6WYGyHc
	pKJKzZJaWt/zd7IlEuJ1gC86ZJYSmprEX5g6m16EPAOD7gL3lT72SJK+EuDoh1cj7R4Svu683JRR7
	GSpev2wQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tGzhO-000000001RY-1JqB;
	Fri, 29 Nov 2024 12:02:14 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tGzhK-000000001Ow-1NII
	for barebox@lists.infradead.org;
	Fri, 29 Nov 2024 12:02:12 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tGzhJ-0001MD-2C; Fri, 29 Nov 2024 13:02:09 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tGzhH-000mLj-3A;
	Fri, 29 Nov 2024 13:02:08 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tGzQ9-000vyS-2P;
	Fri, 29 Nov 2024 12:44:25 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 29 Nov 2024 12:44:33 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241129-k3-r5-v1-18-67c4bb42a5c7@pengutronix.de>
References: <20241129-k3-r5-v1-0-67c4bb42a5c7@pengutronix.de>
In-Reply-To: <20241129-k3-r5-v1-0-67c4bb42a5c7@pengutronix.de>
To: "open list:BAREBOX" <barebox@lists.infradead.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1732880665; l=982;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=4mAnq2ELgfPoheILyNIgxlAyMF3FogAUnWus6/xAZYo=;
 b=VSmeu3DFU1lLlDn3rsPL8x60yv9umVfyYV4H3OJnz4FFvrpLHjFe7g1u/7VuS4M1fE4KE2A9i
 DfzPRprappOBcCvB+7m7FrbJuvOlg9HfaebC2kjauQeXwkb7FWcj/no
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241129_040210_369351_E8D22EAA 
X-CRM114-Status: GOOD (  11.01  )
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
Subject: [PATCH 18/20] ARM: beagleplay: add binary files
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

These files are generated from yaml files in U-Boot. Ideally we would
use these yaml files and convert them ourselves, but for now just use
the binary files and leave the conversion for later patches.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/beagleplay/combined-dm-cfg.bin    | Bin 0 -> 1346 bytes
 arch/arm/boards/beagleplay/combined-sysfw-cfg.bin | Bin 0 -> 1740 bytes
 2 files changed, 0 insertions(+), 0 deletions(-)

diff --git a/arch/arm/boards/beagleplay/combined-dm-cfg.bin b/arch/arm/boards/beagleplay/combined-dm-cfg.bin
new file mode 100644
index 0000000000..83fb5ee925
Binary files /dev/null and b/arch/arm/boards/beagleplay/combined-dm-cfg.bin differ
diff --git a/arch/arm/boards/beagleplay/combined-sysfw-cfg.bin b/arch/arm/boards/beagleplay/combined-sysfw-cfg.bin
new file mode 100644
index 0000000000..25f35d46ce
Binary files /dev/null and b/arch/arm/boards/beagleplay/combined-sysfw-cfg.bin differ

-- 
2.39.5



