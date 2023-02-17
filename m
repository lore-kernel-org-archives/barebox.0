Delivery-date: Fri, 17 Feb 2023 18:34:30 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pT4cu-00AI9p-A2
	for lore@lore.pengutronix.de; Fri, 17 Feb 2023 18:34:30 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pT4cs-0005YD-1Q
	for lore@pengutronix.de; Fri, 17 Feb 2023 18:34:27 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=AZ+PuUH/WscRwQPJ1QFRRv5x9xb4VoQNrQkz16luNp8=; b=tiTzxgEn9QrV4oK3ChVFYGGym/
	rQQJq/w89+d5jDc8i6JQAm5rnnN9LUOGTFaZs1PV7KyvFE5pwW5os0BcRN/nfN2iykessUQ2Q0T2c
	7oVkQwq2/hAYzWvRe4K663WgQj4qmAm6nYxlZp2lyPNrim8cVoeTK3lGSZrAE7RJsfMilXjot1nM0
	uwTsC+JfnjL+ZNIcUjBU/P98YFs7LTIbPtWRRjJyCzleXdtbMBMtXZw0E5Gql7dmDxMZDHDGRR6vx
	FfgyRvknTWMcS/hIGinAtprY7c1Y390Pr7X7AAraEssOIE5oqknpnawd33AjXGkeEWrCKLzD2v5h3
	2PJ8QOkw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pT4bl-00FGgO-Nf; Fri, 17 Feb 2023 17:33:18 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pT4Zm-00FFMx-Ev
	for barebox@bombadil.infradead.org; Fri, 17 Feb 2023 17:31:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=AZ+PuUH/WscRwQPJ1QFRRv5x9xb4VoQNrQkz16luNp8=; b=mB1ESZcy5pxUYrdmUY9NSk8YAO
	d4HfFny/9653IuvhvHDa4EVhAwJ+rPvrgbVQKxyQbK348ZJxCiSeqo0/lxhFEON6FfdHc7oPvy4al
	3pX6nySvkreq/MR6KB+yQ1p0CTuq2Q3N1OqIadGOPwmefTp0GXY312fwPoImFp/nqBnsu/RuJsbSR
	wQrsKkB4lfa2hysjlwQzDGv7vR+CGCA2UHuPJ5+P+TlynIBkWSAjItAdy5W499Qzuf/E4UxPqCLw0
	gJR1rrFRgaO458vZPnJmW2fzeLz/SMWk3aSJMMEA+ywIM31XVnZZZ7ujeP2+zD4iwHjgLZaH/fRj0
	sGbYYwTQ==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pT4Yz-00Ai1O-1k
	for barebox@lists.infradead.org;
	Fri, 17 Feb 2023 17:31:12 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1pT4Zb-0004FO-Fb; Fri, 17 Feb 2023 18:31:03 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pT4ZZ-005dUM-L3; Fri, 17 Feb 2023 18:31:02 +0100
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pT4ZV-007ixV-VP; Fri, 17 Feb 2023 18:30:57 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 17 Feb 2023 18:30:40 +0100
Message-Id: <20230217173057.1839835-4-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230217173057.1839835-1-a.fatoum@pengutronix.de>
References: <20230217173057.1839835-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230217_173107_979639_FE33DD3A 
X-CRM114-Status: GOOD (  13.03  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v1 03/20] Documentation: devicetree: describe new label-relative-path syntax
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

For use in barebox, DTC v1.7.0 now allows constructing labels that are
comprised of a parent label and a relative path. This is a middle ground
for when no suitable label is defined upstream and a full path is too
verbose and more likely to cause breakages that could've been avoided
by restricting the path component. Describe this in the docs.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 Documentation/devicetree/index.rst | 45 ++++++++++++++++++++++++++----
 1 file changed, 39 insertions(+), 6 deletions(-)

diff --git a/Documentation/devicetree/index.rst b/Documentation/devicetree/index.rst
index 61ac0433fb41..36fa69058d1d 100644
--- a/Documentation/devicetree/index.rst
+++ b/Documentation/devicetree/index.rst
@@ -37,8 +37,8 @@ environment or boot-time device configuration.
 
 Device Tree probing largely happens via compatible properties with no special
 meaning to the node names themselves. It's thus paramount that any device tree
-nodes extended in the barebox device tree are referenced by a phandle, not by
-path, to avoid run-time breakage like this::
+nodes extended in the barebox device tree are referenced by label (e.g.
+``<&phandle>``, not by path, to avoid run-time breakage like this::
 
   # Upstream dts/src/$ARCH/board.dts
   / {
@@ -62,15 +62,48 @@ path, to avoid run-time breakage like this::
 In the previous example, a device tree sync with upstream resulted in a regression
 as the former override became a new node with a single property without effect.
 
-Using phandles avoids this. When no phandle mapping the full path is defined
-upstream, the ``&{/path}`` syntax should be used instead, e.g.::
+The preferred way around this is to use labels directly::
+
+  # Upstream dts/src/$ARCH/board.dts
+  / {
+  	leds {
+            status_led: red { };
+        };
+  };
+
+  # barebox arch/$ARCH/dts/board.dts
+  #include <$ARCH/board.dts>
+
+  &status_led {
+      barebox,default-trigger = "heartbeat";
+  };
+
+If there's no label defined upstream for the node, but for a parent,
+a new label can be constructed from that label and a relative path::
+
+  # Upstream dts/src/$ARCH/board.dts
+  / {
+  	led_controller: leds {
+            red { };
+        };
+  };
+
+  # barebox arch/$ARCH/dts/board.dts
+  #include <$ARCH/board.dts>
+
+  &{led_controller/red} {
+      barebox,default-trigger = "heartbeat";
+  };
+
+As last resort, the full path shall be used::
 
   &{/leds/red} {
       barebox,default-trigger = "heartbeat";
   };
 
-This would lead to a compile error should the ``/leds/red`` path be renamed or
-removed. This also applies to uses of ``/delete-node/``.
+Any of these three approaches would lead to a compile error should the
+``/leds/red`` path be renamed or removed. This also applies to uses
+of ``/delete-node/``.
 
 Only exception to this rule are well-known node names that are specified by
 the `specification`_ to be parsed by name. These are: ``chosen``, ``aliases``
-- 
2.30.2



