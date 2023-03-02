Delivery-date: Thu, 02 Mar 2023 12:17:54 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pXgwb-006Unm-9e
	for lore@lore.pengutronix.de; Thu, 02 Mar 2023 12:17:54 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pXgwa-0001dg-Mq
	for lore@pengutronix.de; Thu, 02 Mar 2023 12:17:53 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=/jD5QjnA9ZGDX8pqfoUSu9/9FNVOWLv0mj+3cQt05xk=; b=PRmzIs+CAGGZitKXI3xulkTEIZ
	c+XHhXh4L/n86z+4hqBvF/N4PXttcMTXWCwJeUdCzvFP4YuMkOw/0IQQVlnMXsgGGQZf4p6eUXJwE
	bIMHmQaoQu+xqKqUKNaqiMlVnzYSdgWOIYUUGxRpv04NYAUC7zZl0BZ0b+cvKCNPDXw9GMG23SI5K
	YENILDyCWiNkLF7UeBTciZziKXYciiYyP43+ONhjYZPn3BqSxJsuDWt4jTLgHpK/XQlaIdsKoVaW/
	MdmFa645xVLFABThUv0b4PPJ81cTRLprB/1PavSW3wN97rHxHmVYxhDCMp3/o24mmJaQErM7ha2ng
	NLNBKYfw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pXgvH-001sPX-U4; Thu, 02 Mar 2023 11:16:32 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pXgux-001sG5-Ra
	for barebox@lists.infradead.org; Thu, 02 Mar 2023 11:16:14 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pXguw-00017s-LE; Thu, 02 Mar 2023 12:16:10 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pXguv-001JdB-Vy; Thu, 02 Mar 2023 12:16:10 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pXgut-004QVF-RK; Thu, 02 Mar 2023 12:16:07 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Thu,  2 Mar 2023 12:15:54 +0100
Message-Id: <20230302111606.1054037-2-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230302111606.1054037-1-s.hauer@pengutronix.de>
References: <20230302111606.1054037-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230302_031611_925617_AB7BB182 
X-CRM114-Status: GOOD (  11.64  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 01/13] ARM: add ENTRY_FUNCTION_HEAD macro
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Some architectures set CONFIG_HAVE_MACH_ARM_HEAD to customize the
barebox image header. Add a ENTRY_FUNCTION_HEAD macro which allows
a board to customize the barebox image header without having to
hook into a generic include file.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/include/asm/barebox-arm.h | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/arch/arm/include/asm/barebox-arm.h b/arch/arm/include/asm/barebox-arm.h
index d4be719bc4..0cf4549cd7 100644
--- a/arch/arm/include/asm/barebox-arm.h
+++ b/arch/arm/include/asm/barebox-arm.h
@@ -183,7 +183,7 @@ void __barebox_arm64_head(ulong x0, ulong x1, ulong x2);
 	static void noinline ____##name					\
 		(ulong arg0, ulong arg1, ulong arg2)
 
-#define ENTRY_FUNCTION(name, arg0, arg1, arg2)				\
+#define ENTRY_FUNCTION_HEAD(name, head, arg0, arg1, arg2)		\
 	void name(ulong r0, ulong r1, ulong r2);			\
 									\
 	static void __##name(ulong, ulong, ulong);			\
@@ -191,11 +191,14 @@ void __barebox_arm64_head(ulong x0, ulong x1, ulong x2);
 	void __naked __section(.text_head_entry_##name)	name		\
 				(ulong r0, ulong r1, ulong r2)		\
 		{							\
-			__barebox_arm_head();				\
+			head();				\
 			__##name(r0, r1, r2);				\
 		}							\
 	static void __naked noinline __##name				\
 		(ulong arg0, ulong arg1, ulong arg2)
+
+#define ENTRY_FUNCTION(name, arg0, arg1, arg2)		\
+		ENTRY_FUNCTION_HEAD(name, __barebox_arm_head, arg0, arg1, arg2)
 #endif
 
 /*
-- 
2.30.2



