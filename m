Delivery-date: Mon, 17 May 2021 20:56:14 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1liiPW-0005U5-MH
	for lore@lore.pengutronix.de; Mon, 17 May 2021 20:56:14 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1liiPV-00049F-Tw
	for lore@pengutronix.de; Mon, 17 May 2021 20:56:14 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=+xAyykDWbc5q/CWwGnClpcWbXCt4Fc5jo4rulnoEzxc=; b=VUoRoKIdPsVf4XSGbOaLJiU2J
	UM8ttVETsgn041GP3YndD+lPze3l0tXNbteYJEgU6QRZ08EqJy/HW4VW5DTOBv/e3x+Cic9BLLafD
	/AZUnmWGbQG3be64e8fsXdEwruixE9OOEpFsSS5Pa2+zkPfl+CerRwgal3br3BB2stKJcFKAHqZIW
	X/6hmFWRubZvAw9vUqtJbohNK0HD1DVBycpeyaUtPW/40jd961l4/X+lUnTuJ27UMDKY+4qa5hL5y
	cneD+m47Thrj00DHrSzvOmYVUybMoGiH7KQ5R/ZT1BJEEmp5oSMsEONxdksM0vUQvPSLZYso+0p0n
	0pvcWNkTg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1liiOd-00FthJ-GC; Mon, 17 May 2021 18:55:19 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1liiNz-00FtVS-3q
 for barebox@desiato.infradead.org; Mon, 17 May 2021 18:54:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-Type:Content-ID:Content-Description;
 bh=coQg2GDhyc3I8HqapqTtk+wrqbCWp4/e37jSl55ZSaE=; b=1lQxQjeBU9vQlRjqTmebI0esZv
 3WqviMfuovuUVb0LdPmD5eCsgAZ/oWyduZYck9P4+OjGku0D9gf740x2eOTt8H9JPgwpoBL22xqpw
 ZmbNuxb/wTrWMmzauI66Ln/w5o19OOqC/12vKoSZA1VMNAV/FCK+PaB14O1K+SSexe6I0oLXttNCp
 sd+2ZZVUIbDT0Hk3FTJk5QVLfzwCQieAwkIeQ9U4MjNIiw8yxU0yHwgdeYxv4rPEeZuJ9oPownE7U
 3neQy6uTOFkDNUMjQgmVxcDNdjkRAA1XxreitGtrOe4ERcnQ0nv/TMVcyWCZOGXSffCi+WHFjoMEP
 h31W1nlw==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1liiNw-00E4VZ-Mk
 for barebox@lists.infradead.org; Mon, 17 May 2021 18:54:37 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1liiNn-0003P8-Bk; Mon, 17 May 2021 20:54:27 +0200
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1liiNm-0002xG-Ae; Mon, 17 May 2021 20:54:26 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Mon, 17 May 2021 20:54:11 +0200
Message-Id: <20210517185424.32145-3-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210517185424.32145-1-s.hauer@pengutronix.de>
References: <20210517185424.32145-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210517_115436_760948_513FB0E6 
X-CRM114-Status: GOOD (  11.46  )
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
Subject: [PATCH 02/15] ARM: socfpga: Fix timeout tests
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

A timeout is never detected as timeout is tested for being smaller than
0 which never happens for an unsigned variable. Change to a signed type.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-socfpga/arria10-xload.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/mach-socfpga/arria10-xload.c b/arch/arm/mach-socfpga/arria10-xload.c
index 6f137e300e..e52fd1ed87 100644
--- a/arch/arm/mach-socfpga/arria10-xload.c
+++ b/arch/arm/mach-socfpga/arria10-xload.c
@@ -136,7 +136,7 @@ static int a10_fpga_init(void *buf)
 {
 	uint32_t stat, mask;
 	uint32_t val;
-	uint32_t timeout;
+	int timeout;
 
 	val = CFGWDTH_32 << A10_FPGAMGR_IMGCFG_CTL_02_CFGWIDTH_SHIFT;
 	a10_update_bits(A10_FPGAMGR_IMGCFG_CTL_02_OFST,
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

