Delivery-date: Fri, 24 Oct 2025 11:07:51 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vCDm3-00BGH7-1Q
	for lore@lore.pengutronix.de;
	Fri, 24 Oct 2025 11:07:51 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vCDm0-0008GI-9u
	for lore@pengutronix.de; Fri, 24 Oct 2025 11:07:51 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ej8/AJe9ak98QmZn+H4XqLA6W86pXZ2oSnMAVjM23Hw=; b=OxEuACJ3QrJfnB+Lm16FjuAIWK
	0Lc+0YKnYUCJAB2lEQ8MEQQQqycGgHuyIDM5HJGoKdS9F4CI70Ih7AbsJiA7lYWFiBfFWQZSRoHUl
	dskH3C+9Xacw07kjqrWv57p/s26Pcar1uYVxqZD27iabl2e3mcDBkb0o1GXjwS+zwFoHStSqA1VqI
	fgww4Vyfy6BgcdJG5viHw5xTABL9cSvw+XETE9dYKkl+5WtbXENEcO5hoYrPx39q1r+08PcmYdoQD
	WyDJhsbtO3d5o/aPKdd+ET+e0KfDldrFELUp/LwteWpQk9EXXpxXQbD9oPRK7nb3BX9hZRuJhfbBx
	n3HyxEnA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vCDlS-00000008oMu-26Hs;
	Fri, 24 Oct 2025 09:07:14 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vCDlP-00000008oL1-0svs
	for barebox@lists.infradead.org;
	Fri, 24 Oct 2025 09:07:13 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vCDlN-0007x9-JX; Fri, 24 Oct 2025 11:07:09 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vCDlN-005CMI-1I;
	Fri, 24 Oct 2025 11:07:09 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vCDlN-0000000AOAP-1EzU;
	Fri, 24 Oct 2025 11:07:09 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 24 Oct 2025 11:07:06 +0200
Message-ID: <20251024090708.2476109-5-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20251024090708.2476109-1-a.fatoum@pengutronix.de>
References: <20251024090708.2476109-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251024_020711_251604_B49C45EC 
X-CRM114-Status: UNSURE (   8.72  )
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
Subject: [PATCH 5/5] Documentation: gen_commands.py: escape name in title
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Underscores in headings seem to be ignored, but let's play it safe and
escape the name as well.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 Documentation/gen_commands.py | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/Documentation/gen_commands.py b/Documentation/gen_commands.py
index f8a7ed7b879f..1a7353a854cd 100755
--- a/Documentation/gen_commands.py
+++ b/Documentation/gen_commands.py
@@ -104,9 +104,9 @@ def gen_rst(name, cmd):
     out.append('.. _command_%s:' % name)
     out.append('')
     if 'c_desc' in cmd:
-        out.append("%s - %s" % (name, ''.join(cmd['c_desc']).strip()))
+        out.append("%s - %s" % (string_escape(name), ''.join(cmd['c_desc']).strip()))
     else:
-        out.append("%s" % (name,))
+        out.append("%s" % (string_escape(name),))
     out.append('=' * len(out[-1]))
     out.append('')
     if 'c_opts' in cmd:
-- 
2.47.3



