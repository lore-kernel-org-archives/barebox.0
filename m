Delivery-date: Fri, 28 Feb 2025 08:33:55 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tnuse-007y42-0D
	for lore@lore.pengutronix.de;
	Fri, 28 Feb 2025 08:33:55 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tnusc-00062j-UM
	for lore@pengutronix.de; Fri, 28 Feb 2025 08:33:55 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=UgO/eqd6tRFLVTDQCFSNPdAxLmhHzx0OZggVmxdVyRU=; b=PUHY7TGqij8BYLgaUMDbdl1D78
	QOCJ7IIPPyEKlPgXU9J5MPIOgvHB+/Edlo8TYw0RgaDRuB3TmScj8RxOC2ZTEPp/u9A/Lmoll1sUm
	mwwBYTHIIx9+I1cPNcCzaOxjiXxxqJhl+bJABQ1+SwWC5ZhPJqG/3rBhrs6vET4gpslBeFb/DVjvu
	r6XMzyzPvbUnspy2vvgfDVwzEzGNogzMmXJM3n+QEdpGTuytw0jFFEZRzYO4HrjoZOI9PMW7EV5lD
	gJWy0F34rt6eYv4RugEIgelFFLSnNeBd2IU6fm0yoV1JVETrTPu+E+J8E2zJA1YZBl6Fw0MQCv/Hj
	f9SDPp/w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tnusD-0000000A0Va-2Os5;
	Fri, 28 Feb 2025 07:33:29 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tnuqw-0000000A0H0-1qHx
	for barebox@lists.infradead.org;
	Fri, 28 Feb 2025 07:32:11 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tnuqv-0005iD-5z; Fri, 28 Feb 2025 08:32:09 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tnuqu-003FvI-3A;
	Fri, 28 Feb 2025 08:32:08 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tnuc6-005CL4-0S;
	Fri, 28 Feb 2025 08:16:50 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 28 Feb 2025 08:17:00 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250228-am625-secure-v1-12-4002488ff5ed@pengutronix.de>
References: <20250228-am625-secure-v1-0-4002488ff5ed@pengutronix.de>
In-Reply-To: <20250228-am625-secure-v1-0-4002488ff5ed@pengutronix.de>
To: "open list:BAREBOX" <barebox@lists.infradead.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1740727010; l=894;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=9I0+XkkOhyEpvImIS4rluyKHJXanlR5o7B2QGu+f30M=;
 b=SupJj2OsD9ryZclJG96GQH75EDX21y3LQGMLLj2VaXARevYweSjBZmr9Tw8JWTKTHLNsqhXgU
 29XsNCfYV/AApYzWUlgvdzbh3pPJyyJiM84atjD//fDE2otMoix/cqw
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250227_233210_500227_954634D7 
X-CRM114-Status: UNSURE (   9.47  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 12/13] scripts/k3img: remove temporary files
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Remove temporary files when exiting the script. While at it add a "set
-e" to exit the script when a command fails.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 scripts/k3img | 9 +++++++--
 1 file changed, 7 insertions(+), 2 deletions(-)

diff --git a/scripts/k3img b/scripts/k3img
index 048da82b92..a514852fcd 100755
--- a/scripts/k3img
+++ b/scripts/k3img
@@ -1,5 +1,7 @@
 #!/bin/bash
 
+set -e
+
 TEMP=$(getopt -o '' --long 'sysfw:,sysfwdata:,dmdata:,out:,sbl:,key:,innerdata:' -n 'k3img' -- "$@")
 
 if [ $? -ne 0 ]; then
@@ -76,8 +78,11 @@ dmdatasize=$(stat -c%s $dmdata)
 
 total=$(($sblsize + $sysfwsize + $sysfwdatasize + $dmdatasize))
 
-certcfg=$(mktemp k3img.XXXXXXX)
-cert=$(mktemp k3img.XXXXXXX)
+TMPDIR="$(mktemp -d)"
+trap 'rm -rf -- "$TMPDIR"' EXIT
+
+certcfg=${TMPDIR}/certcfg
+cert=${TMPDIR}/cert
 
 num_comp=4
 

-- 
2.39.5



