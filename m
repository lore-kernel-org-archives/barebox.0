Delivery-date: Thu, 11 Jan 2024 14:01:43 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rNugp-00Czep-1h
	for lore@lore.pengutronix.de;
	Thu, 11 Jan 2024 14:01:43 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rNugo-0000hi-Vg
	for lore@pengutronix.de; Thu, 11 Jan 2024 14:01:43 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=xh2Ni7zAwKRDM2fpvzvpYSOmR0RD1OpR7oeUKySf/+8=; b=XuKr6Isr/k9h+EUMSYOUKrOykx
	JxEVc87/4rS//Hk2ny6r6PAnbkb+21CaYwGLwIOekGOA+Nh8SjcFodIVcs1zTAw30w0wDrTEcbzTT
	/OWirrXD3K+yG5JHxQKjAixmjD23QigXHdLSelPo63xJP2kG6ptyZts2wFs620JwvehojeMXDoqSL
	9yFuO4pGyf5/qFBdfrvLn3X75vrmzjpc8F399IdAsdTGNuYaGzW8UPml8f7Bzamfspw++sQeKTLNC
	kLcaI7BExRf9KI0f4EuFbuKIzGLbZ7b/Fr7mgeFnrhLXCWqOtc5vm/RwqEkdjU2ezRbXg4cOdY+iz
	tAJDjqgQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rNufY-0005Mh-2I;
	Thu, 11 Jan 2024 13:00:24 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rNufV-0005Lp-1O
	for barebox@lists.infradead.org;
	Thu, 11 Jan 2024 13:00:22 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rNufR-00005U-SQ; Thu, 11 Jan 2024 14:00:17 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rNufQ-001vns-Ks; Thu, 11 Jan 2024 14:00:16 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rNufQ-007UJL-1n;
	Thu, 11 Jan 2024 14:00:16 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 11 Jan 2024 14:00:14 +0100
Message-Id: <20240111130015.1784217-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240111_050021_492936_D2E8085E 
X-CRM114-Status: GOOD (  11.77  )
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
X-Spam-Status: No, score=-6.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH master v2 1/2] hab: habv4: use explicitly unsigned types for pointers into SRAM
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

char is generally unsigned on ARM, but we shouldn't rely on that. HAB
code does though and compare a char against 0xdb, which would never
succeed if chars were signed. Switch to an explicitly unsigned type to
fix this.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v1 -> v2:
  - no change
---
 drivers/hab/habv4.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/hab/habv4.c b/drivers/hab/habv4.c
index 974158fd0c01..4db1e7cc0f3a 100644
--- a/drivers/hab/habv4.c
+++ b/drivers/hab/habv4.c
@@ -216,11 +216,11 @@ static enum hab_status imx8m_read_sram_events(enum hab_status status,
 {
 	struct hab_event_record *events[10];
 	int num_events = 0;
-	char *sram;
+	u8 *sram;
 	int i = 0;
 	int internal_index = 0;
 	uint16_t ev_len;
-	char *end = 0;
+	u8 *end = 0;
 	struct hab_event_record *search;
 
 	if (cpu_is_mx8mq())
-- 
2.39.2



