Delivery-date: Wed, 31 May 2023 12:27:22 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q4J35-0047z3-IO
	for lore@lore.pengutronix.de; Wed, 31 May 2023 12:27:22 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q4J33-0003QJ-A0
	for lore@pengutronix.de; Wed, 31 May 2023 12:27:21 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=oVD+83geestt4qegb2/3n/89GnLsZOIT0z0SokGWr3U=; b=4C4B8YGWZBuY95
	SDW3l04bumvIy3x03onHIXQ40wZvtpWDVrPV9Cm+1NVElu/GOktCIFoai722TDlQmMj8tCA9C9kbt
	dCt9CXiHQOxv7ui9wW1p5mwUzKqf7Vo39T/CbXAzT4EGG24WuH3Z3nxFXBiAclB82kMb8vgXncI0+
	COjEkJmO0KoHgX1hLD6HTlM4uu7UsSXYwhAaIwyMlL/yCeED3379OcKS9hlvMCzy6HzbK0ixjN2ZY
	Ay8xqt3sVawX1NHPcF60xlAuTOweNdDn6LLnRAp7Je2hj9TBcFGdsXZ0ApDtuLbui3i6A1GtHiCcx
	TdgRGRTTAPP+6wbTuStQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q4J21-00H2IL-0O;
	Wed, 31 May 2023 10:26:17 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q4J1x-00H2FK-1Z
	for barebox@lists.infradead.org;
	Wed, 31 May 2023 10:26:14 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1q4J1w-0003Iy-8L; Wed, 31 May 2023 12:26:12 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1q4J1v-0045JX-6i; Wed, 31 May 2023 12:26:11 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1q4J1u-003Xgo-Bv; Wed, 31 May 2023 12:26:10 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Wed, 31 May 2023 12:26:08 +0200
Message-Id: <20230531102609.844477-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230531_032613_524898_DE30B1B9 
X-CRM114-Status: GOOD (  11.02  )
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
Cc: Ahmad Fatoum <ahmad@a3f.at>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v2 1/2] scripts: omap3-usb-loader: fix heap overflow
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

From: Ahmad Fatoum <ahmad@a3f.at>

Newer GCC versions correctly warn that the buffer allocated by realloc
is too small. Correct the size.

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
Link: https://lore.barebox.org/20230531062703.670521-3-ahmad@a3f.at
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 scripts/omap3-usb-loader.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/scripts/omap3-usb-loader.c b/scripts/omap3-usb-loader.c
index a8d626c32f..31a03be8e7 100644
--- a/scripts/omap3-usb-loader.c
+++ b/scripts/omap3-usb-loader.c
@@ -784,7 +784,7 @@ int main(int argc, char *argv[])
 				file.addr = OMAP_BASE_ADDRESS;
 
 				/* commit the file object with the processor specified base address */
-				args->files = realloc(args->files, filecount);
+				args->files = realloc(args->files, filecount * sizeof(*args->files));
 				args->numfiles = filecount;
 				args->files[filecount - 1] = malloc(sizeof (file));
 				memcpy(args->files[filecount - 1], &file, sizeof (file));
-- 
2.39.2



