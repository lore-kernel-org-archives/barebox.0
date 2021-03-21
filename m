Delivery-date: Sun, 21 Mar 2021 16:20:03 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lNzs3-00021m-2W
	for lore@lore.pengutronix.de; Sun, 21 Mar 2021 16:20:03 +0100
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lNzs1-00021i-3A
	for lore@pengutronix.de; Sun, 21 Mar 2021 16:20:02 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=cYtnrX+yMCX9M8j64IW4ru5e96PRa2ve5EMqGqMRn88=; b=ZVkhiv7wJXqzpZUZgT5fD32mA
	qq5EJQiRJYPQJupN4h+dfX/IGWQY+o7SeOU8nc2LVLfKMt7he2/UIEA+rO79SVJMswJ+Hg0Q5MzzQ
	DBTRgu0HC7w5+Yu9Xr7vqX8Xj1+SEDbLHJxHHy4NmHbc7BcFWWCJK12QqNOTtcFqjEhChDXp43izs
	ojX0OPBB61eXwaxLRE4D2c7DHlmtnAzjQ4gp7o1CK005yidnA552c1dye9ydBiXXEBh8EWzYgChI4
	z0xAhTma5reH+FD83gyHIOQqnL1B5ts8dFP5RpoeWg7sQklePQnC8F7pIG1rSU50kx+vaeg/KxUzB
	8dxP1WO4w==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lNzqo-00A4KO-Ks; Sun, 21 Mar 2021 15:18:47 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lNzmE-00A41p-8A
 for barebox@lists.infradead.org; Sun, 21 Mar 2021 15:14:43 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lNzm2-00011N-3p; Sun, 21 Mar 2021 16:13:50 +0100
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lNzm0-0007w4-Sq; Sun, 21 Mar 2021 16:13:48 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Sun, 21 Mar 2021 16:13:27 +0100
Message-Id: <20210321151344.5810-5-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210321151344.5810-1-a.fatoum@pengutronix.de>
References: <20210321151344.5810-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210321_151420_886003_68335234 
X-CRM114-Status: UNSURE (   9.07  )
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
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>, rcz@pengutronix.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v3 04/21] ARM: aarch64: omit unused label in assembly
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The 1: is a left-over from before 5f04e5e03e94 ("ARM: aarch64: Fix
get_runtime_offset after relocation"). It's unused now, so drop it.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/lib64/runtime-offset.S | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/lib64/runtime-offset.S b/arch/arm/lib64/runtime-offset.S
index 5e5ab9a8d136..e2ff5d21036d 100644
--- a/arch/arm/lib64/runtime-offset.S
+++ b/arch/arm/lib64/runtime-offset.S
@@ -8,7 +8,7 @@
  * we are currently running at.
  */
 ENTRY(get_runtime_offset)
-1:	adr x0, _text
+	adr x0, _text
 	ldr x1, linkadr
 	subs x0, x0, x1
 	ret
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

