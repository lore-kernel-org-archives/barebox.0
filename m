Delivery-date: Tue, 09 Mar 2021 23:54:01 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lJlEn-0000du-Lh
	for lore@lore.pengutronix.de; Tue, 09 Mar 2021 23:54:01 +0100
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lJlEm-0000xn-Sw
	for lore@pengutronix.de; Tue, 09 Mar 2021 23:54:01 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=yOyWWuQCZwNpVQ8VPIF6qEEP6/ZL+bnvkcdZh2uGadE=; b=DGnzrHgax29pEo4sV7Xa9TXx+
	cw5cCh/uNSGsTm+eQ2vIlD9CxtPnkXsN5n7dLSgdHV/I7pmSAHTSkysdRiJUMHibLdjrIBdA96J5J
	ijH3WXYaO4WJRrhXzisXjzOCPw26ZDrsndJnWq8i9zIOYnNILL08tYUnWjO4LEUDD8jQpQjVv/M7J
	qAVZXyMayM1JoTuuzEBzcS/gSqlgQeHrCiXB0396Ans7KRT1FUba8yb7nsYRSZZ+uLuZha/994MnF
	XnCTN3qUfcwDGNzs9+xZg7Cu5RxcylqHRtHsnHfVx1Z7hX6fgSsEvUBMCEAwqp8GC6UTx8ERzxfuz
	xoED+B5Dw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lJlDm-005bQP-JQ; Tue, 09 Mar 2021 22:52:58 +0000
Received: from relay3-d.mail.gandi.net ([217.70.183.195])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lJlDQ-005bPT-F6
 for barebox@lists.infradead.org; Tue, 09 Mar 2021 22:52:39 +0000
X-Originating-IP: 83.135.91.161
Received: from geraet.fritz.box (unknown [83.135.91.161])
 (Authenticated sender: ahmad@a3f.at)
 by relay3-d.mail.gandi.net (Postfix) with ESMTPSA id D23B160005;
 Tue,  9 Mar 2021 22:52:34 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
To: jbe@pengutronix.de,
	barebox@lists.infradead.org
Cc: uol@pengutronix.de,
	Ahmad Fatoum <ahmad@a3f.at>
Date: Tue,  9 Mar 2021 23:52:23 +0100
Message-Id: <20210309225223.1687415-2-ahmad@a3f.at>
X-Mailer: git-send-email 2.30.0
In-Reply-To: <20210309225223.1687415-1-ahmad@a3f.at>
References: <20210309225223.1687415-1-ahmad@a3f.at>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210309_225238_503734_6E0B6632 
X-CRM114-Status: UNSURE (   9.06  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE,URIBL_BLOCKED
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/1] x86: lib: fix link error for legacy (non-EFI) boot
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The mbr and barebox memory regions defined in the linker script overlap,
which leads recent linkers to complain loudly and abort the build:

	ld: section .bootstrapping VMA [0000000000007e00,000000000000841f]
	overlaps section .bootsector VMA [0000000000007c00,0000000000007fff]

Correcting the region boundaries fixes the error. barebox can still not
boot completely, boot it at least build and shows early debug output.

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 arch/x86/lib/barebox.lds.S | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/x86/lib/barebox.lds.S b/arch/x86/lib/barebox.lds.S
index b24c4807b59d..0747d40d752b 100644
--- a/arch/x86/lib/barebox.lds.S
+++ b/arch/x86/lib/barebox.lds.S
@@ -10,7 +10,7 @@ ENTRY(_start)
 MEMORY
 {
 	mbr(rwx): ORIGIN = TEXT_BASE, LENGTH = 2 * SECTOR_SIZE
-	barebox (rwx) : ORIGIN = TEXT_BASE + SECTOR_SIZE, LENGTH = (256 * 1024 * 1024)
+	barebox (rwx) : ORIGIN = TEXT_BASE + 2 * SECTOR_SIZE, LENGTH = (256 * 1024 * 1024)
 }
 
 SECTIONS
-- 
2.30.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

