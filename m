Delivery-date: Fri, 14 Apr 2023 17:22:05 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pnLFU-003QO8-2X
	for lore@lore.pengutronix.de; Fri, 14 Apr 2023 17:22:04 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pnLFT-0005rz-PC
	for lore@pengutronix.de; Fri, 14 Apr 2023 17:22:04 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=dTq7P2nbpegWC65IqhMuaZroMjdUZ0Cu2XEtDK++w5U=; b=TG8nbqf/ZDvaVFXToPWC5QNnQS
	4ECRaiLnObgg2Q1OGWP/5gcaKNKmU9kTYH7OsBa8zYAEQJRsuk+iX8s+fl1vOCcxAs3/R2mzx7FWh
	vLKqIpT2Met2paBKn9tTYdEcyRI9TMviFdnSJlBEQXOTtQLkecOFqbOVYpfZUlMaUiLlxhKPB3XS+
	DxYJ/W6fUQXFHkLG43IMVEbP3go0e3eLfe7+M95PkoaGAb2eLhhCsc91F9Beiwb25LQBWLYzZtnyy
	WKfAoEK6VxDAwpAM7dAm0HGdFGuAA8BvayRhuKM7tifPJBY8b83c5iNLnpr7Umw0sJD9CNWEAHi/m
	AEn3QM8g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pnLEK-009vr5-0n;
	Fri, 14 Apr 2023 15:20:52 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pnLEH-009von-1v
	for barebox@lists.infradead.org;
	Fri, 14 Apr 2023 15:20:50 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1pnLE2-0005hP-Gx; Fri, 14 Apr 2023 17:20:34 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pnLE1-00BEIn-SG; Fri, 14 Apr 2023 17:20:33 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pnLE1-00FsQN-6O; Fri, 14 Apr 2023 17:20:33 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 14 Apr 2023 17:20:32 +0200
Message-Id: <20230414152032.3783908-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230414_082049_635165_BA96C331 
X-CRM114-Status: GOOD (  10.07  )
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
	T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH master] libfile: don't leak file descriptors in compare_file
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Depending on the state of environment, running

  while saveenv; do true; done

Can quickly lead to:

  saving environment
  could not open /dev/mmc2.barebox-environment: error 24
  saveenv: error 24

Because the leaked file descriptors gobble up the 128 we have
preallocated. Fix this.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 lib/libfile.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/lib/libfile.c b/lib/libfile.c
index b967232d198e..ebd1de3d8e4d 100644
--- a/lib/libfile.c
+++ b/lib/libfile.c
@@ -542,8 +542,10 @@ int compare_file(const char *f1, const char *f2)
 	if (ret)
 		goto err_out2;
 
-	if (s1.st_size != s2.st_size)
-		return 1;
+	if (s1.st_size != s2.st_size) {
+		ret = 1;
+		goto err_out2;
+	}
 
 	buf1 = xmalloc(RW_BUF_SIZE);
 	buf2 = xmalloc(RW_BUF_SIZE);
-- 
2.39.2



