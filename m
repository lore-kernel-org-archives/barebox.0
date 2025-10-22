Delivery-date: Wed, 22 Oct 2025 17:09:35 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vBaT1-00AdyW-0z
	for lore@lore.pengutronix.de;
	Wed, 22 Oct 2025 17:09:35 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vBaT0-0004Xs-PV
	for lore@pengutronix.de; Wed, 22 Oct 2025 17:09:35 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=mTwBjXcCO8iGUKI0iXq7/xJhKd8xM0pj2A6qMOJ/koQ=; b=bhfIVtu8w2YPds1SOQFNdy0n/c
	RZs4ZIVkDrpWzrSuf5qV9Ko3UKkyIN31XIQQ5eE7XPW/32a9005Fk/+sqZ2CMHhUr5PDZe2qy58oH
	HboJMpIZt4WOiqzfhXDH+uWou3rKnSHNlhhhVpcYSI0NMLPMM137mYqmfHcxWAExdLkaYvBQhFytC
	2a4zXNRhTCIqRvVI5mUwze8kKnHHtCGNG9866i/iZi9+Snqv2MGvPakquG9nB6zBIeKUDXqEA1VQm
	GRkaYK+M7VPFwmLZPjFODIT6ZB2qWCdQaB4kOjRroA6MVqB+xgdzQWhVRqIrw45kwuaOcxWP9gA2h
	Nbnvy+0g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBaSI-00000003L60-1DFQ;
	Wed, 22 Oct 2025 15:08:50 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBaSE-00000003L5H-22Z6
	for barebox@lists.infradead.org;
	Wed, 22 Oct 2025 15:08:49 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vBaSC-0004NS-A7; Wed, 22 Oct 2025 17:08:44 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vBaSC-004uS3-0Q;
	Wed, 22 Oct 2025 17:08:44 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vBaSC-00000009KKp-08o5;
	Wed, 22 Oct 2025 17:08:44 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 22 Oct 2025 17:08:41 +0200
Message-ID: <20251022150842.2222854-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251022_080848_066781_FF60CD8A 
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
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH master] MAKEALL: do not early abort initial "probe" defconfig sourcing
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The sed line recently introduced to report the shuffle seed to track down an
issue introduced an issue of its own: It exits after getting the
--shuffle argument. This early SIGPIPE means that the sub-make is not
invoked and the .config is not written...

Fix this by running sed until the end and just taking the first line.

Fixes: 48bdea6b4bb0 ("MAKEALL: print --shuffle seed used for initial make *_defconfig")
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 MAKEALL | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/MAKEALL b/MAKEALL
index b953da9cccdd..bfc0f917aca8 100755
--- a/MAKEALL
+++ b/MAKEALL
@@ -135,7 +135,7 @@ do_build_defconfig() {
 	[ -n "$logdir" ] && mkdir -p "${logdir}/${defconfig}"
 
 	MAKE="make -j${JOBS} ARCH=${arch} O=${BUILDDIR}"
-	shuffle=$(${MAKE} --debug=basic ${defconfig} 2>&1 | sed -n 's/.*Enabled shuffle mode: //p;T;q')
+	shuffle=$(${MAKE} --debug=basic ${defconfig} 2>&1 | sed -n 's/.*Enabled shuffle mode: //p' | head -n1)
 
 	if [ -n "$shuffle" ]; then
 		report "Probing ${arch} ${defconfig} (--shuffle=$shuffle)\n" >&2
-- 
2.47.3



