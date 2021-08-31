Delivery-date: Tue, 31 Aug 2021 18:13:53 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mL6OX-00039S-65
	for lore@lore.pengutronix.de; Tue, 31 Aug 2021 18:13:53 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mL6OS-0002je-MM
	for lore@pengutronix.de; Tue, 31 Aug 2021 18:13:53 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=pb3BNWNz/QmeT55n51mcqSTJUGYqPPtX8PE7xJM8bSE=; b=YfloUhbDTOOXl7
	uogX6+SFaRqkhxNfoDRf0TCPAbgJeJTay/inFrlcl/mGRGDyflSBm30DSDduAHBN4ODV45ZoKptRH
	FKWEi76zk/NeDm3+fwBwaH8nkrMaKzMUe30SuWLmpBjlAYrssJio/V13fpEWWOnUnu6s+dz4Zhh+s
	rto4GXznSXuWEmEKmnut8G7L1DNS0JmGeH2mCEw2EMDpPIJ9Sylvh+vlre4+ctQOb/m/9t5F/c5in
	6CrK5W9twjb3CwiWkF/mItUR6mhjTJ0Abm48GGadGo17Y8OxKSX98LDHv4j/EaTb3VjbtPgf7zNKQ
	4tBn4bvFBYbzYLy6eURg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mL6Mc-002gvV-Oj; Tue, 31 Aug 2021 16:11:54 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mL6MX-002gus-RY
 for barebox@lists.infradead.org; Tue, 31 Aug 2021 16:11:51 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1mL6MW-0002Qb-93; Tue, 31 Aug 2021 18:11:48 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1mL6MU-0001cQ-Tf; Tue, 31 Aug 2021 18:11:46 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 31 Aug 2021 18:11:39 +0200
Message-Id: <20210831161139.2988-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210831_091149_928516_1A21150B 
X-CRM114-Status: GOOD (  11.30  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH master] of: overlay: don't do fixups on empty
 global.of.overlay.dir
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

$global.of.overlay.dir is dynamically prepended with the root of the
device currently being booted. This allows use of relative paths.

Because $global.of.overlay.filepattern is * by default, this means that
all files in the root of the device will be considered overlays and
barebox will try to unflatten them leading to an error message on boot:

  ERROR: of_overlay: Failed to unflatten /mnt/mmc0.4//.root_is_rw:
	Invalid argument

Fix this by not doing any fixups at all on empty global.of.overlay.dir.

If for whatever reason, a user wants overlays at /, they can

  global.of.overlay.dir=.

Fixes: 124c64af0982 ("overlay: Add filters to choose which overlays to apply")
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/of/overlay.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/of/overlay.c b/drivers/of/overlay.c
index 42b309805fd2..25140eed31ed 100644
--- a/drivers/of/overlay.c
+++ b/drivers/of/overlay.c
@@ -460,6 +460,9 @@ static int of_overlay_global_fixup(struct device_node *root, void *data)
 	if (*of_overlay_dir == '/')
 		return of_overlay_apply_dir(root, of_overlay_dir, true);
 
+	if (*of_overlay_dir == '\0')
+		return 0;
+
 	dir = concat_path_file(of_overlay_basedir, of_overlay_dir);
 
 	ret = of_overlay_apply_dir(root, dir, true);
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

