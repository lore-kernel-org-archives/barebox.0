Delivery-date: Tue, 08 Mar 2022 12:52:44 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nRYOS-004bu9-AZ
	for lore@lore.pengutronix.de; Tue, 08 Mar 2022 12:52:44 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nRYOR-00075S-5w
	for lore@pengutronix.de; Tue, 08 Mar 2022 12:52:43 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6jztjxVTTDK/j/21x4bisqL3eY6YD94qwyL8HFh5pA8=; b=HzLcM4AkKfE3Dr
	VBaCxi4XnTfG1HY6S2Scxcv9pmnBLgcwYqxH0ufLfaIJVsfSmCWVRq5ZrYVr+bM0939CttiEqRwXR
	s/HgN64yXaJEi6JMlFflIpCaoV/yQa1xfHtT37IjqGkjOVsCjekrcoKIIvYT+kylekwm26KouwxWX
	4FSJnsBQbf7N/cGLbiNcVC1TZb7KoowE6xwdXO+dvnZha1RbBLiNiB96lRrmCmSxz2kfpYIQssUjr
	oWk0Co/mcqDaoPUaQXdarWL1g3WkpzdUdxGUQN7AR4sia1G/8cmiQV1H0pTLTAHim3TuT1r1TUkS7
	TAUC8RgETIff0odRrcQA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nRYN2-004DSi-Hc; Tue, 08 Mar 2022 11:51:16 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nRYMs-004DQ1-3P
 for barebox@lists.infradead.org; Tue, 08 Mar 2022 11:51:08 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nRYMq-0006ir-QK; Tue, 08 Mar 2022 12:51:04 +0100
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <sha@pengutronix.de>)
 id 1nRYMq-00FdcX-5G; Tue, 08 Mar 2022 12:51:04 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue,  8 Mar 2022 12:51:02 +0100
Message-Id: <20220308115103.3664883-5-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220308115103.3664883-1-s.hauer@pengutronix.de>
References: <20220308115103.3664883-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220308_035106_178268_F4AC3AA9 
X-CRM114-Status: GOOD (  11.98  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 4/5] of: platform: Change
 of_devices_ensure_probed_by_property() return value
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

of_devices_ensure_probed_by_property() returns with an error immediately
when one the calls to of_device_ensure_probed() fails. This is not the
desired behaviour. Instead, always call of_device_ensure_probed() on all
found nodes and return unsuccessfully when at least one of the nodes
failed.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/of/platform.c | 7 +++----
 1 file changed, 3 insertions(+), 4 deletions(-)

diff --git a/drivers/of/platform.c b/drivers/of/platform.c
index f22c5f2e76..4e96350ae2 100644
--- a/drivers/of/platform.c
+++ b/drivers/of/platform.c
@@ -514,16 +514,15 @@ EXPORT_SYMBOL_GPL(of_devices_ensure_probed_by_dev_id);
 int of_devices_ensure_probed_by_property(const char *property_name)
 {
 	struct device_node *node;
+	int err, ret = 0;
 
 	if (!deep_probe_is_supported())
 		return 0;
 
 	for_each_node_with_property(node, property_name) {
-		int ret;
-
 		ret = of_device_ensure_probed(node);
-		if (ret)
-			return ret;
+		if (err)
+			ret = err;
 	}
 
 	return 0;
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

