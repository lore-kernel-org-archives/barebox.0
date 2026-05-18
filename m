Delivery-date: Mon, 18 May 2026 10:02:33 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wOsvp-0013kN-1C
	for lore@lore.pengutronix.de;
	Mon, 18 May 2026 10:02:33 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wOsvo-0006Qk-Mk
	for lore@pengutronix.de; Mon, 18 May 2026 10:02:33 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Message-Id:Date:Subject:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=eqdZf8zS/bSdiHNMnSdsnCgeA3s6z0anTqQOydgWPk0=; b=BZczdclK7Y82Z8
	O3/L425HVypa/1O547TSqIXcS2t8jKqN/XkJa2ac7gx2U9rOkO38FuGbpwyrGorRDhfv3qDDGSyr/
	2uu2k+Se18Uz+2J2YlfmHM0wIEkp5GbphErSP9YJCRHDKdeijXGiEr0taEBVnQGfULS7tjgShnEMB
	53mKMrPIEiefBCs+8vrbq/+8i04UMgA9iVi4OlLulCOvx3CL5pOlKLBw9n3w6u3crwomgQCpIvciK
	u+/ZltKV+7/ctk/1ZeszfnW8CgcMSiRZm1CV81dEQa27Q2wIOyMm02FH14p79Tnk8I65AdaeEmAx5
	Y2ql3iq4ggt1VUD0ANSw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wOsqD-0000000EgTq-3hbu;
	Mon, 18 May 2026 07:56:45 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wOsq2-0000000EgQk-3Key
	for barebox@lists.infradead.org;
	Mon, 18 May 2026 07:56:39 +0000
Received: from dude04.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::ac])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <jre@pengutronix.de>)
	id 1wOsps-0003WR-6y; Mon, 18 May 2026 09:56:24 +0200
From: Jonas Rebmann <jre@pengutronix.de>
Date: Mon, 18 May 2026 09:56:12 +0200
Message-Id: <20260518-barebox-port-ecc-v1-0-25509bd37030@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIABzGCmoC/x3MMQqAMAxA0atIZgNtoUW9ijhojJrFSioilN7d4
 viG/zMkVuEEQ5NB+ZEk8aywbQN0zOfOKGs1OOOC8dbjMisv8cUr6o1MhHYN7Dz1wXQENbuUN3n
 /5TiV8gFc32llYgAAAA==
X-Change-ID: 20260515-barebox-port-ecc-1d6e25c9608c
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 "open list:BAREBOX" <barebox@lists.infradead.org>
Cc: Lukas Wunner <lukas@wunner.de>, Ahmad Fatoum <a.fatoum@pengutronix.de>, 
 Jonas Rebmann <jre@pengutronix.de>, Stefan Berger <stefanb@linux.ibm.com>, 
 Venkat Rao Bagalkote <venkat88@linux.vnet.ibm.com>, 
 Herbert Xu <herbert@gondor.apana.org.au>, 
 Thorsten Blum <thorsten.blum@linux.dev>
X-Mailer: b4 0.16-dev
X-Developer-Signature: v=1; a=openpgp-sha256; l=1869; i=jre@pengutronix.de;
 h=from:subject:message-id; bh=u7iXKaPCsgZmGuZPaXNMw5Hj4y3PBrH4t3hC2A/upC4=;
 b=owGbwMvMwCV2ZcYT3onnbjcwnlZLYsjiOqai/k7SIubjReOWW/IbRWV7JL/HVJz48f7esewal
 tDkFXf2dJSyMIhxMciKKbLEqskpCBn7XzertIuFmcPKBDKEgYtTACayXovhn2JxqPyyxUskff4J
 Jtov/urIWs9w+bOv+wLLxjc9UYV7vjIyNFeuDw095vFUtfL1LzvbRZOevJhifWXdHcnS40Hz196
 UZAEA
X-Developer-Key: i=jre@pengutronix.de; a=openpgp;
 fpr=0B7B750D5D3CD21B3B130DE8B61515E135CD49B5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260518_005636_164509_7FB604D1 
X-CRM114-Status: UNSURE (   8.61  )
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
X-Spam-Status: No, score=-4.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 0/4] crypto: Port ecc.c fixes from kernel
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We've been working on processes for porting fixes from copied code in
winter and introduced Origin-URL references [1] during those
discussions.

Now thanks to Lukas we're reminded to put this to practice.

This series is a proposal on future standard practice of porting such
patches: Update the Origin-URL in every ported patch, mention the origin
project in the "cherry picked from" line. Handle like a backport for all
other regards.

Note that the most recent ported patch is linux commit c66e0a273f22
("crypto: ecc - Streamline alloc_point and remove
{alloc,free}_digits_space") but Origin-URL is pointing at commit
d6ea871d73ab ("crypto: ecc - Use crypto_stdrng_get_bytes()"), which I
intentionally skipped when porting as not applicable to barebox (we have
a different random bytes API). This is so that the file is now
recognizable as up to date until further updates on linux master.

To establish these processes, we should soon underscore them with some
tooling like Ahmad did in [1].

[1] https://lore.kernel.org/barebox/20251218151807.691382-1-a.fatoum@pengutronix.de/

Signed-off-by: Jonas Rebmann <jre@pengutronix.de>
---
Jonas Rebmann (1):
      crypto: ecc: Add Origin-URL to document kernel revision

Lukas Wunner (1):
      crypto: ecdsa - Harden against integer overflows in DIV_ROUND_UP()

Stefan Berger (1):
      crypto: ecc - Fix off-by-one missing to clear most significant digit

Thorsten Blum (1):
      crypto: ecc - Streamline alloc_point and remove {alloc,free}_digits_space

 crypto/ecc.c         | 32 ++++++++++++--------------------
 include/linux/math.h | 12 ++++++++++++
 2 files changed, 24 insertions(+), 20 deletions(-)
---
base-commit: c7bdd78be7cc9449a49a429a342c83f8085b1475
change-id: 20260515-barebox-port-ecc-1d6e25c9608c

Best regards,
--  
Jonas Rebmann <jre@pengutronix.de>



