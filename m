Delivery-date: Thu, 21 Aug 2025 19:52:58 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1up9T8-0032dy-2A
	for lore@lore.pengutronix.de;
	Thu, 21 Aug 2025 19:52:58 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1up9T7-0005wE-3Z
	for lore@pengutronix.de; Thu, 21 Aug 2025 19:52:58 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=gAK5WvFrQS5suFKUGFOeeLDJBCO86+CylY08V/bDFII=; b=1SaPAP+1H0wqJ6Az3TtKRAzGE+
	eTtrT6fEuPMdHB+n7Q0dG82tsVI7XZ5d4IGgXOHFT1eeUcRAUhUkHRnY48zBYP55ut5EI/hgm2ILJ
	HQOWIsFWmZGEwVnJ677lbfGOdGubt+UmL6Df2gYZRmOKih2dfZ+YOcx0gBtKNCF6YCxNX1TYqKd/X
	Psyo4LkNYpbYeTyMgnmpoULSsNJccjWBbStSh2WxYFku+ZhJc87llpQlv9KZufmX2Gg74Wxf7ITzr
	wRSvVlU6+F9XFjWMaVBMKWwnfmZWnP4ZXhjyMxgDaS9gqxF3NK907Vbd4eidK8UIT8Dnxv4TI1wMv
	7/hwj9yg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1up9ST-000000006vN-12SF;
	Thu, 21 Aug 2025 17:52:17 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1up5Bg-0000000H1ct-2lmN
	for barebox@lists.infradead.org;
	Thu, 21 Aug 2025 13:18:42 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1up5BX-0008Vd-Gu; Thu, 21 Aug 2025 15:18:31 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1up5BX-001Q3H-0t;
	Thu, 21 Aug 2025 15:18:31 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1up5BX-00HHYe-0c;
	Thu, 21 Aug 2025 15:18:31 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 21 Aug 2025 15:18:25 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250821-keynames-v1-2-8144af76d0ab@pengutronix.de>
References: <20250821-keynames-v1-0-8144af76d0ab@pengutronix.de>
In-Reply-To: <20250821-keynames-v1-0-8144af76d0ab@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1755782311; l=6430;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=y8IoMqhNSamFaBnZjRaZ8fo1oF6zYFLwzwwQwihiSXw=;
 b=CVX+tQ1Kk1kn9r9k3h8qBNqys1Y8pB2lAZz9Zzc1Z3nEUmYTVWBkUIuxJCJcVh8l+01/LBvlb
 5yadHb6g0F5Do7X3mfyJ0L8vGCn/4Euc9zy0KVQxWmT4rGSta5QCIB3
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250821_061840_857237_EC000D41 
X-CRM114-Status: GOOD (  15.73  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/6] crypto: Allow to include development keys in build
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Pengutronix has published well known RSA and ECDSA keys for development
purposes. This adds the public keys to the tree and adds
CONFIG_CRYPTO_BUILTIN_DEVELOPMENT_KEYS. By enabling this option these
keys will be built into the barebox binary to allow for easy signing
tests.

As these keys obviously should not show up in a production build this
option selects HAS_INSECURE_DEFAULTS.

The private keys for the well known development keys can be found at
[1].

[1] https://git.pengutronix.de/cgit/ptx-code-signing-dev/

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 Documentation/user/security.rst  |  5 +++++
 crypto/Kconfig                   |  4 ++++
 crypto/Makefile                  |  9 +++++++++
 crypto/fit-4096-development.crt  | 33 +++++++++++++++++++++++++++++++++
 crypto/fit-ecdsa-development.crt | 13 +++++++++++++
 5 files changed, 64 insertions(+)

diff --git a/Documentation/user/security.rst b/Documentation/user/security.rst
index cc15c8b512b277dc4480b67d5e378958ac916a1a..357ea86a1d9abcc49b0d01ad24981e90d1e3fc45 100644
--- a/Documentation/user/security.rst
+++ b/Documentation/user/security.rst
@@ -81,6 +81,11 @@ be allowed to boot any images that have not been signed by the correct key.
 This can be enforced by setting ``CONFIG_BOOTM_FORCE_SIGNED_IMAGES=y``
 and disabling any ways that could use used to override this.
 
+For development convenience ``CONFIG_CRYPTO_BUILTIN_DEVELOPMENT_KEYS`` keys
+can be used to compile in well known development keys into the barebox binary.
+The private keys for these keys can be found
+`[here] <https://git.pengutronix.de/cgit/ptx-code-signing-dev>`__
+
 Disabling the shell
 ^^^^^^^^^^^^^^^^^^^
 
