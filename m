Delivery-date: Tue, 27 Apr 2021 22:25:24 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lbUGq-0006Zg-OB
	for lore@lore.pengutronix.de; Tue, 27 Apr 2021 22:25:24 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lbUGo-0006GO-EZ
	for lore@pengutronix.de; Tue, 27 Apr 2021 22:25:24 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=pSR4QDacSpCjRwdDnqKORCMEvmW7Ta1COy1+oxGcw1M=; b=HzcJHmhhOHYF77PuPiG+24Kfo
	KC385RPj7zw3Uc8tL3yaMS0K/c8ukGyOq/x/tfSV1ZZjGsF6w6iPd61h9PDtWgPERZUInf0IPTIvd
	nIIs+OI7rsstbIG7IU/ojHTFbjE1xxC9ahJ9JFu9ePaROrZ4RwP6oCmenbsC5bedfYI+Ud6ry5vLm
	b5SbNKQh3CHQITPRQcFh3WJCQ9xm1V7W/X8y1OXnxLYpSyNz2NcmlNatTWwhMoS3vIHTh6vRsNBza
	BxWydBOB3XTzPkttForWvMZd6XlJS02DPLpLXt9x/RWib0kMwBwqZtxMt+i8tgzN2Alj2xJtksxTg
	YQA6grp5w==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lbUFq-002C66-Oq; Tue, 27 Apr 2021 20:24:23 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lbUFW-002Byz-GS
 for barebox@desiato.infradead.org; Tue, 27 Apr 2021 20:24:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-Type:Content-ID:Content-Description;
 bh=UutfELhvYp4kI3lLyAlun+Ex9y31We3HAZTG3IZkAIw=; b=pDw1kmrndjJ/1R37k/HNgc+Qru
 ilXKwg/RQo9q3BGjXi85zuWJM3Vu524u5humJRUY1DtbpSQ+K2GTCIiYxWLmmLzUGF5rcqz3KvgK5
 G8hgNHvni0ouuoM6ykDIcuTHHwlsFJnDOjGvanxDGY4hhXsxQ8dLehkWHZwAAAB8dhsJVKOjTVxL2
 rbfjbV7mmyL29ZD3Bzj3yqlPFuVdQEunMKwTJDeKxFMDLYM95m+nOWSEo/KOICn2JVepxJNntEf3d
 9XExxG/AynZxugoLMOfWdOGjj9gemASvIPimdHfgP3qa2iPvDnrgBCldV8ZraBZHLxX3J1Mc3j1HG
 FYjZ9Xlw==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lbUFU-00GyL4-4c
 for barebox@lists.infradead.org; Tue, 27 Apr 2021 20:24:01 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lbUEo-0005XX-Pn; Tue, 27 Apr 2021 22:23:18 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lbUEm-00016Y-0s; Tue, 27 Apr 2021 22:23:16 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Tue, 27 Apr 2021 22:23:02 +0200
Message-Id: <20210427202309.32077-5-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210427202309.32077-1-a.fatoum@pengutronix.de>
References: <20210427202309.32077-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210427_132400_194714_84B46D3B 
X-CRM114-Status: GOOD (  10.19  )
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
X-Spam-Status: No, score=-3.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 05/12] RISC-V: erizo: restrict to RV32I
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Erizo is a RISC-V 32-bit softcore. Because ARCH_RV32I can be selected
independently, a 64-bit barebox images could be built, but the image
produced would be useless. Avoid this by not showing the SOC_ERIZO
prompt when compiling for 64-bit.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/riscv/Kconfig.socs | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/riscv/Kconfig.socs b/arch/riscv/Kconfig.socs
index b0e38d8f2cca..093bca33806c 100644
--- a/arch/riscv/Kconfig.socs
+++ b/arch/riscv/Kconfig.socs
@@ -2,7 +2,7 @@ menu "SoC selection"
 
 config SOC_ERIZO
 	bool "Erizo SoC"
-	select ARCH_RV32I
+	depends on ARCH_RV32I
 	select HAS_DEBUG_LL
 	select HAS_NMON
 	select USE_COMPRESSED_DTB
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

