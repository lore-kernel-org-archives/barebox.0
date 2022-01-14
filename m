Delivery-date: Fri, 14 Jan 2022 17:54:21 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n8PqH-002DG9-TY
	for lore@lore.pengutronix.de; Fri, 14 Jan 2022 17:54:21 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n8PqF-0004Pe-MH
	for lore@pengutronix.de; Fri, 14 Jan 2022 17:54:21 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rt40KqXYAcc4Ob70t8D4lOjGiZvFwSmw1AqtBpMpEsI=; b=LzxxnVrCBBW3m4
	kYsfqoKOPTowTl+REiW6VNSqjjqwwsOy1PJd/44zWfmzqkyxTdoBx02iN0eNBCsPqQT0wrt8UHJhE
	aXD3FHlmeXxc0F2Vm2iHsSPHzRZG2F11QU8Ykl7hilUKkmf3ttvFotqPwdrwRIE/etAyYzBzUPDqR
	cfKVms+4iZpyh9Wg35/8feKLLkgIAUS/PVU/TQKJavFznBZrn9a+BpgYEy1T85O7Pf/Qk+sQgHJ5r
	05ed3FHvYxkb5Yk+LIR0iJw2o0OIutKEs5WhGEHMQ1wv2CbIRPRCOY9Cv1GBZrCFDEJGkChlXw6zZ
	z3H47F+4XbqGbF7oiE7A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n8PoX-009qK2-HI; Fri, 14 Jan 2022 16:52:33 +0000
Received: from smtpout140.security-mail.net ([85.31.212.143]
 helo=fx403.security-mail.net)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n8PoR-009qHE-0d
 for barebox@lists.infradead.org; Fri, 14 Jan 2022 16:52:29 +0000
Received: from localhost (localhost [127.0.0.1])
 by fx403.security-mail.net (Postfix) with ESMTP id 6105B1C74BF
 for <barebox@lists.infradead.org>; Fri, 14 Jan 2022 17:52:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kalray.eu;
 s=sec-sig-email; t=1642179145;
 bh=hX9kaH233wrA7f8LMFK2mdz1EGQv4WKswj9MjZHUwTA=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References;
 b=Q5iIngaXmKFr9baX8l2AMQqJ4717gfrH78ovnLizK9u1tYcisMNO++TgQxbR1dyoH
 iQ/9TICV1/gODtujFVLR989lUHfx+Opnw35HWiBp3tm7COOiSOfPQOiXJyC/nQT6kS
 B1tkfiZ0ucmq1gksFOaMS+L5Qz7D07xzCB/MljMA=
Received: from fx403 (localhost [127.0.0.1])
 by fx403.security-mail.net (Postfix) with ESMTP id A8C8D1C74B2;
 Fri, 14 Jan 2022 17:52:24 +0100 (CET)
X-Virus-Scanned: E-securemail
Secumail-id: <264a.61e1aa48.4d8ad.0>
Received: from zimbra2.kalray.eu (unknown [217.181.231.53])
 by fx403.security-mail.net (Postfix) with ESMTPS id 4E9561C74A3;
 Fri, 14 Jan 2022 17:52:24 +0100 (CET)
Received: from zimbra2.kalray.eu (localhost [127.0.0.1])
 by zimbra2.kalray.eu (Postfix) with ESMTPS id 2EBEA27E03AE;
 Fri, 14 Jan 2022 17:52:24 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
 by zimbra2.kalray.eu (Postfix) with ESMTP id 1843027E0341;
 Fri, 14 Jan 2022 17:52:24 +0100 (CET)
DKIM-Filter: OpenDKIM Filter v2.10.3 zimbra2.kalray.eu 1843027E0341
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kalray.eu;
 s=32AE1B44-9502-11E5-BA35-3734643DEF29; t=1642179144;
 bh=EGd0wFiFKQfdjyl0+fPK1ooTpNXVfLsGAqkNcP4jbOQ=;
 h=From:To:Date:Message-Id;
 b=PbhfejOdl6m1Z5L6ViMFhkz5NkNGIuD4vkjlrVccfLbK/SkFSFH5U+dEz+w+U2AUw
 dTMFV5hbnFfY5c1nIlV0eqGDgp32o2NbRYYCJ08vlvd4poEbMjBwzFBBbRwIwBKgcS
 x7ipQk7Y3JfnKTVTZpNTuRkyk8KDTN3MgaOLAsDE=
Received: from zimbra2.kalray.eu ([127.0.0.1])
 by localhost (zimbra2.kalray.eu [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id qZdwXkS2dW1b; Fri, 14 Jan 2022 17:52:24 +0100 (CET)
Received: from tellis.lin.mbt.kalray.eu (unknown [192.168.36.206])
 by zimbra2.kalray.eu (Postfix) with ESMTPSA id 0246727E0401;
 Fri, 14 Jan 2022 17:52:24 +0100 (CET)
From: Jules Maselbas <jmaselbas@kalray.eu>
To: barebox@lists.infradead.org
Cc: Clement Leger <clement.leger@bootlin.com>,
 Louis Morhet <lmorhet@kalray.eu>, Luc Michel <lmichel@kalray.eu>,
 Yann Sionneau <ysionneau@kalray.eu>, Clement Leger <cleger@kalray.eu>,
 Jules Maselbas <jmaselbas@kalray.eu>
Date: Fri, 14 Jan 2022 17:52:08 +0100
Message-Id: <20220114165208.9980-10-jmaselbas@kalray.eu>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20220114165208.9980-1-jmaselbas@kalray.eu>
References: <20220114165208.9980-1-jmaselbas@kalray.eu>
X-Virus-Scanned: by Secumail
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220114_085227_245932_911297D0 
X-CRM114-Status: UNSURE (   7.02  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 09/13] kvx: add kvx_sfr_field_val
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

From: Clement Leger <cleger@kalray.eu>

Add this macro for upcoming socinfo driver. This extract a sfr field
using only its name.

Signed-off-by: Clement Leger <cleger@kalray.eu>
Signed-off-by: Jules Maselbas <jmaselbas@kalray.eu>
---
 arch/kvx/include/asm/sfr.h | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/kvx/include/asm/sfr.h b/arch/kvx/include/asm/sfr.h
index 5b93cee345..89ff64bbdc 100644
--- a/arch/kvx/include/asm/sfr.h
+++ b/arch/kvx/include/asm/sfr.h
@@ -44,4 +44,8 @@ kvx_sfr_set_mask(unsigned char sfr, uint64_t mask, uint64_t value)
 #define kvx_sfr_set(_sfr, _val)	__builtin_kvx_set(KVX_SFR_ ## _sfr, _val)
 #define kvx_sfr_get(_sfr)	__builtin_kvx_get(KVX_SFR_ ## _sfr)
 
+#define kvx_sfr_field_val(_val, _sfr, _field) \
+			  (((_val) & KVX_SFR_ ## _sfr ## _ ## _field ## _MASK) \
+			  >> KVX_SFR_ ## _sfr ## _ ## _field ## _SHIFT)
+
 #endif	/* _ASM_KVX_SFR_DEFS_H */
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

