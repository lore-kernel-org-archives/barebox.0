Delivery-date: Thu, 06 Nov 2025 16:19:04 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vH1lQ-00FyoP-1Y
	for lore@lore.pengutronix.de;
	Thu, 06 Nov 2025 16:19:04 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vH1lM-0006is-Po
	for lore@pengutronix.de; Thu, 06 Nov 2025 16:19:04 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=KRim9dy2ARy+Q0Ghs/g721/iSg19I/MM7/jLS1NPnGI=; b=h18tDlpH0A8mArPEfn5Qmpugp2
	b3tUL+wRjze1c6XEqMkQBKg+9FE/FfbNKklKa1hepztTD482lDmXS5dqbBFbREBLiZt8F5yJA5icE
	nsi2sWEh6qpSlL/+oshJl35BUZHikwEfo4sbYIaE4bXrFf3ciuySSQ8VJAKuOk0opG4u6Uw8MP/W/
	fxpPV/2/MGQDwRIH1OyVOBxzjq65vvw/f1YOdNr2dm8KxTy2Fif9ULlVfIGb1nleYYI/BJr2l7M6f
	9J+8FZ11qKddBP8UitWcPOpeftpkuiJnPoS2aRyRf8IqOe467BEcaNdacG+CJbeaDPWLmSygpzGhK
	d+hDJ/3Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vH1kf-0000000FnFm-1qRl;
	Thu, 06 Nov 2025 15:18:17 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vH1kc-0000000FnAe-0OhI
	for barebox@lists.infradead.org;
	Thu, 06 Nov 2025 15:18:15 +0000
Received: from dude04.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::ac])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <jre@pengutronix.de>)
	id 1vH1kZ-0005tl-7k; Thu, 06 Nov 2025 16:18:11 +0100
From: Jonas Rebmann <jre@pengutronix.de>
Date: Thu, 06 Nov 2025 16:18:11 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251106-tlv-signature-v3-14-5d00ed378e75@pengutronix.de>
References: <20251106-tlv-signature-v3-0-5d00ed378e75@pengutronix.de>
In-Reply-To: <20251106-tlv-signature-v3-0-5d00ed378e75@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>, 
 Jonas Rebmann <jre@pengutronix.de>
X-Mailer: b4 0.15-dev-7abec
X-Developer-Signature: v=1; a=openpgp-sha256; l=1715; i=jre@pengutronix.de;
 h=from:subject:message-id; bh=PhnyW8q9OfIHRlhWJRKrKIdCevviJ70haF6GyME1J/I=;
 b=owGbwMvMwCV2ZcYT3onnbjcwnlZLYsjk2WNQdcFy7sHXZiUi/Jfbf+/7rndzcWzz3T07V5xM3
 mgpOEXFs6OUhUGMi0FWTJElVk1OQcjY/7pZpV0szBxWJpAhDFycAjCRNzcY/kqnWex0uujOFRdR
 tKDV/dtCPrOmixdnXdGfPj38b3KxfznD/1qpBNtjX32KrzInbJpVKtCj+Sn+6LlvBVJmkndeGXT
 NZQYA
X-Developer-Key: i=jre@pengutronix.de; a=openpgp;
 fpr=0B7B750D5D3CD21B3B130DE8B61515E135CD49B5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251106_071814_139705_6EAD6CE7 
X-CRM114-Status: GOOD (  11.73  )
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
X-Spam-Status: No, score=-3.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v3 14/17] ci: pytest: Add kconfig fragment for TLV
 signature integration tests
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

For targets that support inclusion of the testfs, make sure to inject
all config options needed to run the signature verification tests from
the test_tlv.py which invoke the TLV command and verify some of the
generated test TLVs against the builtin developer keys.

Signed-off-by: Jonas Rebmann <jre@pengutronix.de>
---
 .github/workflows/test-labgrid-pytest.yml           |  1 +
 common/boards/configs/enable_tlv_sig_testing.config | 13 +++++++++++++
 2 files changed, 14 insertions(+)

diff --git a/.github/workflows/test-labgrid-pytest.yml b/.github/workflows/test-labgrid-pytest.yml
index 4569e475bc..d9822fc206 100644
--- a/.github/workflows/test-labgrid-pytest.yml
+++ b/.github/workflows/test-labgrid-pytest.yml
@@ -89,6 +89,7 @@ jobs:
 
         if [ "${{ steps.used-features.outputs.testfs }}" = "true" ]; then
           KCONFIG_ADD="${KCONFIG_ADD} common/boards/configs/enable_dm_testing.config"
+          KCONFIG_ADD="${KCONFIG_ADD} common/boards/configs/enable_tlv_sig_testing.config"
         fi
 
         ./MAKEALL -O ${KBUILD_OUTPUT} -l "" -v 0 ${{matrix.defconfig}}
diff --git a/common/boards/configs/enable_tlv_sig_testing.config b/common/boards/configs/enable_tlv_sig_testing.config
new file mode 100644
index 0000000000..f1729fece5
--- /dev/null
+++ b/common/boards/configs/enable_tlv_sig_testing.config
@@ -0,0 +1,13 @@
+CONFIG_CRYPTO_BUILTIN_DEVELOPMENT_KEYS=y
+CONFIG_CRYPTO_ECC=y
+CONFIG_CRYPTO_RSA=y
+CONFIG_CRYPTO_ECDSA=y
+CONFIG_CRYPTO_BUILTIN_KEYS=y
+CONFIG_CRYPTO_PUBLIC_KEYS=""
+CONFIG_KEYTOC=y
+CONFIG_TLV=y
+CONFIG_TLV_DRV=y
+CONFIG_TLV_BAREBOX=y
+CONFIG_TLV_SIGNATURE=y
+CONFIG_CMD_KEYS=y
+CONFIG_CMD_TLV=y

-- 
2.51.2.535.g419c72cb8a



