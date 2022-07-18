Delivery-date: Mon, 18 Jul 2022 13:50:28 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oDPGc-00D3Gs-4j
	for lore@lore.pengutronix.de; Mon, 18 Jul 2022 13:50:28 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oDPGa-0000wr-2g
	for lore@pengutronix.de; Mon, 18 Jul 2022 13:50:24 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=04K5qMhmN5YAV8BW67DsNGvvfk0kwHr7YwXFqJJB/lU=; b=nkmfI8G4SVgFehiuFc/oeYUH2W
	tRoY82Rl0tpNOJJ7Q6wtIyHr5CbpWsk5n2mcrbtE0IJbiHQDE7pigXNAkH/joSA8rJ0v/aROQfHOo
	oVQySznXn09hj2r4UVvsEzpPTkux6Dgz7EMzxH4uhbYVCB5oorKq3vX3ypU7NlmoxnrJZaGgLybgI
	giPWw263sAkSc51T8HxCc2DkOP000IKdP1Ro2yKy01hVnuMsp90dcQalro7yEtcRJE4V4ZKNIBMmZ
	2qLAyuMJlIOukdli4Cm7loQdUfJxKCcKoRJNmrfbh1wpw4EAlH483ckF1MR5cNRjtKPkgL18rLFUO
	W1rrUAXQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oDPEy-00CyUw-DS; Mon, 18 Jul 2022 11:48:44 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oDPEr-00CyQE-TI
	for barebox@lists.infradead.org; Mon, 18 Jul 2022 11:48:39 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1oDPEh-0000ln-36; Mon, 18 Jul 2022 13:48:27 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oDPEg-001hcz-DF; Mon, 18 Jul 2022 13:48:26 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oDPEf-00B2oM-AM; Mon, 18 Jul 2022 13:48:25 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 18 Jul 2022 13:48:24 +0200
Message-Id: <20220718114824.2632364-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220718114824.2632364-1-a.fatoum@pengutronix.de>
References: <20220718114824.2632364-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220718_044837_991784_B16E9676 
X-CRM114-Status: GOOD (  10.25  )
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
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH master 2/2] common: don't fixup empty serial/machine_compatible strings
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

There is no point in fixing up an empty string into the kernel device
tree, yet this can happen when globalvar_add_simple_string() is called
for the variable at least once as the function replaces NULL with an
allocated empty string. globalvar_add_simple_string() was called
unconditionally for of.kernel.add_machine_compatible, which in turn
led to always fixing up an empty string as the top-most compatible.

Resolve this by having barebox_get_(of_machine_compatible|serial_number)
return NULL for the empty string as well.

Fixes: 81dd24a0946c ("of: add generic of_prepend_machine_compatible()")
Fixes: f6756e9ce6f2 ("common: add $global.serial_number with device tree fixup")
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/misc.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/common/misc.c b/common/misc.c
index 0f6de3e9e5ef..e0e32f47c59d 100644
--- a/common/misc.c
+++ b/common/misc.c
@@ -191,6 +191,8 @@ void barebox_set_serial_number(const char *__serial_number)
 
 const char *barebox_get_serial_number(void)
 {
+	if (!serial_number || *serial_number == '\0')
+		return NULL;
 	return serial_number;
 }
 
@@ -204,6 +206,8 @@ void barebox_set_of_machine_compatible(const char *__compatible)
 
 const char *barebox_get_of_machine_compatible(void)
 {
+	if (!of_machine_compatible || *of_machine_compatible == '\0')
+		return NULL;
 	return of_machine_compatible;
 }
 
-- 
2.30.2



