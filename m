Delivery-date: Wed, 10 Mar 2021 09:49:32 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lJuX5-00019G-W1
	for lore@lore.pengutronix.de; Wed, 10 Mar 2021 09:49:31 +0100
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lJuX5-00020k-88
	for lore@pengutronix.de; Wed, 10 Mar 2021 09:49:31 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=uToNT8Ko8jxjtxa6BWQaXC7x2e1GTwL6exVi1LmLMHQ=; b=HYor3C+vAuiwWtfLslOOadOba
	Q2vBeQOip5jCEI5JLr3FgHDXGWnrxRhMBbNxfypARTkNtPdI99Y0gh1C3vM1T9ILRGIrgwq7XgLIK
	uDQmYGUl8cwnvnVZcuDvv7vTEZxKfoDsvy9S0K9vL0CChtc1M3BBMub0edpfc3VBqCu2ojGFzEiEN
	VQiZhhH4N0GOmt9OdV/s49xlPTooY1QTw96au9aNqGprzykZUNh0RCy/6xC+mb8sAdbRx28TS+MK3
	leQaNBDPyBXNS6jMACX6F1XaRcR2kW2nvLEyglW7soa+lC6kRyV4ImWqojoywnh/0nzOSLpH+f7rg
	xzQ4z1wow==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lJuVw-006LOb-Lq; Wed, 10 Mar 2021 08:48:21 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lJuVh-006LJh-78
 for barebox@lists.infradead.org; Wed, 10 Mar 2021 08:48:07 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lJuVf-0001TX-2x; Wed, 10 Mar 2021 09:48:03 +0100
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lJuVd-0001zC-GC; Wed, 10 Mar 2021 09:48:01 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Peter Mamonov <pmamonov@gmail.com>, Peter Korsgaard <peter@korsgaard.com>,
 Sascha Hauer <sha@pengutronix.de>, Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 10 Mar 2021 09:47:46 +0100
Message-Id: <20210310084800.3584-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210310084800.3584-1-a.fatoum@pengutronix.de>
References: <20210310084800.3584-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210310_084805_397121_102B6294 
X-CRM114-Status: GOOD (  10.65  )
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
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v3 02/16] ARM: asm: setjmp: annotate setjmp/longjmp for GCC
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

To avoid invalid optimizations and to enable warnings, GCC must be told
that setjmp and longjmp are to be handled specially. Add the missing
attributes.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/include/asm/setjmp.h | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/include/asm/setjmp.h b/arch/arm/include/asm/setjmp.h
index 62bac613d6e1..538d9cd50651 100644
--- a/arch/arm/include/asm/setjmp.h
+++ b/arch/arm/include/asm/setjmp.h
@@ -23,7 +23,7 @@ struct jmp_buf_data {
 
 typedef struct jmp_buf_data jmp_buf[1];
 
-int setjmp(jmp_buf jmp);
-void longjmp(jmp_buf jmp, int ret);
+int setjmp(jmp_buf jmp) __attribute__((returns_twice));
+void longjmp(jmp_buf jmp, int ret) __attribute__((noreturn));
 
 #endif /* _SETJMP_H_ */
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

