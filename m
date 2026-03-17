Delivery-date: Tue, 17 Mar 2026 16:20:40 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w2WDo-001qcZ-0x
	for lore@lore.pengutronix.de;
	Tue, 17 Mar 2026 16:20:40 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w2WDn-0007Xi-L2
	for lore@pengutronix.de; Tue, 17 Mar 2026 16:20:40 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:
	References:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:
	Subject:Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=B7gApKRFvVavq60pyYajoLY0/50C+MKQl2hFWKBFA2E=; b=rSdwbKo1O0P+VqwW8XS0Tk+d+l
	rPy+Bk4RS/90qwZL4RpRb4V+D+eSRu/XKtiUJ7OYLPZ88LNW8WhyNMPi2T6PTo4WthOPiRvZRHg4H
	XFvxDZ1LCMK0p1bKXqIeY3Vk44sefIjE5eEdkrjyyih/iaMU+9nXpnhpTb7gB7tBwnKWC55p7lYXL
	bThRWmVxIIFNEu3dpHamzMFLdpvIQ640J2fMTk0V/afZeGzA1RcLU2MlhvOBfAXSAqpszN3IyGiEQ
	tVoLOUxWN25PBk4L/6ClDBhVOpnnFxpKGSysvI6YJ4e7x8r24hQiPQlDPeDXFqgAjzvJzb6tW9kt4
	p2+XCquA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2WDM-00000006ikF-10HP;
	Tue, 17 Mar 2026 15:20:12 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2WDI-00000006igr-3HcQ
	for barebox@bombadil.infradead.org;
	Tue, 17 Mar 2026 15:20:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=B7gApKRFvVavq60pyYajoLY0/50C+MKQl2hFWKBFA2E=; b=RZ/78Oszu14GAt+uE60HTtkCMi
	7CE+CZVJUw1OM0j1d1fvQnTq9AJ5K6NAc6LKcHUUly7bN5PdOf8IGUMcSnNrLuSs32xF4OZgr/Te7
	PIQ5CyS2JSe1Kn3HY9FksUxs7NWqHtOMIGUflzIrhvjU3pQmfrLorAxdxsG/hRzTYIOhbkrZpK5Ud
	VBsevHIqVhhLg4I/h3uCmxE8tpiowFbNRTJxrqw9YBim7V8sm5Jen4DVLf/gV1ag0cyw5jCzNlrio
	pYHm7k5W0K3j4r2v8JsnuhS8Gv7qbjYSHziYFsL2WqUt1dpAOROf1o+wDz6mDH37CcQIHgNbJ2ElJ
	tsFrY4Pg==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2WDE-00000009MX0-20Tj
	for barebox@lists.infradead.org;
	Tue, 17 Mar 2026 15:20:07 +0000
Received: from dude04.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::ac])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <jre@pengutronix.de>)
	id 1w2WDC-00076m-Gw; Tue, 17 Mar 2026 16:20:02 +0100
From: Jonas Rebmann <jre@pengutronix.de>
Date: Tue, 17 Mar 2026 16:19:51 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260317-keytoc-multi-env-v4-7-38ab473f8034@pengutronix.de>
References: <20260317-keytoc-multi-env-v4-0-38ab473f8034@pengutronix.de>
In-Reply-To: <20260317-keytoc-multi-env-v4-0-38ab473f8034@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.15-dev-18f8f
X-Developer-Signature: v=1; a=openpgp-sha256; l=1097; i=jre@pengutronix.de;
 h=from:subject:message-id; bh=bk8S0xVTOKmWB5KfndC2vboYKhJS1hoE5QZ2c1kK/x8=;
 b=owGbwMvMwCV2ZcYT3onnbjcwnlZLYsjcWai40iPyV9nudxM3swekvZ2/pZf9GL+X0zrBruhpX
 86UhJyW6ChlYRDjYpAVU2SJVZNTEDL2v25WaRcLM4eVCWQIAxenAEzk/DpGhq6fh/e9XnFFfT6D
 hCifSsjsByUBc+ac2xSsu2xXzsL9t5YzMszs2v3Bfe/82bFVptODr77Vuz5h9Zc4nuxTMU8bOqt
 a1rMAAA==
X-Developer-Key: i=jre@pengutronix.de; a=openpgp;
 fpr=0B7B750D5D3CD21B3B130DE8B61515E135CD49B5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260317_152004_761305_4289BD3A 
X-CRM114-Status: GOOD (  10.24  )
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
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>, Marco Felsch <m.felsch@pengutronix.de>, Jonas Rebmann <jre@pengutronix.de>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v4 7/8] crypto: keytoc: Allow fields to start with
 underscore
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

During the rewrite of keyspec handling for the new keyring syntax, a
restrictive character set was chosen for keys and values in the comma
separated list of key parameters:

[a-zA-Z][a-zA-Z0-9_-]*

Because __ENV expansion happens in a later step, excluding underscores
from allowed start characters broke the apparently unused feature of
passing only the (now obsolete) "fit-hint" via an environment variable
as documented in crypto/Kconfig:

CONFIG_CRYPTO_PUBLIC_KEYS="keyring=fit,fit-hint=__ENV__myhint:__ENV__myname"

Allow fields to start with an undescore just for now.

Signed-off-by: Jonas Rebmann <jre@pengutronix.de>
---
 scripts/keytoc.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/scripts/keytoc.c b/scripts/keytoc.c
index aca6547136..c4491fbe81 100644
--- a/scripts/keytoc.c
+++ b/scripts/keytoc.c
@@ -720,8 +720,8 @@ static bool is_identifier(char **s)
 {
 	char *p = *s;
 
-	/* [a-zA-Z] */
-	if (!isalpha(*p))
+	/* [a-zA-Z_] */
+	if (!(isalpha(*p) || *p == '_'))
 		return false;
 	p++;
 

-- 
2.53.0.308.g50d063e335



