Delivery-date: Thu, 06 Nov 2025 16:19:13 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vH1lZ-00FysE-0Y
	for lore@lore.pengutronix.de;
	Thu, 06 Nov 2025 16:19:13 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vH1lU-0006qP-DI
	for lore@pengutronix.de; Thu, 06 Nov 2025 16:19:12 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=8sXF9L/wBKxg+DCLZ0cJktXqnX9FmFtYvhu/aanuEf0=; b=rzIh9YgtTiLOyow1kkWpuNMxfw
	x84GEL4M68kQ97qQVuK/dASk3vDE4K6RPbErG12uzEgwsXNxUTvMRWn+Bn3dDc5aCb5eqijd6kh4+
	Ma9HPVtR/WzKv5+5R5lCXT+UO4U/2p2JQ/qj8E78NiaHyIadknU2f+0GBSMl9mtvzhQX5rshB2wCT
	kBTxpa7fbSTU44ntJwy9IUn7x1f5/oVFqJ5NC9uP+8JrSkfE9O0gXys4pulszVbT28aJK6wn0nw4Q
	7sPI+YfOko60ofdT8E9L11N1I4nuIMdEs7GP5qMFGuSNoaPfB7CQe0cIpf8IJiHGCl2xYwCMhK8Z6
	eRuUU5NQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vH1kj-0000000FnKj-104E;
	Thu, 06 Nov 2025 15:18:21 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vH1kc-0000000FnAg-1G2y
	for barebox@lists.infradead.org;
	Thu, 06 Nov 2025 15:18:18 +0000
Received: from dude04.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::ac])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <jre@pengutronix.de>)
	id 1vH1kZ-0005tl-91; Thu, 06 Nov 2025 16:18:11 +0100
From: Jonas Rebmann <jre@pengutronix.de>
Date: Thu, 06 Nov 2025 16:18:12 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251106-tlv-signature-v3-15-5d00ed378e75@pengutronix.de>
References: <20251106-tlv-signature-v3-0-5d00ed378e75@pengutronix.de>
In-Reply-To: <20251106-tlv-signature-v3-0-5d00ed378e75@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>, 
 Jonas Rebmann <jre@pengutronix.de>
X-Mailer: b4 0.15-dev-7abec
X-Developer-Signature: v=1; a=openpgp-sha256; l=9439; i=jre@pengutronix.de;
 h=from:subject:message-id; bh=uvVSjeiinlcAQ2QdXuJLKsb4f47ZSOaEHBPXGpEAIuY=;
 b=owGbwMvMwCV2ZcYT3onnbjcwnlZLYsjk2WN43+5pUeZjD+vKOHaLG5m/nu+asV8wQn3rpMytU
 6bd5Oq53VHKwiDGxSArpsgSqyanIGTsf92s0i4WZg4rE8gQBi5OAZjIt08M/13//64zF7y6nDlf
 /u7fNwdmzJo93WCWqlXPRfH8DCbWCZMY/qkYbp+nfYLzZqynlTqj+M/njLciE9Nqqy5fluAwXn+
 9lBsA
X-Developer-Key: i=jre@pengutronix.de; a=openpgp;
 fpr=0B7B750D5D3CD21B3B130DE8B61515E135CD49B5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251106_071814_508926_837F3482 
X-CRM114-Status: GOOD (  11.50  )
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
Subject: [PATCH v3 15/17] crypto: concatenate fit development certificate
 with private key
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Merge the exemplary keys copied in from [1] into a single pem file,
in a manner similar to test/self/development_rsa2048.pem for consistency
and to reduce clutter a bit.

While at it, rename them from "fit-" to "snakeoil-" as they are not only
used for fit, but also for tlv integration tests, and to indicate more
clearly that these are publicly known keys.

[1] https://git.pengutronix.de/cgit/ptx-code-signing-dev/

Signed-off-by: Jonas Rebmann <jre@pengutronix.de>
---
 crypto/Makefile                                    |  8 +++---
 crypto/fit-4096-development.crt                    | 33 ----------------------
 crypto/fit-ecdsa-development.key                   |  5 ----
 ...velopment.key => snakeoil-4096-development.pem} | 33 ++++++++++++++++++++++
 ...elopment.crt => snakeoil-ecdsa-development.pem} |  5 ++++
 test/py/test_tlv.py                                |  8 +++---
 6 files changed, 46 insertions(+), 46 deletions(-)

