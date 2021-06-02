Delivery-date: Wed, 02 Jun 2021 16:38:57 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1loS1J-0003xs-LN
	for lore@lore.pengutronix.de; Wed, 02 Jun 2021 16:38:57 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1loS1E-0007vo-Ct
	for lore@pengutronix.de; Wed, 02 Jun 2021 16:38:57 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kfQ4kvVbmcSzP3KezcvQYpVKPP+jxbHCIi1tI27UfS0=; b=VHKBMKZT3MPGCx
	Jp+VBRg2+nggi9bKb9oO96p4kL1X03Vb6WN41Zx0et+8bniiQfqVjmbU8TxTJvpgrpkgwqlojzcqW
	7p7kI/3huvSII6UQ9upyrq4jevgnjrEudB7WRKS77nA8ybKsGBj9a/x0V5XYzI+Dpw55lByzhE+ih
	nr49WpyV6y4x2+h+Wgve01UMj4TNBc1WK8s8zxHTd/8f9YBiCANbgVwOBfaHt35up+gcJH49Dyy1/
	9EdCooCPLN3JcV6PAklZUxCNjpkhsAfh6lbAA974d+1lv6R724o13KBmSjEBwm8QkYp/IgRaZtetu
	I4Lsa6LHPa01IuFUfiWg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1loRzc-004c0K-M6; Wed, 02 Jun 2021 14:37:13 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1loRxY-004ayC-V1
 for barebox@lists.infradead.org; Wed, 02 Jun 2021 14:35:08 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1loRxW-0006tN-Bv; Wed, 02 Jun 2021 16:35:02 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1loRxV-0006hN-LQ; Wed, 02 Jun 2021 16:35:01 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  2 Jun 2021 16:34:42 +0200
Message-Id: <20210602143453.23097-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210602143453.23097-1-a.fatoum@pengutronix.de>
References: <20210602143453.23097-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210602_073505_208248_0E9FD91B 
X-CRM114-Status: UNSURE (   8.07  )
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
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v3 02/13] kbuild: add ARCH={i386, x86_64} as aliases for x86
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Linux already does this. Follow suit so we can interoperate with tools
that assume Linux-like Kbuild structure.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 Makefile | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/Makefile b/Makefile
index 65e3f6f80c72..3b7dbd4c772d 100644
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

