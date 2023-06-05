Delivery-date: Mon, 05 Jun 2023 08:30:51 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q63jw-00BRvC-DI
	for lore@lore.pengutronix.de; Mon, 05 Jun 2023 08:30:51 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q63ju-0002gm-5T
	for lore@pengutronix.de; Mon, 05 Jun 2023 08:30:50 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=3467vot1w8qOWYxRWKrBUipnTGq8fq9V50PPxDbqeEI=; b=E6PgE0hgmEXIOj+5JlcahGOpbD
	CqeaC/6mWGMe5YlILT1THJrIki4Nul0/wML1LQB1FCVadVXTg5IcxoIrDrfAfSj+Qvf2bL4qEmuEa
	e8Ln9QWpDJmxUpk/FiJwyyIoy2loBUdkod2U7HtPHxvCXFlCICLa1VS+SE7s3TwMg6egcLmGk5xLj
	ZOElovvisB/53CEi5VKUZEgYa9imBjhsZ++Ezsjqa7DpYRLXviggQjR+Q7/wRndcR9WAwjVwkFJSN
	JusHHFRLa81+Hw1FBP7tQ2uIF7KHYi3OYqPUOPj59RYOVkw7KEH9qbtOvgf2Z2+p9tUKgTI17SZfX
	0xK/lDIg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q63iw-00ELjP-00;
	Mon, 05 Jun 2023 06:29:50 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q63ip-00ELev-2L
	for barebox@lists.infradead.org;
	Mon, 05 Jun 2023 06:29:46 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1q63io-00024S-8V; Mon, 05 Jun 2023 08:29:42 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1q63in-005CpY-Iy; Mon, 05 Jun 2023 08:29:41 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1q63im-001C0z-Q6; Mon, 05 Jun 2023 08:29:40 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  5 Jun 2023 08:29:37 +0200
Message-Id: <20230605062939.242063-5-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230605062939.242063-1-a.fatoum@pengutronix.de>
References: <20230605062939.242063-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230604_232943_767805_45506FCA 
X-CRM114-Status: GOOD (  10.01  )
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
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH master 5/7] MIPS: boot: main_entry: use malloc_end instead of _stext
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

GCC is not fond of subtracting from array base address.
The code already defines and uses a malloc_end pointer, so let's use
that instead to rid us of the warning.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/mips/boot/main_entry.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/mips/boot/main_entry.c b/arch/mips/boot/main_entry.c
index 2c18bc81c3ff..73082adb3fba 100644
--- a/arch/mips/boot/main_entry.c
+++ b/arch/mips/boot/main_entry.c
@@ -89,7 +89,7 @@ void __bare_init main_entry(void *fdt, u32 fdt_size)
 	pr_debug("initializing malloc pool at 0x%08lx (size 0x%08lx)\n",
 			malloc_start, malloc_end - malloc_start);
 
-	mem_malloc_init((void *)malloc_start, (void *)_stext - 1);
+	mem_malloc_init((void *)malloc_start, (void *)malloc_end - 1);
 	mips_stack_top = malloc_start;
 
 	glob_fdt = fdt;
-- 
2.39.2



