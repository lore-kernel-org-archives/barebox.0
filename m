Delivery-date: Thu, 12 Feb 2026 10:39:04 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vqTA7-000qLm-1P
	for lore@lore.pengutronix.de;
	Thu, 12 Feb 2026 10:39:04 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vqTA7-0006x8-6e
	for lore@pengutronix.de; Thu, 12 Feb 2026 10:39:04 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=EjY774YrHl6j08uOur25mqdMtZpP99ySIbiAC4q0ZXI=; b=1D3YkX+671jLCvwvOnpgn9ixQV
	+RuTeeQdk0XpRPPbBj1Xk8c75bazkM1jcTSCbRYm+U9ZEw3ZoRmOeFtcKQYgaxM/M+OXAvRy+qL4f
	I0oen1gJmwwMFaP0f4qej4pvRYHJoUhWt1XeDmJhLOJCUtVP9Mq+6FDJKPn+dujk0CQ7VyCTHAR0G
	AyWoWduSoKCyRVnXLYYp3jOJWWNXVthn2a57gb66uGudO6DilNhBKQWs3r7TxNHaAdEsb4+Yl7fe4
	pdabudqIQW4C5NMKmBDSRufvnkCu+bwDAeILPXFqGkV7ahZus2uqW2jdu71Bv9Uwcx4IIwiSs/WB1
	sHG4cpwQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vqT9f-00000001qD6-0RSB;
	Thu, 12 Feb 2026 09:38:35 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vqT9c-00000001qCF-1zKT
	for barebox@lists.infradead.org;
	Thu, 12 Feb 2026 09:38:33 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vqT9Y-0006om-F4; Thu, 12 Feb 2026 10:38:28 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vqT9W-000Nwp-2z;
	Thu, 12 Feb 2026 10:38:28 +0100
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vqT9Y-00000002TCj-0jRl;
	Thu, 12 Feb 2026 10:38:28 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 12 Feb 2026 10:38:01 +0100
Message-ID: <20260212093827.588641-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260212_013832_507220_DEFBD9D7 
X-CRM114-Status: UNSURE (   7.31  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH master] ci: container: include qemu-system-ppc
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We have a qemu-ppce500_defconfig now that we will test in CI, so enable
qemu-system-ppc in the container.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
Needed for next, but targetting master as we want to use the same
container for both.
---
 test/Containerfile | 1 +
 1 file changed, 1 insertion(+)

diff --git a/test/Containerfile b/test/Containerfile
index fc1d8f5f9671..3507a9d919a2 100644
--- a/test/Containerfile
+++ b/test/Containerfile
@@ -41,6 +41,7 @@ RUN apt-get update && apt-get upgrade -y && apt-get install -y --no-install-reco
 	qemu-system-misc \
 	qemu-system-mips \
 	qemu-system-x86 \
+	qemu-system-ppc \
 	qemu-system-common \
 	ovmf \
 	python3 \
-- 
2.47.3



