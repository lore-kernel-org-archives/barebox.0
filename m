Delivery-date: Thu, 13 Mar 2025 12:36:53 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tsgru-00DY8t-0g
	for lore@lore.pengutronix.de;
	Thu, 13 Mar 2025 12:36:53 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tsgrt-0003eH-1S
	for lore@pengutronix.de; Thu, 13 Mar 2025 12:36:53 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=v9KOs8gjYkuuiYMfwGT71MszodLWjSVrkM+q6EJ1cy4=; b=JKLa3cyopqh6bhfL8gwvg5YltY
	sIX5JNPPPyRbVLitQftgyKJ60HhfLyEg/SPpzWtphQX1+BLDyCMMtx0ytWwqLdgoqEAr2CllxHkPi
	V1Sq8U619JOa3Qhyw/HZAjDsmgyEQxKoXn9ap1pKjdyFGkdSyGFrMQEZ0EZksE9MQCvhU9uHGq+oB
	wiJM5y9d1q247JocKxHOAjqVcGDXmWp0e+bpi/IKr+W/24SvqHdC1wuWZ0SgLSzyMI4l9x8+9CI4N
	ZxtBoldVkeRCCG7X7DggDVkRYzyYJUz0GtKJXPJ8tTB0Pd7D5u0mVbdQllyBXwiM3NQbtpKxrff/A
	i0stwDJw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tsgrF-0000000B3sK-3Xvh;
	Thu, 13 Mar 2025 11:36:13 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tsgrC-0000000B3rX-1Xmy
	for barebox@lists.infradead.org;
	Thu, 13 Mar 2025 11:36:12 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tsgr8-0003Rk-0o; Thu, 13 Mar 2025 12:36:06 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tsgr7-005Wkn-2i;
	Thu, 13 Mar 2025 12:36:05 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tsgr7-003qbL-2M;
	Thu, 13 Mar 2025 12:36:05 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 13 Mar 2025 12:36:04 +0100
Message-Id: <20250313113604.915474-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250313113604.915474-1-a.fatoum@pengutronix.de>
References: <20250313113604.915474-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250313_043610_406936_331B289F 
X-CRM114-Status: UNSURE (   9.08  )
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
Subject: [PATCH 2/2] MAKEALL: parse kconfig_add out of YAML files
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Now that MAKEALL supports direct options in KCONFIG_ADD, teach it to
read runner kconfig_add keys out of the labgrid environment YAML files.

This is a further step towards removal of test/emulate.pl.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 MAKEALL            | 13 +++++++++++++
 test/Containerfile |  1 +
 2 files changed, 14 insertions(+)

diff --git a/MAKEALL b/MAKEALL
index b0967b8ae340..636621d9faec 100755
--- a/MAKEALL
+++ b/MAKEALL
@@ -422,6 +422,19 @@ else
 		if [[ $i =~ ^.*/([^/]+)/([^@]*@|)([^.]+).yaml$ ]]; then
 			arch=${BASH_REMATCH[1]}
 			defconfig=${BASH_REMATCH[3]}
+
+			if grep -q "^\s\+kconfig_add:" $i; then
+				if command -v yq 2>&1 >/dev/null; then
+					KCONFIG_ADD="${KCONFIG_ADD} $(yq -M -r \
+					'.targets.main.runner.kconfig_add |
+					keys[] as $k | .[$k]' < $i)"
+				else
+					echo "WARNING: yq command not found in path" >&2
+					echo "WARNING: ignoring kconfig_add in $i" >&2
+					echo
+				fi
+			fi
+
 			do_build_defconfig $arch $defconfig
 			if [ $? -eq 0 ]; then
 				do_test_defconfig $config $defconfig "${pytest_opts[@]}"
diff --git a/test/Containerfile b/test/Containerfile
index db43d039b922..53a5443e48fe 100644
--- a/test/Containerfile
+++ b/test/Containerfile
@@ -51,6 +51,7 @@ RUN apt-get update && apt-get install -y \
 	sudo \
 	u-boot-tools \
 	yamllint \
+	yq \
 	&& rm -rf /var/lib/apt/lists/*
 
 ENV GCC_VERSION=14.2.0
-- 
2.39.5



