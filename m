Delivery-date: Tue, 05 Dec 2023 12:37:55 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rATkQ-00473e-1Z
	for lore@lore.pengutronix.de;
	Tue, 05 Dec 2023 12:37:55 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rATkQ-0006G1-HW
	for lore@pengutronix.de; Tue, 05 Dec 2023 12:37:55 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=QyolrtA5Vu78IB3G6gquIU9scw7hH+aGz6CWhBy0n0I=; b=hp78/ghFFoDm1yAcFFSX6GzEow
	dirpmr3HL4D/KpnXSu/rYwsosELugwdVDcYh7qKXlQN376vfivwM1FGAoskXTmhCw8B2sCW/z+fXl
	Txm5WgpWuVfNXPqp8cm5DCA6A6xYd06wBjOpEr0yOa9WCjRn/A5nsVkp+JZ0DlaQJ+s8hhKh+5Q2d
	U2PRS4GGkP4LtjVGcaZnJIoj1a+7+28C8udknGU9nIwKqQFfzGKG9OlDtYs+ZyhdRjNTZOc2jF2Y9
	fb6lJgo3QL1NcfSworcn+zD1HIbmLeAQIsATk9O+lZqzOAtEvCAuv4jauNGAKJkLGcrwTdL3sePbe
	fAvIDe2A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rATj0-0079HP-3B;
	Tue, 05 Dec 2023 11:36:26 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rATiw-0079Fm-29
	for barebox@lists.infradead.org;
	Tue, 05 Dec 2023 11:36:23 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rATiv-0005wB-Fo; Tue, 05 Dec 2023 12:36:21 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rATiv-00DjOY-3U; Tue, 05 Dec 2023 12:36:21 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rATiv-00H1fd-04;
	Tue, 05 Dec 2023 12:36:21 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue,  5 Dec 2023 12:36:18 +0100
Message-Id: <20231205113618.3966168-4-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231205113618.3966168-1-a.fatoum@pengutronix.de>
References: <20231205113618.3966168-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231205_033622_710739_2DB9A0CE 
X-CRM114-Status: GOOD (  12.68  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 3/3] FIT: match best configuration when multiple are compatible
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Currently, we match the first compatible configuration. There may be
multiple matching configurations however and we should continue looking
for a better match if a match didn't achieve maximal score.

Do that by checking score against OF_DEVICE_COMPATIBLE_MAX_SCORE and
continuing the search if unequal.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/image-fit.c | 15 ++++++++++++---
 1 file changed, 12 insertions(+), 3 deletions(-)

diff --git a/common/image-fit.c b/common/image-fit.c
index 5ef5013bd41d..b16752de05bc 100644
--- a/common/image-fit.c
+++ b/common/image-fit.c
@@ -720,6 +720,7 @@ static int fit_find_compatible_unit(struct device_node *conf_node,
 {
 	struct device_node *child = NULL;
 	struct device_node *barebox_root;
+	int best_score = 0;
 	const char *machine;
 	int ret;
 
@@ -732,13 +733,21 @@ static int fit_find_compatible_unit(struct device_node *conf_node,
 		return -ENOENT;
 
 	for_each_child_of_node(conf_node, child) {
-		if (of_device_is_compatible(child, machine)) {
+		int score = of_device_is_compatible(child, machine);
+		if (score > best_score) {
+			best_score = score;
 			*unit = child->name;
-			pr_info("matching unit '%s' found\n", *unit);
-			return 0;
+
+			if (score == OF_DEVICE_COMPATIBLE_MAX_SCORE)
+				break;
 		}
 	}
 
+	if (best_score) {
+		pr_info("matching unit '%s' found\n", *unit);
+		return 0;
+	}
+
 default_unit:
 	pr_info("No match found. Trying default.\n");
 	if (of_property_read_string(conf_node, "default", unit) == 0)
-- 
2.39.2



