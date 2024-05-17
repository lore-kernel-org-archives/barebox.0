Delivery-date: Fri, 17 May 2024 10:00:31 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s7sVx-0015gj-0E
	for lore@lore.pengutronix.de;
	Fri, 17 May 2024 10:00:30 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s7sVu-0002PM-PI
	for lore@pengutronix.de; Fri, 17 May 2024 10:00:29 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=nMwyUeuXec6zaH/Iu/SHx7q8dmQwITMHQ3gwlAocAj4=; b=cstOhD8/hzdVZyKVMm3Pduphp6
	IVEW0s0Nf4cEv2Q+Bl3oAMthNf58sRNRnkOiDyUmLv2ekK0q3ly7BmKhv8Mx/TSy2knaro4+VLoiW
	7TOOPCsyxAE2OdaBIctUHmy0Gd8d/unIj51K2Vc7+A58iNtPSp0sZ/wA9oRNx/0GxKDhqN82/pSN1
	rFPKif13fdh2CB37EgIwGeMSUnnLJl+4RIKRRA+stvzS4aRM6t+PRMH8XbGXLLjDZuSi6NqFMjXFc
	Hh8Ai9wuXurINzF3XAixk7W/qyyHJMv/1yYLb9HNtHQ1YtApJbLyYuDLaqkl/Yioh8dYEPXDxUpu9
	AaMj9gbA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s7sV8-000000079CN-1wu9;
	Fri, 17 May 2024 07:59:38 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s7sV4-000000079BA-3D2k
	for barebox@bombadil.infradead.org;
	Fri, 17 May 2024 07:59:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
	Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
	Content-Description:In-Reply-To:References;
	bh=nMwyUeuXec6zaH/Iu/SHx7q8dmQwITMHQ3gwlAocAj4=; b=p+Vh4m3eYKsR13fEBjwOslQMxH
	RXBNX6AlGUYju9ux7xlDMI2gdhxB6urEUAu8bWYH0GNBqbtLx8IE+Q8mZi+hYLPKNGPS+4TtKlUUv
	C1pbDXjUcW7pSDC3nwaiMWiIE9d7PFeOIQpuycZWhPNYdH0GyhLpNT+jRTg9eMMr+5HK6PAwDu1Nb
	HYu5ycM53Xi0wTkrxpY9iJKv3MK12r1D4HSgTU0PxAoLLojOfGdVls3mSzAqtdbRubOFcV/9RFkDt
	5WeezoV3/rB0/j7b7lxl9Ij6qFVttCRyqYiV/GurAoNKGYHf7VRkNjo/Yc2SDg99Obj0OeF3GxYnw
	AiL1PXYg==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by casper.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s7sUu-0000000CkGN-42nB
	for barebox@lists.infradead.org;
	Fri, 17 May 2024 07:59:29 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1s7sKb-0007dx-41; Fri, 17 May 2024 09:48:45 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1s7sKa-001q17-KD; Fri, 17 May 2024 09:48:44 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1s7sKa-003Drn-1k;
	Fri, 17 May 2024 09:48:44 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 17 May 2024 09:48:43 +0200
Message-Id: <20240517074843.768275-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240517_085925_033117_3CC3D18C 
X-CRM114-Status: UNSURE (   8.34  )
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] pbl: compile PBL decompression code optionally
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

There's no point in compiling PBL decompression code when
CONFIG_HAVE_IMAGE_COMPRESSION is not selected, so reflect that in Kbuild
to save some build time.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 pbl/Makefile | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/pbl/Makefile b/pbl/Makefile
index 79837c56114a..f66391be7b28 100644
--- a/pbl/Makefile
+++ b/pbl/Makefile
@@ -5,7 +5,7 @@
 #
 pbl-y += misc.o
 pbl-y += string.o
-pbl-y += decomp.o
+pbl-$(CONFIG_HAVE_IMAGE_COMPRESSION) += decomp.o
 pbl-$(CONFIG_LIBFDT) += fdt.o
 pbl-$(CONFIG_PBL_CONSOLE) += console.o
 obj-pbl-y += handoff-data.o
-- 
2.39.2



