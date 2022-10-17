Delivery-date: Mon, 17 Oct 2022 09:06:56 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1okKDB-00BNV5-Hy
	for lore@lore.pengutronix.de; Mon, 17 Oct 2022 09:06:56 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1okKD9-0004Kh-Hd
	for lore@pengutronix.de; Mon, 17 Oct 2022 09:06:56 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=LSQWcMCbl20MG9Ksr3CfN1XX29FVvCpDkMP8eKsIZ5Y=; b=yXKS+QowhYEVBhISBVLHmVItGp
	jT7+X9+fqTmaWYS3t9qw58kfFAV4OUjfPJ6fAK94bjvP+Emn8M6zIEkiszt3LR8ryORZ4ndqP+yTz
	IjVlA0jiAcagqFHpn/sTFHnRyB0sOF3cpzN5Fk2VGUxsO+Ca0tjJ83g40+HBTBALLEuQPtETzumNb
	sdr9mqK9Iw9PV9af7FGeSDL2aHFSb0N9g9+0d0l2l+5DE1+FUQdfGuu8eoLYcY4RhC/n9U7ebqFPL
	EYqrYQpLgX2Vjhb8fRLXnzKHKRmwcCpIhsjeUc2AqzvWzMUgm31fFdOaQoJUhxSlmYDEXtxK+XbLg
	wDy7iRNQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1okKBR-008LLC-Oa; Mon, 17 Oct 2022 07:05:09 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1okKBN-008LJi-TW
	for barebox@lists.infradead.org; Mon, 17 Oct 2022 07:05:07 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1okKBI-0003zi-1A; Mon, 17 Oct 2022 09:05:00 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1okKBH-0021Sw-9U; Mon, 17 Oct 2022 09:04:59 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1okKBG-0066qG-Mr; Mon, 17 Oct 2022 09:04:58 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 17 Oct 2022 09:04:57 +0200
Message-Id: <20221017070457.1456218-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221017_000505_972254_C991F3C6 
X-CRM114-Status: UNSURE (   8.01  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] pbl: define DEBUG globally when CONFIG_INITCALL_DEBUG=y
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

CONFIG_INITCALL_DEBUG=y is a very useful tool for debugging barebox
hangs, but it's not so useful if the hang happens very early. As PBL's
function can be construed as preparing for initcall execution,
CONFIG_INITCALL_DEBUG should enable PBL debugging too, so let's just do
that.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 scripts/Makefile.lib | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/scripts/Makefile.lib b/scripts/Makefile.lib
index 16308497b845..8cda2a3187ba 100644
--- a/scripts/Makefile.lib
+++ b/scripts/Makefile.lib
@@ -156,6 +156,10 @@ _c_flags       += $(if $(patsubst n%,, \
 PBL_CPPFLAGS   += $(call cc-option,-fno-sanitize=all)
 endif
 
+ifeq ($(CONFIG_DEBUG_INITCALLS),y)
+PBL_CPPFLAGS   += -DDEBUG
+endif
+
 # If building barebox in a separate objtree expand all occurrences
 # of -Idir to -I$(srctree)/dir except for absolute paths (starting with '/').
 
-- 
2.30.2



