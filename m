Delivery-date: Wed, 14 Aug 2024 18:15:29 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1seGem-009ajC-2y
	for lore@lore.pengutronix.de;
	Wed, 14 Aug 2024 18:15:28 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1seGem-00031R-8M
	for lore@pengutronix.de; Wed, 14 Aug 2024 18:15:28 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=7cYvPUHP3ABmPQt4+O0f61i7eeMfOGN04R/nSebHy/A=; b=NCzxakk9AGLFCD6AdSatUnuR3n
	9Afo3bEiUD/pCz7cDDKJrMaoBacOTzpvW9nEzyPhy28h9S/KD5sjWSarFr/cNgM6csR+zsHV5/qk4
	XEXL75VJYpMADtNBt7EnzwkqZfEi0KoCHqTueUYGVUoOOF/Lg6G5HTBHMMBALzgN31dJLXAJjTNLx
	6uORMayEuC9MT/Oi+1Gv1B/ETRBpdBsw728jkDBaaLGrf1iXz2CEdXOloN6RNGxkU9PlrE2K6QAqV
	sDTTak0ejNusbbQVqLYNHJBru/YhxVyqozKXUGR5Lvv1ZIRBpuoFfjZu81hCvOu1UwRqdDJS2ru70
	UuCVt7rg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1seGe7-00000007cG0-00tw;
	Wed, 14 Aug 2024 16:14:47 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1seGe5-00000007cFI-0Z2W
	for barebox@bombadil.infradead.org;
	Wed, 14 Aug 2024 16:14:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
	Content-Description:In-Reply-To:References;
	bh=7cYvPUHP3ABmPQt4+O0f61i7eeMfOGN04R/nSebHy/A=; b=U2wsd8GecB1JUqxPLFw2m8dbil
	pSsaRBc/L9GqHhGCFqO+bFa0DD9Yv915ZpXtfM/vDfJX9tcpy6qTkXllI8f45StfxNo69wNDvgxiH
	CYBRoeh9gi2rTAwCeri2QASnBhkP14p7g6vMYch2lV1Z0m3Tr53/vpl2+Lj/NyWCEAK0Fjch1J/8H
	i7F7BZKbecJBgjQcLaXFfZRpf8ww9QEJ+U1VxBf2ifgDDv/xeacmEs0CVb/lMkqfpzbT5ufBjt+2i
	iBV+XfCY/Px5LviM1/0NWSSnulVmMeW6+g+4jvr5IKQwPcQDTp6KMhZj/JZADZAbq5WYP/JozmNv5
	nQ0CIlpw==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1seGe0-000000087zI-0AAH
	for barebox@lists.infradead.org;
	Wed, 14 Aug 2024 16:14:44 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1seGdw-0002m4-RO; Wed, 14 Aug 2024 18:14:36 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1seGdw-000Oht-El; Wed, 14 Aug 2024 18:14:36 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1seGdw-002NJg-1B;
	Wed, 14 Aug 2024 18:14:36 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 14 Aug 2024 18:14:33 +0200
Message-Id: <20240814161435.566270-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240814_171440_280937_4D055ED1 
X-CRM114-Status: GOOD (  11.13  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 1/3] debug_ll: ns16550: fix prototype in documentation comment
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The functions were changed to take a base parameter, so they can be used
with PBL console instead of just DEBUG_LL. Update the comment to reflect
the current state of the code.

Fixes: e64990099c8f ("debug_ll ns16550: Add base address argument to register functions")
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/debug_ll/ns16550.h | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/include/debug_ll/ns16550.h b/include/debug_ll/ns16550.h
index fce113574fd0..2bad7a43ca91 100644
--- a/include/debug_ll/ns16550.h
+++ b/include/debug_ll/ns16550.h
@@ -7,8 +7,8 @@
  * Early debugging functions for the NS16550
  * This file needs register access functions declared as:
  *
- * uint8_t debug_ll_read_reg(int reg);
- * void debug_ll_write_reg(int reg, uint8_t val);
+ * uint8_t debug_ll_read_reg(void __iomem *base, int reg);
+ * void debug_ll_write_reg(void __iomem *base, int reg, uint8_t val);
  */
 #define NS16550_THR	0x0
 #define NS16550_RBR	0x0
-- 
2.39.2



