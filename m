Delivery-date: Thu, 12 Jun 2025 12:07:40 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uPeqS-006TWg-26
	for lore@lore.pengutronix.de;
	Thu, 12 Jun 2025 12:07:40 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uPeqR-0006oB-4D
	for lore@pengutronix.de; Thu, 12 Jun 2025 12:07:40 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=SknnaV2mBguRuAedbpe6jdVwAS1jwqLCx/81dk1wfRk=; b=n/pENKxdS5YQZ73Tpw+5Hfhre1
	QxbukDB4yuPcGzsaopUe3XSDhLur8KTScPaxKYYfP2MmdVhkwMJ4tPgfs6ZeNcBHTPeJW7/Z9m4oj
	qBTLi+CL5DQd0eBBcwgTSRsflZYsFpq69pWUZ5ugKco2YJDeUaDBh1vX5AQ5NhPotcXlW1pzCRLOI
	hJZ7/3c+haGvZJ9dt9meDYUOZsPlMOHCs7wBEa+b82CDHaa/8eBjU2hCORABTa9SweNlFXkfG2Um2
	0wWJyCbcF6JWLJUvD99YP/BcU5XhXkBNH5NFivAOW6mOsrg0mz86/rn3qN5RDsz4LyL+Sdigmi0Q0
	NaOnwMsA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uPepr-0000000CurF-0Dv9;
	Thu, 12 Jun 2025 10:07:03 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uPdfu-0000000Cigq-1LjF
	for barebox@lists.infradead.org;
	Thu, 12 Jun 2025 08:52:43 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <rhi@pengutronix.de>)
	id 1uPdfr-0000IK-Pm; Thu, 12 Jun 2025 10:52:39 +0200
Received: from dude04.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::ac])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <rhi@pengutronix.de>)
	id 1uPdfr-0035nN-1y;
	Thu, 12 Jun 2025 10:52:39 +0200
Received: from rhi by dude04.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <rhi@pengutronix.de>)
	id 1uPdfr-008rQU-1o;
	Thu, 12 Jun 2025 10:52:39 +0200
From: Roland Hieber <rhi@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Roland Hieber <rhi@pengutronix.de>
Date: Thu, 12 Jun 2025 10:52:33 +0200
Message-Id: <20250612085234.2111792-1-rhi@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250612_015242_357929_D3FD5BDD 
X-CRM114-Status: UNSURE (   9.12  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/2] Documentation: use https:// URLs for git.pengutronix.de
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The git:// protocol has been disabled on git.pengutronix.de to shed load
caused by noncompliant AI scrapers. Use the https:// protocol instead.

Signed-off-by: Roland Hieber <rhi@pengutronix.de>
---
 Documentation/user/barebox.rst | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/user/barebox.rst b/Documentation/user/barebox.rst
index 710af0d43ff7..5cb1d46262bc 100644
--- a/Documentation/user/barebox.rst
+++ b/Documentation/user/barebox.rst
@@ -18,7 +18,7 @@ can be checked out as follows:
 
 .. code-block:: console
 
-  $ git clone git://git.pengutronix.de/git/barebox.git
+  $ git clone https://git.pengutronix.de/git/barebox
   Cloning into 'barebox'...
   remote: Counting objects: 113356, done.
   remote: Compressing objects: 100% (25177/25177), done.
-- 
2.39.5



