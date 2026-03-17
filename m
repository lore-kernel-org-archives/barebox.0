Delivery-date: Tue, 17 Mar 2026 16:20:47 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w2WDu-001qeZ-34
	for lore@lore.pengutronix.de;
	Tue, 17 Mar 2026 16:20:46 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w2WDt-0007a5-B4
	for lore@pengutronix.de; Tue, 17 Mar 2026 16:20:46 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Message-Id:Date:Subject:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=s1tWy2+rZvKMGMnsH+yELofxmstRudIeVqE2uZOxaPY=; b=YLsydl+4HIGBJn
	CX+qi/tjKzoxZMFFnOZ1lM6cXOt1qwpdlMlpNmFOwzT/BREeG6f9GLFZVRr7+5JcW0Vm3CwmPPTDt
	05GtupUZzF/Con0Ci49v9Dh8cr03gnb610cJ89zgA0elTvC9LJe026MSCgqa3DIOJ3D7iSKGr7rCh
	tPig7B4a08HHyZ6UNlrBe79w1iOGRyRkpGkUKxrM1Hsc1j8JW5sxrXCN6wxxwc5V8G/M7HfMHBOiQ
	27FjGDE5kna71BARdzxxTOkHGZKSP5DpJXmRnPcOuiAYnJA86tgkUju93wmrwoHBaJiq3TWpGVVFo
	Zqz4j7vRM44PoIH2RblA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2WDN-00000006ily-0pqm;
	Tue, 17 Mar 2026 15:20:13 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2WDK-00000006ihH-1Xs5
	for barebox@bombadil.infradead.org;
	Tue, 17 Mar 2026 15:20:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Message-Id:Date:Subject:From:Sender:Reply-To:
	Content-ID:Content-Description:In-Reply-To:References;
	bh=s1tWy2+rZvKMGMnsH+yELofxmstRudIeVqE2uZOxaPY=; b=fTmFVQ8DJDYia8HHB2gTlE782t
	tKnQ45/U79JOLaAnCA8lfoNLVHZNay9RkWJujJhFHqU9VxhlJiorct5qeCq773UqE7Dt0WWQPhD/D
	em1CXmJghqSscmfwtiO5Ky8Ajy7QV2yrhZ9tAJeZ84AeH+xCysUA+TGRrN9Ra/49J0p+WBid8luw3
	n9boxOMgx+wsui3IWnP2CFwPulW6QB4Qnpq6Iu6Bnv/25Vcbz9yC8zOYkxbJflWA22eSqpOt41euT
	rhk2wTk2GU+csFwdIpdNemYWO10u7QVJx19JvgY+V48c34Vy/dCEVYOzQxfzHlnAyUpG+3HeZR8vL
	Uoo2kjJg==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2WDE-00000009MX1-20Kz
	for barebox@lists.infradead.org;
	Tue, 17 Mar 2026 15:20:08 +0000
Received: from dude04.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::ac])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <jre@pengutronix.de>)
	id 1w2WDC-00076m-7W; Tue, 17 Mar 2026 16:20:02 +0100
From: Jonas Rebmann <jre@pengutronix.de>
Date: Tue, 17 Mar 2026 16:19:44 +0100
Message-Id: <20260317-keytoc-multi-env-v4-0-38ab473f8034@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIABBxuWkC/33OzQrCMAzA8VeRno00TS2rJ99DPOwj1aJ20s2yM
 fbuVi8KDo//QH7JJDqOnjuxW00icvKdb0MOvV6J+lyGE4NvcgsllZFKGrjw2Lc13B7X3gOHBLo
 kklJZxboUee0e2fnhTR6Ouc++69s4vi8kfE3/YAkBwVDhKqcqMqT3dw6nRx/b4IdNw+IlJvWlY
 LGgKJBAXKI2td02WCwq9FEIl36hrGiirUV2hPZXmef5CfA8DjtBAQAA
X-Change-ID: 20260206-keytoc-multi-env-4a3300292e4a
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.15-dev-18f8f
X-Developer-Signature: v=1; a=openpgp-sha256; l=3856; i=jre@pengutronix.de;
 h=from:subject:message-id; bh=RvL7+xYpFU6f/5NBzFSbnMPWhL0ZBWo+M/SJLrJ3VlU=;
 b=owGbwMvMwCV2ZcYT3onnbjcwnlZLYsjcWSi1/Ottb0O7vBBJsaR3exfv5zFyz/6jO7H1vxJX6
 C3BvYxXO0pZGMS4GGTFFFli1eQUhIz9r5tV2sXCzGFlAhnCwMUpABMJv8fIMGtyblaWqZFOQOiX
 KOtXdo+FQ56+LKuRqLx4/lGR8Jc1axj+J3PuSXl96q/ZivMRAeu/G8Wy7Hntybqz+eCfOz38onV
 hnAA=