diff --git a/crypto/Makefile b/crypto/Makefile
index cbc5f5235a..17043316c4 100644
--- a/crypto/Makefile
+++ b/crypto/Makefile
@@ -33,12 +33,12 @@ CONFIG_CRYPTO_PUBLIC_KEYS := $(foreach d,$(CONFIG_CRYPTO_PUBLIC_KEYS),"$(d)")
 
 ifdef CONFIG_CRYPTO_BUILTIN_DEVELOPMENT_KEYS
 ifdef CONFIG_CRYPTO_RSA
-CONFIG_CRYPTO_PUBLIC_KEYS += keyring=fit,fit-hint=rsa-devel:$(srctree)/crypto/fit-4096-development.crt
-CONFIG_CRYPTO_PUBLIC_KEYS += keyring=tlv-generic:$(srctree)/crypto/fit-4096-development.crt
+CONFIG_CRYPTO_PUBLIC_KEYS += keyring=fit,fit-hint=rsa-devel:$(srctree)/crypto/snakeoil-4096-development.pem
+CONFIG_CRYPTO_PUBLIC_KEYS += keyring=tlv-generic:$(srctree)/crypto/snakeoil-4096-development.pem
 endif
 ifdef CONFIG_CRYPTO_ECDSA
-CONFIG_CRYPTO_PUBLIC_KEYS += keyring=fit,fit-hint=ecdsa-devel:$(srctree)/crypto/fit-ecdsa-development.crt
-CONFIG_CRYPTO_PUBLIC_KEYS += keyring=tlv-generic:$(srctree)/crypto/fit-ecdsa-development.crt
+CONFIG_CRYPTO_PUBLIC_KEYS += keyring=fit,fit-hint=ecdsa-devel:$(srctree)/crypto/snakeoil-ecdsa-development.pem
+CONFIG_CRYPTO_PUBLIC_KEYS += keyring=tlv-generic:$(srctree)/crypto/snakeoil-ecdsa-development.pem
 endif
 endif
 
