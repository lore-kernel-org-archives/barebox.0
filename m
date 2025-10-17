Delivery-date: Fri, 17 Oct 2025 12:22:59 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v9hbv-008n3a-1b
	for lore@lore.pengutronix.de;
	Fri, 17 Oct 2025 12:22:59 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v9hbu-0005Qz-Vn
	for lore@pengutronix.de; Fri, 17 Oct 2025 12:22:59 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:Message-Id:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=/K/L+iehJ+GcP3cMA4bdq7GzKrkJOAZ+9zHmMU4HrLg=; b=1PvYH9pdJxaPuAn3WddaiVtKiP
	5GCvEuEwSGIMT4gMxiIzRW06zkSsEcw6uLD4ZX7KdK41XXjLW4qn4Y4gY2RAa2dWvnVB+UTE8IMsg
	GHCT5ba7Cw7qCtbJKAMKCpKZZ+wzjpyw24rMSkdtyCQo8FZnRvVjmnAXjExwhpc4ufRlMaZZK6tDB
	jozKNj0zDr8PXHjn56BR+bUnZJJar6AYVy/OjuUtuhd+S0XFt6v8qMykG0aOGXfFN847RbkVI2bdN
	AgIAds0Q42aRM9krOA9T5oCG8p6sKPVRCPJtj9PIf+UXcQJv7QFW30VhjVKT/iI/lxGRXXJe7J6N9
	r2QAjOBg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v9hbO-00000007WF4-2ilF;
	Fri, 17 Oct 2025 10:22:26 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v9hbL-00000007WEi-2ylz
	for barebox@lists.infradead.org;
	Fri, 17 Oct 2025 10:22:24 +0000
Received: from dude04.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::ac])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <jre@pengutronix.de>)
	id 1v9hbK-0005Hj-5H; Fri, 17 Oct 2025 12:22:22 +0200
From: Jonas Rebmann <jre@pengutronix.de>
Date: Fri, 17 Oct 2025 12:22:13 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251017-gitignore-build-v1-1-f25d35c3bff4@pengutronix.de>
X-B4-Tracking: v=1; b=H4sIANUY8mgC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDI1NDA0Nz3fTMksz0vPyiVN2k0sycFN0US4PkJDMT4yRDYwMloK6CotS0zAq
 widGxtbUAphm/nGEAAAA=
X-Change-ID: 20251017-gitignore-build-d90cb643b130
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Jonas Rebmann <jre@pengutronix.de>
X-Mailer: b4 0.15-dev-7abec
X-Developer-Signature: v=1; a=openpgp-sha256; l=731; i=jre@pengutronix.de;
 h=from:subject:message-id; bh=yzoIfiwGDcDqs8HhCerjARFBK0TCZgduI3xRtip0By0=;
 b=owGbwMvMwCV2ZcYT3onnbjcwnlZLYsj4JHHr0Lq+fS+Zlvac1OTdo1O1evXalmCN9uVBVXk9i
 b1zH0st7ChlYRDjYpAVU2SJVZNTEDL2v25WaRcLM4eVCWQIAxenAEzE4BMjw+fQ8sefD8R9ersr
 7oXywgMRl+QrZCcVPH4QoLdPY2Uh5wWG//Gp3cVlDu8Mgm+tOaX4YFtg95UX0Tpik31Vr201MXK
 04wQA
X-Developer-Key: i=jre@pengutronix.de; a=openpgp;
 fpr=0B7B750D5D3CD21B3B130DE8B61515E135CD49B5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251017_032223_748911_1BA21EB2 
X-CRM114-Status: UNSURE (   5.63  )
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
X-Spam-Status: No, score=-3.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] gitignore: ignore /build
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Documentation such as Documentation/boards/kvx.rst and tooling such as
conftest.py suggests /build is a good choice for build output directory.

Therefore, include it in .gitignore.

Signed-off-by: Jonas Rebmann <jre@pengutronix.de>
---
 .gitignore | 1 +
 1 file changed, 1 insertion(+)

diff --git a/.gitignore b/.gitignore
index 98bb4dac89..32d54b8fbe 100644
--- a/.gitignore
+++ b/.gitignore
@@ -53,6 +53,7 @@ policy-list
 /TAGS
 /barebox*
 /System.map
+/build
 
 #
 # git files that we don't want to ignore even it they are dot-files

---
base-commit: 8defba1d0ab1aef9dd5d57710e18d0d02e2c48e2
change-id: 20251017-gitignore-build-d90cb643b130

Best regards,
--  
Jonas Rebmann <jre@pengutronix.de>



