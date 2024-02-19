Delivery-date: Mon, 19 Feb 2024 14:31:49 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rc3kL-00EZC0-2r
	for lore@lore.pengutronix.de;
	Mon, 19 Feb 2024 14:31:49 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rc3kL-0000gy-BH
	for lore@pengutronix.de; Mon, 19 Feb 2024 14:31:49 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=yzqhPuG3Pecc4R9h9XISz+p7Ux+rr9PELbBfMLYcsaY=; b=dg/mi+62an8xnTcO98n8m6VBGO
	PxzxkQUo/IoVvIEfhgUQmUXNT/dagAJ9HfX8XTn4/7X+ddIhbpfHmJBvzA10N3UGufIzbMDAZpB0Y
	PLygX/qwrH+FpnuYC473LrSMRXHGyXm/qnldVHkmdEWzU4B9QzUX9lz747M5SQo3uN90+BBsjveB5
	lzWC2uTBikmKfLSe17FtvWlOqV3D/jqq6f8JCdZxlxMSdL0K6ECszsHw6/2TKsxrX70O3uvz0woB9
	TXuyw9748l9DeGDi/07lcatwRiwghONPo0OQzQCZDtu4CPmmJmGA7l3zNjLTBwdlAuqFw1wJB8vp3
	XwT6QOzg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rc3jf-0000000AdgD-3cU4;
	Mon, 19 Feb 2024 13:31:07 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rc3jd-0000000AdfQ-0zb1
	for barebox@lists.infradead.org;
	Mon, 19 Feb 2024 13:31:06 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rc3jZ-0000Bo-2u; Mon, 19 Feb 2024 14:31:01 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rc3jY-001f09-MG; Mon, 19 Feb 2024 14:31:00 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rc3jY-00FpUJ-1k;
	Mon, 19 Feb 2024 14:31:00 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 19 Feb 2024 14:30:59 +0100
Message-Id: <20240219133059.3771473-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240219_053105_296041_B9A8FC9E 
X-CRM114-Status: GOOD (  11.11  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH master] ddr: fsl: fix possible use of uninitalized variable
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

step_assign_addresses_interleaved() contains a loop that either sets
total_mem to a fixed value or keeps incrementing it.

If we exclusively run into the "keep incrementing it"-case, we would
start with an uninitialized total_mem. Fix this by initializing it to 0.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/ddr/fsl/main.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/ddr/fsl/main.c b/drivers/ddr/fsl/main.c
index 27303fec7e39..c8217a86ddf8 100644
--- a/drivers/ddr/fsl/main.c
+++ b/drivers/ddr/fsl/main.c
@@ -97,7 +97,7 @@ static unsigned long long step_assign_addresses_linear(struct fsl_ddr_info *pinf
 static unsigned long long step_assign_addresses_interleaved(struct fsl_ddr_info *pinfo,
 							    unsigned long long current_mem_base)
 {
-	unsigned long long total_mem, total_ctlr_mem;
+	unsigned long long total_mem = 0, total_ctlr_mem;
 	unsigned long long rank_density, ctlr_density = 0;
 	int i;
 
-- 
2.39.2



