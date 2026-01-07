Delivery-date: Wed, 07 Jan 2026 09:11:31 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vdOdf-002BVf-2y
	for lore@lore.pengutronix.de;
	Wed, 07 Jan 2026 09:11:31 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vdOdf-0006Or-1O
	for lore@pengutronix.de; Wed, 07 Jan 2026 09:11:31 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=F/hKEXRZy3/DjMKFoFVT1f24ebwZ4OzGtz3tJs/jUVs=; b=WUpqdtb3wKUUmSp5PN36ImmAbD
	6HwFnCpsP1sDvPtQULOHqBXgBdZlfl6DD9bdvCGvAgocWcWCklXBYZVcV1b7yKXK1PESquz9MkYeD
	9GhQD8rnr3lcBzLFUxJevYnQMjBxsR8STds1cUPqjsOHJ5zPJBNFOuft/o0IkxvI/NnRSvqPUQvnH
	ggmnf/vD8Zz/i9tgPguFvv9LLDPSSuKILHeKhVOPBA5f9BxhABRNi0ygtWE/i96jH2kA5k4LRnjjm
	qRpAdqNe6OxBQ0H2x8YketZ2LSTiZmV5gLMcqU12bFR4y12TONn188cLpWMSjKBa1i/xWF7cBc2QT
	kZVulM5Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdOdA-0000000EMjt-1Pdu;
	Wed, 07 Jan 2026 08:11:00 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdOd7-0000000EMiz-3eod
	for barebox@lists.infradead.org;
	Wed, 07 Jan 2026 08:10:58 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vdOd6-0006FF-6Q; Wed, 07 Jan 2026 09:10:56 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vdOd6-009Tjt-01;
	Wed, 07 Jan 2026 09:10:56 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vdOd6-00000007nBt-2Seq;
	Wed, 07 Jan 2026 09:10:55 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  7 Jan 2026 09:10:51 +0100
Message-ID: <20260107081053.1857375-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260107_001057_908708_63F4FCC7 
X-CRM114-Status: GOOD (  12.07  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] Documentation: turn more magic variable literals into references
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Since the last replacement of magic variables with references, two more
instances have made it into the docs, so switch them over now.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 Documentation/user/booting-linux.rst | 2 +-
 Documentation/user/security.rst      | 4 ++--
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/Documentation/user/booting-linux.rst b/Documentation/user/booting-linux.rst
index 4a765363b182..ed1ec3f68a93 100644
--- a/Documentation/user/booting-linux.rst
+++ b/Documentation/user/booting-linux.rst
@@ -193,7 +193,7 @@ bootloader spec file detected at runtime as described in the next section.
 There is also a number of generic default boot targets available, when
 ``CONFIG_BOOT_DEFAULTS`` is enabled. These expands to a single device at most:
 
-* ``bootsource``: expands to the device barebox booted from
+* :ref:`bootsource <magicvar_bootsource>`: expands to the device barebox booted from
 * ``diskuuid.*``: expands to the device with specified ``*`` diskuuid
 
 For these targets that expand to a single device, a partition can also be specified,
diff --git a/Documentation/user/security.rst b/Documentation/user/security.rst
index 5a23bd83ba65..94184ab8e893 100644
--- a/Documentation/user/security.rst
+++ b/Documentation/user/security.rst
@@ -99,8 +99,8 @@ different compression algorithm.
 The fail-safe alternative is to use a parameter name understood only by the
 initramfs (e.g. ``verity_root=``) in all bootloader scripts. If the
 ``root=$dev`` is fixed up by barebox dynamically, the
-``$global.bootm.root_param`` variable can be used to customize the name of the
-parameter passed to Linux.
+:ref:`global.bootm.root_param <magicvar_global_bootm_root_param>` variable can
+be used to customize the name of the parameter passed to Linux.
 
 Disabling the shell
 ^^^^^^^^^^^^^^^^^^^
-- 
2.47.3



