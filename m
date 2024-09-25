Delivery-date: Wed, 25 Sep 2024 16:01:45 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1stSaO-002cMU-2r
	for lore@lore.pengutronix.de;
	Wed, 25 Sep 2024 16:01:45 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1stSaP-0002iq-Bg
	for lore@pengutronix.de; Wed, 25 Sep 2024 16:01:45 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=I+tdY425dkeesIcYqnf+5As8ApT5CujcOIeiBjsFqeY=; b=TmLlQ1wsm8vt70hZxJZq1/fkka
	NQ9qYbdF8syQoSwiaI+AxEExLXyO2ZEGHYJFMb3hZ/u90sexkY0ZtQpX7vEzjn73rewLiRzB6+SUf
	6eSesm7ODPsALih0B/8aLnWhzZCnR8GH2h95ufzGfcnhxTlGTlxdT+3RoBCzw3v3Mg9t1kX7MIxj0
	zxpE4bVihHKWe+Z43qcBpoOapjOkmxxJFmTCFZOdcV2L7gXZWgbzcnNUE23DIKc5nhPsGiS93NSqA
	ktzwk7JXZINbqqQvVMdC+sckulH38kIKM9aENdP2Yv17uwA2iBrtfsh+79MZEqmYWP8lhSESEX70p
	YVgszECA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1stSZx-00000005VZp-48zC;
	Wed, 25 Sep 2024 14:01:17 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1stSZu-00000005VWj-02wA
	for barebox@lists.infradead.org;
	Wed, 25 Sep 2024 14:01:15 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1stSZs-0002JP-Ol; Wed, 25 Sep 2024 16:01:12 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1stSZs-001SlI-80; Wed, 25 Sep 2024 16:01:12 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1stSZs-00DCyS-1z;
	Wed, 25 Sep 2024 16:01:12 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 25 Sep 2024 16:01:14 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240925-of-graph-fixes-v1-4-c0a3ac989b0c@pengutronix.de>
References: <20240925-of-graph-fixes-v1-0-c0a3ac989b0c@pengutronix.de>
In-Reply-To: <20240925-of-graph-fixes-v1-0-c0a3ac989b0c@pengutronix.de>
To: "open list:BAREBOX" <barebox@lists.infradead.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1727272872; l=829;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=fi3Vm+MXzM8U4o4iK/yBigsfJmLM1PHiW1EEQSeLL4U=;
 b=7zMSslPdR2GttZOeg4znrLLZ89KJpA+inAFOLsbKy1vCRudmO+NmNx6djnOkkswjbflI8Zc1s
 ToiqQ/ff9auDvpokzv/P/VaVvlWH7OsKDe+HmlfM92fGTOsmStV4oTC
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240925_070114_223447_D313A5F1 
X-CRM114-Status: GOOD (  10.99  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 4/5] of: of_graph: fix of_graph_get_next_endpoint()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

of_node_cmp() compares the whole node name for matching whereas
of_node_name_eq() only compares the part before the '@' sign. For
of_graph_get_next_endpoint() we need the latter. Fix this.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/of/base.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/of/base.c b/drivers/of/base.c
index 398e39340f..5981650f2a 100644
--- a/drivers/of/base.c
+++ b/drivers/of/base.c
@@ -3353,7 +3353,7 @@ struct device_node *of_graph_get_next_endpoint(const struct device_node *parent,
 			port = of_get_next_child(parent, port);
 			if (!port)
 				return NULL;
-		} while (of_node_cmp(port->name, "port"));
+		} while (port->name && !of_node_name_eq(port, "port"));
 	}
 }
 EXPORT_SYMBOL(of_graph_get_next_endpoint);

-- 
2.39.5



