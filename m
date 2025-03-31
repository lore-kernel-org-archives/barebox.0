Delivery-date: Mon, 31 Mar 2025 14:50:45 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tzEbF-006ZSw-0S
	for lore@lore.pengutronix.de;
	Mon, 31 Mar 2025 14:50:45 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tzEbE-0008Qu-DW
	for lore@pengutronix.de; Mon, 31 Mar 2025 14:50:45 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=YLr5To6ii3qsT6OhIDYI5PLNz+6QshPJ9qdZ8X9Hzxc=; b=PuGfJo0quGXogePw4t+TnctF4m
	rQLnCXQP5V/dJzMol6x20fe4xYTTjXf5WqClnDo8GMUpD2QxKfkx1NkaD3SHx+fXxKv46ClZygveT
	7pMGNzsIOHEbR9pbnVGIhCCoKXXOZL86NYEuaL4DH7qHhGqmTNx9Lil2CA1bLCxzrkb1sAF64oLms
	oOCG4B6uXlwzZbY2gYiTeVAIWNtsvLxxdzTyI2mAmoxcBbp4VRVAQYxfzFz8SuJv76fEDOhNTZl72
	kn0TLOtBQ+8gHuZabat7ojeACJlYpwWR0MZfTAdfFLHyR/DjksYh3LM7yBnzUQ/+xF19YWlQO/034
	jhKw4APw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1tzEaj-00000000OC7-135d;
	Mon, 31 Mar 2025 12:50:13 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1tzEad-00000000O60-0BNU
	for barebox@lists.infradead.org;
	Mon, 31 Mar 2025 12:50:09 +0000
Received: from dude04.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::ac])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <bst@pengutronix.de>)
	id 1tzEaa-0007tJ-IW; Mon, 31 Mar 2025 14:50:04 +0200
From: Bastian Krause <bst@pengutronix.de>
To: barebox@lists.infradead.org
Cc: =?UTF-8?q?Enrico=20J=C3=B6rns?= <ejo@pengutronix.de>,
	Bastian Krause <bst@pengutronix.de>
Date: Mon, 31 Mar 2025 14:49:31 +0200
Message-Id: <20250331124932.901033-8-bst@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250331124932.901033-1-bst@pengutronix.de>
References: <20250331124932.901033-1-bst@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250331_055007_101135_A244FA9C 
X-CRM114-Status: GOOD (  13.00  )
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
X-Spam-Status: No, score=-6.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 8/9] doc: bootchooser: rephrase scenarios
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

- The description of the systems and the requirements got mixed up.
  Document both separately.
- Make it clear that only bootchooser boot targets are meant here, not
  global.boot.default.
- Rephrase some other parts of the scenarios section to improve
  readability.

Signed-off-by: Bastian Krause <bst@pengutronix.de>
---
 Documentation/user/bootchooser.rst | 67 ++++++++++++++++++------------
 1 file changed, 40 insertions(+), 27 deletions(-)

diff --git a/Documentation/user/bootchooser.rst b/Documentation/user/bootchooser.rst
index 53bf5f329fd..0c236de22fb 100644
--- a/Documentation/user/bootchooser.rst
+++ b/Documentation/user/bootchooser.rst
@@ -258,13 +258,23 @@ anything higher than one.
 Scenario 1
 ##########
 
-- a system that shall always boot without user interaction
-- staying in the bootloader is not an option.
+System description:
+
+- System with multiple boot targets
+- One recovery system
+
+Requirements:
+
+- System shall always boot without user interaction.
+- Staying in the bootloader is not an option.
 
 In this scenario a boot target is started for the configured number of remaining
 attempts. If it cannot be started successfully, the next boot target is chosen.
-This repeats until no boot targets are left to start, then all remaining attempts
-are reset to their defaults and the first boot target is tried again.
+This repeats until no bootchooser boot targets are left to start, then the
+recovery system is booted.
+
+If all boot target's remaining attempts or priorities are 0 during bootchooser
+start, the procedure repeats.
 
 Settings
 ^^^^^^^^
@@ -285,19 +295,24 @@ Deployment
 Recovery
 ^^^^^^^^
 
-Recovery will only be called when all boot targets are not startable (That is,
-no valid kernel found or read failure). Once a boot target is startable (a
-valid kernel is found and started) *bootchooser* will never fall through to
-the recovery boot target.
+Recovery will only be called if none of the boot targets are startable.
+As long as one boot target is startable, *bootchooser* will never fall through
+to the recovery boot target.
+
+Could be a recovery system or barebox script.
 
 Scenario 2
 ##########
 
-- a system with multiple boot targets
-- one recovery system
+System description:
+
+- A system with multiple boot targets
+- One recovery system
 
-A boot target that was booted three times without success shall never be booted
-again (except after update or user interaction).
+Requirements:
+
+- Boot targets that were booted three times unsuccessfully shall never be booted
+  again (except after update or user interaction).
 
 Settings
 ^^^^^^^^
@@ -313,26 +328,27 @@ Deployment
 ^^^^^^^^^^
 
 #. barebox or flash robot fills all boot targets with valid systems.
-#. barebox or flash robot marks boot targets as good or *state* contains non zero
+#. barebox or flash robot marks boot targets as good or *state* contains non-zero
    defaults for the remaining_attempts/priorities.
 
 Recovery
 ^^^^^^^^
 
-Done by 'recovery' boot target which is booted after *bootchooser* falls
-through due to the lack of bootable targets. This boot target can be:
-
-- a system that will be booted as recovery.
-- a barebox script that will be started.
+Recovery system or barebox script to be started after *bootchooser* found no
+bootable targets.
 
 Scenario 3
 ##########
 
-- a system with multiple boot targets
-- one recovery system
-- a power cycle shall not be counted as failed boot.
+System description:
+
+- A system with multiple boot targets
+- One recovery system
 
-Booting a boot target three times without success disables it.
+Requirements:
+
+- All enabled boot targets shall be tried after a power-on reset.
+- Booting a boot target unsuccessfully three times shall disable it.
 
 Settings
 ^^^^^^^^
@@ -353,11 +369,8 @@ Deployment
 Recovery
 ^^^^^^^^
 
-Done by 'recovery' boot target which is booted after *bootchooser* falls
-through due to the lack of bootable targets. This target can be:
-
-- a system that will be booted as recovery.
-- a barebox script that will be started.
+Recovery system or barebox script to be started after *bootchooser* found no
+bootable targets.
 
 .. _bootchooser,state_framework:
 
-- 
2.39.5



