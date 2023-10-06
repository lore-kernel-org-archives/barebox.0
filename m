Delivery-date: Fri, 06 Oct 2023 15:13:09 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qokdh-008TnL-No
	for lore@lore.pengutronix.de; Fri, 06 Oct 2023 15:13:09 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qokde-0007eb-Au
	for lore@pengutronix.de; Fri, 06 Oct 2023 15:13:08 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:Content-Type:
	MIME-Version:Message-ID:Subject:To:From:Reply-To:Cc:Content-Transfer-Encoding
	:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=LHXWY+YDiBf6PuSu3JuMsHyXMOyUVIFODpuntX6Xmtc=; b=RggGk7QqbMHmd2tMvDtEq+47Nv
	mtnqxY69rjlX498W/N32X9vidjyHmbJIQJRmhqlnsvDBRT0iquEYlfC7ckVb+0OK9H8NPonJGuweK
	AXR9yHw3XNFgVb8ey3XmgyGXM5utFyPr8I9VKdDZsDd9fs6xy6k64xR4Kn3xB+zpDJXYlzDdWhaUJ
	/GceLt6PfGwwGYPf8kqYT2s6xY5UvTz+NSY7kWgK4p/34opP7qpgAXhy8zmIHZX3kcDOPPxlX/Nw2
	UPDtdqk6JwSH3kE136NDf/oM7PK1+KzsNwXsw93NfS7UgaVK4V4GnoIF1EcNdlkW33oMIe7tOliY4
	y/bW1tzA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qokcA-005rLU-2g;
	Fri, 06 Oct 2023 13:11:34 +0000
Received: from enterprise02.smtp.diehl.com ([193.201.238.220])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qokc6-005rL6-1n
	for barebox@lists.infradead.org;
	Fri, 06 Oct 2023 13:11:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=diehl.com; i=@diehl.com; q=dns/txt; s=default;
  t=1696597890; x=1728133890;
  h=from:to:subject:message-id:mime-version:date;
  bh=LHXWY+YDiBf6PuSu3JuMsHyXMOyUVIFODpuntX6Xmtc=;
  b=M/lMw2aLlUMt/Qptkfn1hiekRQFRKXhLJWLVcudRJqsntJyMgrEqoAA2
   rj1/n2n+6Xal71l7BFpDJvO7tv3LdEnT4ag1vWED7Ica9Quf626z2bvW9
   cmuogccgp2fk2KJw6E962tvma2ECq6kG/xQA3Z1N7yKhBAvrhl9tRTksL
   +B0TPTvIiCuCj6Cj51dTyeHkntbNnnLn9T8lfm5hil4mGGLYwoyCA3hCk
   KJb9EiQfTfke8p0DyDF0DzPDCvCSgJMYp2KuAutPMWmxqWRelvRS+/+XM
   dMv2zOPWXrNmALu8EkQoKvKZtA/S3RnL5E4FGWGFC2zoMHy27/MS791u9
   g==;
IronPort-Data: A9a23:Ue+PkqNQkj2vxpTvrR3Gl8FynXyQoLVcMsEvi/8bNHDolHp+jmZWi
 jtAB3bOJ7/RMSHyZpovP9PnsQ9E7KZh/KYgFVsx+Dd1EGkiRaHtXI2Qdk2hNSqbdpScFkk4s
 ZxAYNOedMttFCDS/R3waODr/CN22a/XS+SmU7OZN34sHwNoEn5whR44xLVo0tE0jbBVb+/jV
 fba+qUzb3f+imYkWo5t14qDtA937rO1uz4JpRoyZP1LuBnVkHxSB4gbYr2yanvPRM9fBOriL
 9ovt4pVjV41hT92TIvNr577blESEPmVPgWfkTxaWqWihl5JoSl12bw/c+YfLEdgjXOChdQpl
 ZYM7fSMpXwS0t7xdJ41CF8AexxWPbFa4O2AZmegroqfzkDGdz3nxPApFEI3etVwxgoMOo09y
 BBiAGtLNni+ut+LLJKHpshE35l+csSzZ48U6iA8kGHXAKp+GZzJG/jA7oEGgW9o3Z8SRKaPb
 McnMjc+Nx6ojz+jmLs0IM9kwL341iGXnxlw8g/9SX8fujCLpOBJ+OGxdoCTI7RmfO0N9m6Av
 GXK4m/lNR8TMd2b2FKt/2ml7gP1tXqTtLk6SvvgrZaGvHXJnjZIUUVOCwPiyRWEohXWt+x3e
 hV8FhUG/fBaGHyDFrHVQxC+qXiYiR8QM/I4/zoSsVzlJgL8um51N0BcJtJzQIVOWPweHFTG4
 mS0c+bBXlSDhlE3pUW1rd94pRvqUcQcwPRriSUsFWPp6PG7yG0/Y46mon+O38dZg/WscQwcz
 QxmowAhpJUBypIg2Z/k5H7H3Qz9hMX5VF4cs1C/smKNtmuVZaapYp6j5keDt7BLK5yBCFWAs
 XgA3cOZ6YjiD7nUzGrdGqNUTPfwvKzt3D702DaDG7Et+jKs4DikZpxd+jV3IktBPscJeTuva
 0jW0e9UzMEPYCXzNPAnC263I5UEnYXeTd/3bKn/QMFeRsNodRCf9y47MCZ82EioyiDAi5oXM
 56BfMyrHV4eCL9713y3QekH2LMmzyx4wnncLa0X1Dyr1KiVa2HNE/EJMVaOaqYy67mcyOnIz
 +ti2wKx4003eIXDjuP/qOb/8XhiwaAHOK3L
