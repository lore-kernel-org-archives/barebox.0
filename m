Delivery-date: Fri, 25 Aug 2023 19:30:57 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qZaeA-008gwy-Fj
	for lore@lore.pengutronix.de; Fri, 25 Aug 2023 19:30:57 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qZae7-0005pZ-Tc
	for lore@pengutronix.de; Fri, 25 Aug 2023 19:30:56 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=qvWJR+g/xml/+IpX8Svp3yQYCjgTgwRma6SLFHrIkFM=; b=BdUIBURqNiqiUtfS/WGfeeg8U4
	G2tIFBeNDBb94GVIIPzx2KOG9JjDVKyTk+LfSnAfS0MJHE9rZlqWeQOQ5vra06BUasyaviIH4Wj1T
	MG1qyi+Cy36DAn/qtbCmstkCl9APRPVOJcMdCKPcbXp5VhRooBw5C1hTTJ6kpK4QhgqhLGaRMvm7D
	aIuuZDmPjQOnFHYjsS/srI8A4Tl/zWIV25fucfwMFoUamSOtKh6bkfPNbzcFQRQsOS62WiZe1Dlup
	6sV+WEbQzNZzXUHj8TRsSmS84y0PmYWMj1Xf20wAGHU0MKvXIhp3/YLIjzrqzdFVZ2l+Rut1PpX98
	CoCuS93A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qZad0-005n3e-00;
	Fri, 25 Aug 2023 17:29:46 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qZacx-005n3C-0T
	for barebox@lists.infradead.org;
	Fri, 25 Aug 2023 17:29:44 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1qZacv-0005al-I3; Fri, 25 Aug 2023 19:29:41 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1qZacu-001Yt2-T6; Fri, 25 Aug 2023 19:29:40 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <afa@pengutronix.de>)
	id 1qZacu-00BzV2-1m;
	Fri, 25 Aug 2023 19:29:40 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 25 Aug 2023 19:29:39 +0200
Message-Id: <20230825172939.2857999-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230825172250.2857448-1-a.fatoum@pengutronix.de>
References: <20230825172250.2857448-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230825_102943_189250_A54F45C4 
X-CRM114-Status: GOOD (  10.66  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] fixup! fastboot: scale default sparse max_download_size with available memory
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

mem_malloc_end is the end address, so we need to add one to get the size
out.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
Forgot to squash
---
 include/memory.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/include/memory.h b/include/memory.h
index 73642dd5aaa5..9c2a037610b6 100644
--- a/include/memory.h
+++ b/include/memory.h
@@ -12,7 +12,7 @@ ulong mem_malloc_end(void);
 
 static inline ulong mem_malloc_size(void)
 {
-	return mem_malloc_end() - mem_malloc_start();
+	return mem_malloc_end() - mem_malloc_start() + 1;
 }
 
 struct memory_bank {
-- 
2.39.2



