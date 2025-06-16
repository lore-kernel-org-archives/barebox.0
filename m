Delivery-date: Mon, 16 Jun 2025 09:24:31 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uR4Cl-007qbM-21
	for lore@lore.pengutronix.de;
	Mon, 16 Jun 2025 09:24:31 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uR4Cj-0004z2-JV
	for lore@pengutronix.de; Mon, 16 Jun 2025 09:24:31 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=HrJUS8so4nSDwkoRKPCCX19OY/ZjI/8YgzWPLdlwlAQ=; b=ZdrKHkg5XqABLsBiWt2x/G2z1k
	qXLWBWmQJjkgwGMCXCN6mN3KR+7Q8K83k62a9hXCBFkQA2Mst5Scmt8qjWfhI8qvaRiwvGgfVjhEB
	ngNpwyFugWYkKHEohSCLWn2Teh3ZenJZOEPiIHZGNb1R582KHI0IajeLwb2FtG85sxS7Mr6Mt7+x3
	Xo8zI1oe5hhXC994gQKCuBIWgMRhPad9PLtNx8w3/nk4BdTtKuHmWvv+PV9f8AGic55XFxQ3rSIqZ
	xTxAtptPVOZz5ugcJXLhqRaEXLj0Ez62RYldd6N2y4CGDzKH/+kcVJg+M/DSCyUhJxEEE4MEoKPam
	fwCcuNEQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uR4C6-00000003cvz-29I6;
	Mon, 16 Jun 2025 07:23:50 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uR474-00000003c84-1wMC
	for barebox@lists.infradead.org;
	Mon, 16 Jun 2025 07:18:40 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.fritz.box)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1uR470-0006Gi-JI; Mon, 16 Jun 2025 09:18:34 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Mon, 16 Jun 2025 09:16:30 +0200
Message-Id: <20250616071634.811000-2-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250616071634.811000-1-a.fatoum@barebox.org>
References: <20250616071634.811000-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250616_001838_539940_2D07A37F 
X-CRM114-Status: GOOD (  10.45  )
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
X-Spam-Status: No, score=-6.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/6] lib: display_options: constify pointer to static size_human_readable buf
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The function returns a pointer to a statically allocated buffer
that's formatted with the string representation of the size.

It's a bad idea to modify it from the outside, so reflect that in the
type system.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 include/stdio.h       | 2 +-
 lib/display_options.c | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/include/stdio.h b/include/stdio.h
index 50688feff4e6..dcaed71dae05 100644
--- a/include/stdio.h
+++ b/include/stdio.h
@@ -97,7 +97,7 @@ static inline void ctrlc_handled(void)
 
 #endif
 
-char *size_human_readable(unsigned long long size);
+const char *size_human_readable(unsigned long long size);
 int readline(const char *prompt, char *buf, int len);
 
 #if (IN_PROPER && !defined(CONFIG_CONSOLE_NONE)) || \
diff --git a/lib/display_options.c b/lib/display_options.c
index d392deef0a78..b6b913310603 100644
--- a/lib/display_options.c
+++ b/lib/display_options.c
@@ -21,7 +21,7 @@
  *"as xxx KiB", "xxx.y KiB", "xxx MiB", "xxx.y MiB",
  * xxx GiB, xxx.y GiB, etc as needed;
  */
-char *size_human_readable(unsigned long long size)
+const char *size_human_readable(unsigned long long size)
 {
 	static char buf[30];
 	unsigned long m = 0, n;
-- 
2.39.5



