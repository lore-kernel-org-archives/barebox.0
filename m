Delivery-date: Fri, 28 Nov 2025 11:50:41 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vOw3l-005l4b-0j
	for lore@lore.pengutronix.de;
	Fri, 28 Nov 2025 11:50:41 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vOw3k-0000oC-NY
	for lore@pengutronix.de; Fri, 28 Nov 2025 11:50:41 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=F/x6jrATmXp5qRl3qRxyjksFDy2Gxa2maasJsQCwHmE=; b=Qk4tDLvPtmMtz9tZdUWTeuvv0Y
	rEdPGJOzunS1e6gzzFsjV4fTJXWC8dH9PSwZAjmxRrgyl0NVClMW1QUGZhS4cKrfntYtf2C1VLlSG
	0Rla5WF7pKk1rufN0J2XglCgF1RBsXNF+3TH0fQewHqEBDzTy2e0nrWxPKClBHdLYivuaDvquZM5l
	2KGG3X813Xn4XKFgJOTntXM91hP7I964oQD8gSOhBVSPS+gqEOI26O5qrjUZgJY82XiirVq1qtYrO
	lroLQfPtTh8LxWmTHKqbGJIz5FsNtvJ/vcPEHObBoCAaOnJ4ydULnDdurPURrRfT3qK3CWJd2LrBB
	INsng3UQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vOw3L-00000000K0u-02PH;
	Fri, 28 Nov 2025 10:50:15 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vOw3I-00000000K0K-2qYK
	for barebox@lists.infradead.org;
	Fri, 28 Nov 2025 10:50:13 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vOw3H-0000hn-6b
	for barebox@lists.infradead.org; Fri, 28 Nov 2025 11:50:11 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vOw3H-002wLp-03
	for barebox@lists.infradead.org;
	Fri, 28 Nov 2025 11:50:11 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vOw3G-0000000AYXw-3paT
	for barebox@lists.infradead.org;
	Fri, 28 Nov 2025 11:50:10 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Fri, 28 Nov 2025 11:50:06 +0100
Message-ID: <20251128105010.2507689-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251128_025012_716300_5D5D1473 
X-CRM114-Status: UNSURE (   8.24  )
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
Subject: [PATCH] test: exit directly when invoking QEMU states on non-QEMU targets
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Ahmad Fatoum <a.fatoum@barebox.org>

Instead of running into a lot of later errors, let's just abort
immediately when trying to use --interactive with a target that doesn't
support it.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 test/strategy.py | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/test/strategy.py b/test/strategy.py
index fc65895daece..fcfa2ed48125 100644
--- a/test/strategy.py
+++ b/test/strategy.py
@@ -93,6 +93,9 @@ class BareboxTestStrategy(Strategy):
             if state == "qemu_dump_dtb":
                 self.qemu.machine += f",dumpdtb={self.target.name}.dtb"
 
+            if self.qemu is None:
+                pytest.exit(f"Can't enter {state} for non-QEMU target")
+
             cmd = self.qemu.get_qemu_base_args()
 
             cmd.append("-serial")
-- 
2.47.3



