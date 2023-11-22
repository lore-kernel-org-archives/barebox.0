Delivery-date: Wed, 22 Nov 2023 12:08:03 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r5l5O-004Fh0-1e
	for lore@lore.pengutronix.de;
	Wed, 22 Nov 2023 12:08:03 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r5l5O-0004am-Io
	for lore@pengutronix.de; Wed, 22 Nov 2023 12:08:03 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=q71T//UT6EdSPPMs7ChPlyKrBeeDWaVRJna753Chnj4=; b=b/CURDatYMdPB6orspVX+6zuEZ
	hp9KRLvCBrHpsANOZs1+dSoqsdaY5FWpkTxw9jhIPQe9Uqne1KRYHAM2tV0EQTSz4kim0cmJbuEPF
	wEED37z2TQDfFBPGSweWDOjFs2wq7DHC1VtxSRBmd+bjGbsbNhjWIJ/Ay6+RsgQubHyA4NCzPQmUo
	hIQVWBmbUjMHeXTtfrGrN9Q3w8tvttsMvqJpNX0Kb/OoF7O7W22Nq43LBNEaqEhF9Sd82CmKzx35K
	1nJ1ShMjldpOSwr7F+8jHoqa3pwwUZmOfusU07xH7DdGdcHOZZRMp/+C0Mt/IgQXUfQuhrhWx08Sq
	TNO+8R0w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r5l4D-001VvZ-0e;
	Wed, 22 Nov 2023 11:06:49 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r5l49-001VvC-24
	for barebox@lists.infradead.org;
	Wed, 22 Nov 2023 11:06:46 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <rhi@pengutronix.de>)
	id 1r5l48-0004Mg-7H; Wed, 22 Nov 2023 12:06:44 +0100
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <rhi@pengutronix.de>)
	id 1r5l47-00AnBT-Qp; Wed, 22 Nov 2023 12:06:43 +0100
Received: from rhi by dude04.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <rhi@pengutronix.de>)
	id 1r5l47-00FT50-2W;
	Wed, 22 Nov 2023 12:06:43 +0100
From: Roland Hieber <rhi@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Roland Hieber <rhi@pengutronix.de>
Date: Wed, 22 Nov 2023 12:06:41 +0100
Message-Id: <20231122110641.3683555-1-rhi@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231122_030645_676812_3602AA01 
X-CRM114-Status: GOOD (  11.03  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] commands: i2c_read: default to reading one byte
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The help text for i2c_read specifies that -c is optional:

    Usage: i2c_read [-bacrwv]

However, using i2c_read without -c falls through in do_i2c_read():

	if ((addr < 0) || (count < 1) || (addr > 0x7F))
		return COMMAND_ERROR_USAGE;

Actually make -c optional by initialising the count to 1.

Signed-off-by: Roland Hieber <rhi@pengutronix.de>
---
 commands/i2c.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/commands/i2c.c b/commands/i2c.c
index 997d49a94916..3a708531ee0a 100644
--- a/commands/i2c.c
+++ b/commands/i2c.c
@@ -195,7 +195,7 @@ static int do_i2c_read(int argc, char *argv[])
 	struct i2c_adapter *adapter = NULL;
 	struct i2c_client client;
 	u8 *buf;
-	int count = -1, addr = -1, reg = -1, verbose = 0, ret, opt, bus = 0, wide = 0;
+	int count = 1, addr = -1, reg = -1, verbose = 0, ret, opt, bus = 0, wide = 0;
 
 	while ((opt = getopt(argc, argv, "a:b:c:r:vw")) > 0) {
 		switch (opt) {
@@ -264,7 +264,7 @@ BAREBOX_CMD_HELP_OPT("-b BUS\t", "i2c bus number (default 0)")
 BAREBOX_CMD_HELP_OPT("-a ADDR\t", "i2c device address")
 BAREBOX_CMD_HELP_OPT("-r START", "start register (optional, master receive mode if none given)")
 BAREBOX_CMD_HELP_OPT("-w\t",       "use word (16 bit) wide access")
-BAREBOX_CMD_HELP_OPT("-c COUNT", "byte count")
+BAREBOX_CMD_HELP_OPT("-c COUNT", "byte count (default 1)")
 BAREBOX_CMD_HELP_OPT("-v\t",       "verbose")
 BAREBOX_CMD_HELP_END
 
-- 
2.39.2



