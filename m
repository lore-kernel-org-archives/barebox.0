Delivery-date: Wed, 10 Jun 2026 15:00:45 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wXIY1-004LKX-31
	for lore@lore.pengutronix.de;
	Wed, 10 Jun 2026 15:00:45 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wXIY1-0005PR-Ac
	for lore@pengutronix.de; Wed, 10 Jun 2026 15:00:45 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:Message-Id:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=oHG/s3qKtGAUl6rNo9lhHmrt++iPYMFTg/abWJaHN30=; b=3oLW9EJS1oupcgW4OK31kPAlRp
	Kcf0OwtNJ37fQcoObdsoGUP5IjMBuo2c4E6eCD5FEcCdiolde/EQYez8r9M+M1U1BxH7OH1xP0fnp
	eX4fZgQLIAUbygu748KeuC1Y1Mp0uKEPkJi2R8vr+iCmaDe5JjNtY+2vcent72kaYJQkD6Vtlg38q
	gn/SaInEFgvFHiZ5uZ03JtrDdmDhPVTUqLli9kJAh1W4Jf+X4b7CaPhzpbJSFVXuJWJIbJSj6HFTC
	wAE2CHM6KxITGD8rCbPAfg3sw6CffUDTzwDsgFNLG0mBXW+BHc0JyjsTvsRF0/f8MxL33PeIIHoTa
	blBhMTug==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXIWv-00000007gll-3JPV;
	Wed, 10 Jun 2026 12:59:37 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXIWs-00000007gkc-3RVF
	for barebox@lists.infradead.org;
	Wed, 10 Jun 2026 12:59:36 +0000
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.tretter@pengutronix.de>)
	id 1wXIWq-0005Ch-8R; Wed, 10 Jun 2026 14:59:32 +0200
From: Michael Tretter <m.tretter@pengutronix.de>
Date: Wed, 10 Jun 2026 14:59:27 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260610-documentation-devboot-v1-1-a6fc791dddb8@pengutronix.de>
X-B4-Tracking: v=1; b=H4sIAK9fKWoC/x2MQQqAIBAAvyJ7TlCJir4SHWxdaw9pqEUQ/T3pO
 DAzD2RKTBlG8UCiizPHUEE3AnCzYSXJrjIYZTrVaSVdxHOnUGyppnR0LTEW2Q4eEYd+aZ2H2h6
 JPN//d5rf9wMeW1VjZwAAAA==
X-Change-ID: 20260610-documentation-devboot-48fccc87b4df
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 Ahmad Fatoum <a.fatoum@barebox.org>, BAREBOX <barebox@lists.infradead.org>
Cc: Michael Tretter <m.tretter@pengutronix.de>
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260610_055934_865326_6CFD34C3 
X-CRM114-Status: GOOD (  10.38  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] Documentation: user: devboot: fix kernel target
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The Linux kernel target for building the CPIO archive is called
modules-cpio-pkg.

Fix the documentation to make it easier for the user.

Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
---
 Documentation/user/devboot.rst | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/user/devboot.rst b/Documentation/user/devboot.rst
index 550ab9120576..79d49764d84c 100644
--- a/Documentation/user/devboot.rst
+++ b/Documentation/user/devboot.rst
@@ -89,7 +89,7 @@ Override rules
 
   .. tip::
 
-     The Linux kernel ``make cpio-modules-pkg`` target builds a CPIO archive
+     The Linux kernel ``make modules-cpio-pkg`` target builds a CPIO archive
      containing all kernel modules. This is useful for supplementing an existing
      initramfs with modules without modifying the root filesystem.
      Combined with initrd concatenation, a devboot script

---
base-commit: 9f66cf06045bba4980daa889ec562866697bce2d
change-id: 20260610-documentation-devboot-48fccc87b4df

Best regards,
-- 
Michael Tretter <m.tretter@pengutronix.de>



