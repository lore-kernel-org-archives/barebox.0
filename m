Delivery-date: Tue, 14 Oct 2025 13:04:05 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v8cp3-007iK6-00
	for lore@lore.pengutronix.de;
	Tue, 14 Oct 2025 13:04:05 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v8cp1-0003UU-L5
	for lore@pengutronix.de; Tue, 14 Oct 2025 13:04:04 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=6Fzi3oeJU9ww90C4FhEV5SntVux2LARgjEsnSe+MNaI=; b=cqhGqwobudw+kE5iyC5n8W/gFC
	LN3jllzOOLQutb0RiNRzF1GTqNkOGLvSPVGhzZpiXMNluHT+VzAN2lANbYFoWofKPMjmdECQVLif2
	kgii9WT4Tl/FzqmMo62r/pbmA2Yq62acUozsvsuJW3Nkzrq3DWM5RLrxT2BqYvHfCg8eT7gYBe8Lw
	szX8gMrMyx4Bg//rFdJIy8oVQgb2W/SDH16SHEcTwy5JzH/hi8ZMIY5fle7/rVXc1RZ/0ym2pMhjZ
	o2L9D9A7VcwskW0Sexsv7/tMrTUM74O7t80n3unHZxRBXIOlqdTFJjyNQXYRECY63/iOWerGwOjAl
	b8IGYI5Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8coP-0000000G0co-0XKy;
	Tue, 14 Oct 2025 11:03:25 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8coO-0000000G0bK-13K1
	for barebox@bombadil.infradead.org;
	Tue, 14 Oct 2025 11:03:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=6Fzi3oeJU9ww90C4FhEV5SntVux2LARgjEsnSe+MNaI=; b=WHNMjS53cYGJNdd8Pk8LI8s4MF
	1G14xPR1BTWDILQRnuRNYhPvFJZogFSjocUmh7XP2bIFrNxg+VkBk9GXKbFJbdktNr3yBe0XSLy2K
	RJZl/QZhkaGAz0/KWSCtGKu1kX8YgWOUchit0+wo6zDKI20RgpzGnzoxIcqklVsRcntm6QAxPtCkz
	kiWHByaJVXC1VrXNYe14FolGqWchGOoO+U6+OoExRMf6rWLksGmvZkm42Cp5QXXLlX31/Og5fp+fG
	2Vgny3qpfjpVLcfxYjRPrP/ez7XoZ40ANwRUORj+t3PvKiiH8zDpOwSgNh44Va6AMaJ3SWZ3CqiNx
	gbYVLh6g==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8co8-000000056kq-0nnF
	for barebox@lists.infradead.org;
	Tue, 14 Oct 2025 11:03:21 +0000
Received: from dude04.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::ac])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <jre@pengutronix.de>)
	id 1v8co5-0002Tj-Gp; Tue, 14 Oct 2025 13:03:05 +0200
From: Jonas Rebmann <jre@pengutronix.de>
Date: Tue, 14 Oct 2025 13:03:02 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251014-tlv-signature-v1-11-7a8aaf95081c@pengutronix.de>
References: <20251014-tlv-signature-v1-0-7a8aaf95081c@pengutronix.de>
In-Reply-To: <20251014-tlv-signature-v1-0-7a8aaf95081c@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Jonas Rebmann <jre@pengutronix.de>
X-Mailer: b4 0.15-dev-7abec
X-Developer-Signature: v=1; a=openpgp-sha256; l=1385; i=jre@pengutronix.de;
 h=from:subject:message-id; bh=m7+tTVTJbZJef2Pue6TjxusVJcLGJxWYEbBWPwfBA7o=;
 b=owGbwMvMwCV2ZcYT3onnbjcwnlZLYsh4p/tMYrPKNKejccr3Uz9Nffn4fXfol3cnG29oXdjxw
 snx7/resx2lLAxiXAyyYoossWpyCkLG/tfNKu1iYeawMoEMYeDiFICJ5Jcw/C+bkCtwaLLbpM/z
 lA/KfFDLXsn//NDT13Zrz8wwbbypPked4X/CSR9rXoXiT/qclX4FXfsvPqk+w7rvwOJFwR8vNHK
 6sXMCAA==
X-Developer-Key: i=jre@pengutronix.de; a=openpgp;
 fpr=0B7B750D5D3CD21B3B130DE8B61515E135CD49B5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251014_120308_561695_B0087D92 
X-CRM114-Status: UNSURE (   8.59  )
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
X-Spam-Status: No, score=-3.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 11/15] crypto: Use "development" keys for "fit" and "tlv"
 keyring
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

All users of the CONFIG_CRYPTO_PUBLIC_KEYS feature should update to the
new syntax making keyring selection mandatory.

Instead of just making the addition of the builtin snakeoil keys
explicit for the "fit" key, also add them to the "tlv" key to use them
as a testing set for TLV keys too.

Signed-off-by: Jonas Rebmann <jre@pengutronix.de>
---
 crypto/Makefile | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/crypto/Makefile b/crypto/Makefile
index 08b9a46e4c..076ba4f686 100644
--- a/crypto/Makefile
+++ b/crypto/Makefile
@@ -33,10 +33,12 @@ CONFIG_CRYPTO_PUBLIC_KEYS := $(foreach d,$(CONFIG_CRYPTO_PUBLIC_KEYS),"$(d)")
 
 ifdef CONFIG_CRYPTO_BUILTIN_DEVELOPMENT_KEYS
 ifdef CONFIG_CRYPTO_RSA
-CONFIG_CRYPTO_PUBLIC_KEYS += rsa-devel:$(srctree)/crypto/fit-4096-development.crt
+CONFIG_CRYPTO_PUBLIC_KEYS += keyring=fit,fit-hint=rsa-devel:$(srctree)/crypto/fit-4096-development.crt
+CONFIG_CRYPTO_PUBLIC_KEYS += keyring=tlv:$(srctree)/crypto/fit-4096-development.crt
 endif
 ifdef CONFIG_CRYPTO_ECDSA
-CONFIG_CRYPTO_PUBLIC_KEYS += ecdsa-devel:$(srctree)/crypto/fit-ecdsa-development.crt
+CONFIG_CRYPTO_PUBLIC_KEYS += keyring=fit,fit-hint=ecdsa-devel:$(srctree)/crypto/fit-ecdsa-development.crt
+CONFIG_CRYPTO_PUBLIC_KEYS += keyring=tlv:$(srctree)/crypto/fit-ecdsa-development.crt
 endif
 endif
 

-- 
2.51.0.297.gca2559c1d6



