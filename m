Delivery-date: Fri, 05 Mar 2021 19:42:58 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lIFPe-00035F-PC
	for lore@lore.pengutronix.de; Fri, 05 Mar 2021 19:42:58 +0100
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lIFPe-0002YC-06
	for lore@pengutronix.de; Fri, 05 Mar 2021 19:42:58 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:MIME-Version:Cc:List-Subscribe:List-Help:List-Post:List-Archive
	:List-Unsubscribe:List-Id:References:In-Reply-To:Message-Id:Date:Subject:To:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=4BK3ZpAE8Mf3KQlHb8wBhjcI2Doq6035xM5wEyr+uLQ=; b=q/Ve5TBAiD6NVJ3n/iOgbKOlzE
	uiVAR4EWeuv9mGGhZVjX1l16uzMdkzkcuRcEIw0F3JQFps0YTDA/loWZ7qSUXXtmFGFUhGxAHl5t7
	EQ3ings+5CyVHGWz/D4nyegB2hy7l+tACAQ6YQC9ukdCqQOtPScp+icXGyO4746Na/Cd95sbV53sq
	UnGuHCvMFwUamF/i1OgvAS4r5dBejQjM+5bWjvn/4Kp2Cb2qkPGIWIc2X0vVpr6PmtxqTBjeWTMBc
	Kh9i2jdMQ8WZ4iEnxBcPNw9sfzfzgcygZMBOadfG+ZDeRMjMZrtTEW15hbVqtqq+9dBV80/COeyw5
	yhtQx9zg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lIFOk-00G0vU-Lu; Fri, 05 Mar 2021 18:42:02 +0000
Received: from mib.mailinblack.com ([137.74.84.110])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lIFON-00G0po-J1
 for barebox@lists.infradead.org; Fri, 05 Mar 2021 18:41:42 +0000
Received: from localhost (localhost [127.0.0.1])
 by mib.mailinblack.com (Postfix) with ESMTP id 5BCEA1A5728
 for <barebox@lists.infradead.org>; Fri,  5 Mar 2021 18:41:39 +0000 (UTC)
Received: from mib.mailinblack.com (localhost [127.0.0.1])
 by mib.mailinblack.com with SMTP (Mib Daemon ) id KLWN9F3F;
 Fri, 05 Mar 2021 18:41:39 +0000 (UTC)
Received: from zimbra2.kalray.eu (zimbra2.kalray.eu [92.103.151.219])
 by mib.mailinblack.com (Postfix) with ESMTPS id 3434C1A5726;
 Fri,  5 Mar 2021 18:41:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by zimbra2.kalray.eu (Postfix) with ESMTP id 0DA7C27E073C;
 Fri,  5 Mar 2021 19:41:39 +0100 (CET)
Received: from zimbra2.kalray.eu ([127.0.0.1])
 by localhost (zimbra2.kalray.eu [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id wP4NcaP025KB; Fri,  5 Mar 2021 19:41:38 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
 by zimbra2.kalray.eu (Postfix) with ESMTP id B778327E0732;
 Fri,  5 Mar 2021 19:41:38 +0100 (CET)
DKIM-Filter: OpenDKIM Filter v2.10.3 zimbra2.kalray.eu B778327E0732
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kalray.eu;
 s=32AE1B44-9502-11E5-BA35-3734643DEF29; t=1614969698;
 bh=dUujLHNsh4aY/rMR/Z7QrxO4rupRE/x5WlmZjdywCz0=;
 h=From:To:Date:Message-Id;
 b=YQ7jTkbAez8+AzjYIUtw6+L12bel1S8ds6DVSR1raIibG7AuoJMBQ966Px6A0lWu6
 okEgrLDXkm77mT5oaQb8WUl1mx/btzdMYMXSJfF/kI6SLiPGtfJUFlVRgjq1d3A8VF
 j/98rieHTd2kZBooIJ1q2NiikXyWfUoaSx1Ug1hI=
X-Virus-Scanned: amavisd-new at zimbra2.kalray.eu
Received: from zimbra2.kalray.eu ([127.0.0.1])
 by localhost (zimbra2.kalray.eu [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id B-SxRfnLFeOP; Fri,  5 Mar 2021 19:41:38 +0100 (CET)
Received: from tellis.lin.mbt.kalray.eu (unknown [192.168.36.206])
 by zimbra2.kalray.eu (Postfix) with ESMTPSA id 9C05127E0673;
 Fri,  5 Mar 2021 19:41:38 +0100 (CET)
From: Jules Maselbas <jmaselbas@kalray.eu>
To: barebox@lists.infradead.org
Date: Fri,  5 Mar 2021 19:33:27 +0100
Message-Id: <20210305183327.29753-5-jmaselbas@kalray.eu>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210305183327.29753-1-jmaselbas@kalray.eu>
References: <20210305183327.29753-1-jmaselbas@kalray.eu>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210305_184140_512280_BA9F2804 
X-CRM114-Status: UNSURE (   5.68  )
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
Cc: Yann Sionneau <ysionneau@kalray.eu>, Jules Maselbas <jmaselbas@kalray.eu>,
 Ahmad Fatoum <a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v2 5/5] kvx: lib: dtb: Remove unused variable
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Local variables `root` and `ret` are not used anymore, remove them.

Signed-off-by: Jules Maselbas <jmaselbas@kalray.eu>
---
changes v1 -> v2: nothing
---
 arch/kvx/lib/dtb.c | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/arch/kvx/lib/dtb.c b/arch/kvx/lib/dtb.c
index 54ffddaf0..09898017c 100644
--- a/arch/kvx/lib/dtb.c
+++ b/arch/kvx/lib/dtb.c
@@ -9,9 +9,6 @@
 
 static int of_kvx_init(void)
 {
-	int ret;
-	struct device_node *root;
-
 	barebox_register_fdt(boot_dtb);
 
 	return 0;
-- 
2.17.1



_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