diff --git a/crypto/Kconfig b/crypto/Kconfig
index 4f9cc3e6a560b653225efd70246ad1d79a451f78..f1f9b9bb80cfc88836c6b6b384bd8b089108b412 100644
--- a/crypto/Kconfig
+++ b/crypto/Kconfig
@@ -145,6 +145,10 @@ config CRYPTO_PUBLIC_KEYS
 	  corresponding value in the environment variable VAR_NAME for both
 	  public key paths/URIs as well as key name hints.
 
+config CRYPTO_BUILTIN_DEVELOPMENT_KEYS
+	select HAS_INSECURE_DEFAULTS
+	bool "Include development keys in build"
+
 config CRYPTO_KEYSTORE
 	bool "Keystore"
 	help
diff --git a/crypto/Makefile b/crypto/Makefile
index 7148aecb4a8e2275a62b25c834b1743c156a7f91..481bbec81bb2da3fbaea20c6e4eb32d6c79be4b0 100644
--- a/crypto/Makefile
+++ b/crypto/Makefile
@@ -33,6 +33,15 @@ $(obj)/public-keys.o: $(obj)/public-keys.h
 CONFIG_CRYPTO_PUBLIC_KEYS := $(shell echo $(CONFIG_CRYPTO_PUBLIC_KEYS))
 CONFIG_CRYPTO_PUBLIC_KEYS := $(foreach d,$(CONFIG_CRYPTO_PUBLIC_KEYS),"$(d)")
 
+ifdef CONFIG_CRYPTO_BUILTIN_DEVELOPMENT_KEYS
+ifdef CONFIG_CRYPTO_RSA
+CONFIG_CRYPTO_PUBLIC_KEYS += rsa-devel:$(srctree)/crypto/fit-4096-development.crt
+endif
+ifdef CONFIG_CRYPTO_ECDSA
+CONFIG_CRYPTO_PUBLIC_KEYS += ecdsa-devel:$(srctree)/crypto/fit-ecdsa-development.crt
+endif
+endif
+
 filechk_public_keys_dummy = echo
 
 $(obj)/public-keys.h: FORCE
diff --git a/crypto/fit-4096-development.crt b/crypto/fit-4096-development.crt
new file mode 100644
index 0000000000000000000000000000000000000000..dffba216b9c671899bb7c12fb1560e2431b9aa6e
--- /dev/null
+++ b/crypto/fit-4096-development.crt
@@ -0,0 +1,33 @@
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
diff --git a/crypto/fit-ecdsa-development.crt b/crypto/fit-ecdsa-development.crt
new file mode 100644
index 0000000000000000000000000000000000000000..490d48b93a094ca5ed6fe507193a19eeb35683ae
--- /dev/null
+++ b/crypto/fit-ecdsa-development.crt
@@ -0,0 +1,13 @@
+-----BEGIN CERTIFICATE-----
+MIIB+jCCAaCgAwIBAgIUPWGk8K75jmaLrLI7VkbZQwbJuU4wCgYIKoZIzj0EAwIw
+XTEUMBIGA1UECgwLUGVuZ3V0cm9uaXgxIDAeBgNVBAMMF0RldmVsb3BtZW50IHNp
+Z25pbmcga2V5MSMwIQYJKoZIhvcNAQkBFhRkZWJ1Z0BwZW5ndXRyb25peC5kZTAg
+Fw0yNDA3MjYwOTM5NTZaGA8yMTI0MDcwMjA5Mzk1NlowXTEUMBIGA1UECgwLUGVu
+Z3V0cm9uaXgxIDAeBgNVBAMMF0RldmVsb3BtZW50IHNpZ25pbmcga2V5MSMwIQYJ
+KoZIhvcNAQkBFhRkZWJ1Z0BwZW5ndXRyb25peC5kZTBZMBMGByqGSM49AgEGCCqG
+SM49AwEHA0IABKMAmtjmHz3Rka9SaUmDjTgNzdo8CYxmz23xurgcyoNVajjpNGv1
+XwXxG0Hr+l/ehwnes77wtrYwYLyAlvFAdE2jPDA6MAwGA1UdEwEB/wQCMAAwCwYD
+VR0PBAQDAgeAMB0GA1UdDgQWBBQ5gyCsUddXXclJHHRUH+w2+R0N2jAKBggqhkjO
+PQQDAgNIADBFAiAfMkyM1n7JYCYqvYq4YdbWD8q2kZvVYhRK7gKIRZNUjAIhAKng
+1plXACT2UcKDQV9+o3qbve9LDV3aASRmZz47DX+0
+-----END CERTIFICATE-----

-- 
2.39.5



