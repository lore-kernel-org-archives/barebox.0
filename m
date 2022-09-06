Delivery-date: Tue, 06 Sep 2022 12:22:51 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oVVjG-008VNJ-0D
	for lore@lore.pengutronix.de; Tue, 06 Sep 2022 12:22:51 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oVVjF-0004Dm-CH
	for lore@pengutronix.de; Tue, 06 Sep 2022 12:22:51 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=QFI38U5bBPHiXstr69ozWhyBra0wRYEYk7cylzV6hgk=; b=Ocij5p5r/grHBDdX8nGOmV0aPf
	UFk50HDQo2QmwcNGqhVPEVsOXz7zLTWrCdv0FSoOh3BdbDUIm0d2WtP7SgtLdsBtDjsNzZecSjcjY
	OcPdPbklvmXBBBg8YQ4tZulZ4dLXQ9zDF4zBu1PjFlBUYg8yqhSYPSuMajERcjuEJWs2k04sjl52Z
	MQipnChECB4dx0OixKLGHjKCjF2Rh3fAHKaManipuI6H3W6DI57bavE092CFZeW2s2yeudbOlgQmf
	xZ4F1nmO5WO8pkxSQ1Dpyw0fEunZvGIFlwDPEzMlr9VbCihc25FifQ1bw6dw4xFDBOwO0Dpc/UB1i
	X28HPpcw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oVVhY-00CMlx-Gw; Tue, 06 Sep 2022 10:21:04 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oVVhR-00CMgs-Mv
	for barebox@lists.infradead.org; Tue, 06 Sep 2022 10:20:59 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oVVhN-0003gW-7m; Tue, 06 Sep 2022 12:20:53 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1oVVhK-004ESj-Lq; Tue, 06 Sep 2022 12:20:52 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1oVVhL-005j0L-Hk; Tue, 06 Sep 2022 12:20:51 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue,  6 Sep 2022 12:20:49 +0200
Message-Id: <20220906102049.1364561-5-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220906102049.1364561-1-s.hauer@pengutronix.de>
References: <20220906102049.1364561-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220906_032057_784446_8C75A781 
X-CRM114-Status: GOOD (  11.54  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 4/4] ratp: i2c: Do not return error
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The RATP command implementations should only return an error on internal
failures. When an i2c command failed we should return 0 though to
actually send the error message. Without it the remote would just wait
for a response until it times out.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/ratp/i2c.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/common/ratp/i2c.c b/common/ratp/i2c.c
index c14bbbf9b9..404ddd2ece 100644
--- a/common/ratp/i2c.c
+++ b/common/ratp/i2c.c
@@ -162,7 +162,7 @@ out:
 	*rsp = (struct ratp_bb *)i2c_read_rsp;
 	*rsp_len = i2c_read_rsp_len;
 
-	return ret;
+	return 0;
 }
 
 BAREBOX_RATP_CMD_START(I2C_READ)
@@ -271,7 +271,7 @@ out:
 	*rsp = (struct ratp_bb *)i2c_write_rsp;
 	*rsp_len = sizeof(*i2c_write_rsp);
 
-	return ret;
+	return 0;
 }
 
 BAREBOX_RATP_CMD_START(I2C_WRITE)
-- 
2.30.2



