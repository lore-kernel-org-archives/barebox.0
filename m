Delivery-date: Mon, 03 Jan 2022 12:59:54 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n4M0I-009nm8-42
	for lore@lore.pengutronix.de; Mon, 03 Jan 2022 12:59:54 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n4M0G-00044H-BM
	for lore@pengutronix.de; Mon, 03 Jan 2022 12:59:53 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5bSknh/FuuEGfPompkWHUITct3wK1Mmgc4U3uwB4Ekg=; b=h1HHvF1XyChAXv
	QPy8655jI0OXuaSzwvvasrA5DuYnT8BASkcAxAbsgnLH2VofbXnaLYzmoz7V3me+y/M0r6ILr7+Gb
	6pAu4fD2wf/0WG0xSwi2z1l0u2zx5DSR1Yh/f/LuOje5v0Cb4uYqtPRdbFJdhgOcIi8BYOOmMH3Uk
	GbS1i32kGX+8TfNuMjwVEGsvT5eQgdvyPM8zG/ATS3BCKAAfpPGLcraVeiId9QOKTuyuS3s0IDAxv
	Nwd6uA924ISrCYDkuzly3hKluhUW9QStot2C89/F5yXzGa0DJeCSG8Hl1f+RClGAxKktEh4tR36Fi
	7UNtzX0hJCAIfjv25Ezg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n4Lz2-008vnt-RQ; Mon, 03 Jan 2022 11:58:37 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n4Lyt-008vjJ-Qf
 for barebox@lists.infradead.org; Mon, 03 Jan 2022 11:58:29 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1n4Lys-0003bl-JN; Mon, 03 Jan 2022 12:58:26 +0100
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <afa@pengutronix.de>)
 id 1n4Lyr-007EoK-Tl; Mon, 03 Jan 2022 12:58:25 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  3 Jan 2022 12:58:23 +0100
Message-Id: <20220103115824.1725086-4-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220103115824.1725086-1-a.fatoum@pengutronix.de>
References: <20220103115824.1725086-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220103_035827_899978_0109913E 
X-CRM114-Status: GOOD (  10.44  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 3/4] include: <linux/compiler.h>: delete __ADDRESSABLE macro
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The macro is non-functional, because it requires linker script changes.
Instead of doing those and risking breakage, just drop it. These can be
done when the macro is actually needed.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/linux/compiler.h | 10 ----------
 1 file changed, 10 deletions(-)

diff --git a/include/linux/compiler.h b/include/linux/compiler.h
index f61a45841470..6654c164f594 100644
--- a/include/linux/compiler.h
+++ b/include/linux/compiler.h
@@ -276,16 +276,6 @@ unsigned long read_word_at_a_time(const void *addr)
 
 #endif /* __KERNEL__ */
 
-/*
- * Force the compiler to emit 'sym' as a symbol, so that we can reference
- * it from inline assembler. Necessary in case 'sym' could be inlined
- * otherwise, or eliminated entirely due to lack of references that are
- * visible to the compiler.
- */
-#define __ADDRESSABLE(sym) \
-	static void * __attribute__((section(".discard.addressable"), used)) \
-		__PASTE(__addressable_##sym, __LINE__) = (void *)&sym;
-
 /**
  * offset_to_ptr - convert a relative memory offset to an absolute pointer
  * @off:	the address of the 32-bit offset value
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

