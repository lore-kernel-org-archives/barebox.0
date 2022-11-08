Delivery-date: Tue, 08 Nov 2022 11:51:11 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1osMCF-001IJr-Ii
	for lore@lore.pengutronix.de; Tue, 08 Nov 2022 11:51:11 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1osMCE-0003Rx-DO
	for lore@pengutronix.de; Tue, 08 Nov 2022 11:51:10 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IbioZu4W8+kcbmOxERNc+3khA84zShuo27/MNmuboyg=; b=WZqgQ6q474M0Bm
	GdtOsDcuBK+B5r4ZU6nwbztaHdbT800JCdZtdHRafKnjhyo7wBkcFy83FmyMys1f+DGJIHiANKFFV
	Y4QpaJgucHEo8BdzcS0KbIdg2RpwUweYkuSyxWSbCHZbyH+VpWlKGOzVOf+OSEp/if5ErG0Z6iG6r
	F2du1Tyo9EG0lNusJThgPotE4JsuUoCJvJlydyfheK6JpRogHKNXePU8UXCRv7dg0PHPRHVZcCU4y
	4wCv7O7GzDczKnu6CVPDiS33GoyMUq0sJR9EHuWZnGnSdLyeUjVFnDLLD4bSBI0oLmHIGAvDCF/em
	JJ1F9SZJUn2X77KxzCeA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1osMAk-004fhk-M9; Tue, 08 Nov 2022 10:49:38 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1osMAe-004fgM-8Z
	for barebox@lists.infradead.org; Tue, 08 Nov 2022 10:49:33 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1osMAc-0002v7-JV; Tue, 08 Nov 2022 11:49:30 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1osMAb-0032IV-07; Tue, 08 Nov 2022 11:49:29 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1osMAa-0084VS-UQ; Tue, 08 Nov 2022 11:49:28 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue,  8 Nov 2022 11:49:27 +0100
Message-Id: <20221108104927.1922424-2-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20221108104927.1922424-1-s.hauer@pengutronix.de>
References: <20221108104927.1922424-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221108_024932_327497_97E20656 
X-CRM114-Status: UNSURE (   9.93  )
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
Cc: afa@pengutronix.de
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/2] Kbuild: link with -z noexecstack and --no-warn-rwx-segments
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Users of GNU ld (BFD) from binutils 2.39+ will observe multiple
instances of a new warning when linking barebox and PBL in the form:

ld: warning: defaultenv/defaultenv-2-dfu.bbenv.o: missing .note.GNU-stack section implies executable stack
ld: NOTE: This behaviour is deprecated and will be removed in a future version of the linker
ld: warning: .tmp_barebox1 has a LOAD segment with RWX permissions

We don't need executable stack, so disable with -z noexecstack. We also
do not use the permissions from ELF segments, so disable the warning
with --no-warn-rwx-segments.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 Makefile | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Makefile b/Makefile
index 12882ef4cf..de0329c761 100644
--- a/Makefile
+++ b/Makefile
@@ -454,6 +454,10 @@ LDFLAGS_barebox	:= -Map barebox.map
 
 # Avoid 'Not enough room for program headers' error on binutils 2.28 onwards.
 LDFLAGS_common += $(call ld-option, --no-dynamic-linker)
+# Avoid 'missing .note.GNU-stack section implies executable stack' warnings on binutils 2.39+
+LDFLAGS_common += -z noexecstack
+# Avoid '... has a LOAD segment with RWX permissions' warnings on binutils 2.39+
+LDFLAGS_common += $(call ld-option,--no-warn-rwx-segments)
 
 LDFLAGS_barebox += $(LDFLAGS_common)
 LDFLAGS_pbl += $(LDFLAGS_common)
-- 
2.30.2



