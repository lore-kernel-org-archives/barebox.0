Delivery-date: Fri, 06 Aug 2021 11:35:22 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mBwGA-0004Sq-8g
	for lore@lore.pengutronix.de; Fri, 06 Aug 2021 11:35:22 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mBwG9-0001ir-Ei
	for lore@pengutronix.de; Fri, 06 Aug 2021 11:35:22 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=x0ewS3KSIsfE8CfO2NeQLRzZ0q0cbXRf8Fb+grHOAHQ=; b=GkhJ+KaHC39gB9
	VXa9ULxa0pgrFNBBtZbVUVM9eev8cDnP2XoaDp+judf5w1+X2bDiH9U2Yk8nri5GeQKuqN7L4e05W
	+r5oGQEvVsJ3YhLC3HgUfkU8o127EZPjXA4x87cCbrR0Wc2DLAHW63yYy44uPv/dcsMjpAi2ogRmv
	CKDQzEnkNUHmEPVB492J0HQQPsCexN9yqtQhkgQIqzmX+UFrjJtWzTspAzePYU0b9y62jSeABcrs3
	4S2MQ1kDTV27Fiesph7TJ+sAYH5CrsCxt+EeZjXKQAdgrCFGPCEptdMwhIFVH58UFTssUZFnVfv80
	otZ239l9NjJ6dapSkf2Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mBwEk-00Bzz0-Ke; Fri, 06 Aug 2021 09:33:54 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mBwEc-00Bzyg-Vv
 for barebox@lists.infradead.org; Fri, 06 Aug 2021 09:33:50 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>) id 1mBwEZ-0001bK-P9
 for barebox@lists.infradead.org; Fri, 06 Aug 2021 11:33:43 +0200
Received: from mfe by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>) id 1mBwEZ-0002p4-Ak
 for barebox@lists.infradead.org; Fri, 06 Aug 2021 11:33:43 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: barebox@lists.infradead.org
Date: Fri,  6 Aug 2021 11:33:37 +0200
Message-Id: <20210806093337.10153-1-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210806_023347_071123_86475E00 
X-CRM114-Status: UNSURE (   8.31  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] scripts: bareboxenv: add erase hint if build as host-tool
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The bareboxenv behviour is different if used as host-tool. As host-tool
the erase is skipped which can confuse the user. Add a help note as hot
fix. In the long term we should add the host-tool erase support as well.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 scripts/bareboxenv.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/scripts/bareboxenv.c b/scripts/bareboxenv.c
index bdff644335..f1706a5e17 100644
--- a/scripts/bareboxenv.c
+++ b/scripts/bareboxenv.c
@@ -98,6 +98,12 @@ static void usage(char *prgname)
 	printf( "Usage : %s [OPTION] DIRECTORY FILE\n"
 		"Load a barebox environment sector into a directory or\n"
 		"save a directory into a barebox environment sector\n"
+#ifndef __BAREBOX__
+		"\n"
+		"Attention:\n"
+		"Depending on your environment backend storage you need to\n"
+		"erase FILE before you save the new environment.\n"
+#endif
 		"\n"
 		"options:\n"
 		"  -s        save (directory -> environment sector)\n"
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

