Delivery-date: Wed, 19 Jul 2023 15:48:11 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qM7XJ-0035YV-7R
	for lore@lore.pengutronix.de; Wed, 19 Jul 2023 15:48:11 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qM7XG-0008Nd-U8
	for lore@pengutronix.de; Wed, 19 Jul 2023 15:48:11 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=IpEJJUxGbY0LPkU2lqL007D8A7/+T0RpPCd40sYMg1U=; b=oEAKGVMLMatjQsJDBN1uVaQ8sR
	N2+fOHggPjLUwYWSdSdEspZ/s9dMrqqHCc17KLTpMuec2sFMSENZrChcPCNhC/xJFjqSRfdtXho+f
	JTSRfWNiAOrTN0oANW42bdAf0Qh7cI4yMfcfmUeefQ88qNvL7y1d0e6QTBP3jjKV/TCnphmLuRRrG
	truh/NUXCtBtzQpd1y7l1bxvIkq+7LcOfFoi4ECgKAD8qLUQpH4n0kL3KiN3CYl68Q9RI1XcgDejc
	hT/BuRAZyPWnrS0/rU1+n3qZQISc9sc8hXLn0th5Fsz3kdZSDjxG00F5rCWYO8oRrsvn7LfGGn53O
	ygNZg9yQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qM7Vm-007cYx-28;
	Wed, 19 Jul 2023 13:46:38 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qM7Vj-007cXw-1A
	for barebox@lists.infradead.org;
	Wed, 19 Jul 2023 13:46:36 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=localhost)
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <r.czerwinski@pengutronix.de>)
	id 1qM7Vf-0008K9-Mp; Wed, 19 Jul 2023 15:46:31 +0200
From: Rouven Czerwinski <r.czerwinski@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Rouven Czerwinski <r.czerwinski@pengutronix.de>
Date: Wed, 19 Jul 2023 15:46:30 +0200
Message-ID: <20230719134630.174215-1-r.czerwinski@pengutronix.de>
X-Mailer: git-send-email 2.41.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230719_064635_405972_610E21FD 
X-CRM114-Status: GOOD (  10.10  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] rsa: escape pkcs11 string passed to RSA command
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Escape the pkcs11 string that can be passed to the rsatoc script.
Otherwise the sh -c invocation for commands will interpret the pkcs11
URI semicolon separator as the end of the command.

Fixes: b39100bcea12 ("rsa: Allow to directly compile in rsa public keys")

Signed-off-by: Rouven Czerwinski <r.czerwinski@pengutronix.de>
---
 scripts/Makefile.lib | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/scripts/Makefile.lib b/scripts/Makefile.lib
index f04c09f9e2..fe77c83ba2 100644
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
2.41.0



