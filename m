Delivery-date: Fri, 04 Jun 2021 10:34:16 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lp5HU-00056T-Sl
	for lore@lore.pengutronix.de; Fri, 04 Jun 2021 10:34:16 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lp5HJ-0007Vh-Ur
	for lore@pengutronix.de; Fri, 04 Jun 2021 10:34:16 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VNF4ByQjWQnKjRRXdzfhu2fOxtaizxAmMWWdqQ6vLLg=; b=Nyk94dF3ZBi9rv
	qmeB1IwvZlRXC0VYN5bsavGARTbcyCAjRY4O2pXTgbevEJLvQZo6JdEOwZVNIN17J2fEYbk7HGDDz
	GHBDFEB1QGvHA3lyOikhj1u6SwvTv2UQ6xtgWFcIcnohN4ASjZOouYZhubO0JjN6BtP1jMzX8WHf1
	XaWBuUWM9EWWTJohftnLigB0S8ujtN8fioUc1kkkm5VA20fs4mVNgxaXWxfuUqQvOmr1K2eSkVt45
	KqJehd1PyrYJJ2g8u+V5tRoBSmdhAdjcJUXwmIZJDkaCm69JWV8ezLwc6blA3i2SL93BmwbnJr4Wv
	OVNDRsrpXfvKOLz69WHQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lp5Fg-00CJRO-Me; Fri, 04 Jun 2021 08:32:24 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lp5FL-00CJDv-L1
 for barebox@lists.infradead.org; Fri, 04 Jun 2021 08:32:04 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lp5Eg-0006k5-97; Fri, 04 Jun 2021 10:31:22 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lp5Ef-0002lw-Ap; Fri, 04 Jun 2021 10:31:21 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Fri,  4 Jun 2021 10:30:59 +0200
Message-Id: <20210604083109.10581-4-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210604083109.10581-1-a.fatoum@pengutronix.de>
References: <20210604083109.10581-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210604_013203_720214_60563476 
X-CRM114-Status: UNSURE (   7.96  )
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
Cc: jmaselbas@kalray.eu, Ahmad Fatoum <a.fatoum@pengutronix.de>,
 rcz@pengutronix.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v4 03/13] kbuild: add ARCH=um alias for sandbox
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

ARCH=um (User Mode) is the Linux kernel counterpart to our sandbox
architecture. Add um as an alias, so we can interoperate with tools that
handle ARCH=um specially.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 Makefile | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Makefile b/Makefile
index 9c309f539c19..6cccfe9708c8 100644
--- a/Makefile
+++ b/Makefile
@@ -356,6 +356,10 @@ ifeq ($(ARCH),ppc)
        SRCARCH := powerpc
 endif
 
+ifeq ($(ARCH),um)
+       SRCARCH := sandbox
+endif
+
 KCONFIG_CONFIG	?= .config
 
 export KCONFIG_CONFIG
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

