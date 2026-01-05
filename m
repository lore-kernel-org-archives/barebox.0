Delivery-date: Mon, 05 Jan 2026 09:25:10 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vcftm-001SMW-0L
	for lore@lore.pengutronix.de;
	Mon, 05 Jan 2026 09:25:10 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vcftl-0001n8-Ja
	for lore@pengutronix.de; Mon, 05 Jan 2026 09:25:10 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=sBDCTRONWos3adjL+yMsqhEAO35M+Vu2kzB/uQUZF+s=; b=QR0b0rHfW0D7HdKSKBTp+sz0jh
	oo3qN4uXFj0OQd61H3L1myB7TxK8+YV9YbVjA8fGqZUeJAAuoF4/DRz883d26TF4OZYzXLHcxJ2fs
	XyRp0oa3qHCknbd6kMraD62c6XL8AS/YvikZ5kBn5H9yY3yM1K2OL/PsKqEo29bsrVOQCVTCRyI9D
	OkaOwICPwCW8IwSOI+4wbJbgsqRjkxZh25Nd/ZT3FrAK+jFk8vtuJY2f68LMSOZQb0EPVmifz9zFS
	wpHXA+t0CaFApRSoB2dsHxgDB77oeKY4t51KEZru1zbVQ+8oN9mxc1nfxjmiLNdaqsgQnT9BF3xLm
	WMSZHt5w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vcftJ-0000000Ayp1-14E7;
	Mon, 05 Jan 2026 08:24:41 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vcftH-0000000Ayoa-1ZoH
	for barebox@lists.infradead.org;
	Mon, 05 Jan 2026 08:24:40 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1vcftF-0001hj-Kb; Mon, 05 Jan 2026 09:24:37 +0100
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Mon,  5 Jan 2026 09:24:35 +0100
Message-ID: <20260105082436.3250210-1-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260105_002439_413481_EEA9E37B 
X-CRM114-Status: UNSURE (   8.71  )
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
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] Documentation: devel: contributing: fix URL ReST syntax
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Without the trailing _, we don't get a clickable link.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 Documentation/devel/contributing.rst | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devel/contributing.rst b/Documentation/devel/contributing.rst
index 45e904f78526..cb3820f23c63 100644
--- a/Documentation/devel/contributing.rst
+++ b/Documentation/devel/contributing.rst
@@ -77,7 +77,7 @@ GitHub Actions. The CI performs a range of checks, including:
 * Shuffle make dependency build order to find missing dependencies
 
 You can run the exact same tests yourself by forking the
-`the project on Github <https://github.com/barebox/barebox>`.
+`the project on Github <https://github.com/barebox/barebox>`_.
 
 Read along for instructions on reproducing locally.
 
-- 
2.47.3



