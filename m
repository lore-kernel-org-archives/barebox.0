Delivery-date: Wed, 27 May 2026 12:56:47 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wSBwN-004MaX-1P
	for lore@lore.pengutronix.de;
	Wed, 27 May 2026 12:56:47 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wSBwM-0000RL-P3
	for lore@pengutronix.de; Wed, 27 May 2026 12:56:47 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:Content-Transfer-Encoding
	:Content-Type:MIME-Version:Message-Id:Date:Subject:From:Reply-To:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=GJF9LrzpPIAHR64pCA/TlOEgQNFDyQm50+6v9jSdU6M=; b=XsLAND1zIAiVmmSEZXT64rKXwb
	VqC1YG5cYV9MXoMJQlaiL30n44iNwrGvxobWEeIbhyKqJwlY4VbjJsdM884kQMU29s5Oj6aADKhQK
	is9xArifyKhJP9XM4nnZUMCAzQXXQWxLeD1XAo5efqvdieuxLRPhlnFD9CkFvsYx27XMT1RAXeYFG
	nb9J1wg0P53xNFIT8/ObIXZmf9Q2bV/xbexh6zU37ro8NErXAFnGoGtL1LRwf/2d76pufSRhK4jyM
	dCExXxRsxvr/0H/9mL9gKM7BUsVcZ27EArW+mDXKrjFTYkhX4pqOcc6/vB9vqNQcfiYzxYZo1PNjS
	AwWBVyPg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wSBuS-00000003yHf-3ztY;
	Wed, 27 May 2026 10:54:48 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wSBuP-00000003yFY-1wwb
	for barebox@lists.infradead.org;
	Wed, 27 May 2026 10:54:47 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wSBuN-0008SX-3H; Wed, 27 May 2026 12:54:43 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wSBuM-0025vB-1Q;
	Wed, 27 May 2026 12:54:43 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wSBuM-0000000EvQF-3fcl;
	Wed, 27 May 2026 12:54:42 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 27 May 2026 12:54:40 +0200
Message-Id: <20260527-public-keys-v1-0-c87a1cc61d1b@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAHDNFmoC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDIzMDUyMj3YLSpJzMZN3s1Mpi3aREMwPLZDPTZENDEyWgjoKi1LTMCrBp0bG
 1tQALXsAhXQAAAA==
X-Change-ID: 20260522-public-keys-ba609c65c114
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1779879282; l=2532;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=RbZ4un828uU8SvdXneHknltack6s+WoHXaVVl3P5ZBE=;
 b=helnMcxH7x9EiQpMsfXzoq5WMTcs3anl9DH2lU0RGdiHDLSAXvNk1kBZsHsA0LKKeD8zhrc8z
 oAcob1pvyYbDmZ3GdkOZ6rL+el/QpzAXYFIZcqo41TpF8R6TYRD4Pl4
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260527_035445_512549_AF1DA378 
X-CRM114-Status: GOOD (  10.01  )
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
Subject: [PATCH 0/4] public keys: rework keyrings as nested containers
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

So far a public key had a char *keyring meaning that a key can only be
part of a single keyring. This series overcomes this, with it keys can
be contained in multiple keyrings and keyrings can be part of other
keyrings. To get there a new struct keyring_link is introduced which
is instanciated per link and links a key/keyring to a keyring. The
keys command is updated to reflect that, so an example output could
be:

RING: fit
    KEY:    9160ff3ab26e1842d1fbfaca48befce2664f57245048856e779531bb260cbc20	TYPE: ECDSA	HINT:
    RING:   snakeoil
    RING:   fit-devel
RING: tlv-generic
    RING:   snakeoil
RING: snakeoil
    KEY:    4f48c67c9a28be596931de5b137f8207f15a505d1b7a742731014dbcd4c799d9	TYPE: ECDSA	HINT: ecdsa-devel
    KEY:    7fbcb3b2ddfab044ef874550c7cbd1b357afeed55fb6f48be9c22b2cbef72856	TYPE: RSA	HINT: rsa-devel
RING: fit-devel
    KEY:    7fbcb3b2ddfab044ef874550c7cbd1b357afeed55fb6f48be9c22b2cbef72856	TYPE: RSA	HINT:
RING: tlv-feature
    KEY:    54b7b9c040cd81dd1e495832b8a2724a8f48e75f90fcd982631695669a805dd0	TYPE: RSA	HINT:
RING: tlv-base
    KEY:    2f908960b1d74b3a8d0076376870020f8d6504ebb7a1c68c1c383ac8140690e5	TYPE: RSA	HINT:

The FIT image authentication code still uses the "fit" keyring as
before, but now we can link new keys to the keyring during runtime as
needed. Furthermore a key can be used for multiple purposes without
duplicating it.

As a nice side effect the keys themselves become readonly and the
compiled in keys can be moved to the RO data segment.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
Sascha Hauer (4):
      public keys: make error message more informative
      public keys: make key_name_hint optional
      public keys: rework keyrings as nested containers
      public keys: allow keys to be members of multiple keyrings

 commands/keys.c                   |  21 +++-
 common/image-fit.c                |  15 ++-
 common/tlv/parser.c               |  13 ++-
 crypto/Makefile                   |   6 +-
 crypto/public-keys.c              | 221 ++++++++++++++++++++++++++++++++++----
 crypto/rsa.c                      |   3 +-
 include/asm-generic/barebox.lds.h |  11 ++
 include/crypto/public_key.h       |  87 ++++++++++++---
 scripts/keytoc.c                  |  79 +++++++++-----
 9 files changed, 381 insertions(+), 75 deletions(-)
---
base-commit: 19ce0bdebf4856cfe6d0610a6e4d8d917d658ec3
change-id: 20260522-public-keys-ba609c65c114

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



