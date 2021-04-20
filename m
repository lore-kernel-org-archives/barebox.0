Delivery-date: Tue, 20 Apr 2021 10:06:37 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lYlP3-0008EZ-MA
	for lore@lore.pengutronix.de; Tue, 20 Apr 2021 10:06:37 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lYlP2-0004Gh-UR
	for lore@pengutronix.de; Tue, 20 Apr 2021 10:06:37 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=JQLZn9dLMqePGv2RZ3HXTVFadASg3Msg2bCy2Xu/aSo=; b=W5rvfNNjtREyeVNqZ9xBoS/3z
	2eDiP0DCJga8rHxghcs5YmjfGbCwtdz9widBawQDJs0xL1/Ug1lQILdj2nBjIQawS5pfCxQdRFn/P
	n+KPmfLkDOd5d6KUjZdXoPBDT5PN5dvzx5qu2xVEa47+tACqPILBWbRycKY/2LC7MDS98S/DpZa8r
	3GacQ2oc5fBYtXAlXeyOEF6NTjlBuHpqdr08ftK7tCzFISkVKjG00E+eQvtx/ivKVCJ4bBW0a7z6v
	IusNEdqrCJv+KL5yUp0Yjb7RLCaVhIq2itUAm3CwRWaxcVXjSrb6fQ6aySsAfz7lQsVXOvuwj98sM
	TLd3RKWMA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lYlNm-00BWuM-K1; Tue, 20 Apr 2021 08:05:18 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lYlNh-00BWty-0h
 for barebox@desiato.infradead.org; Tue, 20 Apr 2021 08:05:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-Type:Content-ID:Content-Description;
 bh=EO8wHe8wwlw284x+oGdu8N0KdlHr0y03Sz8xW+hI0aM=; b=XvQjZGEUeyTxzPy2JMk/5i50Vi
 Y0kNg0uE4PmIraqk7e0GrIRZUsOfGqdTvL5p/pdf5aTTbb/Koj0wwrmINlUR7TRVzzMJOsVfBGvEx
 4PUa0yuyiUCbmAIvm/pieJ/RJX4M0zwNOkeNVcUFWLHFAosB7S0ieEa3B1S5LtFYemUgYfdAZZrT/
 caQp1tRq144Iji6KxgeGj35MxSSNZWHk4dlTutJVosFGPfKsAb5Fryzo55Z5JnPoxmY1hK1adZKsM
 7p1FzFINHvON42NTZzvUKI28q6Vpncp+9lNTNg+i6UttrM6Mh3u97LfRtR2G3eAvZ+JqJhkAAUbcz
 6XdTDRLw==;
Received: from magratgarlick.emantor.de ([78.46.208.201])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lYlNe-00BtzJ-D1
 for barebox@lists.infradead.org; Tue, 20 Apr 2021 08:05:11 +0000
Received: by magratgarlick.emantor.de (Postfix, from userid 114)
 id 0C0DD116A5F; Tue, 20 Apr 2021 09:57:27 +0200 (CEST)
Received: from localhost (unknown [IPv6:2001:9e8:79:8c02:c0d3:dbff:fefe:ff70])
 by magratgarlick.emantor.de (Postfix) with ESMTPSA id 231C41164FD;
 Tue, 20 Apr 2021 09:57:19 +0200 (CEST)
From: Rouven Czerwinski <r.czerwinski@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Rouven Czerwinski <r.czerwinski@pengutronix.de>
Date: Tue, 20 Apr 2021 09:57:01 +0200
Message-Id: <20210420075700.246124-8-r.czerwinski@pengutronix.de>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210420075700.246124-1-r.czerwinski@pengutronix.de>
References: <20210420075700.246124-1-r.czerwinski@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210420_010510_608417_CF6B3EA6 
X-CRM114-Status: UNSURE (   8.61  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 8/8] PBL: enable LIBFDT for OP-TEE early loading
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

This allows the OP-TEE early loaded board to add the reserved memory
entries for the correct MMU setup. This is done by including pbl/fdt.h
and using fdt_fill_reserve_mem().

Signed-off-by: Rouven Czerwinski <r.czerwinski@pengutronix.de>
---
 common/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/common/Kconfig b/common/Kconfig
index bddf802d3b..469cc3e06a 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -1088,6 +1088,7 @@ config BOOTM_OPTEE
 
 config PBL_OPTEE
 	bool "Enable OP-TEE early start"
+	select LIBFDT
 	depends on ARM
 	depends on !THUMB2_BAREBOX
 	help
-- 
2.31.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