X-Developer-Key: i=jre@pengutronix.de; a=openpgp;
 fpr=0B7B750D5D3CD21B3B130DE8B61515E135CD49B5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260317_152004_781593_DC49A5F5 
X-CRM114-Status: GOOD (  11.35  )
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
Subject: [PATCH v4 0/8] Allow multiple keyspecs in one environment variable
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This contains the actual change to keytoc as well a migration Note.

Allowing any number of public keys to be provided via a single
environment variable eases integration in more complex setups where
multiple public keys per keyring are managed externally.

During testing, it was found that handling of fit-hint env variables was
broken since 2025.12. Since this is a legacy feature this series
includes a patch that fixes the bug in the handling of fit-hint env
variables as well as a patch that removes the feature.

Before removal of the feature, the following tests where performed and
keytoc output was manually verified:

cd scripts/
gcc -g keytoc.c $(pkg-config --libs --cflags openssl) -o keytoc
export rsakey="../crypto/snakeoil-4096-development.pem"
export ecdsakey="../crypto/snakeoil-ecdsa-development.pem"
export fullspec="keyring=fit,fit-hint=__ENV__hint:$ecdsakey"
export triplekey="$rsakey $ecdsakey $fullspec"

export hint=test

diff -q <(./keytoc $ecdsakey) <(./keytoc __ENV__ecdsakey)
diff -q <(./keytoc $rsakey) <(./keytoc __ENV__rsakey)
diff -q <(./keytoc $fullspec) <(./keytoc __ENV__fullspec)
diff -q <(./keytoc __ENV__triplekey __ENV__ecdsakey __ENV__triplekey) <(./keytoc $triplekey $ecdsakey $triplekey)

Signed-off-by: Jonas Rebmann <jre@pengutronix.de>
---
Changes in v4:
- split out two more preparatory patches
- add patch to remove handling of fit-hint env variables
- add patch to fix handling of fit-hint env variables
- drop unneeded strdup of argv (Thanks, Marco)
- const buffer holding getenv result to prevent modification of
  environment variable (Thanks, Marco)
- adapt commit message to explain why keyspec list is looped before
  writing stdout
- fix bug where hint and path are only expanded when keyspec is provided
  via env variable. Instead move expansion and validation into yet
  another loop over the keyspecs
- error out on empty/undefined environment variable keyspec
- fix potential out of bounds when indexing argv with listi
- use listi index variable when re-interating keys list instead of
  using argi variable earlier used when iterating both keys and args
- Link to v3: https://lore.barebox.org/barebox/20260316-keytoc-multi-env-v3-0-433591ef3198@pengutronix.de

Changes in v3:
- Where possible, split refactoring/cleanup into a preparatory commit
- Split copying strsep_unescape into a separate commit
- Link to v2: https://lore.barebox.org/barebox/20260218-keytoc-multi-env-v2-0-3ea146c95d18@pengutronix.de

Changes in v2:
- Split up the keyspec environment variables when multiple are provided
  too.
- Use strsep_unescape instead of manual split/unescape
- Remove RFC tag
- Link to v1: https://lore.barebox.org/barebox/20260206-keytoc-multi-env-v1-1-638fbf2b3634@pengutronix.de

---
Jonas Rebmann (8):
      scripts: include: Add string_util.h for strsep_unescaped
      crypto: keytoc: Improve readability
      crypto: keytoc: Move special handling of legacy pkcs11 format to parse_keyspec
      crypto: keytoc: Parse all keyspecs before writing to stdout
      crypto: keytoc: Split env-provided full keyspec on spaces
      Documentation: migration-guides: Document change in keyspec env vars
      crypto: keytoc: Allow fields to start with underscore
      crypto: keytoc: Deprecate fit-hint from env variable

 .../migration-guides/migration-master.rst          |  21 ++++
 crypto/Kconfig                                     |   7 +-
 scripts/include/string_util.h                      |  65 ++++++++++++
 scripts/keytoc.c                                   | 113 ++++++++++++++-------
 4 files changed, 165 insertions(+), 41 deletions(-)
---
base-commit: ff814eff55e898037503e942df8e0ba8f1b13222
change-id: 20260206-keytoc-multi-env-4a3300292e4a

Best regards,
--  
Jonas Rebmann <jre@pengutronix.de>



