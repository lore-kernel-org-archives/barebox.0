Delivery-date: Mon, 18 Dec 2023 10:59:57 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rFAPl-002fcr-0O
	for lore@lore.pengutronix.de;
	Mon, 18 Dec 2023 10:59:57 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rFAPk-0000SR-JN
	for lore@pengutronix.de; Mon, 18 Dec 2023 10:59:57 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:Message-Id:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=Jc9m+mbMFJWKsa3+8GMaNENMbJJ8FzDN5qKFI1Y3xM4=; b=bgUGeCoheoNAef5uYpGwOmv2B3
	H3CoNMNe9SYOQyzna9WibB9ldTbPha0dt9a4kj7TlWBG1QasUQ2NSJphuZz/HLxGWcoAAuwv9PbeP
	LBmGTqosgC6wwfQTy9AL73osuuW4DBwkMyqSfF4P9+I8ExqrlwJMx7ErrKHk2hd0FaHARoN5n7xB7
	xXL3F7gnx89zveSPf71e5whfzEyZ2RXiLTkScb8HQmOK33VTjUz4UtxLaJsnAQZ+h516F+Z+oC2tG
	w4RoSzF0h9CfxSy3RvwYggsGW6qD8TLdHAD9HEqe+rzfEktBsI+jN3JCfbG0+ecV7WClCeBcQBRix
	aD5jCvFw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rFAOE-009kDm-3D;
	Mon, 18 Dec 2023 09:58:23 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rFAOB-009kB0-12
	for barebox@lists.infradead.org;
	Mon, 18 Dec 2023 09:58:21 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.kerkmann@pengutronix.de>)
	id 1rFAO7-0008HX-S0; Mon, 18 Dec 2023 10:58:15 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.kerkmann@pengutronix.de>)
	id 1rFAO7-00Gfcu-FV; Mon, 18 Dec 2023 10:58:15 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.kerkmann@pengutronix.de>)
	id 1rFAO7-006QWj-1J;
	Mon, 18 Dec 2023 10:58:15 +0100
From: Stefan Kerkmann <s.kerkmann@pengutronix.de>
Date: Mon, 18 Dec 2023 10:58:07 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231218-doc-missing-empty-lines-v1-1-d18280ebafba@pengutronix.de>
X-B4-Tracking: v=1; b=H4sIAK4XgGUC/x3MwQpAQBCA4VfRnE3ZoWxeRQ7LDqZY2pFI3t3m+
 B3+/wHlKKzQZA9EPkVlCwkmz2CYXZgYxScDFVQaMhb9NuAqqhIm5HU/blwksKIhV1lf+95ZglT
 vkUe5/nPbve8HNNIllGkAAAA=
To: BAREBOX <barebox@lists.infradead.org>
Cc: Stefan Kerkmann <s.kerkmann@pengutronix.de>
X-Mailer: b4 0.12.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231218_015819_415503_D6FFEF98 
X-CRM114-Status: UNSURE (   8.15  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] doc: user: barebox: add missing empty lines
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

These where missed in b90e9ad8f7922b6a694c119017168bea1b6e16a1 and thus
didn't render the code blocks.

Signed-off-by: Stefan Kerkmann <s.kerkmann@pengutronix.de>
---
 Documentation/user/barebox.rst | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/user/barebox.rst b/Documentation/user/barebox.rst
index ea4db28d08..43e5a631ba 100644
--- a/Documentation/user/barebox.rst
+++ b/Documentation/user/barebox.rst
@@ -219,6 +219,7 @@ Another option is to generate a FIT image containing the generic DT image and a
 matching device tree with ``mkimage``:
 
 .. code-block:: console
+
   sh: mkimage --architecture arm \
       --os linux \
       --type kernel \
@@ -233,6 +234,7 @@ This FIT image can then be loaded by U-Boot and executed just like a regular
 Linux kernel:
 
 .. code-block:: console
+
   U-Boot: tftp $fit_addr barebox-dt-2nd.fit
   U-Boot: bootm $fit_addr
 

---
base-commit: ed433cbef99860b39dfbc2d36983026cced54583
change-id: 20231218-doc-missing-empty-lines-12a48d7dba82

Best regards,
-- 
Stefan Kerkmann <s.kerkmann@pengutronix.de>



