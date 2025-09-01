Delivery-date: Mon, 01 Sep 2025 21:51:04 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1utAYT-0071Ie-0N
	for lore@lore.pengutronix.de;
	Mon, 01 Sep 2025 21:51:04 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1utAYR-0004pw-VS
	for lore@pengutronix.de; Mon, 01 Sep 2025 21:51:04 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=zEId4dWz+8+WSvN9EU/AhT/Ad3X0pnmnjFCyFhqdiVQ=; b=P6x0Yi5V6N4BRqz7hxtMyufG4R
	dKuM9l9rjZu1hPD+Q5rPdIZgiUFY4itZmAdGmRLpCj+tSw0Pa8MOKXTG4AwO5ycDK9JdUfqp1o00m
	PBmgjFH/ayQ72i0Q4+rgUuuCOcst1wv+PNqNUR6xVqxAcNN+l+kjT+rvZXCJgte2VvDVz/E7Zlgr3
	HkowPu6gMBpK4QIHqofhsofiIhUBix8xXjSEdQ4Zpae4FJNs5vRCxi1blsgTHBkkJQ03RzM+EkkLx
	CUJZvpbqMQlgJe+GpJpl/TB3P4fq/Vld6XTVETJmtXk9xPSqAJQLtbvE9tjWw9WEguHEB83GN/hVQ
	5ffg+KgQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1utAXo-0000000Dgzn-0wOW;
	Mon, 01 Sep 2025 19:50:24 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ut6cR-0000000D8ix-2zzv
	for barebox@lists.infradead.org;
	Mon, 01 Sep 2025 15:39:00 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1ut6cQ-0006YX-Fj; Mon, 01 Sep 2025 17:38:54 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1ut6cQ-003FNq-0x;
	Mon, 01 Sep 2025 17:38:54 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1ut6cQ-0000000AlDQ-0pD8;
	Mon, 01 Sep 2025 17:38:54 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  1 Sep 2025 17:38:05 +0200
Message-ID: <20250901153852.2554758-4-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20250901153852.2554758-1-a.fatoum@pengutronix.de>
References: <20250901153852.2554758-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250901_083855_761460_8C24EA7C 
X-CRM114-Status: GOOD (  10.09  )
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
Subject: [PATCH 3/3] ci: build: shuffle goal and prerequisite ordering
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Now that the container has been newly updated to Debian Trixie, we have
GNU make v4.4.1 available. v4.4 introduced a new --shuffle option
that shuffles goal and prerequisite ordering to hopefully catch issues
around non-deterministic build order in parallel makefiles.

Let's enable this option for all our defconfig builds. When a build
fails, make will also print to stderr a shuffle=<integer> line.

The integer can be passed to --shuffle locally when trying to reproduce
the breakage.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 .github/workflows/build-defconfigs.yml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/.github/workflows/build-defconfigs.yml b/.github/workflows/build-defconfigs.yml
index c95c56b6ba88..e99dfe595bf0 100644
--- a/.github/workflows/build-defconfigs.yml
+++ b/.github/workflows/build-defconfigs.yml
@@ -39,6 +39,8 @@ jobs:
 
         ./test/generate-dummy-fw.sh
 
+        export GNUMAKEFLAGS=--shuffle
+
         ./MAKEALL -O build-${{matrix.arch}} -l "" -v 0 \
                 -k common/boards/configs/disable_size_check.config \
                 -k common/boards/configs/disable_target_tools.config \
-- 
2.47.2



