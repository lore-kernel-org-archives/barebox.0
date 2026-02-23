Delivery-date: Mon, 23 Feb 2026 12:35:37 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vuUDw-004oeP-2h
	for lore@lore.pengutronix.de;
	Mon, 23 Feb 2026 12:35:37 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vuUDx-0000Wv-52
	for lore@pengutronix.de; Mon, 23 Feb 2026 12:35:37 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=cqkqX1gTND4lV6yIvLevtrzq7xBj6Da0vkHQtsZGPPQ=; b=RBk5a5eKJers7OUzeyY0h0JoFX
	reOP+Hqis+5ECbBBO/aWd1WY0Y6gav0v2vf2UB/PRUrrUJpL61tguf+eAA/tO9+AUP3kF4prE3MgA
	0TjiQsCky1YT2O499xFwmowtDxv7fz0bnJMDqFV6btFk37/7U/i9R3m/CtZY0PuYOjJIEwkctfnw+
	ETeZc6X40nhhsVyL2XiZ8/PNatKTPVmmHWtqZ0cA9+/rRDd0PN8cWjd3+wdP9gzAUubPlAearWX0Q
	To+MoZhRpH5GOaPu9hJ6bxzrjLGuMm/7/Qd8rnqkT8e0sNsELGbnwFhrUbAWhDc5XUbitWV5e379T
	ip2feSTg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vuUDb-00000000CAs-1S2e;
	Mon, 23 Feb 2026 11:35:15 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vuUDY-00000000C8s-1Dm5
	for barebox@lists.infradead.org;
	Mon, 23 Feb 2026 11:35:13 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1vuUDW-0000JU-Mv; Mon, 23 Feb 2026 12:35:10 +0100
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: "Claude Opus 4.6" <noreply@anthropic.com>,
	Ahmad Fatoum <a.fatoum@barebox.org>
Date: Mon, 23 Feb 2026 12:31:35 +0100
Message-ID: <20260223113446.638135-5-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260223113446.638135-1-a.fatoum@barebox.org>
References: <20260223113446.638135-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260223_033512_360975_A2C65408 
X-CRM114-Status: UNSURE (   9.99  )
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
X-Spam-Status: No, score=-3.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 4/4] MAKEALL: flock build directory to prevent concurrent builds
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Two MAKEALL processes using the same build directory concurrently will
corrupt each other's build. Take an exclusive flock on the build
directory at startup so a second MAKEALL targeting the same directory
fails immediately with a clear error message.

To keep the lock valid across non-incremental rebuilds, clear the
directory contents with find -delete instead of rm -rf, preserving
the directory inode the lock is held on.

Co-Authored-By: Claude Opus 4.6 <noreply@anthropic.com>
Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 MAKEALL | 11 ++++++++++-
 1 file changed, 10 insertions(+), 1 deletion(-)

diff --git a/MAKEALL b/MAKEALL
index dd0b7f8003cc..7a6fe61f5e84 100755
--- a/MAKEALL
+++ b/MAKEALL
@@ -133,7 +133,7 @@ do_build_defconfig() {
 	local log_err="${logdir}/${defconfig}/errors.log"
 	local err=0
 
-	[ "$INCREMENTAL" != "1" ] && rm -rf "${BUILDDIR}"
+	[ "$INCREMENTAL" != "1" ] && find "${BUILDDIR}" -mindepth 1 -delete
 	[ -n "$logdir" ] && mkdir -p "${logdir}/${defconfig}"
 
 	MAKE="make -j${JOBS} ARCH=${arch} O=${BUILDDIR}"
@@ -384,6 +384,15 @@ then
 	mkdir "${logdir}" || exit 1
 fi
 
+# Take an exclusive lock on the build directory to prevent parallel builds
+# from corrupting each other.
+mkdir -p "${BUILDDIR}"
+exec 9<"${BUILDDIR}"
+if ! flock -n 9; then
+	echo "error: another MAKEALL is already using build directory '${BUILDDIR}'" >&2
+	exit 1
+fi
+
 if [ ! "${REGEX}" ]
 then
 	REGEX="*"
-- 
2.47.3



