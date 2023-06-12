Delivery-date: Mon, 12 Jun 2023 14:48:49 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q8gyZ-003pti-1V
	for lore@lore.pengutronix.de; Mon, 12 Jun 2023 14:48:49 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q8gyW-0004x8-Id
	for lore@pengutronix.de; Mon, 12 Jun 2023 14:48:49 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=Af7MUtCrFHrQ5d3JBqZ4SvBPPs7urO2njLz0FQea61w=; b=whONo7io1G3943Q/ocOVNVhgvQ
	XLX/XBcC5WShQNkyo9Y0zJFJPizL4z/t57uf0wD7i8E3i+cGnwzJdT2mDatnOFNLr/XHXgKDaccg+
	C+B+Rx3YXsSk+CwKAhazpvReLofB4vt+BRFYgXTuI43sv6yiWqlcsLqKTEL8dfhtNnB5URpCHi6nH
	DADpaDjg9pDDErnezdevczCemCt0qbfY9SyzMsSbSsuI1uW2R4m+OUrvB7xl3rvD5QEQh4NlCWQnE
	aJBLDRt90kr5gXTZrstZnUyZmLdq11dIo5jjW+0HqDR4afLvUWA526nAMFxjvSvvOhdghe0qhTwMA
	WosME1bA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q8gxO-0043mI-00;
	Mon, 12 Jun 2023 12:47:38 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q8gxK-0043lp-2Z
	for barebox@lists.infradead.org;
	Mon, 12 Jun 2023 12:47:36 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1q8gxG-0004hq-QW; Mon, 12 Jun 2023 14:47:30 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1q8gxG-006tS7-5H; Mon, 12 Jun 2023 14:47:30 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1q8gxF-004X7l-6m; Mon, 12 Jun 2023 14:47:29 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 12 Jun 2023 14:47:28 +0200
Message-Id: <20230612124728.1080623-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230612_054734_835838_7482EAB2 
X-CRM114-Status: UNSURE (   9.87  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] test/Containerfile: run wget with no-verbose flag
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Container build results in a number of toolchain downloads and default
wget behavior of updating the progress bar results in a lot of lines
to wade through when reviewing the log. There's middle ground between
this and quiet operation in the form of the --no-verbose or -nv flag.
Make use of it.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 test/Containerfile | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/test/Containerfile b/test/Containerfile
index 8c1f2f893805..224ea2ea4804 100644
--- a/test/Containerfile
+++ b/test/Containerfile
@@ -51,7 +51,7 @@ RUN apt-get update && apt-get install -y \
 ENV GCC_VERSION=13.1.0
 
 # Manually install the kernel.org Crosstool based toolchains
-RUN korg_crosstool_dl() { wget -O - https://mirrors.edge.kernel.org/pub/tools/crosstool/files/bin/${1}/${2}/${1}-gcc-${2}-nolibc-${3}.tar.xz | tar -C /opt -xJ ; } && \
+RUN korg_crosstool_dl() { wget -nv -O - https://mirrors.edge.kernel.org/pub/tools/crosstool/files/bin/${1}/${2}/${1}-gcc-${2}-nolibc-${3}.tar.xz | tar -C /opt -xJ ; } && \
     korg_crosstool_dl x86_64 ${GCC_VERSION} arm-linux-gnueabi && \
     korg_crosstool_dl x86_64 ${GCC_VERSION} aarch64-linux     && \
     korg_crosstool_dl x86_64 ${GCC_VERSION} mips-linux        && \
-- 
2.39.2



