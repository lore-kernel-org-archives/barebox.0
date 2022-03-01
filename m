Delivery-date: Tue, 01 Mar 2022 10:21:43 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nOyhT-00EE50-Cv
	for lore@lore.pengutronix.de; Tue, 01 Mar 2022 10:21:43 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nOyhR-0003WS-Vl
	for lore@pengutronix.de; Tue, 01 Mar 2022 10:21:42 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=vR7ZrAZjp3Npvq4e7BrADhs5kma19Ddf+n8mAvfxIPQ=; b=PNRgU8H77XGi/k
	Fxsmdp5rQCsFZ+xk1ctP1BpX5lCXHzCdzVT/wzI1K+r+bPoF2gGI28s3jWT/k6xbYwCt9D3SrLEov
	B5DKJBR5A8znROFEiqnLlUwXhZs2NM2+ZwjIRK1VvNmlcD7hs2Fc2lAqzJ/aRqOluGm9pB31XLdDj
	8tqu6xQw8BMO2PfFABewxVFnkzns42E47x9UPCmqOQaXjXPEkHQKMoaysaCZik2ak/dJGaNCWbD2E
	rZ3+U5B6wSaWVrY+eNKRtc3oHHNjqmph0zPU72OwaAP5j0WSWtdQYFMIP2BHRiRdNYbjr99BumdDO
	2RsYsRwyxEWFU/2Aygbw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nOygJ-00Foxn-IA; Tue, 01 Mar 2022 09:20:31 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nOygF-00Fowx-10
 for barebox@lists.infradead.org; Tue, 01 Mar 2022 09:20:28 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1nOygD-0003DM-Q4; Tue, 01 Mar 2022 10:20:25 +0100
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <afa@pengutronix.de>)
 id 1nOygD-00E8GA-BT; Tue, 01 Mar 2022 10:20:25 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue,  1 Mar 2022 10:20:24 +0100
Message-Id: <20220301092024.3368293-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220301_012027_090401_8A95673C 
X-CRM114-Status: GOOD (  11.05  )
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
Subject: [PATCH] bootm: add missing space in error message
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

There is no space between the "at" and the hex base address currently.
Fix the formatting.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/bootm.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/common/bootm.c b/common/bootm.c
index 89e3e93f2ce0..a8b560c046c3 100644
--- a/common/bootm.c
+++ b/common/bootm.c
@@ -113,7 +113,7 @@ int bootm_load_os(struct image_data *data, unsigned long load_address)
 				load_address, kernel_size);
 		if (!data->os_res) {
 			pr_err("unable to request SDRAM region for kernel at"
-					"0x%08llx-0x%08llx\n",
+					" 0x%08llx-0x%08llx\n",
 				(unsigned long long)load_address,
 				(unsigned long long)load_address + kernel_size - 1);
 			return -ENOMEM;
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

