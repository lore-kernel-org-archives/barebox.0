Delivery-date: Thu, 14 Aug 2025 15:51:54 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1umYN0-000WcY-2s
	for lore@lore.pengutronix.de;
	Thu, 14 Aug 2025 15:51:54 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1umYMz-0005AE-NC
	for lore@pengutronix.de; Thu, 14 Aug 2025 15:51:54 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=3GggMHnAkmRW1ezAVmOmLll5T2gKryqpLTtIuLC9dJU=; b=Y/vmzybjm/g4xH8OQH/w9IrAIq
	rai8excZt+A38X88MTK/o8inHfSzvU6LaGaaivSsSO7XER0x8v0aWPUE1zpeFLYYFGcElvULtZlUy
	FWVnDj0SErJKK3w91TvZcsMl7JGNAzmDiiS3k12PAQ0Xgf/szfG0Dlo1zMZUnESYIsoQQgZNyfbsF
	E/gi/vsBk3VWynZNRuJVuzLBDD9Vb+YZ7KNV14rY5w9E3Ma7ZBbk5ugjykEUI4Wi9FrEsAT4M0qsU
	hN04k4/oKe8uPUNZHm23N2lIwsA8cIdDKt5SOsmUdB6SPMUi+tkxe/t8ZRymcPheuo9ua+8VZ4tmI
	ZSdVM1bQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1umYMZ-0000000H6jb-1bY2;
	Thu, 14 Aug 2025 13:51:27 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1umXfm-0000000GvUA-1DlR
	for barebox@lists.infradead.org;
	Thu, 14 Aug 2025 13:07:15 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1umXfd-0006HI-21; Thu, 14 Aug 2025 15:07:05 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1umXfb-000GGq-0k;
	Thu, 14 Aug 2025 15:07:03 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1umXfb-00Gwpv-0S;
	Thu, 14 Aug 2025 15:07:03 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 14 Aug 2025 15:06:48 +0200
Message-Id: <20250814130702.4039241-4-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250814130702.4039241-1-a.fatoum@pengutronix.de>
References: <20250814130702.4039241-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250814_060714_327204_50E306EA 
X-CRM114-Status: UNSURE (   8.42  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH RFC 03/17] kbuild: implement loopable loop_cmd
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The normal cmd can not be used in foreach, because it's prefixed by @.
Add an optional loopable variant as well as a noop_cmd that's suitable
for use in nesten $(call ...) invocations that would otherwise lead to
Make aborting due to perceived cycles in log_print.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 scripts/Kbuild.include | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/scripts/Kbuild.include b/scripts/Kbuild.include
index e905b5466371..a23d27cba315 100644
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
2.39.5



