Delivery-date: Wed, 31 May 2023 08:28:34 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q4FK0-003s63-0e
	for lore@lore.pengutronix.de; Wed, 31 May 2023 08:28:34 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q4FJx-0006sG-Cp
	for lore@pengutronix.de; Wed, 31 May 2023 08:28:33 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ISvwjsmw12YEPktbDaxJPzkPOex4BliAptiR6lsZi2s=; b=0xWygEdwIct2OYKs3zL2Vnobbq
	blzmqAogi0OGri1tF5OH03PDgtKgt9x8o/eThuSxBZcSA2PIOvTU+10IxvMruwx6Qs/5hxtsQnaFo
	aok/0mfj4Ufx1vnj966LI2yHOM1EQoCqpbVYuGnmgrCaqczj5l0shsW0eIu0u7RFFF0CHlcA7Kki4
	SEh36LDgh3gLf+URRFoDqvWN4iJgaNj3DTdfZkhp1BSNIGxc5MvpRTxDLIyIjJQhruI5QC6Q5abbj
	65laaOTR83eQW9R7EQJsi/Oh2iqy7qEblIAsbtR53KjZf16EIytK2k/arligR5RhDoPrxf+eD1eOr
	lZx6O4kw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q4FIj-00GHeB-0t;
	Wed, 31 May 2023 06:27:17 +0000
Received: from relay1-d.mail.gandi.net ([2001:4b98:dc4:8::221])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q4FIf-00GHcd-2i
	for barebox@lists.infradead.org;
	Wed, 31 May 2023 06:27:15 +0000
X-GND-Sasl: ahmad@a3f.at
X-GND-Sasl: ahmad@a3f.at
Received: by mail.gandi.net (Postfix) with ESMTPSA id 3E33824000B;
	Wed, 31 May 2023 06:27:09 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <ahmad@a3f.at>
Date: Wed, 31 May 2023 08:27:03 +0200
Message-Id: <20230531062703.670521-3-ahmad@a3f.at>
X-Mailer: git-send-email 2.38.5
In-Reply-To: <20230531062703.670521-1-ahmad@a3f.at>
References: <20230531062703.670521-1-ahmad@a3f.at>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230530_232714_088340_2116F40E 
X-CRM114-Status: UNSURE (   8.86  )
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
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH master 3/3] scripts: omap3-usb-loader: fix heap overflow
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Newer GCC versions correctly warn that the buffer allocated by realloc
is too small. Correct the size.

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 scripts/omap3-usb-loader.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/scripts/omap3-usb-loader.c b/scripts/omap3-usb-loader.c
index a8d626c32f23..31a03be8e7f4 100644
--- a/scripts/omap3-usb-loader.c
+++ b/scripts/omap3-usb-loader.c
@@ -784,7 +784,7 @@ int main(int argc, char *argv[])
 				file.addr = OMAP_BASE_ADDRESS;
 
 				/* commit the file object with the processor specified base address */
-				args->files = realloc(args->files, filecount);
+				args->files = realloc(args->files, filecount * sizeof(*args->files));
 				args->numfiles = filecount;
 				args->files[filecount - 1] = malloc(sizeof (file));
 				memcpy(args->files[filecount - 1], &file, sizeof (file));
-- 
2.38.5



