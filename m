Delivery-date: Fri, 17 Feb 2023 21:38:59 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pT7VT-00AOTd-8t
	for lore@lore.pengutronix.de; Fri, 17 Feb 2023 21:38:59 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pT7VR-0000OO-Sr
	for lore@pengutronix.de; Fri, 17 Feb 2023 21:38:58 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=bdM9AyPbsXxCVi9vyQt0z/8FivIikytbJwFzXHuXroo=; b=UgK/guJ8G3hF/K
	uwG4J5wbiDI2fzzzdLXgh6kK3/2mJrerCP/fH6mA7aINXD29X8CwjiIR4GM7HvDgY1ohQGm6vgYsA
	XlIbEMWcLUXfIfRuCvpLFo91gvX9xkppMIB1aWFdPW3oadDBZeiPgMSwNEW8Yjow94wES0Xs5geyZ
	+MHrLKcMJ/vmjpODZimnsxxDzYzeaqxS4fIRHk7/6MFn+NGRg54c6R2JpgJlI+ERXdS0C9jDJDgWa
	WynfqZPFOTO3ZRwp4P7HiYdd5k+IxFlIZ2uNvfWzslz6m+/MfvKGauzdZaxDfwVPLXYkrBfdqwRsv
	U02h2fZUi0AydqKsoyPQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pT7UF-00FeLF-R5; Fri, 17 Feb 2023 20:37:43 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pT7UA-00FeKC-Fl
	for barebox@lists.infradead.org; Fri, 17 Feb 2023 20:37:39 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1pT7U8-0000J6-Ct; Fri, 17 Feb 2023 21:37:36 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pT7U6-005fDN-AS; Fri, 17 Feb 2023 21:37:35 +0100
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pT7U6-00CHeT-Qt; Fri, 17 Feb 2023 21:37:34 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Fri, 17 Feb 2023 21:37:32 +0100
Message-Id: <20230217203733.2926811-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230217_123738_556262_05652D75 
X-CRM114-Status: UNSURE (   7.94  )
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
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/2] gen-dtb-s: reference OF IMD entries automatically
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

We currently require IMD_OF_USED to get the DT compatible into the
barebox image data meta section. As the PBL is already referencing the
DT to pass it along to barebox proper, let's add a reference from the DT
to the image data section to make IMD_OF_USED unnecessary.

Suggested-by: Antony Pavlov <antonynpavlov@gmail.com>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 scripts/gen-dtb-s | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/scripts/gen-dtb-s b/scripts/gen-dtb-s
index c5c46a4d8675..9cc2e7a72cc2 100755
--- a/scripts/gen-dtb-s
+++ b/scripts/gen-dtb-s
@@ -49,6 +49,9 @@ echo "__dtb_${name}_start:"
 echo ".incbin \"$dtb\""
 echo "__dtb_${name}_end:"
 echo ".global __dtb_${name}_end"
+if [ "$imd" = "y" ]; then
+	echo ".word __barebox_imd_OF_${name}"
+fi
 echo ".balign STRUCT_ALIGNMENT"
 
 compressed=$(${CONFIG_SHELL} "${srctree}/scripts/file-size.sh" $dtb.z)
@@ -66,4 +69,7 @@ echo ".incbin \"$dtb.z\""
 echo "__dtb_z_${name}_end:"
 echo ".global __dtb_z_${name}_end"
 echo ".balign STRUCT_ALIGNMENT"
+if [ "$imd" = "y" ]; then
+	echo ".word __barebox_imd_OF_${name}"
+fi
 echo "#endif"
-- 
2.30.2



