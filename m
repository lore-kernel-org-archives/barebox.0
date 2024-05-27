Delivery-date: Mon, 27 May 2024 15:30:15 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sBaQZ-000glm-0Q
	for lore@lore.pengutronix.de;
	Mon, 27 May 2024 15:30:15 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sBaQX-0003AF-Q3
	for lore@pengutronix.de; Mon, 27 May 2024 15:30:15 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=3/c3dJxoLWnJexI0VU3uF351GF9Dj6klqpTQ1DBNkmM=; b=i/IKF0jnNlegiP8DKcqrvSoXxE
	CBupMQgeBQrnOi1lZ2GIeyFMXlB9K2REYUfV166eBYsn1Orng/5inzVgx/xx6BoJe+hbY093p+Wid
	dVGrMFaEqnRObktC2zKIIBDiy5DDJC95zxtEFIz/wEOsnSbxJX1aA2QcBazDx243l4y56JvCY9LHE
	IrsGXvmwYALLmB3sGRJL/1yyjg0hmorH+3qX5Y63L7GsfOkoVJhZvBF6wsYeWsDUorGb90KLBAov6
	SiCTo3Z95nw9/un16egCNXK+RiZ8L1++WAVXFhir9W+LyBTr1Fj0IDhGC0280Wc85Pv0oPuHqu5LE
	KVkR23hQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sBaPr-0000000F5f4-3hfh;
	Mon, 27 May 2024 13:29:31 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sBaPn-0000000F5dW-3i78
	for barebox@lists.infradead.org;
	Mon, 27 May 2024 13:29:29 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <rhi@pengutronix.de>)
	id 1sBaPi-00033P-Np; Mon, 27 May 2024 15:29:22 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <rhi@pengutronix.de>)
	id 1sBaPi-003CGc-B3; Mon, 27 May 2024 15:29:22 +0200
Received: from rhi by dude04.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <rhi@pengutronix.de>)
	id 1sBaPi-004GTy-0v;
	Mon, 27 May 2024 15:29:22 +0200
From: Roland Hieber <rhi@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>,
	Roland Hieber <rhi@pengutronix.de>
Date: Mon, 27 May 2024 15:28:43 +0200
Message-Id: <20240527132842.1016597-1-rhi@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240527_062927_958388_FB61A829 
X-CRM114-Status: GOOD (  12.50  )
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
Subject: [PATCH] commands: mipi_dbi: fix null pointer dereference when writing data
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

When accessing argv[optind + i], the whole array index must stay below
argc, not only i. Also val is only 4 bytes long, so when indexed with i
(which was initialised to optind, which is at least 3) will overflow
after reading one data argument from the command line. Add a guard
against the latter case, and initialise i to 0 to fix the first problem.

Signed-off-by: Roland Hieber <rhi@pengutronix.de>
---
 commands/mipi_dbi.c | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/commands/mipi_dbi.c b/commands/mipi_dbi.c
index b9b665b72151..075d08d2ffb5 100644
--- a/commands/mipi_dbi.c
+++ b/commands/mipi_dbi.c
@@ -79,7 +79,12 @@ static int do_mipi_dbi(int argc, char *argv[])
 	if (optind == argc && !write)
 		return mipi_dbi_command_show(dbi, cmd);
 
-	for (i = optind; i < argc; i++) {
+	if (argc > 6) {
+		printf("Error: can only write up to 4 byte at once!\n");
+		return -EOVERFLOW;
+	}
+
+	for (i = 0; i + optind < argc; i++) {
 		ret = kstrtou8(argv[optind + i], 16, &val[i]);
 		if (ret < 0)
 			return ret;
-- 
2.39.2



