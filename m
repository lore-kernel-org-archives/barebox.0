Delivery-date: Sat, 30 Oct 2021 19:59:55 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mgse3-0001Cd-Hc
	for lore@lore.pengutronix.de; Sat, 30 Oct 2021 19:59:55 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mgse1-0002X1-TK
	for lore@pengutronix.de; Sat, 30 Oct 2021 19:59:55 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2oPoOOMCnovnrt88kThwPXcjwQKC1iYYzuZ98V6TonE=; b=vLgHGRS2XrvIVT
	0M+UhHcxckAJkrfsuev7NVJNNlUcScrGYChf9UbhaoYEd567KU7ryYZmI+gr9xzbmoWL2MRPgvJ4J
	Ur8Kb9F7uLGiF7he2SexHw9i6ZXnWfnfyc3YJ5pwStGCMUwscM0zJNVo2irvJgLpMpV3XDtmGS1gO
	vLFQpBF9dQfIV0qTSEUDrf0+Lq6fW8tP1sbas0bL1kY1xFas6jAnV1OhhNm0GstFE/zbr0JnV0SyZ
	MsdMEWPM30tit93l7a02LwqgJ6yn3lr4ckLAnZKj6j8DVzR/Z8R/SgMw3SFO6aGoiOKW5MhvxVYko
	VaNMrZcc/t11RSQzH48w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mgscp-00DNPC-En; Sat, 30 Oct 2021 17:58:39 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mgscR-00DNE3-DL
 for barebox@lists.infradead.org; Sat, 30 Oct 2021 17:58:18 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1mgscQ-00020a-6c; Sat, 30 Oct 2021 19:58:14 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <afa@pengutronix.de>)
 id 1mgscP-009YIc-B8; Sat, 30 Oct 2021 19:58:13 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Sat, 30 Oct 2021 19:58:11 +0200
Message-Id: <20211030175812.2276705-9-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20211030175812.2276705-1-a.fatoum@pengutronix.de>
References: <20211030175812.2276705-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211030_105815_494117_9696932B 
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 8/9] reset: socfpga: error out on failure to request memory
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

IOMEM() can't fail, but dev_request_mem_resource() can. Fix the error
check.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/reset/reset-socfpga.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/reset/reset-socfpga.c b/drivers/reset/reset-socfpga.c
index fc5c50e13ca9..146cc92eb3ce 100644
--- a/drivers/reset/reset-socfpga.c
+++ b/drivers/reset/reset-socfpga.c
@@ -84,9 +84,10 @@ static int socfpga_reset_probe(struct device_d *dev)
 	data = xzalloc(sizeof(*data));
 
 	res = dev_request_mem_resource(dev, 0);
+	if (IS_ERR(res))
+		return PTR_ERR(res);
+
 	data->membase = IOMEM(res->start);
-	if (IS_ERR(data->membase))
-		return PTR_ERR(data->membase);
 
 	if (of_property_read_u32(np, "altr,modrst-offset", &modrst_offset)) {
 		dev_warn(dev, "missing altr,modrst-offset property, assuming 0x10!\n");
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

