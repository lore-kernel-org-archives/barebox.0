Delivery-date: Fri, 19 May 2023 12:02:44 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pzwwg-006XqN-7O
	for lore@lore.pengutronix.de; Fri, 19 May 2023 12:02:44 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pzwwd-0004OB-D7
	for lore@pengutronix.de; Fri, 19 May 2023 12:02:43 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=bvHB0TbD4pI5sbw5zP+2i07slQeO2aS6aseRiAzvdOE=; b=AfLnLEHwMXGlaIVdcpIn4cA2xT
	35tn68hmULaASWXNiQ7+AmEQeaD331MCW8va70XyJj8e9Hq+XFa2QW5IIuEpL1QBEFr34Ia6aUYSc
	u3Awb/oSHqIlRxDGe1bMlxrU0t3vD+c81FSE8N9TzM7aEA7L7tC95rd3D0YaUNk9UXUa479AAP45W
	8aAZW30lyaPAFpFY5+4qt6AF5S2PWMm/UHE1EjQKaoWGMDusFOxI1mpM3c5TTacVYxw7IEemq4s9j
	sIsLUrBW5N0xvN6+SMDONZhokwSReMzyfPqJ685f2j/5RfIDiP/TvKN+cJXP3i04ktFTYVGhhsqa0
	OcRrHLeQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pzwvW-00Fp1K-2T;
	Fri, 19 May 2023 10:01:34 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pzwvP-00Foxp-0s
	for barebox@lists.infradead.org;
	Fri, 19 May 2023 10:01:29 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1pzwvL-0003qh-DL; Fri, 19 May 2023 12:01:23 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pzwvK-001HUG-P5; Fri, 19 May 2023 12:01:22 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pzwvJ-009vVR-8V; Fri, 19 May 2023 12:01:21 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 19 May 2023 12:01:17 +0200
Message-Id: <20230519100120.2365970-4-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230519100120.2365970-1-a.fatoum@pengutronix.de>
References: <20230519100120.2365970-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230519_030127_321031_CCA52633 
X-CRM114-Status: GOOD (  11.85  )
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
Subject: [PATCH v2 3/6] commands: of_property: use new of_read_file
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Recent addition of of_read_file also involved switching over nearly all
open coded instances to use it. of_property seems the only remaining
instance where of_read_file can be used, but isn't. Switch it over.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v1 -> v2:
  - new patch
---
 commands/of_property.c | 13 +++----------
 1 file changed, 3 insertions(+), 10 deletions(-)

diff --git a/commands/of_property.c b/commands/of_property.c
index b507a3541e0a..0c914c55c6bf 100644
--- a/commands/of_property.c
+++ b/commands/of_property.c
@@ -305,7 +305,6 @@ static int do_of_property(int argc, char *argv[])
 	char *path, *propname;
 	char *dtbfile = NULL;
 	int ret = 0;
-	size_t size;
 	struct fdt_header *fdt = NULL;
 	struct device_node *root = NULL;
 
@@ -340,15 +339,9 @@ static int do_of_property(int argc, char *argv[])
 		return COMMAND_ERROR_USAGE;
 
 	if (dtbfile) {
-		fdt = read_file(dtbfile, &size);
-		if (!fdt) {
-			printf("unable to read %s: %m\n", dtbfile);
-			return -errno;
-		}
-
-		root = of_unflatten_dtb(fdt, size);
-
-		free(fdt);
+		root = of_read_file(dtbfile);
+		if (IS_ERR(root))
+			return PTR_ERR(root);
 	}
 
 	if (set) {
-- 
2.39.2



