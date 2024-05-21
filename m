Delivery-date: Tue, 21 May 2024 21:10:03 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s9Us7-00Ce8u-1A
	for lore@lore.pengutronix.de;
	Tue, 21 May 2024 21:10:03 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s9Us6-000306-Qd
	for lore@pengutronix.de; Tue, 21 May 2024 21:10:03 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=ncEhun44h8n29aRtioK5lxEWKSOOwC3o/lqVOTRf/90=; b=pHgi/WyCSDUNQGHYnS4FfWWSqr
	/h1ftHCA6lP+OpKiV2InBNDUDkIUnvmHZfTvEixSjcLASwt64nmcr83ERyO6TUrJtEdJQ97q5DLIA
	J8x12YIG6JSuWRaW+qYGNO4ma+PPdzRJd2qV2T4JwBozOwccvYeKz4Qsqhm1s3V5AMxbCPN0xXHdj
	qBxfCakBuw+GQaSElwKhCwBIe1bW5LmocCS/STYSsuaRPN/Ri/CeZkvlewLjtWSWTQpAC7SpBhCk5
	o8OGSfCrKfCkFxHSCWkbruWaLWa+H+v49FElLvzqvAmce7hDnOfv0LhQr82qfKm62DH/CTEXRHGCi
	NP8ks7GQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s9UrU-00000000sEV-2Sql;
	Tue, 21 May 2024 19:09:24 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s9UrR-00000000sEA-1FJO
	for barebox@lists.infradead.org;
	Tue, 21 May 2024 19:09:22 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1s9UrO-0002k0-Qs; Tue, 21 May 2024 21:09:18 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1s9UrO-002QRK-Ea; Tue, 21 May 2024 21:09:18 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1s9UrO-00Cto9-18;
	Tue, 21 May 2024 21:09:18 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 21 May 2024 21:09:17 +0200
Message-Id: <20240521190917.3074367-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240521_120921_356523_E1C9A07F 
X-CRM114-Status: UNSURE (   9.19  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] fixup! kbuild: add support for merged defconfigs
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

scripts: list-defconfigs.sh: remove interleaves new lines from output

Github actions apparently chokes on new lines in the middle of the JSON,
so let's avoid them.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 scripts/list-defconfigs.sh | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/scripts/list-defconfigs.sh b/scripts/list-defconfigs.sh
index d7516425f8e3..5eaaab51cc61 100755
--- a/scripts/list-defconfigs.sh
+++ b/scripts/list-defconfigs.sh
@@ -4,12 +4,13 @@
 # Output json formatted defconfig list for Github Action consumption
 ARCH=${@:-$(for a in arch/*/; do basename $a; done)}
 
-echo '{ "include" : [ '
+# Github chokes on interleaved new lines, thus use printf
+printf '{ "include" : [ '
 for arch in $ARCH; do
 	make ARCH=$arch CROSS_COMPILE= help | \
 		awk '/_defconfig/ { print $1  }' | \
 		xargs -i printf '{ "arch": "%s", "config": "%s" }\n' \
 		"$arch" "{}" | \
 		paste -sd ',' -
-done | paste -sd ',' -
+done | paste -sd ',' - | tr -d '\n'
 echo '] }'
-- 
2.39.2



