Delivery-date: Mon, 02 Dec 2024 13:46:32 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tI5ot-0035VG-2o
	for lore@lore.pengutronix.de;
	Mon, 02 Dec 2024 13:46:32 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tI5ot-00074E-Mp
	for lore@pengutronix.de; Mon, 02 Dec 2024 13:46:32 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=C7dk3UPwVvi2sOUJ+3YPbOsnEr91Td99i4cTSZO0wMg=; b=iRRdKh71q8kn6f2BggbTaVhPNS
	jL1GIAnmm7b7Mq2fG6tKFK3Sc89KnvXEp6CYdUNgw0vcoaPwW5+uWZHlcw738lIcUrB0ikbjOS+2A
	QZDbmV22iTooIJNjPd25esrwLWSppdoNRfbl0r0bmuIf4sAKj0xyQ+9Y1H7uhSDd/S9YLv4UDl5gH
	NNEHtAac4bjcwRAG2/wGa5X01H9DS4S4eEmGrzDumWrCwuJIVjzfsQ4Siw04whaenUhWMNiJL4179
	BEeQAkLNBkGeqt04PAx4KUK4adZakr/4Mrwuw7TOyeOaDtA2kzMvQlTwpa8rBbwRglXdLTHyBasvH
	0Eqyl0nQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tI5oX-000000067md-0h7p;
	Mon, 02 Dec 2024 12:46:09 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tI5mZ-000000067Hc-0GUz
	for barebox@lists.infradead.org;
	Mon, 02 Dec 2024 12:44:08 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tI5mX-0006Ci-QE; Mon, 02 Dec 2024 13:44:05 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tI5mW-001Ibm-2g;
	Mon, 02 Dec 2024 13:44:05 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tI5mX-007cft-1e;
	Mon, 02 Dec 2024 13:44:05 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  2 Dec 2024 13:44:04 +0100
Message-Id: <20241202124404.1814203-5-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20241202124404.1814203-1-a.fatoum@pengutronix.de>
References: <20241202124404.1814203-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241202_044407_127727_140454D6 
X-CRM114-Status: UNSURE (   9.67  )
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
X-Spam-Status: No, score=-6.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 5/5] kbuild: images: don't compute size if input file didn't change
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

If the input file didn't change, there is no point in repeating image
size checks and cluttering the log. Therefore use if_changed and remove
the extraneous semicolon, which make would then complain about.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 images/Makefile      | 6 +++---
 scripts/Makefile.lib | 2 +-
 2 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/images/Makefile b/images/Makefile
index 0ef2ea6bf6de..a74aa6023e73 100644
--- a/images/Makefile
+++ b/images/Makefile
@@ -100,15 +100,15 @@ $(obj)/%.pblb: $(obj)/%.pbl FORCE
 # code/memory/image for this PBL may get. Check these values.
 #
 	$(if $(MAX_PBL_CODE_SIZE_$*), \
-		$(call cmd,check_size, $(PBL_CODE_SIZE_$*), $(MAX_PBL_CODE_SIZE_$*)) \
+		$(call if_changed,check_size,$(PBL_CODE_SIZE_$*),$(MAX_PBL_CODE_SIZE_$*)) \
 	)
 
 	$(if $(MAX_PBL_MEMORY_SIZE_$*), \
-		$(call cmd,check_size, $(PBL_MEMORY_SIZE_$*), $(MAX_PBL_MEMORY_SIZE_$*)) \
+		$(call if_changed,check_size,$(PBL_MEMORY_SIZE_$*),$(MAX_PBL_MEMORY_SIZE_$*)) \
 	)
 
 	$(if $(MAX_PBL_IMAGE_SIZE_$*), \
-		$(call cmd,check_size, $(PBL_IMAGE_SIZE_$*), $(MAX_PBL_IMAGE_SIZE_$*)) \
+		$(call if_changed,check_size,$(PBL_IMAGE_SIZE_$*),$(MAX_PBL_IMAGE_SIZE_$*)) \
 	)
 
 $(obj)/%.s: $(obj)/% FORCE
diff --git a/scripts/Makefile.lib b/scripts/Makefile.lib
index 19aa506dc645..c32adf07cc51 100644
--- a/scripts/Makefile.lib
+++ b/scripts/Makefile.lib
@@ -520,7 +520,7 @@ quiet_cmd_check_size = CHKSIZE $2
 	then								\
 		echo "$@ size $$size > maximum size $$max_size" >&2;	\
 		exit 1 ;						\
-	fi;
+	fi
 
 # Check size of a file
 quiet_cmd_check_file_size = CHKFILESIZE $2
-- 
2.39.5