diff --git a/crypto/fit-4096-development.crt b/crypto/fit-4096-development.crt
deleted file mode 100644
index dffba216b9..0000000000
--- a/crypto/fit-4096-development.crt
+++ /dev/null
@@ -1,33 +0,0 @@
------BEGIN CERTIFICATE-----
-MIIFpzCCA4+gAwIBAgIUFUQCZBUFYriH8+8jb1A9eJv5N30wDQYJKoZIhvcNAQEL
-BQAwXTEUMBIGA1UECgwLUGVuZ3V0cm9uaXgxIDAeBgNVBAMMF0RldmVsb3BtZW50
-IHNpZ25pbmcga2V5MSMwIQYJKoZIhvcNAQkBFhRkZWJ1Z0BwZW5ndXRyb25peC5k
-ZTAgFw0xOTEwMDExMzA1MThaGA8yMTE5MDkwNzEzMDUxOFowXTEUMBIGA1UECgwL
-UGVuZ3V0cm9uaXgxIDAeBgNVBAMMF0RldmVsb3BtZW50IHNpZ25pbmcga2V5MSMw
-IQYJKoZIhvcNAQkBFhRkZWJ1Z0BwZW5ndXRyb25peC5kZTCCAiIwDQYJKoZIhvcN
-AQEBBQADggIPADCCAgoCggIBAMmR5Io1H6qALxBC2sUi548qoU6axIpZ3+yar0gj
-A1FF79nRJZNa+EcIgaMCaf+Ft7DseIAEhBzNsZQ1sj2GVEf9W7WXlSbziET1n8PC
-aC097W20kziMNOAZOjFIdy24AbcW2yhhpBXsKtzm9V0DlnGN2QM3yxbqKD1iUOl/
-iInM5KwNKxp8KboR5W/LTnUGUYw3ryFVbxJEY0YqqwMOaSk8vzLf0iSf8gu6iabS
-ELJEONst0ah3glZj+mRelVdbHDZh6/PpEQ9fQ4QqLOgy1qtqQhT8J0poDOE9BVnC
-bDIjbWvq7UavpBu0YzjmG26r7pN75DK0E0UHgGH3Z7jhophkGMYlYfarjjFRujSd
-ocpU2tEvxDykFELyvQPG5w7pedtlz5jFRzrS11RrcCsfcUFMf9g+2qKpZlSUhkHg
-DDYtDRBYam7hnV7if9nCsLaGwpZM9Fm2zJSOFATO1eKj9yUpMYqI0SobTR7XRNyr
-Rd66J0SWlPsg4IDaG1i4ieE7UNDgAtURBCRqu7PZPAEovurPlV+8lbZRljCI2wRg
-JfJaoF17AKa0a5raH2kIBD1b3EgCG7nIfyaqR4bPLxwYlm/ymXTnv7zImEBP3ffy
-mPK8m2Wtw4Sr8ze1+fcpjmCyCxwe918YuW0AOtQ2nmBOCpz4iWhA61HHK5RYzASM
-Bq6LAgMBAAGjXTBbMAwGA1UdEwEB/wQCMAAwCwYDVR0PBAQDAgeAMB0GA1UdDgQW
-BBRscfq3jG3UfwhRTQyiWoStdF/WFzAfBgNVHSMEGDAWgBRscfq3jG3UfwhRTQyi
-WoStdF/WFzANBgkqhkiG9w0BAQsFAAOCAgEAp6suTnOCSormgkuhopR5Sk0nl1ME
-+DSxB56E6HVOgP2lXfNAYtfjdZwPtD2cCMyZD9m0w5usXUb+XFzW4L4AFsBnwbuu
-3/082u/qF21v7sEhdi83p3ordHnevc5HTTN0mfUNlqsCG+sCL+w+IQEWvHii4Hnc
-MPv6xbEhxU0ahTpByFwj0+YFPMq4nwQi6pqZCCP7qm0UV+T5+W8CnCivDq9laX+g
-RyJIPgH67ZFQlnnhjSqNq+7yF3Ac0U3IcMKSMaCOCIxuh+QfgHqE9jP62pRblpJx
-UPX5WF9/tBQ7757UEj+nHRKpgnJQzQ6Ks8/7FVmvbY9g9KWEIfeULsT8M1qMdW1E
-bZqleKhEySQbqUyIM29SpIfqd8unBecKFELfVf47TTEbWQRSExRMDGs31MXnvsiP
-jCSW7+BZNBwRXAyR3jB2ludw7DpZJk/VzTf2tja/FPl0sGSG0ggdmGHDnvHApQn5
-RidvJEyQSv+hfn6x+wE0nWpY2/+bV9RvOPwZnLsYkb9falnLwBlTpwa2uX6o4LP1
-8orfuQn3SrfRRKuaVwzjRvkb2fw15745mmOWK/VVtrHD8B3kA6cmTW3JEace+wma
-qCeFbwawz4vZpYCV4hQm06YefDRwZ4zBnkPnkN8i0Wqnb2kJUk5YrWKMZyFagAFU
-Yu8PytQLFKL1pZU=
------END CERTIFICATE-----
diff --git a/crypto/fit-ecdsa-development.key b/crypto/fit-ecdsa-development.key
deleted file mode 100644
index 2b13c877a3..0000000000
--- a/crypto/fit-ecdsa-development.key
+++ /dev/null
@@ -1,5 +0,0 @@
------BEGIN EC PRIVATE KEY-----
-MHcCAQEEIEsUW5DEOhD1CYHCnPfDULwbRQO9Yjt2/xM5SoY2GUQtoAoGCCqGSM49
-AwEHoUQDQgAEowCa2OYfPdGRr1JpSYONOA3N2jwJjGbPbfG6uBzKg1VqOOk0a/Vf
-BfEbQev6X96HCd6zvvC2tjBgvICW8UB0TQ==
------END EC PRIVATE KEY-----
diff --git a/crypto/fit-4096-development.key b/crypto/snakeoil-4096-development.pem
similarity index 61%
rename from crypto/fit-4096-development.key
rename to crypto/snakeoil-4096-development.pem
index 526cdfc2b5..039b74034d 100644
--- a/crypto/fit-4096-development.key
+++ b/crypto/snakeoil-4096-development.pem
@@ -1,3 +1,36 @@
+-----BEGIN CERTIFICATE-----
+MIIFpzCCA4+gAwIBAgIUFUQCZBUFYriH8+8jb1A9eJv5N30wDQYJKoZIhvcNAQEL
+BQAwXTEUMBIGA1UECgwLUGVuZ3V0cm9uaXgxIDAeBgNVBAMMF0RldmVsb3BtZW50
+IHNpZ25pbmcga2V5MSMwIQYJKoZIhvcNAQkBFhRkZWJ1Z0BwZW5ndXRyb25peC5k
+ZTAgFw0xOTEwMDExMzA1MThaGA8yMTE5MDkwNzEzMDUxOFowXTEUMBIGA1UECgwL
+UGVuZ3V0cm9uaXgxIDAeBgNVBAMMF0RldmVsb3BtZW50IHNpZ25pbmcga2V5MSMw
+IQYJKoZIhvcNAQkBFhRkZWJ1Z0BwZW5ndXRyb25peC5kZTCCAiIwDQYJKoZIhvcN
+AQEBBQADggIPADCCAgoCggIBAMmR5Io1H6qALxBC2sUi548qoU6axIpZ3+yar0gj
+A1FF79nRJZNa+EcIgaMCaf+Ft7DseIAEhBzNsZQ1sj2GVEf9W7WXlSbziET1n8PC
+aC097W20kziMNOAZOjFIdy24AbcW2yhhpBXsKtzm9V0DlnGN2QM3yxbqKD1iUOl/
+iInM5KwNKxp8KboR5W/LTnUGUYw3ryFVbxJEY0YqqwMOaSk8vzLf0iSf8gu6iabS
+ELJEONst0ah3glZj+mRelVdbHDZh6/PpEQ9fQ4QqLOgy1qtqQhT8J0poDOE9BVnC
+bDIjbWvq7UavpBu0YzjmG26r7pN75DK0E0UHgGH3Z7jhophkGMYlYfarjjFRujSd
+ocpU2tEvxDykFELyvQPG5w7pedtlz5jFRzrS11RrcCsfcUFMf9g+2qKpZlSUhkHg
+DDYtDRBYam7hnV7if9nCsLaGwpZM9Fm2zJSOFATO1eKj9yUpMYqI0SobTR7XRNyr
+Rd66J0SWlPsg4IDaG1i4ieE7UNDgAtURBCRqu7PZPAEovurPlV+8lbZRljCI2wRg
+JfJaoF17AKa0a5raH2kIBD1b3EgCG7nIfyaqR4bPLxwYlm/ymXTnv7zImEBP3ffy
+mPK8m2Wtw4Sr8ze1+fcpjmCyCxwe918YuW0AOtQ2nmBOCpz4iWhA61HHK5RYzASM
+Bq6LAgMBAAGjXTBbMAwGA1UdEwEB/wQCMAAwCwYDVR0PBAQDAgeAMB0GA1UdDgQW
+BBRscfq3jG3UfwhRTQyiWoStdF/WFzAfBgNVHSMEGDAWgBRscfq3jG3UfwhRTQyi
+WoStdF/WFzANBgkqhkiG9w0BAQsFAAOCAgEAp6suTnOCSormgkuhopR5Sk0nl1ME
++DSxB56E6HVOgP2lXfNAYtfjdZwPtD2cCMyZD9m0w5usXUb+XFzW4L4AFsBnwbuu
+3/082u/qF21v7sEhdi83p3ordHnevc5HTTN0mfUNlqsCG+sCL+w+IQEWvHii4Hnc
+MPv6xbEhxU0ahTpByFwj0+YFPMq4nwQi6pqZCCP7qm0UV+T5+W8CnCivDq9laX+g
+RyJIPgH67ZFQlnnhjSqNq+7yF3Ac0U3IcMKSMaCOCIxuh+QfgHqE9jP62pRblpJx
+UPX5WF9/tBQ7757UEj+nHRKpgnJQzQ6Ks8/7FVmvbY9g9KWEIfeULsT8M1qMdW1E
+bZqleKhEySQbqUyIM29SpIfqd8unBecKFELfVf47TTEbWQRSExRMDGs31MXnvsiP
+jCSW7+BZNBwRXAyR3jB2ludw7DpZJk/VzTf2tja/FPl0sGSG0ggdmGHDnvHApQn5
+RidvJEyQSv+hfn6x+wE0nWpY2/+bV9RvOPwZnLsYkb9falnLwBlTpwa2uX6o4LP1
+8orfuQn3SrfRRKuaVwzjRvkb2fw15745mmOWK/VVtrHD8B3kA6cmTW3JEace+wma
+qCeFbwawz4vZpYCV4hQm06YefDRwZ4zBnkPnkN8i0Wqnb2kJUk5YrWKMZyFagAFU
+Yu8PytQLFKL1pZU=
+-----END CERTIFICATE-----
 -----BEGIN RSA PRIVATE KEY-----
 MIIJKgIBAAKCAgEAyZHkijUfqoAvEELaxSLnjyqhTprEilnf7JqvSCMDUUXv2dEl
 k1r4RwiBowJp/4W3sOx4gASEHM2xlDWyPYZUR/1btZeVJvOIRPWfw8JoLT3tbbST
