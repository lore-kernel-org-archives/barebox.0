Delivery-date: Sat, 03 Apr 2021 09:04:59 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lSaL5-00017m-3o
	for lore@lore.pengutronix.de; Sat, 03 Apr 2021 09:04:59 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lSaL4-00021I-DD
	for lore@pengutronix.de; Sat, 03 Apr 2021 09:04:58 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=DcKSMiKKw8B1Y2bJyEDnzDlZf3pQPBeVXgSoMIFciDM=; b=BgNUATam+oR3bO2aHQgO2FKBmv
	dyhhBr8h71GDBILyCVuA0QdNgUAEK3/M17y0VVk1juj1cAEPG/NvekI/ZVaAXw+cmBVMNO1MeDLph
	PzY4qnz+MsxxuYtPpGsDDRW8R1QyHsSTKpxSJW652XWgLlRpJaClGhW/JJggl77g2PRMruElEZqMn
	q6sKbT4yi9OD4mp3/bRFD36gu28WstSKGAnBklNhhdJhyye174DK76s1ykYLbsNjw6gvo4xkG5ppQ
	v6VQ/i1tHKgzNlhWMDB7H5e1hnskIspROR9AcqC0lnFhfMvBb3kKWuL6m1I/UQalZV3Lu9EFMfAyT
	c1FfSIcw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lSaK9-00ENwN-1H; Sat, 03 Apr 2021 07:04:01 +0000
Received: from relay11.mail.gandi.net ([217.70.178.231])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lSaK1-00ENum-Hm
 for barebox@lists.infradead.org; Sat, 03 Apr 2021 07:03:55 +0000
Received: from geraet.fritz.box (muedsl-82-207-194-145.citykom.de
 [82.207.194.145]) (Authenticated sender: ahmad@a3f.at)
 by relay11.mail.gandi.net (Postfix) with ESMTPSA id CC1F5100002;
 Sat,  3 Apr 2021 07:03:52 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <ahmad@a3f.at>
Date: Sat,  3 Apr 2021 09:03:46 +0200
Message-Id: <20210403070346.3643335-1-ahmad@a3f.at>
X-Mailer: git-send-email 2.30.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210403_080353_675386_40E73D13 
X-CRM114-Status: GOOD (  11.10  )
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
X-Spam-Status: No, score=-3.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] ARM: pbl: uncompress: add comment explaining order of
 operations
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

When the PBL runs from flash, it relocates to RAM prior to extracting
barebox proper. It does the sneaky thing of _not_ relocating the piggy
data though, so read from flash and uncompression may latter happen
at the same time.

For this to work, it's critical that the variables pointing at the piggy
data are evaluated before relocation. ARM does so and carefully uses
them to derive the address of the PBL size later on instead of
evaluating image_data_end again.

When I ported the same code for RISC-V use, this got lost. Add a comment
explaining the criticality of maintaining this order of operations.

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 arch/arm/cpu/uncompress.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/cpu/uncompress.c b/arch/arm/cpu/uncompress.c
index db0fe98e0d83..2250b8ccd375 100644
--- a/arch/arm/cpu/uncompress.c
+++ b/arch/arm/cpu/uncompress.c
@@ -52,6 +52,7 @@ void __noreturn barebox_pbl_start(unsigned long membase, unsigned long memsize,
 	void *pg_start, *pg_end;
 	unsigned long pc = get_pc();
 
+	/* piggy data is not relocated, so determine the bounds now */
 	pg_start = input_data + global_variable_offset();
 	pg_end = input_data_end + global_variable_offset();
 
-- 
2.30.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

