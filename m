Delivery-date: Fri, 14 Apr 2023 16:13:22 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pnKAz-003NSy-MC
	for lore@lore.pengutronix.de; Fri, 14 Apr 2023 16:13:22 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pnKAz-0005UK-HS
	for lore@pengutronix.de; Fri, 14 Apr 2023 16:13:22 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=Xde/s+KWW946Y+rycV1dyfuYWWp5frDiw+P/Xk/r98w=; b=sdxIwxxjppJdUkvNa/Obo3LPui
	2PKeEbPk0SEsM2jgkFnGwRkrqLxOJr8AwHiMuWVSk/mErYcq5GGzsPh7OCRvVQHFPh6ZuxUc8tQiT
	hymoLaEKwbTcmbBFdv2aIgq+GnAaC1oyeJy7/mn3xCgmC+wBPy409lCVnhJ204eF304xnp3xJOWZu
	AbSLNiRV0ANljvsUVl9MbDX+RVUACvrkgLoTGGj002MrRT52EzWFNOkvFgg7XQ/qLfAMuVViPRaO5
	UB3XbOYHMVPU92A0518yVPC2ePC368/LioCX5UuQ23T166YgtlN+4Q0jVcXo7uv7IWItPDhMywWu5
	b5wqW5Lg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pnK9k-009may-1g;
	Fri, 14 Apr 2023 14:12:04 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pnK9g-009mZV-1b
	for barebox@lists.infradead.org;
	Fri, 14 Apr 2023 14:12:01 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1pnK9c-0005Hx-D6; Fri, 14 Apr 2023 16:11:56 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pnK9b-00BDiP-OD; Fri, 14 Apr 2023 16:11:55 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pnK9a-00CYpT-Rj; Fri, 14 Apr 2023 16:11:54 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 14 Apr 2023 16:11:54 +0200
Message-Id: <20230414141154.2988598-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230414_071200_568999_F8B4A396 
X-CRM114-Status: UNSURE (   8.74  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] fixup! scripts: gen-dtb-s: reference OF IMD entries automatically
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

While the reference is just there, so linker garbage collection doesn't
remove it, it's still a reference and it will be relocated.

This means it must be aligned, otherwise we will crash doing an unaligned
access during relocation if device tree size isn't evenly divisible by
pointer length...

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 scripts/gen-dtb-s | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/scripts/gen-dtb-s b/scripts/gen-dtb-s
index 6a624e0bd5d0..f6fa1525933e 100755
--- a/scripts/gen-dtb-s
+++ b/scripts/gen-dtb-s
@@ -51,6 +51,7 @@ echo ".incbin \"$dtb\""
 echo "__dtb_${name}_end:"
 echo ".global __dtb_${name}_end"
 if [ "$imd" = "y" ]; then
+	echo ".balign ASM_SZPTR"
 	echo "ASM_PTR __barebox_imd_OF_${name}"
 fi
 echo ".balign STRUCT_ALIGNMENT"
@@ -70,6 +71,7 @@ echo ".incbin \"$dtb.z\""
 echo "__dtb_z_${name}_end:"
 echo ".global __dtb_z_${name}_end"
 if [ "$imd" = "y" ]; then
+	echo ".balign ASM_SZPTR"
 	echo "ASM_PTR __barebox_imd_OF_${name}"
 fi
 echo ".balign STRUCT_ALIGNMENT"
-- 
2.39.2



