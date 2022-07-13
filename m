Delivery-date: Wed, 13 Jul 2022 11:59:05 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oBZ97-005uX2-Nl
	for lore@lore.pengutronix.de; Wed, 13 Jul 2022 11:59:05 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oBZ95-0000AP-R2
	for lore@pengutronix.de; Wed, 13 Jul 2022 11:59:04 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=HIcse+uSO//Vz5uViMtTaaq5i7NerC4kOCL5TtZ+2NQ=; b=nn6Aav0AvJa2kv3OUciidnJmyW
	T932ifL5jldoKOM6BX+D+f00R5xPocdSOCFLgBxU4Z4GcbKzKWfooClep7SoVvLEUT97rEw7MYD9C
	kXsnCuVh9sbLfLSrSMTqsJu6iZ67Wm9sYDX578QBApUSDP9eMibG/fmKYvpwZYFUCqzKamA8wW8E1
	jAvp5UfMwst4sNXIxNRC6/FY/nrYu4CF8ht8x/9RvW42+etkTq9HjSl0ZJgKgc6HjcfTfcebWNl91
	Xo0buLjQI/gUzJAl3uy89B16y5TehyjsQ9MNkB4iZzsFwnC7t8xf5T4V12YjVwQimgmPjSMTMXJeX
	UidBtxtg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oBZ7k-002UsF-FM; Wed, 13 Jul 2022 09:57:40 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oBZ7f-002UqA-I2
	for barebox@lists.infradead.org; Wed, 13 Jul 2022 09:57:36 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1oBZ7d-0008DW-HJ; Wed, 13 Jul 2022 11:57:33 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oBZ7c-000gTa-Q6; Wed, 13 Jul 2022 11:57:32 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oBZ7b-007spl-PD; Wed, 13 Jul 2022 11:57:31 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 13 Jul 2022 11:57:27 +0200
Message-Id: <20220713095730.1878941-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220713095730.1878941-1-a.fatoum@pengutronix.de>
References: <20220713095730.1878941-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220713_025735_639946_85404507 
X-CRM114-Status: UNSURE (   8.52  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v2 3/6] pbl: remove redundant select UNCOMRPESS
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

LZO_DECOMPRESS as well as all other decompress options already select
UNCOMPRESS, so selecting it again is unnecessary.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v1 -> v2:
  - new patch
---
 pbl/Kconfig | 1 -
 1 file changed, 1 deletion(-)

diff --git a/pbl/Kconfig b/pbl/Kconfig
index ec1886073e42..4dfa9553f786 100644
--- a/pbl/Kconfig
+++ b/pbl/Kconfig
@@ -31,7 +31,6 @@ if PBL_IMAGE
 config USE_COMPRESSED_DTB
 	bool
 	depends on ARM || RISCV
-	select UNCOMPRESS
 	select LZO_DECOMPRESS
 
 config PBL_RELOCATABLE
-- 
2.30.2



