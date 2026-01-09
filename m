Delivery-date: Fri, 09 Jan 2026 14:00:42 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1veC6c-002zfX-0H
	for lore@lore.pengutronix.de;
	Fri, 09 Jan 2026 14:00:42 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1veC6b-00048J-I0
	for lore@pengutronix.de; Fri, 09 Jan 2026 14:00:42 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=iG9XtUS1JlPgbNA6gdL4MyvHecKwlVel+G/NRVp8vHQ=; b=WPA2DNOEDxmHRfLIRKNiUIrXfJ
	Oj01jYdsZPS1eqWL2PAJvGIhzsrveDLr2/5EJe7qm/oMYfcMZttDLhEDmaqZSL9vIYLRJj3CQ/PGY
	eTfnvVc98fM3dcKu9KMAJVDo4RDbddTk4Afm1HswdzRyR37jA0xHBznmwDwySQqILIEgv7T1uv/jt
	z7Mh3HTzlWY+Qo+Uz0BKfnr1nOvkcVVYzOVUTvBMBKmBIIGzvXVsiTEeiZMTM/YU+zU4f43vlb4o0
	w+iNq6YfAFxZYHBo3bSPYbn4FkDQPg+6joHi/0AVpYcQ2z8RC2fbLEDQYltISm6x53eeA9t4wNqKw
	tjc9kEPg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1veC5q-00000002KRU-3dYV;
	Fri, 09 Jan 2026 12:59:54 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1veC5n-00000002KRB-357C
	for barebox@lists.infradead.org;
	Fri, 09 Jan 2026 12:59:53 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1veC5k-0003uo-8W; Fri, 09 Jan 2026 13:59:48 +0100
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Fri,  9 Jan 2026 13:59:46 +0100
Message-ID: <20260109125947.685241-1-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260109_045951_772877_C91BA172 
X-CRM114-Status: UNSURE (   6.37  )
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
Subject: [PATCH] scripts: .gitignore: add imx9image
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Like done for other host tools, add this program generated during build
to the ignore list as well.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 scripts/.gitignore | 1 +
 1 file changed, 1 insertion(+)

diff --git a/scripts/.gitignore b/scripts/.gitignore
index 8c74d7c9f001..05d61d649ac8 100644
--- a/scripts/.gitignore
+++ b/scripts/.gitignore
@@ -39,3 +39,4 @@ mips-relocs
 keytoc
 mvebuimg
 prelink-riscv
+imx9image
-- 
2.47.3



