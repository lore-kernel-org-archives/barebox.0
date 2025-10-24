Delivery-date: Fri, 24 Oct 2025 09:55:11 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vCCdj-00BFC6-0H
	for lore@lore.pengutronix.de;
	Fri, 24 Oct 2025 09:55:11 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vCCdi-0003MK-Ij
	for lore@pengutronix.de; Fri, 24 Oct 2025 09:55:11 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=O+uC6tZC62SFFMXwD3tV4Q5dOx8j/UQ7uJ21PjwncGI=; b=Od458iHGtXOFa6f6rzp+jbz/s3
	lqiEWCfkQENem4Ksc9at8RRqU8AsYGjNQQSTmSpbknEeEXoyKcOAWn0lIJEsySudfey6WKQadqWb2
	18J1QEDBX5ekbsxQTFUj/YGqFaOqZlUe4WH4omEdCVqMUlU95hpoeqacko+GAKB/+cF7DED/I6+zI
	XXwLwVPdTr/AdT5IUwLtEPI6Xx0TjjTxUcmnNdfUDfejW+vfDvNmFyhJybRW6qqFQDyzHss0VpL8v
	uqLRuvxKgW9J6MJLy2LMDNbJ4iQSQ+JhgWFKB77LNMlu+9DLPxMF5OiJVIfKFWhStFlR+kf15xtIl
	JSnj1dOg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vCCd8-00000008aJO-0ERI;
	Fri, 24 Oct 2025 07:54:34 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vCCd5-00000008aIz-23KB
	for barebox@lists.infradead.org;
	Fri, 24 Oct 2025 07:54:32 +0000
Received: from dude06.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::5c])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <f.pflug@pengutronix.de>)
	id 1vCCd2-0003Dz-GI; Fri, 24 Oct 2025 09:54:28 +0200
From: Fabian Pflug <f.pflug@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Fabian Pflug <f.pflug@pengutronix.de>
Date: Fri, 24 Oct 2025 09:54:19 +0200
Message-ID: <20251024075419.1970552-1-f.pflug@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251024_005431_542424_5746C4DF 
X-CRM114-Status: UNSURE (   7.58  )
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
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] ARM: k3: fix wrong reference to help
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Signed-off-by: Fabian Pflug <f.pflug@pengutronix.de>
---
 arch/arm/mach-k3/common.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/mach-k3/common.c b/arch/arm/mach-k3/common.c
index 449075ba9b..04bddab6e3 100644
--- a/arch/arm/mach-k3/common.c
+++ b/arch/arm/mach-k3/common.c
@@ -168,6 +168,6 @@ BAREBOX_CMD_START(k3_authenticate_image)
 	BAREBOX_CMD_DESC("authenticate file with K3 ROM API")
 	BAREBOX_CMD_OPTS("[-o <out>] file")
 	BAREBOX_CMD_GROUP(CMD_GRP_MISC)
-	BAREBOX_CMD_HELP(k3_authenticate_image)
+	BAREBOX_CMD_HELP(cmd_k3_authenticate_image_help)
 BAREBOX_CMD_END
 #endif
-- 
2.47.3



