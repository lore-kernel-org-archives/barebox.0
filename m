Delivery-date: Mon, 08 Jan 2024 14:09:24 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rMpNc-008q8B-23
	for lore@lore.pengutronix.de;
	Mon, 08 Jan 2024 14:09:24 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rMpNc-0007Gu-3X
	for lore@pengutronix.de; Mon, 08 Jan 2024 14:09:24 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=+t6B9vWQI5i+K/LMMeieHGj053gHta+k3R0vv9SW4hs=; b=oOO2sFzeUbRd91IuiFSM2XK82b
	OSHTI2A3e54HUVbu62aA3pKWWa1t7mw5AR2rmtz7PUSJfW880Zk3uySdSTCfkmR1XKAz/AuKrtu2P
	OwGI7B6+qKM43Q/xaC6dNKR0+5BzVpV45OtWOSnU+BpA/oLOUiV9V38afEjOOSSxJPemIGQ5l/bpm
	LL0Li7sZAgxzGJpz0xSHsfr7nxYewJDKFMBRWKwyCIt72tRaI6vkxfsn5MFYqZ3237Wg2el6Wh7uv
	nasKlezclKPZolf8a4VTIq6w1FLDfZRRhbB0U3b8OtGHEr/46EwkXaeIqHpBpD7XMuPXBgoOcZak+
	PPInP6UQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rMpMR-005AMb-0d;
	Mon, 08 Jan 2024 13:08:11 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rMpMN-005AKt-2v
	for barebox@lists.infradead.org;
	Mon, 08 Jan 2024 13:08:09 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rMpMK-000756-82; Mon, 08 Jan 2024 14:08:04 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rMpMJ-001GFL-RY; Mon, 08 Jan 2024 14:08:03 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rMpMJ-006tXh-2T;
	Mon, 08 Jan 2024 14:08:03 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  8 Jan 2024 14:08:00 +0100
Message-Id: <20240108130800.1643437-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240108_050807_942796_26A7CECF 
X-CRM114-Status: UNSURE (   7.60  )
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
X-Spam-Status: No, score=-6.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] gitignore: ignore mvebu binary.0 firmware files
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

After a run of test/generate-dummy-fw.sh, following dummy firmware is
generated and is not matched by any .gitignore:

  arch/arm/boards/globalscale-mirabox/binary.0
  arch/arm/boards/lenovo-ix4-300d/binary.0
  arch/arm/boards/marvell-armada-xp-db/binary.0
  arch/arm/boards/marvell-armada-xp-gp/binary.0
  arch/arm/boards/netgear-rn104/binary.0
  arch/arm/boards/netgear-rn2120/binary.0
  arch/arm/boards/plathome-openblocks-ax3/binary.0
  arch/arm/boards/turris-omnia/binary.0

Add a top-level rule to make them not appear in git's untracked files
list.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 .gitignore | 1 +
 1 file changed, 1 insertion(+)

diff --git a/.gitignore b/.gitignore
index 3b9cd6a25aff..f0afd899e1a8 100644
--- a/.gitignore
+++ b/.gitignore
@@ -34,6 +34,7 @@
 *.so.dbg
 *.symtypes
 *.tab.[ch]
+binary.0
 Module.symvers
 *.dtb
 *.dtb.*
-- 
2.39.2



