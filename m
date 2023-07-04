Delivery-date: Tue, 04 Jul 2023 14:17:47 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qGeya-00EmNU-MS
	for lore@lore.pengutronix.de; Tue, 04 Jul 2023 14:17:47 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qGeyY-0007bR-G4
	for lore@pengutronix.de; Tue, 04 Jul 2023 14:17:46 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=CK/Ekw6rGYTw7y0lrrFqEvM0PoxUigWs4hiDw8eDLuI=; b=dolf3L4rH0+eFQRBrgATFdtJjj
	unDVVZ/cbPh8f/+DVbnF1ZpjH5b6Qxcq5g/sUXiiPht14psuY2Rr1qL4uwRhHSlp2MsTmaykZUg30
	MUGliOLbnICxy+t9xRENCBo6OWn9lpnngV5Y6VCKVKs8hiuXzfP591y7Z9DP1Mc4LvlLB9+MIzCW9
	KLEtMC79Ejb6Dz1BDuw+M+gREWLUelSp3rwfcS3A/8xL5BkW3QEhS07mdIWs4pWnee59wGBtjyygg
	lVvv92YH7bb5r9CVIDuKZAU++MgYjbXQwdTZi9tlTzIJ1SzUTIh0QaYjh8nwUrRMxEHzXfGpr1xcF
	W5sNaBqw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qGexM-00DEKn-0g;
	Tue, 04 Jul 2023 12:16:32 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qGexJ-00DEJR-1I
	for barebox@lists.infradead.org;
	Tue, 04 Jul 2023 12:16:30 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1qGexH-0007Sg-V2
	for barebox@lists.infradead.org; Tue, 04 Jul 2023 14:16:28 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: barebox@lists.infradead.org
Date: Tue,  4 Jul 2023 14:16:25 +0200
Message-Id: <20230704121626.835344-1-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230704_051629_440529_C6A2F4CD 
X-CRM114-Status: GOOD (  11.08  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v3 1/2] commands: test: simplify argv handling
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Decrement argc first before check the closing ']' to avoid the
*argv[argc - 1]. No functional change.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
v3:
- no changes
v2:
- no changes

 commands/test.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/commands/test.c b/commands/test.c
index c845cec017..c1b84c42ef 100644
--- a/commands/test.c
+++ b/commands/test.c
@@ -75,11 +75,11 @@ static int do_test(int argc, char *argv[])
 	struct stat statbuf;
 
 	if (*argv[0] == '[') {
-		if (*argv[argc - 1] != ']') {
+		argc--;
+		if (*argv[argc] != ']') {
 			printf("[: missing `]'\n");
 			return 1;
 		}
-		argc--;
 	}
 
 	/* args? */
-- 
2.39.2



