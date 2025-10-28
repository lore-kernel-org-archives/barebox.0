Delivery-date: Tue, 28 Oct 2025 19:04:29 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vDo3Z-00CljK-2m
	for lore@lore.pengutronix.de;
	Tue, 28 Oct 2025 19:04:29 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vDo3W-0001AU-Jj
	for lore@pengutronix.de; Tue, 28 Oct 2025 19:04:29 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=KRim9dy2ARy+Q0Ghs/g721/iSg19I/MM7/jLS1NPnGI=; b=VQb/qrLjZxyajpygQHzeY9kISU
	pb4Y9d9378+U52VJPdbv44q47G58vkisxsvloz2GeFWl0Hm64iZWEsRX4a3qRJa2+pUNc0VSOwFwy
	98SfY6tFAL36ujSaNR0qTGbWXO9YMJfEjBrcQUCFNL4djhVz2Jj8U7yKUNjEP5narrPz9vFwsdd5k
	6abKO9B7RRkMGWLR5EgMEEdFXh8H6hDOuDix1ZxDVdAggQqdwrDA5M3Hruslhrf8cZM5qhfCRM1+G
	CbtjZfKsIQBlqw1ZVGtxlSvWHwDunuHEVxOevGJSn9Pj+8f6XQBJKFSRlJyw7n58IxRWYdloG+v87
	3gUqE3iQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDo2s-0000000GSE1-1sKb;
	Tue, 28 Oct 2025 18:03:46 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDo2n-0000000GSAK-2UoJ
	for barebox@bombadil.infradead.org;
	Tue, 28 Oct 2025 18:03:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=KRim9dy2ARy+Q0Ghs/g721/iSg19I/MM7/jLS1NPnGI=; b=J8cV7JWab6up2w/rgXetSFrhp4
	qIEoHqNzvoOJfriKRcfKTpTLkEprVIjtP3XpiTbISBMVYko78OBUta78dPgTUg017WkkWL+R6qwdJ
	WA75nQlTTqU6MRR02Xc+0+LqCj9lQNAIEeTfzwgtfgv2IesYAz8T8I6H5xOT1i+WWyFoS/NsV0RxA
	A+0ulZtzhNXjsLzbYqTIBZPsqelDAZsUo1Sb5e6/zgjnI+ATzXoSM9lrL2C6PNi0cyDIgLDpTr7Be
	d7GmRUdtmgV/cNGksjoEz2tgJAJJgtS41GxMcPMoohu8mmVhu9w6kFV9+Mrq6g6Hfn2lPSAy3Hlnb
	ALXlU1OQ==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDnAz-000000050DX-2vjm
	for barebox@lists.infradead.org;
	Tue, 28 Oct 2025 17:08:08 +0000
Received: from dude04.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::ac])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <jre@pengutronix.de>)
	id 1vDo2h-0000PX-FV; Tue, 28 Oct 2025 19:03:35 +0100
From: Jonas Rebmann <jre@pengutronix.de>
Date: Tue, 28 Oct 2025 19:03:19 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251028-tlv-signature-v2-14-3bafce636ad7@pengutronix.de>
References: <20251028-tlv-signature-v2-0-3bafce636ad7@pengutronix.de>
In-Reply-To: <20251028-tlv-signature-v2-0-3bafce636ad7@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>, 
 Jonas Rebmann <jre@pengutronix.de>
X-Mailer: b4 0.15-dev-7abec
X-Developer-Signature: v=1; a=openpgp-sha256; l=1715; i=jre@pengutronix.de;
 h=from:subject:message-id; bh=PhnyW8q9OfIHRlhWJRKrKIdCevviJ70haF6GyME1J/I=;
 b=owGbwMvMwCV2ZcYT3onnbjcwnlZLYshkZC1ddW16bI3xi70HZrPuzz/1IYrxR77fpu8v6uVZj
 /dUZmSkd5SyMIhxMciKKbLEqskpCBn7XzertIuFmcPKBDKEgYtTACbyi5+R4cLD7Z7Chq9vpmta
 OUieSkwMbrds6f6UvelA3896/2BeoIqJ+cUxlzbpnzsr9bz8axSr8wu2PWJf+i/cmi34Ray9N4Y
 FAA==
X-Developer-Key: i=jre@pengutronix.de; a=openpgp;
 fpr=0B7B750D5D3CD21B3B130DE8B61515E135CD49B5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251028_170805_845048_641A6472 
X-CRM114-Status: GOOD (  11.60  )
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
X-Spam-Status: No, score=-3.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v2 14/17] ci: pytest: Add kconfig fragment for TLV
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



