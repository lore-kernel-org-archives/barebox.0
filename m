Delivery-date: Mon, 19 Jun 2023 12:26:38 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qBC5n-00D593-BW
	for lore@lore.pengutronix.de; Mon, 19 Jun 2023 12:26:38 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qBC5l-0007tf-4l
	for lore@pengutronix.de; Mon, 19 Jun 2023 12:26:37 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=0Ijb4TqwLyXoM7wBQzVjUw4/J8jA99F9+U42+zWPA7A=; b=c1g+T+AdBqHT4kNa81KYxqjTZU
	F02odI1eAQM9tMshMje3CxvA0amCvOylHRAWwKnu/ViadkBCJKdtopkhd81nQXc1mjUiNRxHzRleq
	gXDTiDSnyP7PVm87RVivJmQxQEejKVFPFouAVpHWbhwCpAX3d7hKnTYQ8y22yyeeRVM9mk2/+/5Bc
	3hJRnZ11ij0LaxVmuLPi13mrv+vodh8xBqceSviHVbIL8blVoHFf5UBBLefEx9B+S/ue7kU5+ESJc
	GlyESQR7HltzEpwyHqiGfZ0WoPCjmnIh6VyDKyq/nWtV+3oh1Qhu4DT/ZP2wEquebdPPeW2yAuy3Q
	JmUZ4jVw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qBC4b-0089hD-2R;
	Mon, 19 Jun 2023 10:25:25 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qBC4Z-0089gn-1m
	for barebox@lists.infradead.org;
	Mon, 19 Jun 2023 10:25:24 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1qBC4Y-0007UY-1R; Mon, 19 Jun 2023 12:25:22 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1qBC4X-008U7Y-Do; Mon, 19 Jun 2023 12:25:21 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <afa@pengutronix.de>)
	id 1qBC4W-002FhU-31;
	Mon, 19 Jun 2023 12:25:20 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 19 Jun 2023 12:25:19 +0200
Message-Id: <20230619102519.536991-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230619_032523_612773_52244ABA 
X-CRM114-Status: GOOD (  10.13  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] scripts: container.sh: don't add -v twice if unneeded
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The script bind mounts the barebox directory as in $PWD as well as the
realpath into the container to reduce surprises when $PWD contains a
symlinked path. In cases where the path is not symlinked, some podman
versions complain about "duplicate mount destination". Fix this by only
adding the second volume specification, if the path isn't already
canonical.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 scripts/container.sh | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/scripts/container.sh b/scripts/container.sh
index eb1e87b59baa..d26f2df68603 100755
--- a/scripts/container.sh
+++ b/scripts/container.sh
@@ -31,9 +31,13 @@ shift $((OPTIND-1))
 
 [ -n "$update" ] && podman pull "$CONTAINER"
 
+volumes="-v '$PWD:$PWD:z'"
 pwd_real=$(realpath $PWD)
+if [ "$(realpath --no-symlinks $PWD)" != "$pwd_real" ]; then
+	volumes="$volumes -v '$pwd_real:$pwd_real:z'"
+fi
 
-exec podman run -it -v "$PWD:$PWD:z" -v "$pwd_real:$pwd_real:z" --rm \
+exec podman run -it $volumes --rm \
 	-e TERM -e ARCH -e CONFIG -e JOBS -e LOGDIR -e REGEX \
 	-e KCONFIG_ADD -w "$PWD" --userns=keep-id \
 	-- "$CONTAINER" "${@:-/bin/bash}"
-- 
2.39.2



