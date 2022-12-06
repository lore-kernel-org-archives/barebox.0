Delivery-date: Tue, 06 Dec 2022 13:00:25 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1p2Wca-00CW6I-SO
	for lore@lore.pengutronix.de; Tue, 06 Dec 2022 13:00:25 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1p2Wca-0008Jh-9A
	for lore@pengutronix.de; Tue, 06 Dec 2022 13:00:24 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=OGmzMrp1cL2PFyMuiySr7mjA/t/iN7gmIBDMf7vH1Ag=; b=R9Z7A8w7cyP5XzcgtsCGmFpU8P
	kprjZqbkyJNDXrP3fGMUXGt68+DUdd0Rn4AVlJFlWwUHabUaJwpYi7NPvyGTzQ2X9HuSQ0Hn3iLoV
	Zl4A6RhzyNdjP9gUVzQN7rLlq1b1dlYkqu/6H8OSxFCAWDobVqt7uUpJg8fUHBbFu1Jmrz/sJroxl
	3CSAIqDGypgwt8+ZJR4cJA3MdEY93Z0x+Y/BICgflT8rrnnsKQNwO1lkiQU+B5nvXDKC68s6UCN+F
	fPzFRTK392loja4DAiBpD9+6wWCnmG4urvVZsAvGLH9PgyU8H3UmDc8qFSGQwC99AoFSbsMq6XwBu
	JE3HlOxg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p2Wb6-008sCh-FV; Tue, 06 Dec 2022 11:58:52 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p2Wb1-008s9M-Pc
	for barebox@lists.infradead.org; Tue, 06 Dec 2022 11:58:49 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1p2Wax-000819-Oe; Tue, 06 Dec 2022 12:58:43 +0100
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1p2Waw-002gfg-Bt; Tue, 06 Dec 2022 12:58:43 +0100
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1p2Waw-007mmn-B5; Tue, 06 Dec 2022 12:58:42 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue,  6 Dec 2022 12:58:39 +0100
Message-Id: <20221206115839.1847916-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221206_035847_865269_C1D0CB3D 
X-CRM114-Status: UNSURE (   7.25  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] fixup! ARM: i.MX8M: implement bootrom log viewing command
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

FAIL is reported even for non-HAB boot, so skip that.
0x82 is apparently documented wrongly in application note, see:
https://patchwork.ozlabs.org/project/uboot/patch/20220414163623.16500-1-fedor.ross@ifm.com/

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/mach-imx/bootrom-cmd.c | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/arch/arm/mach-imx/bootrom-cmd.c b/arch/arm/mach-imx/bootrom-cmd.c
index 6269f86cbc0d..0238d09b169f 100644
--- a/arch/arm/mach-imx/bootrom-cmd.c
+++ b/arch/arm/mach-imx/bootrom-cmd.c
@@ -117,7 +117,8 @@ static int imx8m_bootrom_decode_log(const u32 *rom_log)
 			       rom_log[++i]);
 			continue;
 		case 0x82:
-			printf("Start to execute boot device driver pre-config\n");
+			printf("Start to execute boot device driver pre-config @%u ticks\n",
+			       rom_log[++i]);
 			continue;
 		case 0x83:
 			printf("Boot device driver pre-config completes\n");
@@ -144,8 +145,8 @@ static int imx8m_bootrom_decode_log(const u32 *rom_log)
 			continue;
 
 		case 0xa0:
-			printf("Image authentication result: %s (0x%08x) @%u ticks\n",
-			       (rom_log[i+1] & 0xFF) == 0xF0 ? "PASS" : "FAIL",
+			printf("Image authentication result: %s(0x%08x) @%u ticks\n",
+			       (rom_log[i+1] & 0xFF) == 0xF0 ? "PASS " : "",
 			       rom_log[i+1], rom_log[i+2]);
 			i += 2;
 			continue;
-- 
2.30.2



