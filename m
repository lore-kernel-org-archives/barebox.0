Delivery-date: Thu, 09 Mar 2023 11:42:34 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1paDjF-00EiDs-R9
	for lore@lore.pengutronix.de; Thu, 09 Mar 2023 11:42:34 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1paDjE-0008Mi-HO
	for lore@pengutronix.de; Thu, 09 Mar 2023 11:42:34 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=eubFhnrK5+ZhJ0bx/m1evNlBF6FdJAB3r9342NXexxE=; b=gTcQKN6k/O21gnRJCGdasu0bCp
	tXSUbB3jI1X0JszerzyOTH720mdd14oQkJjDmkfM/a2v1OQpi4PB+JyiUWxmnRySEpl4iCbUhwkUn
	b3q5ssZjEJgCu/UHA2fgIg4KOIr5zF4jxjVHnHHjZE+MqQBNTvZgQIx1v6DrQbL7dvT2+FSqQ5nOp
	2BSmfpO2+73HgsRzkKWhwJqUQ9MSKDtOjlWjD/f2MrQ1XMSt6RO0F3tQQopm10FNjyBRH7cMPAErp
	6CE/JbKZytjZKuqIAgML8+X6h6ynqhXqZAFGgxjmavPQvPq+oLPXXNcobxf1a4BF+UVgmorZ8xDIB
	5OuewmKA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1paDhf-0098I5-Pi; Thu, 09 Mar 2023 10:40:55 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1paDhT-00988u-DM
	for barebox@lists.infradead.org; Thu, 09 Mar 2023 10:40:46 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1paDhQ-0007YT-J7
	for barebox@lists.infradead.org; Thu, 09 Mar 2023 11:40:40 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
Date: Thu, 09 Mar 2023 11:40:37 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20230228-v2023-02-0-topic-flexspi-v1-5-7b3c3fa295f5@pengutronix.de>
References: <20230228-v2023-02-0-topic-flexspi-v1-0-7b3c3fa295f5@pengutronix.de>
In-Reply-To: <20230228-v2023-02-0-topic-flexspi-v1-0-7b3c3fa295f5@pengutronix.de>
To: barebox@lists.infradead.org
Cc: 
X-Mailer: b4 0.12.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230309_024043_552646_939D4E91 
X-CRM114-Status: GOOD (  10.55  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 05/21] mci: imx-esdhc-pbl: fix number of read blocks
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

We correctly calculate the buffer offset via the ofs variable by taking
the offset and the header-entry into account but the actual read is
missing this. Fix this by replace the static offset variable with the
ofs variable.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 drivers/mci/imx-esdhc-pbl.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/mci/imx-esdhc-pbl.c b/drivers/mci/imx-esdhc-pbl.c
index 40c2882dc4..0b6ab9b5d0 100644
--- a/drivers/mci/imx-esdhc-pbl.c
+++ b/drivers/mci/imx-esdhc-pbl.c
@@ -199,7 +199,7 @@ esdhc_load_image(struct fsl_esdhc_host *host, ptrdiff_t address,
 		buf = (void *)(entry - ofs);
 	}
 
-	ret = esdhc_read_blocks(host, buf, offset + len);
+	ret = esdhc_read_blocks(host, buf, ofs + len);
 	if (ret) {
 		pr_err("Loading image failed with %d\n", ret);
 		return ret;

-- 
2.30.2



