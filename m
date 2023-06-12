Delivery-date: Mon, 12 Jun 2023 08:57:52 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q8bUv-003W96-GP
	for lore@lore.pengutronix.de; Mon, 12 Jun 2023 08:57:52 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q8bUt-000749-3V
	for lore@pengutronix.de; Mon, 12 Jun 2023 08:57:51 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=3P6n08BdztzcnVxNSZcUgO8O+FMUDQ12/JvR5m6IfoM=; b=R+PqqdRKdrHqlHZwOiehl8jMBq
	YhdtDGVUuN/YYgmGve/zs5dv09kqqTbOqDCxSTdMkRukFxNitHM1yyHOMl5GQXl+dgZJEt+I1PIGm
	FQNR1QYA30iJvuNX0ucQvCbbmRWPTDhV9/CmkltiswXfTvCfetFnvBf9/a31iCqIn4VbkNmktdh8a
	lPorrgKhOhl5WLOJsUAxgvpximbmSK9lLtDqOU95AYBLxCb+gdm7Ax+vyN/b79me8pncb6nP22vmb
	WBn9E5WtE8tJuKR3MrlGT1XXp976BPI2Gjilby+u840czT50Qelj4KzEbqPeV7o7Y/WWwQOX7a7bk
	miT3jrnA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q8bTp-002pa2-1S;
	Mon, 12 Jun 2023 06:56:45 +0000
Received: from relay8-d.mail.gandi.net ([2001:4b98:dc4:8::228])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q8bTl-002pXx-1M
	for barebox@lists.infradead.org;
	Mon, 12 Jun 2023 06:56:43 +0000
X-GND-Sasl: ahmad@a3f.at
X-GND-Sasl: ahmad@a3f.at
Received: by mail.gandi.net (Postfix) with ESMTPSA id 5E5EE1BF211;
	Mon, 12 Jun 2023 06:56:32 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <ahmad@a3f.at>
Date: Mon, 12 Jun 2023 08:56:26 +0200
Message-Id: <20230612065626.387660-1-ahmad@a3f.at>
X-Mailer: git-send-email 2.40.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230611_235641_635156_59B53B9C 
X-CRM114-Status: GOOD (  10.63  )
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
Subject: [PATCH] scripts: add container.sh as simple podman wrapper
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

We have a Containerfile in tree now that is used for CI, but it's not
completely self evident, how to use it locally. Add a simple script
that mounts the current working directory into the container and calls
its arguments inside.

Example building MAKEALL (Some configs will expectedly fail due to size
or firmware constraints):

  ./scripts/container.sh ./MAKEALL

Example starting a shell:

  ./scripts/container.sh /bin/bash

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 scripts/container.sh | 39 +++++++++++++++++++++++++++++++++++++++
 1 file changed, 39 insertions(+)
 create mode 100755 scripts/container.sh

diff --git a/scripts/container.sh b/scripts/container.sh
new file mode 100755
index 000000000000..4ddee7d0a90c
--- /dev/null
+++ b/scripts/container.sh
@@ -0,0 +1,39 @@
+#!/bin/sh
+# SPDX-License-Identifier: GPL-2.0-only
+
+CONTAINER=${CONTAINER:-ghcr.io/barebox/barebox/barebox-ci:latest}
+KCONFIG_ADD="$test/kconfig/disable_target_tools.kconf KCONFIG_ADD"
+
+while getopts "c:uh" opt; do
+	case "$opt" in
+	h)
+		echo "usage: $0 [-c CONTAINER] [command...]"
+		echo "This script mounts the working directory into a container"
+		echo "and runs the specified command inside or /bin/bash if no"
+		echo "command was specified."
+		echo "OPTIONS:"
+		echo "  -c <container>    container image to use (default: $CONTAINER)"
+		echo "  -u                pull container image updates"
+		echo "  -h                This help text"
+
+		exit 0
+		;;
+	u)
+		update=1
+		;;
+	c)
+		CONTAINER="$OPTARG"
+		;;
+	esac
+done
+
+shift $((OPTIND-1))
+
+[ -n "$update" ] && podman pull "$CONTAINER"
+
+pwd_real=$(realpath $PWD)
+
+exec podman run -it -v "$PWD:$PWD:z" -v "$pwd_real:$pwd_real:z" --rm \
+	-e TERM -e ARCH -e CONFIG -e JOBS -e LOGDIR -e REGEX \
+	-e KCONFIG_ADD -w "$PWD" --userns=keep-id \
+	-- "$CONTAINER" "${@:-/bin/bash}"
-- 
2.40.1



