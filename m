Delivery-date: Fri, 22 Mar 2024 17:50:35 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rni6F-0007MS-0I
	for lore@lore.pengutronix.de;
	Fri, 22 Mar 2024 17:50:35 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rni6E-0002OU-Dr
	for lore@pengutronix.de; Fri, 22 Mar 2024 17:50:35 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=TIV4zwZpkdO6fKYUavkBAqsTU5W1sCxOWhiqloc0KKc=; b=00S8p0GFRmJoRZ3CEF/xDRvCDa
	Rq9I/4bVo7Pz0WcS3EAvSDt+q1W8A+UZgTabvms31UCjgFLStc0CGupIPdrdhS5cSfUwcAWK7/sKY
	yzkDtueqtEaYwTq1xgwQqPjb2Ai0FQUYy+OGMKgJ1PQeAiv6NwB9Y3tQYrG2+dDVYYKruthMEpQS6
	PYafdvFPtnxIKq6q2qYCw7nqrCulwisiZUa4tn1WPzvpB+B1NJW5BC5/0G2YOmz+yXj2gNxi8+BPu
	5J0isnSo+WsE0EU80+w6LzR3TCNesnGY0nHDT7DDmFnyyqbA6aZ48MYuX64ABI7APdZ6l7Dn8LePH
	XuiqKewg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rni5l-000000081CR-0np9;
	Fri, 22 Mar 2024 16:50:05 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rni5c-0000000816r-3ctx
	for barebox@lists.infradead.org;
	Fri, 22 Mar 2024 16:49:59 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1rni5b-0001y5-Mr
	for barebox@lists.infradead.org; Fri, 22 Mar 2024 17:49:55 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: barebox@lists.infradead.org
Date: Fri, 22 Mar 2024 17:49:46 +0100
Message-Id: <20240322164953.1772129-1-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240322_094957_016116_93625150 
X-CRM114-Status: UNSURE (   8.34  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/8] of: overlay: add of.overlay.fitconfigpattern param
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Add the a parameter which will be used by image-fit to decide if a
config node belongs to a devicetree-overlay.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 drivers/of/overlay.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/of/overlay.c b/drivers/of/overlay.c
index 2d2367fc101b..27dc6443b237 100644
--- a/drivers/of/overlay.c
+++ b/drivers/of/overlay.c
@@ -396,6 +396,7 @@ int of_register_overlay(struct device_node *overlay)
 	return of_register_fixup(of_overlay_fixup, overlay);
 }
 
+static char *of_overlay_fitconfigpattern;
 static char *of_overlay_filepattern;
 static char *of_overlay_dir;
 static char *of_overlay_basedir;
@@ -586,6 +587,7 @@ static struct of_overlay_filter of_overlay_compatible_filter = {
 
 static int of_overlay_init(void)
 {
+	of_overlay_fitconfigpattern = strdup("*.dtbo");
 	of_overlay_filepattern = strdup("*");
 	of_overlay_filter = strdup("filepattern compatible");
 	of_overlay_set_basedir("/");
@@ -594,6 +596,7 @@ static int of_overlay_init(void)
 	globalvar_add_simple_string("of.overlay.filepattern", &of_overlay_filepattern);
 	globalvar_add_simple_string("of.overlay.filter", &of_overlay_filter);
 	globalvar_add_simple_string("of.overlay.dir", &of_overlay_dir);
+	globalvar_add_simple_string("of.overlay.fitconfigpattern", &of_overlay_fitconfigpattern);
 
 	of_overlay_register_filter(&of_overlay_filepattern_filter);
 	of_overlay_register_filter(&of_overlay_compatible_filter);
@@ -608,3 +611,4 @@ BAREBOX_MAGICVAR(global.of.overlay.compatible, "space separated list of compatib
 BAREBOX_MAGICVAR(global.of.overlay.filepattern, "space separated list of filepatterns an overlay must match");
 BAREBOX_MAGICVAR(global.of.overlay.dir, "Directory to look for dt overlays");
 BAREBOX_MAGICVAR(global.of.overlay.filter, "space separated list of filters");
+BAREBOX_MAGICVAR(global.of.overlay.fitconfigpattern, "FIT config node name pattern to look for dt overlays");
-- 
2.39.2



