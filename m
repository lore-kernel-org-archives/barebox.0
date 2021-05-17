Delivery-date: Mon, 17 May 2021 20:56:28 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1liiPk-0005Uv-FC
	for lore@lore.pengutronix.de; Mon, 17 May 2021 20:56:28 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1liiPi-0004L7-7a
	for lore@pengutronix.de; Mon, 17 May 2021 20:56:28 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=+0qq6B4gGlphGvKnplVibmAmWJoJtJ/mnq2sUEQ+dwQ=; b=hzJa8yQ3gn2rl0TQR+clSx7Wp
	tvMjtM0GpMWYtegV98/6IPhhbwvzWVUnkQhsum2jpn/R2ydfIG44NFrCSec+L38gLYGgQODeg3ajZ
	QEZoKzgN++JYE8eWI5LnqLzhn22rDCqRtdyFUwcThRGt0sQ85QVzur+ZWXi5ktXI3XNddFCtuETcc
	BuCLn+0fqy/Cpw1Cy7LvwgoBoFSl/tnlfq4mDRpxJxZ/ztFecw5l/sjPxFZR4rwS+WkC2pzmm/Tv5
	jEvYmh9jNGbEcGVUbMlHlBJA+8VGq1Exc7be1LbFIcIhuYnxDA+72tlvrM3xfQFKoWgsNejRLKZiz
	82u7xvJXQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1liiOl-00Ftkf-D0; Mon, 17 May 2021 18:55:27 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1liiO0-00FtVY-9b
 for barebox@desiato.infradead.org; Mon, 17 May 2021 18:54:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-Type:Content-ID:Content-Description;
 bh=ik0Vd2TIetO7denPNotWy4ACAqM4JLK5OkeoIiB38xU=; b=4xlvQwAzwAcSCfPs6mW3SLJAvb
 wSNBp+c5XVm2nAklfBx0ifh+le/poUZO2lLk2oZqG3e8NCw9BGMgkjHT8Xost4hr9V7nfuTR53M/Q
 UhaXhLBB+tRWY71kWajqVeK+7sUxj8izr6Kp5TFlisfqu6JxzxM4MrH/WImvRptZT6bLEqcOtrsWw
 sR4a/W+dMFY0R7OimtqUn2Nq+iCuhFzbRA7yDzW0tTnR3MnUMCX0PSWRuN7Bi/YrPQqUfbrN3ruJc
 PknMnRF4GPvzkuUuRfj7v9QpLMGmH4OISLsRFQ3Jx/MiqmW3DuC6MhQwJMnI0B1J/KithmLuxBOt9
 uM4mwhTQ==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1liiNw-00E4Vf-TT
 for barebox@lists.infradead.org; Mon, 17 May 2021 18:54:39 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1liiNn-0003PI-LN; Mon, 17 May 2021 20:54:27 +0200
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1liiNm-0002yM-Ev; Mon, 17 May 2021 20:54:26 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Mon, 17 May 2021 20:54:21 +0200
Message-Id: <20210517185424.32145-13-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210517185424.32145-1-s.hauer@pengutronix.de>
References: <20210517185424.32145-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210517_115436_979536_1477D98E 
X-CRM114-Status: GOOD (  11.54  )
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
X-Spam-Status: No, score=-3.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 12/15] ARM: module: Remove always false check
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

rel->r_offset < 0 is always false because r_offset is unsigned. Remove
check.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/lib32/module.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/lib32/module.c b/arch/arm/lib32/module.c
index 5073675180..7214e3c73c 100644
--- a/arch/arm/lib32/module.c
+++ b/arch/arm/lib32/module.c
@@ -38,7 +38,7 @@ apply_relocate(Elf32_Shdr *sechdrs, const char *strtab, unsigned int symindex,
 
 		sym = ((Elf32_Sym *)symsec->sh_addr) + offset;
 
-		if (rel->r_offset < 0 || rel->r_offset > dstsec->sh_size - sizeof(u32)) {
+		if (rel->r_offset > dstsec->sh_size - sizeof(u32)) {
 			printf("%s: out of bounds relocation, "
 				"section %u reloc %u offset %d size %d\n",
 				module->name, relindex, i, rel->r_offset,
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

