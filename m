Delivery-date: Fri, 26 Sep 2025 16:07:48 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v296y-001MFK-2z
	for lore@lore.pengutronix.de;
	Fri, 26 Sep 2025 16:07:48 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v296y-0006o0-7X
	for lore@pengutronix.de; Fri, 26 Sep 2025 16:07:48 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:Message-Id:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=WWHvBO15AcS+C+EU+RcBH7dRDe3gCUOqqeYtHcPL31Y=; b=Kzwz6z0PcNFxQsKKGmYJwxLBt9
	i7T/EcWsYfSeqrndYHnrB/hQHN47vypobvPVvcCCn1IxTGU6AjBEUNSKHyrYImJVhnGwzyQOn4dks
	rAki1i5yZy4Q9hTMhL5Q88LUnCftH0HuBMSK8vzgJjcrymXtXDMB9ZCGBMhGyJet9FI3ygbRNL5rt
	voTou46MIClYnOJ+iocibYp9H2sMtxrbLgGBDSTToZFX9UfKdJZZwVc+vU2cdFuE2MMxTnqL1I/6t
	yK5ju0ZhO1lk0Mz46H2YsAFYtcQU2PHZvKoTRUgtFKVoWAmCty18Hu60P+XeuXaoMgrF3MftlFwQa
	GJLoatNg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v296Y-00000001pQy-0qvD;
	Fri, 26 Sep 2025 14:07:22 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v296V-00000001pLV-1Fna
	for barebox@lists.infradead.org;
	Fri, 26 Sep 2025 14:07:20 +0000
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.tretter@pengutronix.de>)
	id 1v296S-0006Yy-Dw; Fri, 26 Sep 2025 16:07:16 +0200
From: Michael Tretter <m.tretter@pengutronix.de>
Date: Fri, 26 Sep 2025 16:07:08 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250926-bootchooser-doc-v1-1-d07fb39ffacd@pengutronix.de>
X-B4-Tracking: v=1; b=H4sIAAue1mgC/x3MQQqAIBBA0avErBPUMKqrRIvSMWfjhEYE4t2Tl
 n/xfoGMiTDD0hVI+FAmji1U34ENezxRkGsNWmojZz2Kg/m2gbk54dgKL6VRzhk1+AmauhJ6ev/
 jutX6ARZP10phAAAA
X-Change-ID: 20250926-bootchooser-doc-f0051dd513f8
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Michael Tretter <m.tretter@pengutronix.de>
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250926_070719_368146_E6116467 
X-CRM114-Status: GOOD (  13.12  )
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
X-Spam-Status: No, score=-4.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] doc: bootchooser: use 0 as base for system targets
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Most barebox-state configurations in upstream define the bootchooser
targets as system0 and system1. The RAUC bootchooser documentation uses
system0 and system1, too. This is different from the bootchooser
documentation in barebox, which uses system1 and system2 in its
examples.

Change the barebox documentation to be consistent with what most users
will probably find on their respective systems.

Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
---
 Documentation/user/bootchooser.rst | 38 +++++++++++++++++++-------------------
 1 file changed, 19 insertions(+), 19 deletions(-)

diff --git a/Documentation/user/bootchooser.rst b/Documentation/user/bootchooser.rst
index c094dca15a0e415d9076bf210ffdbece05ade62e..9cf8d4c817379e207881aa60334e8552943345d0 100644
--- a/Documentation/user/bootchooser.rst
+++ b/Documentation/user/bootchooser.rst
@@ -115,8 +115,8 @@ it can report this to bootchooser from Linux userspace using the
 *barebox-state* tool from the dt-utils_ package.::
 
   barebox-state [-n <state variable set>] -s [<prefix>.]<target>.remaining_attempts=<reset-value>
-  barebox-state -n system_state -s bootstate.system1.remaining_attempts=3
-  barebox-state -s system1.remaining_attempts=3
+  barebox-state -n system_state -s bootstate.system0.remaining_attempts=3
+  barebox-state -s system0.remaining_attempts=3
 
 Alternatively barebox can be configured to mark the last boot successful based
 on the :ref:`reset reason <reset_reason>` (i.e. != WDG) using the
@@ -235,25 +235,25 @@ Either device can be booted with the :ref:`boot <command_boot>` command command,
 and thus can be used by *bootchooser* and we can start to configure the
 *bootchooser* variables.
 
-The following example shows how to initialize two boot targets, ``system1`` and
-``system2``. Both boot from a UBIFS on ``nand0``, the former has a priority of
-21 and boots from the volume ``root_filesystem_1`` whereas the latter has a
-priority of 20 and boots from the volume ``root_filesystem_2``.
+The following example shows how to initialize two boot targets, ``system0`` and
+``system1``. Both boot from a UBIFS on ``nand0``, the former has a priority of
+20 and boots from the volume ``root_filesystem_1`` whereas the latter has a
+priority of 10 and boots from the volume ``root_filesystem_2``.
 
 .. code-block:: sh
 
-  # initialize target 'system1'
-  nv bootchooser.system1.boot=nand0.ubi.root_filesystem_1
-  nv bootchooser.system1.default_attempts=3
-  nv bootchooser.system1.default_priority=21
+  # initialize target 'system0'
+  nv bootchooser.system0.boot=nand0.ubi.root_filesystem_1
+  nv bootchooser.system0.default_attempts=3
+  nv bootchooser.system0.default_priority=20
 
-  # initialize target 'system2'
-  nv bootchooser.system2.boot=nand0.ubi.root_filesystem_2
-  nv bootchooser.system2.default_attempts=3
-  nv bootchooser.system2.default_priority=20
+  # initialize target 'system1'
+  nv bootchooser.system1.boot=nand0.ubi.root_filesystem_2
+  nv bootchooser.system1.default_attempts=3
+  nv bootchooser.system1.default_priority=10
 
   # make targets known
-  nv bootchooser.targets="system1 system2"
+  nv bootchooser.targets="system0 system1"
 
   # retry until one target succeeds
   nv bootchooser.retry=1
@@ -510,7 +510,7 @@ content for the *state* variable set looks like:
 
    system_state {
         [...]
-        system1 {
+        system0 {
              #address-cells = <1>;
              #size-cells = <1>;
              remaining_attempts@0 {
@@ -525,7 +525,7 @@ content for the *state* variable set looks like:
              };
         };
 
-        system2 {
+        system1 {
              #address-cells = <1>;
              #size-cells = <1>;
              remaining_attempts@8 {
@@ -536,7 +536,7 @@ content for the *state* variable set looks like:
              priority@c {
                  reg = <0xc 0x4>;
                  type = "uint32";
-                 default = <21>;
+                 default = <10>;
              };
         };
 
@@ -546,7 +546,7 @@ content for the *state* variable set looks like:
         };
    };
 
-.. important:: While the ``system1/2`` nodes suggest a different namespace inside the
+.. important:: While the ``system0/1`` nodes suggest a different namespace inside the
    *state* variable set, the actual variable's ``reg``-properties and their offset
    part are always relative to the whole *state* variable set and thus must be
    consecutive globally.

---
base-commit: 7e32be40a193007e138c0eb589eb852420655523
change-id: 20250926-bootchooser-doc-f0051dd513f8

Best regards,
-- 
Michael Tretter <m.tretter@pengutronix.de>



