Delivery-date: Thu, 11 Dec 2025 21:42:47 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vTnUt-00AQSV-0N
	for lore@lore.pengutronix.de;
	Thu, 11 Dec 2025 21:42:47 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vTnUs-0000nk-J1
	for lore@pengutronix.de; Thu, 11 Dec 2025 21:42:47 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=F2/MI+8vLjfkQbc1y6YoM2meWN1KJjuLyL2K4Cu0xPo=; b=AnW+d65K6hHzd4XVQF5kHi3EHc
	vIy8i53ptU1AQc8WXDB7N5SoKdgv//zmvkR9NSlg5V4zv4TSYVaWURnN267uMkyFd4ooZBF16KvHg
	t4l6ed5o4lOw30XXtWrNq83ktX0zQKgjhL91+T51Sl94bkRPjyGKt55sjXnNoFmCiPxlDzznDDTtu
	f84Vzj0IrvBA9rf/AyoHyH4BdpK1l1XKeFfIRivGbMYACohSU1PTVlHlqsKRNKWxwdGQd1CNkqHvA
	Zt3KpsgaINZT6pxnxfePcgLqTptxiicPMYABcLuviWhtds1og4r10m3lacH4ybaIV9EGK+F5VUaO8
	xGxllT1w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vTnUU-0000000HGym-0yT8;
	Thu, 11 Dec 2025 20:42:22 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vTnUT-0000000HGxC-0bRx
	for barebox@bombadil.infradead.org;
	Thu, 11 Dec 2025 20:42:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
	Content-Description:In-Reply-To:References;
	bh=F2/MI+8vLjfkQbc1y6YoM2meWN1KJjuLyL2K4Cu0xPo=; b=nXQonokNKg8q53E5OEJs8mTpuL
	kE15bCyMPPy62faA9ogjIXPGKfCJ01Df4vHxRRsbL0oEf1jKTnT0/xuY0lVD5Xa0tDISgebrzKT1u
	IL+3QJVwrE6vwkjf6IphZXRUda8irgyWbxNaHbJ6L8hDk+8dY+PH04tsiW/btnw4F9jSOixmERRcn
	mRqArfDSIJS6vU+quA/hh8EFjPqq1yXxp4fGuOF2wB9lilyBD7CVYCslvEXTAGoTxIzYsFDvesu0U
	MLmbozfxM7QXhgs5f6HCM11yYK4fSIkzimVC+zq9Sk37S8a8Sgc3QaH1/CFT00tg7iF31d3syK5BR
	opVE2fxg==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vTmcv-0000000FZy4-27fl
	for barebox@lists.infradead.org;
	Thu, 11 Dec 2025 19:47:03 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vTnUP-0000hi-Qh; Thu, 11 Dec 2025 21:42:17 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vTnUP-005BXS-24;
	Thu, 11 Dec 2025 21:42:17 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vTnUP-0000000Ar0e-2IeK;
	Thu, 11 Dec 2025 21:42:17 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 11 Dec 2025 21:42:16 +0100
Message-ID: <20251211204217.2586463-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251211_194701_602575_F30557B1 
X-CRM114-Status: UNSURE (   9.65  )
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
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] memory: fix dangling if in for_each_reserved_region
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This macro will cause issues if followed by an if else statement.
Invert the condition to fix this.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/memory.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/include/memory.h b/include/memory.h
index 65614b97ec8b..6a6f0e2eb7d3 100644
--- a/include/memory.h
+++ b/include/memory.h
@@ -28,7 +28,7 @@ int barebox_add_memory_bank(const char *name, resource_size_t start,
 #define for_each_memory_bank(mem)	list_for_each_entry(mem, &memory_banks, list)
 #define for_each_reserved_region(mem, rsv) \
 	list_for_each_entry(rsv, &(mem)->res->children, sibling) \
-		if (is_reserved_resource(rsv))
+		if (!is_reserved_resource(rsv)) {} else
 
 #define for_each_memory_bank_region(bank, region) \
 	for_each_resource_region((bank)->res, region)
-- 
2.47.3



