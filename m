Delivery-date: Thu, 21 Sep 2023 12:24:31 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qjGrI-005lAv-KD
	for lore@lore.pengutronix.de; Thu, 21 Sep 2023 12:24:31 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qjGrE-0002Ee-RZ
	for lore@pengutronix.de; Thu, 21 Sep 2023 12:24:30 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=4EFEATl1oIAxPmAhZ5wKFGVNb01bJAG+X73UW3zKdmE=; b=Zk7VBr0fWGvrvRBYdpTrD7emQh
	2VfCLXIsropsCU7JE6TrWApYNWKBWRmgFF1JF0pH0NTThFN/pnoFlF4pWHAxFejae/+7oBdyKsZxw
	PGE8uHj3MOGvNDeO6cObsfIZbE/e9WmqofxejwAhHcvz2fnLZonEklf4mpUzTOK1DLEbIy2vEBGcV
	vkAEcRzqLkjc5kwmDlNnHl7z4HisEdAT6fF672RyjCUPsfHC6CTXgXG5iTLkewtNqb4qqNba8YnCS
	2JUzyI6YgfRdtR+weN60x3NdX21qClkeHBD7xnKJ6K3y65rIpJTiigRqZGRRETlT8zqIwZvigp+pG
	abULZshA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qjGqA-005hcA-2q;
	Thu, 21 Sep 2023 10:23:22 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qjGq4-005hZD-0R
	for barebox@lists.infradead.org;
	Thu, 21 Sep 2023 10:23:18 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1qjGq2-0001l9-S7
	for barebox@lists.infradead.org; Thu, 21 Sep 2023 12:23:14 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1qjGq2-007u1j-CP
	for barebox@lists.infradead.org; Thu, 21 Sep 2023 12:23:14 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <afa@pengutronix.de>)
	id 1qjGq2-004eR9-14
	for barebox@lists.infradead.org;
	Thu, 21 Sep 2023 12:23:14 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Thu, 21 Sep 2023 12:23:06 +0200
Message-Id: <20230921102310.1108543-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230921102310.1108543-1-a.fatoum@pengutronix.de>
References: <20230921102310.1108543-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230921_032316_181002_A1103E87 
X-CRM114-Status: GOOD (  10.21  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/5] rsa: escape pkcs11 string passed to RSA command
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Rouven Czerwinski <r.czerwinski@pengutronix.de>

Escape the pkcs11 string that can be passed to the rsatoc script.
Otherwise the sh -c invocation for commands will interpret the pkcs11
URI semicolon separator as the end of the command.

Fixes: b39100bcea12 ("rsa: Allow to directly compile in rsa public keys")

Signed-off-by: Rouven Czerwinski <r.czerwinski@pengutronix.de>
Link: https://lore.barebox.org/20230719134630.174215-1-r.czerwinski@pengutronix.de
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 scripts/Makefile.lib | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/scripts/Makefile.lib b/scripts/Makefile.lib
index f04c09f9e280..fe77c83ba230 100644
--- a/scripts/Makefile.lib
+++ b/scripts/Makefile.lib
@@ -625,7 +625,7 @@ quiet_cmd_b64dec = B64DEC  $@
 # target file.
 quiet_cmd_rsa_keys = RSAKEY  $@
 cmd_rsa_keys = \
-	$(objtree)/scripts/rsatoc -o $@.tmp $(2) &&			\
+	$(objtree)/scripts/rsatoc -o $@.tmp "$(2)" &&			\
 	if cmp -s $@.tmp $@; then					\
 		rm $@.tmp;						\
 	else								\
-- 
2.39.2



