Delivery-date: Fri, 11 Jul 2025 14:54:20 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uaDGe-00GOY1-0q
	for lore@lore.pengutronix.de;
	Fri, 11 Jul 2025 14:54:20 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uaDGd-0000jy-OL
	for lore@pengutronix.de; Fri, 11 Jul 2025 14:54:20 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=Ddhrme8YlesALz/U7B44AjpAS5T3Y+6wVjZlYexsg3k=; b=ch50+PldPQBjVd2Jj53om93H2N
	MNOtCuUckn/9WMk5A/N9xrKrUkiArYAU1IH6rMIFq5PAzb9EyXGdQeTFBRAQnD2donnKzD68NecYq
	VWT5W/Uvf29EM1wu8os256Kj0qjsK2gXp0brKuTC/JK2kHc7BJlg4MAK3zkU3Q9z6mE+hncBS029O
	XoUW98iX/9xINdDIpBlPrBCNEP7NiattpjXXQRrpunlGTLKrMEchpPiarOmMIHSDDE30aGPhL2qak
	QQQJiYpsbw2ATItdk7gdSKV4LQNTBvDb34wb4s3BmYPZ9RCuy8SuKfGaYliQ0P9bvivxTr0m4FwCO
	/RpvF4zA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uaDGE-0000000EnP7-2sa9;
	Fri, 11 Jul 2025 12:53:54 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uaDGC-0000000EnOi-00aL
	for barebox@lists.infradead.org;
	Fri, 11 Jul 2025 12:53:53 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uaDGA-0000Fz-Hj; Fri, 11 Jul 2025 14:53:50 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uaDGA-007vGu-1A;
	Fri, 11 Jul 2025 14:53:50 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uaDG9-00A5gH-2R;
	Fri, 11 Jul 2025 14:53:50 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 11 Jul 2025 14:53:49 +0200
Message-Id: <20250711125349.2405105-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250711_055352_037825_55C9F884 
X-CRM114-Status: UNSURE (   7.83  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] Documentation: gen_commands.py: fix Option list warning
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Building some commands like miitool results in a warning:

  miitool.rst:25: WARNING: Option list ends without a blank
  line; unexpected unindent.

Have the script emit a new line after every command to silence it.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 Documentation/gen_commands.py | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/gen_commands.py b/Documentation/gen_commands.py
index 7c62a030dcec..4fcb4dda6e74 100755
--- a/Documentation/gen_commands.py
+++ b/Documentation/gen_commands.py
@@ -139,6 +139,7 @@ def gen_rst(name, cmd):
         out.append('%s\n %s' % (o, d))
       else:
         out.append(' %s' % (d,))
+      out.append('')
     out.append('')
   if 'h_post' in cmd:
     post = cmd['h_post']
-- 
2.39.5



