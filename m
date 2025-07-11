Delivery-date: Fri, 11 Jul 2025 09:53:33 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ua8ZZ-00GKBq-0v
	for lore@lore.pengutronix.de;
	Fri, 11 Jul 2025 09:53:33 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ua8ZY-0002uz-Ku
	for lore@pengutronix.de; Fri, 11 Jul 2025 09:53:33 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=6ayq41S0vyfY9lYzwvGPRFTzgL1kwYVY3kHwnUXVrJ8=; b=WLE847qxWAfSMrzsh2+NWUgNZO
	Hc4UfBmrULM565G7ESlBpxnzEpwvcrNF36jC3QJrc2qlTI1JFGsJy6DIGZsf5Om5lvmW5FtwTMbWK
	TFtpBQC4fEGO49I+aHjWYXmp7V6VlX/NYi4HiYYdFZlaCciQ9jTXz8GB9ividn8fpxEr18eJyEBDa
	l8BlUz0o1g+GbSGLKIz4p0oUXVw19SR5uUCFbY6N7T4Tcf9KfWRql6Q1nKUdILq2sfmwAMrrj/S/d
	7QiIZ+9XZNCOd6lOw4HxuHSOvuV944IZxztESJCuRyz91OxUecY07MCkHYsaEYyyK1web3uq631XT
	+gjVq5WQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ua8Z3-0000000E2RV-16J5;
	Fri, 11 Jul 2025 07:53:01 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ua8Et-0000000DzDy-2v8R
	for barebox@lists.infradead.org;
	Fri, 11 Jul 2025 07:32:13 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1ua8Es-0006An-GY; Fri, 11 Jul 2025 09:32:10 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1ua8Es-007skq-10;
	Fri, 11 Jul 2025 09:32:10 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1ua8Er-00GXtT-2F;
	Fri, 11 Jul 2025 09:32:10 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 11 Jul 2025 09:32:07 +0200
Message-Id: <20250711073208.3926688-4-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250711073208.3926688-1-a.fatoum@pengutronix.de>
References: <20250711073208.3926688-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250711_003211_737437_811E2771 
X-CRM114-Status: GOOD (  10.57  )
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
Subject: [PATCH v2 3/4] Documentation: user: split community from feedback
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Place the Matrix/IRC links more prominently by moving them above the
information for how to send patches.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v1 -> v2:
  - new patch
---
 Documentation/user/introduction.rst | 19 ++++++++++++-------
 1 file changed, 12 insertions(+), 7 deletions(-)

diff --git a/Documentation/user/introduction.rst b/Documentation/user/introduction.rst
index cba1d09986b8..5b2a39f3c5c3 100644
--- a/Documentation/user/introduction.rst
+++ b/Documentation/user/introduction.rst
@@ -15,10 +15,10 @@ development binary as well as for lean production systems.
 Just like busybox is the Swiss Army Knife for embedded Linux,
 barebox is the Swiss Army Knife for bare metal, hence the name.
 
-.. _feedback:
+.. _community:
 
-Feedback
---------
+Community
+---------
 
 For sending patches, asking for help and giving general feedback you are
 always welcome to write an e-mail to the barebox mailing list at
@@ -31,6 +31,15 @@ Mails sent to the barebox mailing list are archived on
 `lore.barebox.org <https://lore.barebox.org/barebox/>`_ and
 `lore.kernel.org <https://lore.kernel.org/barebox/>`_.
 
+There's also an IRC channel, which is
+`bridged to Matrix  <https://app.element.io/#/room/#barebox:matrix.org>`_:
+#barebox on Libera Chat.
+
+.. _feedback:
+
+Sending Patches
+---------------
+
 barebox uses a similar patch process as the Linux kernel, so most of the
 `Linux guide for submitting patches <https://www.kernel.org/doc/html/latest/process/submitting-patches.html>`_
 also applies to barebox, except for the need to select your recipient;
@@ -48,7 +57,3 @@ and have ``FETCH_HEAD`` point at it::
 
 CI tests are executed by Github Actions can be used by forking
 `the project on Github <https://github.com/barebox/barebox>`.
-
-There's also an IRC channel, which is
-`bridged to Matrix  <https://app.element.io/#/room/#barebox:matrix.org>`_:
-#barebox on Libera Chat.
-- 
2.39.5



