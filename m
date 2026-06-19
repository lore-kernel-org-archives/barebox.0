Delivery-date: Fri, 19 Jun 2026 12:24:21 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1waWOb-007ZHU-0p
	for lore@lore.pengutronix.de;
	Fri, 19 Jun 2026 12:24:21 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1waWOa-0008Uo-LQ
	for lore@pengutronix.de; Fri, 19 Jun 2026 12:24:21 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=X5v1W42MfGLumThrkl5lw4wnsyIL2ETc1GbGQbwMI0M=; b=oGnOsONkE+A8V5+zmAEMXhFMl5
	yFGZc9XEHBtJrSt++YY8K1xqWoJGnvDaqv73x6vdqvjR0snF44ks+95Yl3MGCjiHwwp3mRCBV9Y5n
	QCc96LOZ4p+OrnLh62dFyN4zoORH+OjVxVrpTf5FzBOo7mNk58Gp3BHCGpaFGWV4Shd2wMSUgY/BT
	o5mpf2vuHOhul8B7LYU3wv5IVBr7A2BWVl9opwtWSzNMRii2HKiMy6/sq4qbinwareZq1iI4Uw1hS
	R7zK6WZKFxm9JVx7VnQQronwYKF9pO0LNtEJ3MISTNfc6+VbUfZp29T5b2Qb0PhbUIuNhvfTUTbvA
	aIp9iS5Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1waWNL-00000002HB1-1Pmv;
	Fri, 19 Jun 2026 10:23:03 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1waWNI-00000002H8r-1kSM
	for barebox@lists.infradead.org;
	Fri, 19 Jun 2026 10:23:02 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 64F16201D26;
	Fri, 19 Jun 2026 12:22:56 +0200 (CEST)
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1waWNE-003aZM-0x;
	Fri, 19 Jun 2026 12:22:56 +0200
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1waWNE-00000005P8q-0oYT;
	Fri, 19 Jun 2026 12:22:56 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 19 Jun 2026 12:22:50 +0200
Message-ID: <20260619102255.1288268-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260619_032300_608681_7E5E5EB1 
X-CRM114-Status: UNSURE (   5.72  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH master] Documentation: migration-guides: add .0 to migration-2026.06
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The other files all include the stable part of the version string, so do
likewise for our most recent migration note as well.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 .../{migration-2026.06.rst => migration-2026.06.0.rst}            | 0
 1 file changed, 0 insertions(+), 0 deletions(-)
 rename Documentation/migration-guides/{migration-2026.06.rst => migration-2026.06.0.rst} (100%)

diff --git a/Documentation/migration-guides/migration-2026.06.rst b/Documentation/migration-guides/migration-2026.06.0.rst
similarity index 100%
rename from Documentation/migration-guides/migration-2026.06.rst
rename to Documentation/migration-guides/migration-2026.06.0.rst
-- 
2.47.3



