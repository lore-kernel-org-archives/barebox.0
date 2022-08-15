Delivery-date: Mon, 15 Aug 2022 08:41:20 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oNTmn-0069NY-Rz
	for lore@lore.pengutronix.de; Mon, 15 Aug 2022 08:41:19 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oNTmo-0008OV-EQ
	for lore@pengutronix.de; Mon, 15 Aug 2022 08:41:19 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=yQWHDFoIIXa2csdmYbgwMepQsG2KfyES4BY3eillNDI=; b=GMaqTUra92LbT1i4plY4wZ5ENE
	IG//0A0MkyAmkXpHHU8j5WlhOnbuwRIX2Vvc5/oipHZP6H+i46FHhFmrWt1okx4fXWyUgpHTA5PLj
	JwJrZ3cla7RqG1+3nhYkEHuKF6yaJ1nKOsbrdHUYO8mgynxFj4mhfyly2AvWAIlAVRrcZZtrIPBGT
	Ay+5J9bT7iEMyASOp1t4+Ekk+F4C9WWxyIYhwa+VdmPdcTUOAAOecKdumMbMyHIqmOD3Cz3Kzbr51
	bn38a4bVcKjSYFJ/WFK5PV2qw71ZgqJbxTw6R+v/fYWvKxcHOfZXkZMC8FcyjncEKT6VxmxrrCPHU
	naycYqxg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oNTkp-00C4V6-HD; Mon, 15 Aug 2022 06:39:16 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oNTki-00C4NF-KH
	for barebox@lists.infradead.org; Mon, 15 Aug 2022 06:39:10 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1oNTkV-0007oL-Os; Mon, 15 Aug 2022 08:38:55 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oNTkS-003rqj-P9; Mon, 15 Aug 2022 08:38:55 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oNTkU-002pIY-H8; Mon, 15 Aug 2022 08:38:54 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: rcz@pengutronix.de,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 15 Aug 2022 08:38:53 +0200
Message-Id: <20220815063853.672239-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220814_233908_704300_2ADA0D3C 
X-CRM114-Status: UNSURE (   9.24  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH master] ARM: i.MX8M: HABv4: make barebox SHA256 embedding POSIX-shell compatible
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

C-Style printf "\xHH" is not supported by a POSIX shell,
while printf "\oOOO" is. As we use printf "\xHH" for converting the
textual output of sha256sum into binary, systems using dash as shell
will end up embedding literal \xHH characters in the output resulting in
an ubootable barebox when CONFIG_PBL_VERIFY_PIGGY=y:

  !hash mismatch, refusing to decompress

Fix this by using octal escape sequences instead.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 images/Makefile | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/images/Makefile b/images/Makefile
index c79f1a272e9c..7a8bb94fe0df 100644
--- a/images/Makefile
+++ b/images/Makefile
@@ -113,7 +113,8 @@ $(obj)/piggy.o: $(obj)/barebox.z FORCE
 $(obj)/sha_sum.o: $(obj)/barebox.sha.bin FORCE
 
 quiet_cmd_sha256bin ?= SHA-BIN $@
-      cmd_sha256bin ?= printf "$(shell awk '{printf $$1}' < $(obj)/barebox.sum | sed -e 's/../\\x&/g' )" > $@
+      cmd_sha256bin = printf "$(shell sed 's/ .*$$//;s/../0x&\n/g;s/\n$$//' $(obj)/barebox.sum | \
+			while read -r byte; do printf '\%o' $$byte; done)" > $@
 
 quiet_cmd_sha256sum ?= SHA     $@
       cmd_sha256sum ?= sha256sum $(obj)/barebox.z > $@
-- 
2.30.2



