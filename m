Delivery-date: Thu, 12 Dec 2024 09:36:22 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tLegI-0077Pz-0U
	for lore@lore.pengutronix.de;
	Thu, 12 Dec 2024 09:36:22 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tLegI-00046g-1E
	for lore@pengutronix.de; Thu, 12 Dec 2024 09:36:22 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=C7dk3UPwVvi2sOUJ+3YPbOsnEr91Td99i4cTSZO0wMg=; b=yQr6Vz7JMrStSmjdsJ6dJzDNEF
	s/wdhDq0L33ETcMQw1xh7xBb6Bp6jpRgwapVKyh/JmJ8QJN+8CWrViCWm4EYfardT8W988q9gzizk
	DN5zCnMqTLM3S6KhARsPVGGVZJoWLR39QQffRspTbq4Nh4Bb8v0XwtleJladOl52sX1u+ntNAny2F
	muBFA4ZeZdjuKFUQEFx67pbTOijDV+gd/pmrDIjoRISHkrO3h3ZV97BQBb/HZ5kQplnpuXGWaYl3Y
	rFlUo0Le8YTNvB3ylJSso2NbWjGGSpR7OjNpXkJS8aXc2vxDX/Yv+M5SECxuog3FaHD5kGMS3wE24
	MXC62hIQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tLefs-0000000HKJw-2vPw;
	Thu, 12 Dec 2024 08:35:56 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tLeai-0000000HJDH-2Ks3
	for barebox@lists.infradead.org;
	Thu, 12 Dec 2024 08:30:38 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tLeah-00034j-CR; Thu, 12 Dec 2024 09:30:35 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tLeag-0030Ew-1J;
	Thu, 12 Dec 2024 09:30:35 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tLeah-00AkAx-0H;
	Thu, 12 Dec 2024 09:30:35 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 12 Dec 2024 09:30:33 +0100
Message-Id: <20241212083033.2560690-6-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20241212083033.2560690-1-a.fatoum@pengutronix.de>
References: <20241212083033.2560690-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241212_003036_604969_71A72C21 
X-CRM114-Status: UNSURE (   9.65  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 5/5] images: don't compute size if input file didn't change
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



