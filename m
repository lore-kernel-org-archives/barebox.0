Delivery-date: Fri, 07 May 2021 13:44:26 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1leyuA-0004Pb-5N
	for lore@lore.pengutronix.de; Fri, 07 May 2021 13:44:26 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1leyu9-0001tB-61
	for lore@pengutronix.de; Fri, 07 May 2021 13:44:25 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=8xD0TEvAy4W5sKi43FDOsTs/FO+Iq2UdmhH2H7DZ3bE=; b=fdwkgTgdXOnCJcrnomHe5CA/hL
	TtzQ9MILZ5TZ9uk6V/XCTC9mSFDNbFUMe1XZS+nsCTOwo+KFnPGKnjGs9suR9ve1ZIakV1H2HZ8r6
	uaKD7QAhHtTV6tOVvrBgtK4J6JoiF+wNy2WFyb+uFJpRCRif89BttygZTzgV5J++UwGVGRhVekKLe
	E6TIPsu/X0NpTctWXbyEJgiMZCVLni93OXnmacCcwTapxs6Im0KfaWl/9oE+XtUvgOxzIePjSPSs8
	rFPUtAqMWtJGFDPQFr3s3bhQXn1sOeM18VL1CkaEGjV/ym+8kqjn5enm5hQ+4UyytMHiVrBjHWLhO
	QxXdWg2g==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1leytQ-006zw0-99; Fri, 07 May 2021 11:43:40 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1leytM-006zvU-8B
 for barebox@desiato.infradead.org; Fri, 07 May 2021 11:43:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:In-Reply-To:References;
 bh=bjct1XxPUNJX/K6lF+9pvbX7dtkLBGElW4OYB4SXxfw=; b=g8lLfg30/ByapoO3cFA6IFbq+G
 rHTs+r3/kYlxgyupRNKvMOkziT+CNmfU0JBYZbaYnydzxOnzQqJcXJ6CLSvEpry4bYzoKfxyDlnmh
 Gm72yn6v9mvwTbTnMjYOoFYcBBhN5AjWa8439/6mq9SO8BlrcGCXneHNwa1JP+UWLss+URm+4qJJ+
 JPEnPqer2ZqwKGgdEFNXmQ7Mj02UwHI55XP0ANvCz3TyXKSS24siJGiUL+RDF/hHMdOUtlltR0+Lm
 IBIO1wOKHmIRjr5r98C/5ITkYrfBG2our9LN3VE2IMM1ngha/l4N5EvDBrW85njfI4KgxxMBXj1+w
 2Vi1PKQg==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1leytJ-006pIe-Ib
 for barebox@lists.infradead.org; Fri, 07 May 2021 11:43:35 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <rhi@pengutronix.de>)
 id 1leytG-0001qK-LC; Fri, 07 May 2021 13:43:30 +0200
Received: from rhi by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <rhi@pengutronix.de>)
 id 1leytG-0001iQ-9g; Fri, 07 May 2021 13:43:30 +0200
From: Roland Hieber <rhi@pengutronix.de>
To: Barebox Mailing List <barebox@lists.infradead.org>
Cc: Roland Hieber <rhi@pengutronix.de>
Date: Fri,  7 May 2021 13:43:25 +0200
Message-Id: <20210507114325.6486-1-rhi@pengutronix.de>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210507_044333_631097_F3216B1F 
X-CRM114-Status: GOOD (  14.62  )
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
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] README: advertise lore.barebox.org instead of mail-archive.com
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The archived messages at mail-archive.org only contain a few headers,
and getting git-am-able patch mails from their HTML pages is quirky at
best. Replace the link with the new lore instance, which has a number of
advantages, like raw message contents with full headers, cloneable git
archives, and interoperability with the b4 command line tool.

Signed-off-by: Roland Hieber <rhi@pengutronix.de>
---
 README | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/README b/README
index 7c5ef9f8187a..37fd80c10280 100644
--- a/README
+++ b/README
@@ -231,7 +231,7 @@ Contributing
 For any questions regarding barebox, send a mail to the mailing list at
 <barebox@lists.infradead.org>. The archives for this list are available
 publicly at <http://lists.infradead.org/pipermail/barebox/> and
-<https://www.mail-archive.com/barebox@lists.infradead.org/>.
+<https://lore.barebox.org/barebox/>.
 
 The same list should also be used to send patches. barebox uses a similar
 process as the Linux kernel, so most of the Linux guide for submitting patches
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

