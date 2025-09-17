Delivery-date: Wed, 17 Sep 2025 15:54:04 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uysbk-0045kj-31
	for lore@lore.pengutronix.de;
	Wed, 17 Sep 2025 15:54:04 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uysbj-0006Vi-23
	for lore@pengutronix.de; Wed, 17 Sep 2025 15:54:04 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:
	References:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:
	Subject:Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=RAsn1WWIFlIl17sFj6umDB8qHEUw7vs/3m8tNS3jvQQ=; b=yVnteyDPPbi0DmIAGAmx0857we
	T+j8sBwtJUSc2JmAoqpA+9CYHzar1VvaQpbeFJCNweTyFulqM5+D93WSlD0QSx+EP88qmBtKGVQqx
	VGS/tnSZqzIZRqxi6cOSs/NqmGH4EhBLqy4NqoRaLWPwxSyFHGVJ1pGSFjjnD9aU9JyeaPCm4tggY
	OGE4QtEY6LLeew3/ILEZQTSJjk4G3TCeqj60q7+KDLb3qB7FMoI3TjkOm2YKSaNL92BpkxKlnuE1K
	xiY3cK0/ya3IwazNB2mrOQJAQ8icsGpCqJMg+q1cJvFp7adSTdjdseYAQhYj6AklJOmbPLvS0lI0H
	KWmMTKEQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uysbF-0000000BsiB-2gF0;
	Wed, 17 Sep 2025 13:53:33 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uysbD-0000000Bsg8-0A2y
	for barebox@lists.infradead.org;
	Wed, 17 Sep 2025 13:53:32 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uysbB-0006AV-5F; Wed, 17 Sep 2025 15:53:29 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uysbA-001luO-2Z;
	Wed, 17 Sep 2025 15:53:28 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uysbA-0000000CZtI-2t5X;
	Wed, 17 Sep 2025 15:53:28 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 17 Sep 2025 15:53:23 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250917-security-policies-v2-3-f30769a3ff51@pengutronix.de>
References: <20250917-security-policies-v2-0-f30769a3ff51@pengutronix.de>
In-Reply-To: <20250917-security-policies-v2-0-f30769a3ff51@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1758117208; l=1165;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=fWeWhF5Qoj38DU2nnmthUksgW86XEeWfXRtrS1mpHeg=;
 b=GbfYFfobyfEiuLl5Q+/PNxMZCzitaPtZKrQJn2o94ht2DOwtbparFdeNlv5/KCWRyh94qn1M8
 0YINguhuV2DB/NihmE78+OyLlRmCr1dy7EJIw+GJ2ERDN7fqAKyI0b3
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250917_065331_085582_84F4D152 
X-CRM114-Status: UNSURE (   9.28  )
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
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 03/24] kbuild: implement loopable loop_cmd
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Ahmad Fatoum <a.fatoum@pengutronix.de>

The normal cmd can not be used in foreach, because it's prefixed by @.
Add an optional loopable variant as well as a noop_cmd that's suitable
for use in nesten $(call ...) invocations that would otherwise lead to
Make aborting due to perceived cycles in log_print.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 scripts/Kbuild.include | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/scripts/Kbuild.include b/scripts/Kbuild.include
index e905b54663713beae56b46e4c91079fab9d06c66..a23d27cba315f51082fcf38d6b3e011a541fabd1 100644
--- a/scripts/Kbuild.include
+++ b/scripts/Kbuild.include
@@ -158,6 +158,12 @@ delete-on-interrupt = \
 # print and execute commands
 cmd = @$(if $(cmd_$(1)),set -e; $($(quiet)log_print) $(delete-on-interrupt) $(cmd_$(1)),:)
 
+# The normal 'cmd' above is not *loopable*
+loop_cmd = $(if $(cmd_$(1)),set -e; $($(quiet)log_print) $(cmd_$(1)),:) || exit;
+
+# Like loop_cmd, but without printing
+noop_cmd = $(if $(cmd_$(1)),$(cmd_$(1)),:)
+
 ###
 # if_changed      - execute command if any prerequisite is newer than
 #                   target, or command line has changed

-- 
2.47.3



