Delivery-date: Mon, 17 Jan 2022 23:21:50 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n9aNq-004zIL-T9
	for lore@lore.pengutronix.de; Mon, 17 Jan 2022 23:21:50 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n9aNo-0005RS-Ty
	for lore@pengutronix.de; Mon, 17 Jan 2022 23:21:50 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6GgPAcEtO71hL4YCS+u73gYBUN5TjpVKsSBQK1CqPcQ=; b=GacOSl393pcvZH
	XO8IBKhvt9AbPmvo3NXuuyeuJxkSlGxb9/H6sq9zVpTb3xoCAhUVx3xYMSlXa4a3OrmyppFmrQhU7
	KyW9T/Up5lpxA4T5lA26b0TWmwVwSxpa9NYsRqfh0b7VpnN3i3HOTSpTD8zTWweCTwdYhpHQMficA
	A+Mj4qmQnf8y10U5e8P1W6XivNRzO7/jhABb4n16J2gidvyduvVYY6lnKEJ96J6Ce1fiapYBYa46A
	Dihmj/JtOuZ+gJNrtzgiGbFI/z+Il92a2v+OHerBhPob16HcemHyXgsDrcXuI7/gSsLAImLHnCktO
	QS0B0kTtkmPUaQdrykGw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n9aMX-00GTIv-Hl; Mon, 17 Jan 2022 22:20:29 +0000
Received: from smtpout140.security-mail.net ([85.31.212.146]
 helo=fx601.security-mail.net)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n9aM3-00GT6z-RL
 for barebox@lists.infradead.org; Mon, 17 Jan 2022 22:20:03 +0000
Received: from localhost (localhost [127.0.0.1])
 by fx601.security-mail.net (Postfix) with ESMTP id 9BF583ACE24
 for <barebox@lists.infradead.org>; Mon, 17 Jan 2022 23:19:58 +0100 (CET)
Received: from fx601 (localhost [127.0.0.1])
 by fx601.security-mail.net (Postfix) with ESMTP id B106B3ACE26;
 Mon, 17 Jan 2022 23:19:56 +0100 (CET)
X-Virus-Scanned: E-securemail
Secumail-id: <5c17.61e5eb8c.34619.0>
Received: from zimbra2.kalray.eu (unknown [217.181.231.53])
 by fx601.security-mail.net (Postfix) with ESMTPS id 356723ACDD2;
 Mon, 17 Jan 2022 23:19:56 +0100 (CET)
Received: from zimbra2.kalray.eu (localhost [127.0.0.1])
 by zimbra2.kalray.eu (Postfix) with ESMTPS id 1484427E03DD;
 Mon, 17 Jan 2022 23:19:56 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
 by zimbra2.kalray.eu (Postfix) with ESMTP id EEBCA27E0341;
 Mon, 17 Jan 2022 23:19:55 +0100 (CET)
DKIM-Filter: OpenDKIM Filter v2.10.3 zimbra2.kalray.eu EEBCA27E0341
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kalray.eu;
 s=32AE1B44-9502-11E5-BA35-3734643DEF29; t=1642457996;
 bh=eg1pEErGGbpY4OS0uUS+q1fe6terIK3Heb1AM+7Oo6c=;
 h=From:To:Date:Message-Id;
 b=GLL5JSvcxfTr9CkaFQkWNV3QQlLEMCV2BcNSPxKjClImsfudqu9FrFTf9MbgjUJ1F
 84ZdspADoFUwkL6HfihT2ttX5j0qlFZKTWbbjMkdjDug5YQ8rHAaviprvrH2eL5vbj
 ZNUHY+Oj9/LC66qlds7Y8wmlOLyQ/mLiJkuYPWnY=
Received: from zimbra2.kalray.eu ([127.0.0.1])
 by localhost (zimbra2.kalray.eu [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id Nfq_5VwSYQWb; Mon, 17 Jan 2022 23:19:55 +0100 (CET)
Received: from tellis.lin.mbt.kalray.eu (unknown [192.168.36.206])
 by zimbra2.kalray.eu (Postfix) with ESMTPSA id D567C27E03EB;
 Mon, 17 Jan 2022 23:19:55 +0100 (CET)
From: Jules Maselbas <jmaselbas@kalray.eu>
To: barebox@lists.infradead.org
Cc: Clement Leger <clement.leger@bootlin.com>,
 Louis Morhet <lmorhet@kalray.eu>, Luc Michel <lmichel@kalray.eu>,
 Yann Sionneau <ysionneau@kalray.eu>, Jules Maselbas <jmaselbas@kalray.eu>
Date: Mon, 17 Jan 2022 23:19:15 +0100
Message-Id: <20220117221917.26970-10-jmaselbas@kalray.eu>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20220117221917.26970-1-jmaselbas@kalray.eu>
References: <20220117221917.26970-1-jmaselbas@kalray.eu>
X-Virus-Scanned: by Secumail
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220117_142000_042733_8DF197BC 
X-CRM114-Status: UNSURE (   6.88  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 09/11] kvx: add kvx_sfr_field_val
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

From: Clement Leger <clement.leger@bootlin.com>

Add this macro for upcoming socinfo driver. This extract a sfr field
using only its name.

Signed-off-by: Clement Leger <clement.leger@bootlin.com>
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

