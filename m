Delivery-date: Fri, 04 Jun 2021 10:33:58 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lp5HC-00055E-9c
	for lore@lore.pengutronix.de; Fri, 04 Jun 2021 10:33:58 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lp5H1-0007Q2-Ht
	for lore@pengutronix.de; Fri, 04 Jun 2021 10:33:58 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dCsB8TUPW0x4ZYU5/2blrlfsX3/scfuDYmofhHrveMo=; b=bknrEySMfrOnq7
	0NdBMTgfHggcB56eAz35wKlrfffePApPNsE2r8AueeApOoAf8DFGc20WNqoyJbn6i9Gq4nfx1AKsV
	2Oo5rIfH46k2RAD7/hjylCRdJSuwgEFssNi0ntQ9mvXa2D0S3shx0KD31/M1qfdztf56ncBOZBv/y
	7fpxfAwm8K8l2RcvKBP12VUxxub6SCpZrTDw/eAGdffPzyobVWdFMPCTdTo7wMTjF7mY/eQ9RlqfL
	4q8Tn/YSxIoZAMYjoUGyOTrjhyj8bHH5GYMVZqXuuWPXkKqc3u9DBZuksr6C2LVeSAfZLHszHD7S+
	Bae4WBZHhosLwYjt7bMQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lp5FP-00CJDu-1g; Fri, 04 Jun 2021 08:32:07 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lp5F5-00CJ2S-LD
 for barebox@lists.infradead.org; Fri, 04 Jun 2021 08:31:48 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lp5Eg-0006k4-95; Fri, 04 Jun 2021 10:31:22 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lp5Ef-0002lt-9z; Fri, 04 Jun 2021 10:31:21 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Fri,  4 Jun 2021 10:30:58 +0200
Message-Id: <20210604083109.10581-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210604083109.10581-1-a.fatoum@pengutronix.de>
References: <20210604083109.10581-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210604_013147_727187_8DA314C1 
X-CRM114-Status: UNSURE (   7.47  )
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
Subject: [PATCH v4 02/13] kbuild: add ARCH={i386, x86_64} as aliases for x86
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Linux already does this. Follow suit so we can interoperate with tools
that assume Linux-like Kbuild structure.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 Makefile | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/Makefile b/Makefile
index 9373644e7da9..9c309f539c19 100644
--- a/Makefile
+++ b/Makefile
@@ -343,6 +343,14 @@ ifeq ($(ARCH),arm64)
        SRCARCH := arm
 endif
 
+ifeq ($(ARCH),i386)
+       SRCARCH := x86
+endif
+
+ifeq ($(ARCH),x86_64)
+       SRCARCH := x86
+endif
+
 # Support ARCH=ppc for backward compatibility
 ifeq ($(ARCH),ppc)
        SRCARCH := powerpc
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

