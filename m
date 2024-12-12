Delivery-date: Thu, 12 Dec 2024 09:36:21 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tLegH-0077PN-1L
	for lore@lore.pengutronix.de;
	Thu, 12 Dec 2024 09:36:21 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tLegG-00044h-K1
	for lore@pengutronix.de; Thu, 12 Dec 2024 09:36:21 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=khVEy3VApt5R1+xRT93XsWM8QhmyCPXvLFIP3Pz/XBc=; b=JHszRI4zJ2n91sStwmnl61KwJs
	Q1y9bnxB6ZmF/AtnB9BJc3t7Ww/JZOQq1wx5c7uY+IfJVo5wq5zi399HiiGLQFXr6eC4oj29Zo+xY
	HFr65VJhNL1mxw392Orzb4Y4IiFVj+B8y3/SVwRhbG1aduPDkxZUW9RNjIiNj74ryvTh13q5zsrGx
	dZGaAXQ2h3lGadh/beyHmtXXpijcihEisgXh7NgLjq4VWy/gGvZmlTjy/19KjopcWnQ9RIQdonOnd
	Fihd7gOTYOhujuswZXy577X3CLTufzbfZhQkcfp7WawqtRueqhYdK6dmVJyXoduJwvflCkTscOXT6
	UE1mRSsg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tLefr-0000000HKIh-20Zn;
	Thu, 12 Dec 2024 08:35:55 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tLeai-0000000HJDI-2IwH
	for barebox@lists.infradead.org;
	Thu, 12 Dec 2024 08:30:38 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tLeah-00034Z-64; Thu, 12 Dec 2024 09:30:35 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tLeag-0030Ek-0i;
	Thu, 12 Dec 2024 09:30:35 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tLeag-00AkAx-2v;
	Thu, 12 Dec 2024 09:30:34 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 12 Dec 2024 09:30:29 +0100
Message-Id: <20241212083033.2560690-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20241212083033.2560690-1-a.fatoum@pengutronix.de>
References: <20241212083033.2560690-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241212_003036_602449_333BEEE3 
X-CRM114-Status: GOOD (  10.37  )
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
Subject: [PATCH v2 1/5] images: don't compare filesizes if file didn't change
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

If the input file didn't change, there is no point in repeating the file
size check and cluttering the log. Therefore use if_changed and remove
the extraneous semicolon, which make would then complain about.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 images/Makefile      | 2 +-
 scripts/Makefile.lib | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/images/Makefile b/images/Makefile
index 9007911278e2..80ea582728a5 100644
--- a/images/Makefile
+++ b/images/Makefile
@@ -78,7 +78,7 @@ $(obj)/%.pblb: $(obj)/%.pbl FORCE
 	$(call if_changed,objcopy_bin,$(*F))
 	$(Q)$(OBJCOPY) -O binary --only-section=.missing_fw $< $@.missing-firmware
 	$(Q)[ -s $@.missing-firmware ] || rm -f $@.missing-firmware
-	$(call cmd,check_file_size,$@,$(CONFIG_BAREBOX_MAX_IMAGE_SIZE))
+	$(call if_changed,check_file_size,$@,$(CONFIG_BAREBOX_MAX_IMAGE_SIZE))
 
 #
 # For each start symbol create three variables containing the
diff --git a/scripts/Makefile.lib b/scripts/Makefile.lib
index e8a85f3f1bf6..b698161f43f6 100644
--- a/scripts/Makefile.lib
+++ b/scripts/Makefile.lib
@@ -531,7 +531,7 @@ quiet_cmd_check_file_size = CHKFILESIZE $2
 	then								\
 		echo "$@ size $$size > maximum size $$max_size" >&2;	\
 		exit 1 ;						\
-	fi;
+	fi
 
 quiet_cmd_imximage__S_dcd= DCD_S   $@
 cmd_imximage_S_dcd=						\
-- 
2.39.5