IronPort-HdrOrdr: A9a23:mfjItqD34F0y6IXlHeh+sceALOsnbusQ8zAXPh9KJCC9I/bzqy
 nxpp8mPH7P+VAssRQb9exoV5PwJU80maQFg7X5Xo3SPzUO2lHYVb2KhLGKq1KPexEWntQtrZ
 uIGJIOb+EYY2IK6PoS1DPIaOrIjeP3g5yAtKP79TNAXAtqY6Zv40NQDRuaKFR/QE1jCYAiHJ
 SRy8Jbr374EE5nG/iTNz0gZazuttfLnJXpbVovAAMm0hCHiXeN5KThGxaV8x8CW3dkwKsk80
 LCjwvlj5/Twc2T+1v57Sv+/p5WkNzuxp9qA9GNsNEcLnHWhgOhdO1aKsO/VGRemoCSwWdvtO
 OJjwYrPsx15X+UVHqyuwHR1w7p1ytrw2P+yHeD6EGT6vDRdXYfMY5slIhZehzW5w4Lp9dnyp
 9G2Gqfqt5+EQ7ApiLg/NLFPisa3HZcmUBS3NL7skYvGLf2KYUh27D3xXklZ6voyRiKoLzOE4
 FVfb7hDbhtAB+nhkvizxVSKeyXLwkO9yi9MzI/U+yuoklrdSNCvjslLYok7wM9yK4=
X-Talos-CUID: 9a23:emYMkGG9D3XaByo/qmJ4124GXZwOfEeC1VnQfXHpKztZUu28HAo=
X-Talos-MUID: 9a23:OYIpmgs8neORa5731M2n1R8yGfkw6LaUUWsjioUi4NCFKjR7NGLI
X-IronPort-AV: E=Sophos;i="6.03,204,1694728800"; 
   d="p7s'?scan'208";a="64461178"
From: Denis OSTERLAND-HEIM <denis.osterland@diehl.com>
To: "barebox@lists.infradead.org" <barebox@lists.infradead.org>
Message-ID: <200a079e402140bab3a6471e587152b2@diehl.com>
MIME-Version: 1.0
Content-Type: multipart/signed; protocol="application/x-pkcs7-signature"; micalg="sha-256"; boundary="----0CAD095F1AD2ADF5D8A19AB847A0B795"
Date: Fri,  6 Oct 2023 15:11:20 +0200 (CEST)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231006_061130_986168_FB39ABAF 
X-CRM114-Status: UNSURE (   9.53  )
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
X-Spam-Status: No, score=-104.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	USER_IN_WELCOMELIST,USER_IN_WHITELIST autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v2 1/2] fixup! raspi: support to read vc values via dt-2nd
 boot
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This is an S/MIME signed message

------0CAD095F1AD2ADF5D8A19AB847A0B795
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit


---
 arch/arm/boards/raspberry-pi/rpi-common.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boards/raspberry-pi/rpi-common.c
b/arch/arm/boards/raspberry-pi/rpi-common.c
index 56887abbc0..ea3c72fb94 100644
--- a/arch/arm/boards/raspberry-pi/rpi-common.c
+++ b/arch/arm/boards/raspberry-pi/rpi-common.c
@@ -406,7 +406,7 @@ static struct device_node *rpi_vc_fdt(void)
 	}
 
 	if (magic != FDT_MAGIC)
