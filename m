Delivery-date: Fri, 09 Aug 2024 16:20:35 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1scQTr-007rSc-1d
	for lore@lore.pengutronix.de;
	Fri, 09 Aug 2024 16:20:35 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1scQTq-0007UK-T4
	for lore@pengutronix.de; Fri, 09 Aug 2024 16:20:35 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=hFQhTC+iaHUlume04mQNgA09LeMFfwCTi3oBaSGkkws=; b=3Klf5E8K0bGUtwH7cJexE0mRG6
	Dgw1s+Egs0KvC1jgyOqj0pq9yDguV9Kr7ek59n5GXPZPSbwEcrUN1guqsttpydlOtkjVmUliww77I
	DkcPGBSXo0BWvBZAQrdNW25MaF7U7aJQ/9ltp4qlmscJSfmX1NSq3aO/ZsMeNsgtsbI0M5NyuLA+f
	jCIi2mj3TBoJ+NN4SeXG81/uPzzOgnv0lwDZcSnbImmh32IJFZkygaBb3Z3dIZsdXANXHDNhHsBnz
	mV86d6IkmO+X8gGQsOQkrji1kvSipLBJfy9PL/4ZR2qg0UH93txj8dBQlA05BXM6lBH5eQTj6RGbH
	GO9xTAyQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1scQTU-0000000BVeJ-0Cn6;
	Fri, 09 Aug 2024 14:20:12 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1scQTP-0000000BVbh-1swQ
	for barebox@lists.infradead.org;
	Fri, 09 Aug 2024 14:20:09 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1scQTN-0007JC-Qq; Fri, 09 Aug 2024 16:20:05 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1scQTN-005gZk-Do; Fri, 09 Aug 2024 16:20:05 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1scQTN-001Jfa-15;
	Fri, 09 Aug 2024 16:20:05 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri,  9 Aug 2024 16:19:57 +0200
Message-Id: <20240809141959.313914-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240809_072007_988228_9745C41C 
X-CRM114-Status: GOOD (  11.65  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/3] fastboot: print all variables only on getvar:all and not its prefixes
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

strcmp_l1 compares up to the length of the first arguments, i.e. it does
a prefix check. For this, the prefix, which is usually a string literal,
needs to be the first argument.

The check for getvar:all doesn't follow this with the result that all of

  fastboot getvar 'all'
  fastboot getvar 'al'
  fastboot getvar 'a'
  fastboot getvar ''

behave the same. This undocumented quirk is most likely unintended, so
let's replace this with an actual equality check.

Note that strcmp_l1 also does a NULL-ness check. This is safe to remove,
as explained in the follow-up commit.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v1 -> v2:
  - new patch
---
 common/fastboot.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/common/fastboot.c b/common/fastboot.c
index 532286703089..e85cc6d8aaf8 100644
--- a/common/fastboot.c
+++ b/common/fastboot.c
@@ -312,7 +312,7 @@ static void cb_getvar(struct fastboot *fb, const char *cmd)
 
 	pr_debug("getvar: \"%s\"\n", cmd);
 
-	if (!strcmp_l1(cmd, "all")) {
+	if (!strcmp(cmd, "all")) {
 		list_for_each_entry(var, &fb->variables, list)
 			fastboot_tx_print(fb, FASTBOOT_MSG_INFO, "%s: %s",
 					  var->name, var->value);
-- 
2.39.2



