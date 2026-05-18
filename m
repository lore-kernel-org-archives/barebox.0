Delivery-date: Mon, 18 May 2026 10:54:23 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wOtjz-0014c2-0V
	for lore@lore.pengutronix.de;
	Mon, 18 May 2026 10:54:23 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wOtjy-0008Sk-Fh
	for lore@pengutronix.de; Mon, 18 May 2026 10:54:23 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=m1TFBpC3ZZo22x1pLxxvAbKTIjXXorE54uxejUetF8k=; b=acdf9vr18522KC9rSsZpPmyCqE
	X7NB3rUHtl4lL1OIByZa9bpnq6LqD6bRWOse6O9xaZLi4vcvSbF7+UzRxAe+E1E8IYtp5koxvT66A
	Ab9CB/Cx2dtbutOod4qixJWJR0o5vwlfy1+LXnhGJYhKQupOstdole3xieh4kNT2plLKlyk5RnV6U
	lRZTyUqwLg7Ykng7sSdvzqHD/IaGvB53cAWoXlcipRVVEJQ46lF9XvtwGVBjwrhRGGUwK/G7TRfM1
	Nvx6QP8I2i7cMLnBSr4LhhiTVw3/2+7N2Emk/yi/NsFcZcuTvldsiG39OvsJaH7C7dJPUl2OBKDfF
	/m1n6UqA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wOthQ-0000000EtUJ-0SqS;
	Mon, 18 May 2026 08:51:44 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wOthO-0000000EtTV-1f2h
	for barebox@bombadil.infradead.org;
	Mon, 18 May 2026 08:51:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
	Content-Description:In-Reply-To:References;
	bh=m1TFBpC3ZZo22x1pLxxvAbKTIjXXorE54uxejUetF8k=; b=DT7pMj8TW5wWBArbD1fAYA9lTz
	9tVnROfVkpMRF/ZDM8vsKUBntwWFnPqXjNc2S9p+c7oSB2AfSPGhxYZd61z325HgDjT3SYxC5hs15
	m8TjE1ukjqV46SWNk/kEZOCdUbGRqk4YRJ4aUn9VYBUJvqHkjtLHxGOwNRIjgC+3eb5z7ICoAoACi
	S+U6QTecRICBExtAei+nVqZiQ1K1qfqhbnkW3tBf20z+xUHD9JkWf7SQDgkITIgZkXPsjvpncMOj5
	EW/DCkA4v4FHIlDd97YtxgtFn5+1vQXdqKlVhWynpZt1N2XOWmOVRlYZLhuR4biUe4Sf3TJAZH2H7
	L6sUYFMQ==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wOthK-0000000ASn2-3FfZ
	for barebox@lists.infradead.org;
	Mon, 18 May 2026 08:51:41 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wOthH-0007wu-7w; Mon, 18 May 2026 10:51:35 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wOthG-000Yyr-20;
	Mon, 18 May 2026 10:51:35 +0200
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wOthH-00000000aLS-0N1m;
	Mon, 18 May 2026 10:51:35 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Mark Diener <markdiener10@gmail.com>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 18 May 2026 10:51:31 +0200
Message-ID: <20260518085134.139464-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260518_095139_463872_FF3A95AE 
X-CRM114-Status: GOOD (  14.00  )
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
Subject: [PATCH 1/2] startup: point out that /env/bin/init is legacy
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

It's 7 years ago that commit 90df2a955e3c ("defaultenv: Convert init script
to C") changed the default to having the init in C instead of
/env/bin/init.

The latter is still supported, but not a good idea for new platforms, so
make it clearer by calling it "legacy" in barebox console output and in
the docs.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 Documentation/user/defaultenv-2.rst | 13 +++++++++++--
 common/startup.c                    |  2 +-
 2 files changed, 12 insertions(+), 3 deletions(-)

diff --git a/Documentation/user/defaultenv-2.rst b/Documentation/user/defaultenv-2.rst
index 2564eb959fcc..2b903afc14db 100644
--- a/Documentation/user/defaultenv-2.rst
+++ b/Documentation/user/defaultenv-2.rst
@@ -51,8 +51,8 @@ and their respective included directories in ``defaultenv/Makefile``:
 -------------
 
 The default init script is now written in C. However, you can still define
-your own ``/env/bin/init`` script and it will take precedence over the
-built-in C implementation.
+a legacy ``/env/bin/init`` script yourself and it will take precedence over
+the built-in C implementation.
 Example for simple init script:
 
 .. code-block:: sh
@@ -66,6 +66,15 @@ This script is also responsible for defining the boot timeout value
 Be careful making changes to this script: since it is executed before any user
 intervention, it might lock the system.
 
+.. note::
+
+   The built-in init does not only source init scripts, but also does
+   extra work like sourcing the relevant scripts under ``/env/bmode/``
+   according to the active reboot mode or creating ``/cmdline`` and
+   ``/external-devicetree`` files as appropriate.
+   If you define your own legacy init, these features and more will
+   not be available, unless explicitly provided by the custom init.
+
 /env/init/
 ----------
 
diff --git a/common/startup.c b/common/startup.c
index e630033e3505..98da24873e07 100644
--- a/common/startup.c
+++ b/common/startup.c
@@ -350,7 +350,7 @@ static int run_init(void)
 	/* Run legacy /env/bin/init if it exists */
 	env_bin_init_exists = stat(INITFILE, &s) == 0;
 	if (env_bin_init_exists) {
-		pr_info("running %s...\n", INITFILE);
+		pr_info("running legacy %s...\n", INITFILE);
 		run_command("source " INITFILE);
 		return 0;
 	}
-- 
2.47.3



