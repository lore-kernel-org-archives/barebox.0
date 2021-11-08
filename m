Delivery-date: Mon, 08 Nov 2021 08:54:27 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mjzU3-0005vQ-VH
	for lore@lore.pengutronix.de; Mon, 08 Nov 2021 08:54:27 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mjzU2-0004IW-AJ
	for lore@pengutronix.de; Mon, 08 Nov 2021 08:54:27 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bqGN3IIiXQLxR7gJtAjMgTjwk3wumbJCeYXX3Ebd9/s=; b=TYurdQ0g8J/lRS
	9F7aWgBvNtHqhps60v5dMS6u0IfoTjPLA7C9o9GwBKFixcPdlJm9Q/xeKNf5JMOKvoRPPSR9EeaT7
	7dcmAxjb3Shy2yzv76GzWmldcqiBcBvm8KgnQc9oxl8XeAuyzM45gTQUsikB6tMtpB9KF0YVSCEyn
	hwSgFpw3hhgIx+mUbpECpGK2xelmuMJuNANQXA+9tnCpDrH79jm3VUoCkSUNWxR/7Cb3e/Ig+Aklh
	cdtgt0/Ee2j9Ig7hH/fUr1HXK5I73A72qUmlJl46Il7wLlFxzvXfe4NIW3GBlT6FmolYH7Ot33tbI
	XHu0W+DSrA2yWBnNRFkw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mjzSk-00Fdw4-7f; Mon, 08 Nov 2021 07:53:06 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mjzSC-00FdgP-RT
 for barebox@lists.infradead.org; Mon, 08 Nov 2021 07:52:35 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1mjzRv-0003kn-Jk; Mon, 08 Nov 2021 08:52:15 +0100
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <afa@pengutronix.de>)
 id 1mjzRu-009vik-Sk; Mon, 08 Nov 2021 08:52:14 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  8 Nov 2021 08:52:05 +0100
Message-Id: <20211108075209.2366770-5-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20211108075209.2366770-1-a.fatoum@pengutronix.de>
References: <20211108075209.2366770-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211107_235232_917922_9EAD3F6E 
X-CRM114-Status: GOOD (  11.22  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 5/9] ARM64: <asm/barebox-arm-head.h>: mark prologue location
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Unlike with ARM32, barebox prologue on ARM64 starts with the function
prologue, because of the absence of the naked attribute. The code is
written with that in mind (6 branches instead of 8 to account for the
two instructions inserted by the compiler), but it's still suprising.

Add a hint about that in the code.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/include/asm/barebox-arm-head.h | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm/include/asm/barebox-arm-head.h b/arch/arm/include/asm/barebox-arm-head.h
index 8409a77d2e7c..187d12c9fc8d 100644
--- a/arch/arm/include/asm/barebox-arm-head.h
+++ b/arch/arm/include/asm/barebox-arm-head.h
@@ -44,6 +44,8 @@ static inline void __barebox_arm_head(void)
 		"1: b 1b\n"
 #endif
 #else
+		/* two instruction long function prologue */
+		/* only use if stack is initialized! */
 		"b 2f\n"
 		"nop\n"
 		"nop\n"
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

