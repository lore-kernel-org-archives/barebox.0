Delivery-date: Fri, 28 Nov 2025 11:42:16 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vOvvc-005kuj-2j
	for lore@lore.pengutronix.de;
	Fri, 28 Nov 2025 11:42:16 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vOvvc-0008KE-At
	for lore@pengutronix.de; Fri, 28 Nov 2025 11:42:16 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=obVlTwqOtJualKOGfn1GDegggkd/KRP06MitRKfiacc=; b=m4o8FHx+MZDa3N8mx68AFwd20y
	8eguiT+nQCTiBOXM9qZNCaMdTk4yc90XoutCgDjNNE5VS0cclq+rq3EKvPItYpudIMFOXQLw7oYwp
	6KnTSxo5nBnOi8L2RJJOXu3CbgOQSO61twotVRuW0oMB6DupHoQqSSzNc/ZfJ14m7sFTpODJYUPeN
	v3e4/R4lBLTgxvnimDsXk6wLG672/UDYvnRtz51RKWG9/ZBG07cmz+SFgjJxgo7IYAt5JzWbpj13+
	u3NkUmX8+t2iqgE7oMuFcIGEoP5GfgtI4HT+F4Lcls/r9gDaCxfoX5maJUY40iQzAx14yMA8lf14J
	qIzR7KDQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vOvvC-00000000JHY-0DVO;
	Fri, 28 Nov 2025 10:41:50 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vOvv8-00000000JGN-1yq4
	for barebox@lists.infradead.org;
	Fri, 28 Nov 2025 10:41:48 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vOvv7-0008AS-4u
	for barebox@lists.infradead.org; Fri, 28 Nov 2025 11:41:45 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vOvv6-002wKr-35
	for barebox@lists.infradead.org;
	Fri, 28 Nov 2025 11:41:44 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vOvv6-00000006kEN-3Vpf
	for barebox@lists.infradead.org;
	Fri, 28 Nov 2025 11:41:44 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Fri, 28 Nov 2025 11:41:27 +0100
Message-ID: <20251128104143.1578832-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20251128104143.1578832-1-a.fatoum@pengutronix.de>
References: <20251128104143.1578832-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251128_024146_506661_11D20551 
X-CRM114-Status: UNSURE (   9.83  )
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
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 2/3] sandbox: fix race with .old_version removal
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Ahmad Fatoum <a.fatoum@barebox.org>

On sandbox, .old_version is created and removed by the barebox.o recipe
and the barebox ELF itself is never built and instead it's a symlink
created by the barebox__ rule override.

Drop the rm -f .old_version in that case, so the file is not removed too soon.

A cleaner way would be to factor this logic out to a shell script like
Linux does as it's serialized anyway and there's no benefit of having
the steps as make targets, but that's left as future exercise.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 Makefile | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Makefile b/Makefile
index 2534fb4b467b..f958114480f9 100644
--- a/Makefile
+++ b/Makefile
@@ -1083,7 +1083,9 @@ PHONY += check
 # ---------------------------------------------------------------------------
 barebox: $(BAREBOX_LDS) $(BAREBOX_OBJS) $(kallsyms.o) FORCE
 	$(call if_changed_rule,barebox__)
+ifeq ($(BAREBOX_PROPER),barebox)
 	$(Q)rm -f .old_version
+endif
 
 barebox.fit: images/barebox-$(CONFIG_ARCH_LINUX_NAME).fit
 	$(Q)ln -fsn $< $@
-- 
2.47.3



