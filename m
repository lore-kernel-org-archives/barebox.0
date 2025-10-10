Delivery-date: Fri, 10 Oct 2025 08:58:32 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v775D-006Dgx-37
	for lore@lore.pengutronix.de;
	Fri, 10 Oct 2025 08:58:31 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v775D-0000SQ-D7
	for lore@pengutronix.de; Fri, 10 Oct 2025 08:58:31 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=IMo7oRmy0l6Uzk0VfuUQZUWSzQkLtMhm6SyD20CkBio=; b=lWmXm/ImX4SjMBwjeCfqjhRUV/
	j/eXu5bMDY23nkGfynn8XbUqlxpPPWtfZ/gXCncKmmMtN17b+fypgnVYaeq1T5H1xI+aDMzO0MnDk
	4PM6lg4CburC4UkQdJ42bz0ZHp/ixeFm6zentAfAq+cWgLY5TUlJeIecczwg6TcTUfX9t0saOKPAI
	Uk/lPEn65jJKIOuSgWF+JC0ZsVjNeWKy9VrRiXeldmFO/sj5VHxpVJ7VARun1tlS8o+Mfu+ghUGWF
	ldD1aBZNZpMpeIaA/FzjSzAKYTJBf8hOM8vCG1uzDLAfu8VfcFbSTtd9ZlbsaMiDtWkVZJJ3b27SL
	qV3ghjLQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v774e-00000007ngN-2gA1;
	Fri, 10 Oct 2025 06:57:56 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v774c-00000007nfH-0MiZ
	for barebox@lists.infradead.org;
	Fri, 10 Oct 2025 06:57:55 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1v774a-0000Gi-Hn; Fri, 10 Oct 2025 08:57:52 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Fri, 10 Oct 2025 08:57:44 +0200
Message-ID: <20251010065749.3141299-2-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20251010065749.3141299-1-a.fatoum@barebox.org>
References: <20251010065749.3141299-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251009_235754_121009_D8E331BD 
X-CRM114-Status: UNSURE (   8.34  )
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
X-Spam-Status: No, score=-4.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 2/3] scripts: container.sh: support -e for environment variables
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This allows setting e.g. GNUMAKEFLAGS from the outside.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 scripts/container.sh | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/scripts/container.sh b/scripts/container.sh
index 1a68f0a5fe01..90c3a1d0accd 100755
--- a/scripts/container.sh
+++ b/scripts/container.sh
@@ -4,7 +4,7 @@
 CONTAINER=${CONTAINER:-ghcr.io/barebox/barebox/barebox-ci:latest}
 export KCONFIG_ADD="common/boards/configs/disable_target_tools.config $KCONFIG_ADD"
 
-while getopts "c:uh" opt; do
+while getopts "c:e:uh" opt; do
 	case "$opt" in
 	h)
 		echo "usage: $0 [-c CONTAINER] [command...]"
@@ -24,6 +24,10 @@ while getopts "c:uh" opt; do
 	c)
 		CONTAINER="$OPTARG"
 		;;
+	e)
+		env="$env -e $OPTARG"
+		;;
+
 	esac
 done
 
@@ -39,6 +43,6 @@ fi
 
 exec podman run -it $volumes --rm \
 	-e TERM -e ARCH -e CONFIG -e JOBS -e LOGDIR -e REGEX \
-	-e KBUILD_OUTPUT -e LG_BUILDDIR \
+	-e KBUILD_OUTPUT -e LG_BUILDDIR $env \
 	-e KCONFIG_ADD -w "$PWD" --userns=keep-id:uid=1000,gid=1000 \
 	-- "$CONTAINER" "${@:-/bin/bash}"
-- 
2.47.3



