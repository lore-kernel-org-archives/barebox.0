Delivery-date: Thu, 12 Mar 2026 11:12:22 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w0d1h-00Ami4-2t
	for lore@lore.pengutronix.de;
	Thu, 12 Mar 2026 11:12:22 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w0d1i-0008Kd-7a
	for lore@pengutronix.de; Thu, 12 Mar 2026 11:12:22 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=1e/fY5Ne4A2hrAxM61IM/utSetqQArlsu7rL6R6fSUU=; b=r/wMtK9z6hiBce80soId8Zn9Zp
	78sg3VQJ2n3O/ZVIC2kcDkX4F9OzhG5yqFNUlrw9cLppFjOjHVoTuZ0v7o18aTl6+/aSykKLJn+vi
	sUnF5yL2IF1r7WpkDdQLbkRKHWl/jNN8hZdoBMjteWGoAnfJqviQHXo/IPjkAsjErD/ItZPSgVRwQ
	Q2Sf074JgI5IC95kAky8JD+h1WJ1tWzaNJBiV7ioUm+b+Hz0EM9eDkxHqJcI149QCllzw08GHP1nd
	FpFfETUYTOx4wu51/RIIiWLFPflEv0wNPmTjqA7aKzGRBDj30SLtcrz7gqzZ8dmh+/ZYngEvVoTqy
	Th3Hp/8A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w0d1B-0000000DqNt-1H2z;
	Thu, 12 Mar 2026 10:11:49 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w0d1A-0000000DqNR-0lMa
	for barebox@bombadil.infradead.org;
	Thu, 12 Mar 2026 10:11:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
	Content-Description:In-Reply-To:References;
	bh=1e/fY5Ne4A2hrAxM61IM/utSetqQArlsu7rL6R6fSUU=; b=UMjsV5FbTc1paN/Tc9DktwCEWY
	FLT9y/K04zZQIOziFUvpkfm6eofBs1gBfarkxue4DNOrGQbfjK2tVtMaVA3OHhcjzRnZmyPp5mq0U
	Flvg9NxoMQ6wxBWzdLuvOhB/T7h1PShxliX2OUpXajYGGKpO2kZMjxrnOa7iKf6+ez+Ner2xbcxGs
	dw3Awbe9Gkq4ek57qFNDTa4wMB+3sykBY+r/7/3sUSfH8kic/Tw5kERDZ2zLHut7RfKkbPKBa3x43
	YChx+MYWnGDltiAkB0/XTS1UMS//uCI8Aszmi4lsW24mBVjMveHDmjCa1GSbTmgHxrU6+kIjhA04p
	RKdUZ7zg==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w0d16-00000000uUL-2MqP
	for barebox@lists.infradead.org;
	Thu, 12 Mar 2026 10:11:46 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1w0d13-00080f-Jo; Thu, 12 Mar 2026 11:11:41 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1w0d12-0050Ph-0G;
	Thu, 12 Mar 2026 11:11:41 +0100
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1w0d13-0000000HKKM-1KMt;
	Thu, 12 Mar 2026 11:11:41 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Thu, 12 Mar 2026 11:11:39 +0100
Message-ID: <20260312101139.4129705-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260312_101144_717977_233E7DAC 
X-CRM114-Status: GOOD (  10.41  )
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
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] bareboxtlv-generator: make compatible to python < 3.12
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Older python versions < 3.12 do not allow nested " in f-strings. Use '
instead.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 scripts/bareboxtlv-generator/bareboxtlv-generator.py | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/scripts/bareboxtlv-generator/bareboxtlv-generator.py b/scripts/bareboxtlv-generator/bareboxtlv-generator.py
index 2eba0aeb23..806d2d8b94 100755
--- a/scripts/bareboxtlv-generator/bareboxtlv-generator.py
+++ b/scripts/bareboxtlv-generator/bareboxtlv-generator.py
@@ -327,7 +327,7 @@ class FactoryDataset:
                     raise ValueError(f"{name}: Invalid hex string for bytes format")
                 if "length" in tag:
                     if tag["length"]!=len(bin):
-                        raise ValueError(f"{name}: schema requires this byte sequence to be {tag["length"]} bytes but the given sequence is {len(bin)} byte long.")
+                        raise ValueError(f"{name}: schema requires this byte sequence to be {tag['length']} bytes but the given sequence is {len(bin)} byte long.")
                 fmt = f"{len(bin)}s"
                 if len(bin) > 2**16 - 1:
                     raise ValueError(f"Bytes {name} is too long!")
-- 
2.47.3