diff --git a/crypto/fit-ecdsa-development.crt b/crypto/snakeoil-ecdsa-development.pem
similarity index 76%
rename from crypto/fit-ecdsa-development.crt
rename to crypto/snakeoil-ecdsa-development.pem
index 490d48b93a..aeb0764d55 100644
--- a/crypto/fit-ecdsa-development.crt
+++ b/crypto/snakeoil-ecdsa-development.pem
@@ -11,3 +11,8 @@ VR0PBAQDAgeAMB0GA1UdDgQWBBQ5gyCsUddXXclJHHRUH+w2+R0N2jAKBggqhkjO
 PQQDAgNIADBFAiAfMkyM1n7JYCYqvYq4YdbWD8q2kZvVYhRK7gKIRZNUjAIhAKng
 1plXACT2UcKDQV9+o3qbve9LDV3aASRmZz47DX+0
 -----END CERTIFICATE-----
+-----BEGIN EC PRIVATE KEY-----
+MHcCAQEEIEsUW5DEOhD1CYHCnPfDULwbRQO9Yjt2/xM5SoY2GUQtoAoGCCqGSM49
+AwEHoUQDQgAEowCa2OYfPdGRr1JpSYONOA3N2jwJjGbPbfG6uBzKg1VqOOk0a/Vf
+BfEbQev6X96HCd6zvvC2tjBgvICW8UB0TQ==
+-----END EC PRIVATE KEY-----
diff --git a/test/py/test_tlv.py b/test/py/test_tlv.py
index 9fb3110cb8..49c53fe39b 100644
--- a/test/py/test_tlv.py
+++ b/test/py/test_tlv.py
@@ -94,10 +94,10 @@ class _TLV_Testdata:
         self.data = self.scripts_dir / "data-example.yaml"
         self.schema = self.scripts_dir / "schema-example.yaml"
         self.generator_py = self.scripts_dir / "bareboxtlv-generator.py"
-        self.privkey_rsa = Path("crypto/fit-4096-development.key")
-        self.pubkey_rsa = Path("crypto/fit-4096-development.crt")
-        self.privkey_ecdsa = Path("crypto/fit-ecdsa-development.key")
-        self.pubkey_ecdsa = Path("crypto/fit-ecdsa-development.crt")
+        self.privkey_rsa = Path("crypto/snakeoil-4096-development.pem")
+        self.pubkey_rsa = Path("crypto/snakeoil-4096-development.pem")
+        self.privkey_ecdsa = Path("crypto/snakeoil-ecdsa-development.pem")
+        self.pubkey_ecdsa = Path("crypto/snakeoil-ecdsa-development.pem")
         self.unsigned_bin = self.dir / "unsigned.tlv"
         self.corrupted_bin = self.dir / "unsigned_corrupted.tlv"
         self.signed_bin = self.dir / "signed.tlv"

-- 
2.51.2.535.g419c72cb8a



