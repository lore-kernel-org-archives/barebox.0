Delivery-date: Tue, 02 May 2023 09:40:57 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ptkd8-0027jc-DG
	for lore@lore.pengutronix.de; Tue, 02 May 2023 09:40:57 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ptkd6-0002eh-A8
	for lore@pengutronix.de; Tue, 02 May 2023 09:40:56 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=k7vvBMz4PgzEAhfVBMup0hqbH/XVtiA8NUvYVF0glx0=; b=cRheHaiTqXJWO2jzHJ3roVpQ9j
	nCHkKdGWPd90Q7ngz1KfahiwrYcWT83rh89wYD4EqqiaDJuOz+tLbXQcwiQUOW0EJ1ijdVJOQi/cr
	8J9rBqA0XC2lbBG2kZF3mGWx3aFWC3SLhfCdu1XdO15IPaH+3W6eWW5Tb6HEFWIrl4NGv/gZWVvUG
	w1yIiJshrir3XUPfBHBAguaVPAQbXAVrqFQdgXgk+dqrIVsk75xU2/UcOLQAM5RrNPMPRzFStwAhn
	nuzauULzunnITXokjGmLXWhwWvxovE1yTT1pGgBZv7DydperXyGHB1FcJQk9gTK6iYFw2/xdFLUGA
	XJAratHA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1ptkbw-000V2R-2A;
	Tue, 02 May 2023 07:39:44 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1ptkbp-000Uxs-1T
	for barebox@lists.infradead.org;
	Tue, 02 May 2023 07:39:38 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1ptkbg-0001y8-6b; Tue, 02 May 2023 09:39:28 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1ptkbf-000XQ0-M7; Tue, 02 May 2023 09:39:27 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1ptkbe-001MeG-Dw; Tue, 02 May 2023 09:39:26 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue,  2 May 2023 09:39:20 +0200
Message-Id: <20230502073925.266116-6-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230502073925.266116-1-s.hauer@pengutronix.de>
References: <20230502073925.266116-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230502_003937_501581_82EF75DD 
X-CRM114-Status: GOOD (  11.22  )
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
Subject: [PATCH 05/10] MAKEALL: Do not trap
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Just print the compile statistics at the end. There's no need to print
them when MAKEALL gets interrupted, so just simplify the code by
removing trapping signals.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 MAKEALL | 12 +++---------
 1 file changed, 3 insertions(+), 9 deletions(-)

diff --git a/MAKEALL b/MAKEALL
index c1048a21e2..4dcfa4138c 100755
--- a/MAKEALL
+++ b/MAKEALL
@@ -2,10 +2,6 @@
 #
 # SPDX-License-Identifier: GPL-2.0-only
 
-# Print statistics when we exit
-trap exit 1 2 3 15
-trap stats 0
-
 # Keep track of the number of builds and errors
 nb_errors=0
 errors_list=""
@@ -16,12 +12,9 @@ time_start=$(date +%s)
 
 filename=$(basename $0)
 
-is_print_stats=1
-
 #-----------------------------------------------------------------------
 
 usage() {
-	is_print_stats=0
 	echo "Usage: ${filename} [OPTION]..."
 	echo "Barebox MAKEALL tools."
 	echo ""
@@ -61,8 +54,6 @@ usage() {
 }
 
 stats() {
-	[ ${is_print_stats} -lt 1 ] && return
-
 	echo ""
 	echo "--------------------- SUMMARY ----------------------------"
 	echo "defconfigs compiled: ${nb_defconfigs}"
@@ -280,4 +271,7 @@ then
 else
 	do_build_target ${ARCH} $1
 fi
+
+stats
+
 exit $nb_errors
-- 
2.39.2



