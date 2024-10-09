Delivery-date: Wed, 09 Oct 2024 16:11:47 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1syXPm-002Fqz-36
	for lore@lore.pengutronix.de;
	Wed, 09 Oct 2024 16:11:46 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1syXPl-0004Am-V0
	for lore@pengutronix.de; Wed, 09 Oct 2024 16:11:46 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=tDY4xpr8ItZxIB+8M/d4GbxeUnpyNt3T/TX+adZkT2I=; b=ZUjKzMZmHCkfo9tYe/mENeeUBX
	qqej0kqbVZpiq2or6eNlvFEsyByN8TbnEhY+mjMvZhsvfST8kD5nadVekmal9Q+osCGo3Z2493mTE
	cWA8VuPh00tYmRrIwktdaNIA7CHhkNi9eGYZgYmQEYlJ4T553iKCJpyRC+Qpjw0OtA/JcAmCoCJ+Q
	omx55pRCjL6r/o2M/AxI1HMClHDwBP+N4TOpflBEtEokUZSyCk/2YwquZMCzsYfTjxgrXCrBx7jxM
	ndCOwH/LxjHJS7gVcXVcTA9Zn/VpPJHYCLe85iEFQg7WfKTFy3WnczD3+A6ttP4OkBwsAqwu0D0QO
	PndfXepQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1syXPA-00000009XME-2Esm;
	Wed, 09 Oct 2024 14:11:08 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1syXGI-00000009VfM-1vPk
	for barebox@lists.infradead.org;
	Wed, 09 Oct 2024 14:01:59 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1syXGH-0002qe-0j
	for barebox@lists.infradead.org; Wed, 09 Oct 2024 16:01:57 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1syXGG-000cNR-KQ
	for barebox@lists.infradead.org; Wed, 09 Oct 2024 16:01:56 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1syXGG-008Mdc-1m
	for barebox@lists.infradead.org;
	Wed, 09 Oct 2024 16:01:56 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Wed,  9 Oct 2024 16:01:49 +0200
Message-Id: <20241009140155.1990882-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241009_070158_539999_FB0EC04A 
X-CRM114-Status: UNSURE (   8.10  )
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
Subject: [PATCH 0/6] crypto: ecdsa: fix fallout
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

A number of these commits can be squashed into next, but I leave it to
Sascha whether he wants to do that or just apply them afterwards.

Ahmad Fatoum (6):
  crypto: reorder ECDSA Kconfig entries
  crypto: rsa: support RSA keys with CONFIG_CRYPTO_BUILTIN_KEYS disabled
  keytoc: return error on failure to set PKCS#11 pin
  crypto: ecdsa: make crypto/ecdsa.h header self-containing
  test: self: jwt: regenerate jwt_test.pem.c_shipped
  test: self: rename REGENERATE_RSATOC to REGNERATE_KEYTOC

 crypto/Kconfig                   | 14 +++++++-------
 crypto/rsa.c                     |  5 +++--
 include/crypto/ecdsa.h           |  4 ++++
 scripts/keytoc.c                 |  1 +
 test/self/Makefile               |  2 +-
 test/self/jwt_test.pem.c_shipped |  2 +-
 6 files changed, 17 insertions(+), 11 deletions(-)

-- 
2.39.5