-		return ERR_PTR(-EINVAL);;
+		return ERR_PTR(-EINVAL);
 
 	size = be32_to_cpu(oftree->totalsize);
 	if (write_file("/vc.dtb", saved_vc_fdt, size))
@@ -475,7 +475,7 @@ static int rpi_devices_probe(struct device *dev)
 	const struct rpi_machine_data *dcfg;
 	struct regulator *reg;
 	struct rpi_priv *priv;
-       struct device_node *root;
+	struct device_node *root;
 	const char *name, *ptr;
 	char *hostname;
 	int ret;
-- 
2.39.2

------0CAD095F1AD2ADF5D8A19AB847A0B795
Content-Type: application/x-pkcs7-signature; name="smime.p7s"
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename="smime.p7s"

MIIPQAYJKoZIhvcNAQcCoIIPMTCCDy0CAQExDzANBglghkgBZQMEAgEFADALBgkq
hkiG9w0BBwGgggxWMIIGUTCCBDmgAwIBAgICMAAwDQYJKoZIhvcNAQELBQAwgaMx
ITAfBgNVBAMMGERpZWhsIEdyb3VwIE1haWwgUm9vdCBDQTELMAkGA1UEBhMCREUx
EjAQBgNVBAcMCU51ZXJuYmVyZzEUMBIGA1UECgwLRGllaGwgR3JvdXAxFDASBgNV
BAsMC0RpZWhsIEdyb3VwMQ8wDQYDVQQIDAZCYXllcm4xIDAeBgkqhkiG9w0BCQEW
EXg1MDktY2FAZGllaGwuY29tMB4XDTE4MDUyOTEyMzIzNVoXDTI4MDUyNjEyMzIz
NVowgZQxCzAJBgNVBAYTAkRFMQ8wDQYDVQQIDAZCYXllcm4xFDASBgNVBAoMC0Rp
ZWhsIEdyb3VwMRswGQYDVQQLDBJEaWVobCBNZXRlcmluZyBUS0gxHzAdBgNVBAMM
FkRpZWhsIE1ldGVyaW5nIE1haWwgQ0ExIDAeBgkqhkiG9w0BCQEWEXg1MDktY2FA
ZGllaGwuY29tMIICIjANBgkqhkiG9w0BAQEFAAOCAg8AMIICCgKCAgEAtISPrKPL
Zjjh//2n9b+GXgrhijJV2knQVC0+/FS3zGl4p2fboB+Vr4YHz1uilEvhsS1oG4FV
f1u0dqdmLVxDHBPMO2K1NKKOJN/6LDDfyiZGNqDOJke6FzrmDyPXXTDtgzWZfdnD
esx63XSxprre30oJ3BxDFS+/8UpuI628SPc1N4125rHeUXG4scKFSjqRPcIOAQ2X
veGXU2dYHzq7B02NA8tssmtJNwXjyvMjOw6HGZ8SB87TrFQm6drEtM7QhI/mfpGe
nTZ4nc84n0yKuMveav8IOspYbkOXzi4JapiOUpmccNLZdIiMg5WJQ0Xt9NSp5yD5
CYKideGrWgX2wNEBpalgjZoPPQDImcWEJx88/yYZ4FwtRD3VueFqpBr4z/bxwVDr
N2a/sEqnocY9Tm2EQyHFHDCJ9JyYEXB8W0LTFcUAx+uHijwPk/oIB5EeH8UygXlX
qUqII+BUZ+q5m5sIc4eXQ10UpUEjG/ptIyO1Ee/E0kPOWzHp07pPgXCZohZb3y41
Ha2pO6rXOsOmPBK2r2++fLWz3NFyfEJCmn6FcBNi003HUEVCup1D9/9yaPHPSieN
27sjQcQ96GbOitC99p3xMnSlg4N11lGeuTXCZjIGXdZL5/dThQaxneVA+hr2X+i1
KmqnesMaSBEuBEBDmbDbakEgJFVWtVeXuk8CAwEAAaOBmzCBmDASBgNVHRMBAf8E
CDAGAQH/AgEAMAsGA1UdDwQEAwIBBjAdBgNVHQ4EFgQUn8t6NGPzWsF+oZYXxmfn
p4Ok7rIwHwYDVR0jBBgwFoAUZrrYQMMD50v/OCDMgDN7y/GT2P8wNQYDVR0fBC4w
LDAqoCigJoYkaHR0cDovL2tleXMuZGllaGwuY29tL2NybC90ay1oX24uY3JsMA0G
CSqGSIb3DQEBCwUAA4ICAQAl6hO6b6+GseZi3EAU+zPVhxNZP5Y+YsBnjf13jCGw
nUVvPz6giwXiCd9KIC4eCqqrJLTHwZe8c/9hSk5CCd6A5XAd3YudrPDvmIwms5Ex
OREMQkygZO6/qxfXO6IhfUO4HvYQtQexzHOLuxG/KdycVwWapA4acFzBurxFQ3aG
jvPRgvWxe2Mt3K9wLrEhvGrDmS8yg4bYNyBZGgax6LRhfW4/ShInVUa0koG2Sj+H
hKpppvqDK4FNgR2dKeCPoo28P9a+K9N3wkLKx4zxaxHegij0DsJOBAVbhk+vDWDO
gedjtT09c9bsykaXFzykyQeQz7cwrTQ1gDacdcDgywMDQzZKim9O3JpyzvXnD7mb
CvclM3xp9w6jIJbeaQE7HDlA9YIL/bSRIQq8mJcXArUevLK2MX/Mb+5m3UMU+zXc
ZqmaneeZeR4bOWrmmhK6bMuce6H+i2YB1vG3BAcSfKQUzZ1m6aKSW1FvjI3SZXQD
FzRzBwC5ql7i2ugtfOLNYjOO/fvAxNppIZb3IyWN1KBAI7YgS4nx0us/NIlWpTMW
91WeUtNBCp2sgi3VTi/TUel3RZ9x3tggMUhrksGkFXz2NUL85AdPV6BqJXXXHggd
121rnduE9ocMt0MFLuDPkMaHqKNzBAcKTcmFM8KYMJ5Z7NBqGtTAgHNVmEnU8gu3
czCCBf0wggPloAMCAQICAgb0MA0GCSqGSIb3DQEBCwUAMIGUMQswCQYDVQQGEwJE
RTEPMA0GA1UECAwGQmF5ZXJuMRQwEgYDVQQKDAtEaWVobCBHcm91cDEbMBkGA1UE
CwwSRGllaGwgTWV0ZXJpbmcgVEtIMR8wHQYDVQQDDBZEaWVobCBNZXRlcmluZyBN
YWlsIENBMSAwHgYJKoZIhvcNAQkBFhF4NTA5LWNhQGRpZWhsLmNvbTAeFw0yMjAx
MTYwODIyMjNaFw0yNDAxMTcwODIyMjNaMIG8MSIwIAYDVQQDDBlkZW5pcy5vc3Rl
cmxhbmRAZGllaGwuY29tMSgwJgYJKoZIhvcNAQkBFhlkZW5pcy5vc3RlcmxhbmRA
ZGllaGwuY29tMQswCQYDVQQGEwJERTEPMA0GA1UECAwGQmF5ZXJuMRwwGgYDVQQK
DBNEaWVobCBNZXRlcmluZyBUSy1IMRwwGgYDVQQLDBNEaWVobCBNZXRlcmluZyBU
Sy1IMRIwEAYDVQQHDAlOdWVybmJlcmcwggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAw
ggEKAoIBAQCtiK2ROwKpXoaZxHvDoCkAqTh/L+Ymvg8sEV1mk//iOLWtENFkQfFp
3e1scofcCyYWMoJ9QEjKvKAdcFSvjqeczDmKnD8li4vqEukqGJmrNe5p2cQFJxpD
Gy/Pb9CoPtuE7GNMiBgQfX12qHj9sdopLv9nijEtSfCtXiIc+ees3kd9DBPhiiAv
S9t89DUy307W0izYMsUaqcfOWEFT2nLRhXweoPTE0VrSg485uYMdgdTj8OvEs/oB
1cM95QdiqjrWhuhc/JRJk/iyztrXA8gjdsGrk2SlCB2Pcv0tNAbplKw95z00rNRi
pwV+WFkpNRyruO2gkFKYvSy9J1gdXsarAgMBAAGjggEtMIIBKTAfBgNVHSMEGDAW
gBSfy3o0Y/NawX6hlhfGZ+eng6TusjAJBgNVHRIEAjAAMCQGA1UdEQQdMBuBGWRl
bmlzLm9zdGVybGFuZEBkaWVobC5jb20wNQYDVR0fBC4wLDAqoCigJoYkaHR0cDov
L2tleXMuZGllaGwuY29tL2NybC90ay1oX24uY3JsMDUGCCsGAQUFBwEBBCkwJzAl
BggrBgEFBQcwAoYZaHR0cDovL3d3dy5kaWVobC5jb20vcGtpLzAJBgNVHRMEAjAA
MB0GA1UdDgQWBBSjWBEDN4lSGcPnP9UrMtXUFmejNTALBgNVHQ8EBAMCBaAwHQYD
VR0lBBYwFAYIKwYBBQUHAwIGCCsGAQUFBwMEMBEGCWCGSAGG+EIBAQQEAwIFoDAN
BgkqhkiG9w0BAQsFAAOCAgEAgsI+DkMhcC9r5Eit3DLpMRVZzZAYMYpMvwsGPeWF
TF1fTt7DW5QoBhntXHet27YcU10qERLHO9cgXD0QhK5FroUTML3jT1r+Q+YZu0gb
ujpDlKWPJyXkrexgjUOHg+odKJDa50Vr6xwLzE+rgT4wpsUatKay3hwcTGuRQrD8
zJoxfLJ7bhznM8YrUD0fFpoz/8QcvoP2S3Y9wHn/r+gmKF3+6Nbgz7CYUlndENG7
Ul1tUrGMOWvPr+dXYEsqYPRk5eApuuYn/P8ax+GW+RlYm6wHDN3PRUDN/NoGzpuJ
FHTZVLNMPSrFTHdW+H2OPwyQTW6cZ2q+u69jm2Vc6ARXrEjzN5SRmjHodWpt7fUu
B3i6l0b36PFEAS42AO32U+FGsdi2T84KqZJOoohtJQKrTqKYn7aUQn7e3rQbQyLt
BxBO/rbPVjYwi7mUamOcggvIRx0oru3uIpsV59IFM/40lCv5s7mS5RmUudGtVZul
fnHj8b/R4j8S1IQEAzplBjmXX9tSPLy+8TKtT8NBnLWN/LGEoW+/O9NCdGuuRT4h
cgHEWf/AQSZ580/3AUcd/oC35b0E7qnfAZobqqipLqQkO4bYlgzSpazmXddoGcqm
YtVcPwt5SXQ3upyseicvLMLz11WqUmlUI9PKY8Ki+9oFc7SaiplvopQGwIxSQTLl
bQMxggKuMIICqgIBATCBmzCBlDELMAkGA1UEBhMCREUxDzANBgNVBAgMBkJheWVy
bjEUMBIGA1UECgwLRGllaGwgR3JvdXAxGzAZBgNVBAsMEkRpZWhsIE1ldGVyaW5n
IFRLSDEfMB0GA1UEAwwWRGllaGwgTWV0ZXJpbmcgTWFpbCBDQTEgMB4GCSqGSIb3
DQEJARYReDUwOS1jYUBkaWVobC5jb20CAgb0MA0GCWCGSAFlAwQCAQUAoIHkMBgG
CSqGSIb3DQEJAzELBgkqhkiG9w0BBwEwHAYJKoZIhvcNAQkFMQ8XDTIzMTAwNjEz
MTEyMFowLwYJKoZIhvcNAQkEMSIEIKFR8Y2xRXrU20tfYztvZYKsRR+Xib5Oh1Sz
3UwpUcFHMHkGCSqGSIb3DQEJDzFsMGowCwYJYIZIAWUDBAEqMAsGCWCGSAFlAwQB
FjALBglghkgBZQMEAQIwCgYIKoZIhvcNAwcwDgYIKoZIhvcNAwICAgCAMA0GCCqG
SIb3DQMCAgFAMAcGBSsOAwIHMA0GCCqGSIb3DQMCAgEoMA0GCSqGSIb3DQEBAQUA
BIIBAIywit1nUiHyXG5u+RTmb9cGFi/ZU9F3G0iHZjE8VUBlcJOHJ+3HsitWY8j1
Ned+KEOzR2ifYeCGv944zLzAkZhFYDeDfAzFxgCmYxlKwoaBFs6hMlvpYxLrlkjX
yDkHNGowV1DRqRNFTIKl5LWJSFokxyAOiJ2cT+jff48UD14LE+aiPruCEbhtxgBy
7v3YnSZ9KZ7N+GHAy8k1sp3ffvi8Lu0J5yQlK7F0FY6dSBFFNeGHt46/1C15vZf4
Bbstn+HrBg2fhD18WvwVmdzndBmtAg/BNsyVOrqCE4DBXS3VKEHlBzT0C2bPx/Lk
NL8pj3SRFLhHNbN8PaMepAvs/10=

------0CAD095F1AD2ADF5D8A19AB847A0B795--



