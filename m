Delivery-date: Fri, 06 Oct 2023 15:13:30 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qoke2-008Tp3-1Z
	for lore@lore.pengutronix.de; Fri, 06 Oct 2023 15:13:30 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qoke0-0007iD-B3
	for lore@pengutronix.de; Fri, 06 Oct 2023 15:13:29 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:Content-Type:
	MIME-Version:Message-ID:Subject:To:From:Reply-To:Cc:Content-Transfer-Encoding
	:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=H3vqUQVFWgMXVvDxpiosqubBEH0Dm2D9Wd+f8MxshBI=; b=3Bci1U0mdJAWPE7MUbXh6a5Sso
	02ouubwwJqQZ0fGQt+o9SHgEsZfYRrZz4iYklOC85PoegFEmUv13WROh+v6oq7/5B2eCPVbHfZk2r
	hQU4n/yXcT5rcjK3vygzSXTmlOllk+WYnfeaH3KcDoDLtXh2gfB98wyGud6VO+mlE5zapm6JOW9CV
	elpZbSdtThrOSAlo5ZL/KsP1F9Kkid5E48Q3QUesCSqZYeKbNw9hVCQoBmyeO4tTfTy5jHW9Cc8Oc
	OlAhttv/iHmz0+b9Lvc6bCrsMgS5dWtPopBiRclSFDVyOwkwOtZ8ZRHp7yAfKUc/yQfYiIsXHXkIk
	HLa+NGOw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qokct-005rPn-1l;
	Fri, 06 Oct 2023 13:12:19 +0000
Received: from enterprise02.smtp.diehl.com ([193.201.238.220])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qokcp-005rON-0j
	for barebox@lists.infradead.org;
	Fri, 06 Oct 2023 13:12:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=diehl.com; i=@diehl.com; q=dns/txt; s=default;
  t=1696597935; x=1728133935;
  h=from:to:subject:message-id:mime-version:date;
  bh=H3vqUQVFWgMXVvDxpiosqubBEH0Dm2D9Wd+f8MxshBI=;
  b=vUzki4RV7DbzR+TezIuSqmRInCJAbZl+tT/VBq5d+76ybR3+vusyRYxk
   tWcuN9Sa9M5qHYeCocYvEyfpph/tcxGv8Ein/0Uh4v7Iz7FCYLbaTCySi
   FIa9VRJFC47SA2QhFYmHR5TsLA0LPdXyulhYrMSSARxC+/SmBs3oUOzQr
   Nb6nvL5EKwIYcSdlCFqNlcBY37t/1AOgZgFZScT3IsMRoqDT8QaeJaKsU
   xl4NL0UAOVQWXHIpZQz4TqkIPOrsQ+ufsq+hdGvooisHiDAWg4issPIW2
   fu5yZqfUW/zzyAoexnUjwIa17ISlWaW2OS0riljeMumA46ynnFrziyLNq
   Q==;
IronPort-Data: A9a23:/lD2Ja6M4lv7nYSmrIaCKQxRtFvHchMFZxGqfqrLsTDasI4Tp2RHj
 j5GCjjCY6DUfSroO4IlK4qrthNR58eRi5Q2eLZe3WpoTndH79KaHrx1RW/7NHrMd8TOEh06s
 pVFYImYJsxpFSKArB6kPOO59SVyhazRGbPyAuOUYHssFAM5EXoq1hwzkeVl34Uw0IawCVzW0
 T+eT6MzHXf8s9IjGjlFs/LrRGpTlPTupCtK+Rs9aOFQ+lPfmnkRSpkYIOa6NX+/XooRHtm8A
 e3ZyOnRwo+ixPteNz/fuu29KiU3ar7OIRDczT1VVrm5xBRDqyw2lK08Mb0Xc0MQlzbMn+d3j
 t5XscTtCkZxVpEg49/xICS0aQkle/UuxZfHPWSn44vU0FLZNXftzvVqSkoxOMoA+ecwWQlyG
 YcjxEMwgmqr3KTuqI+Gd9SApvjPDeG0MYpF6y0wkmnVA61+GMyfGfibu4NShWlp18xARaaOO
 5ZAOWtkYSqbbkwUMD/7Kn6ccMSA2yOjKW0I8Dp5gYJtvgA/GSQoiOCF3OL9I4DMH4MM9qqhj
 jqu13zjBR0HP8CoxzOA83a97sfChiqTtLg6TdVUzdY0xgXIroAvIEdODwDi+aHn0hfWt+93c
 CT4xAJ/9MDey2T7FrERbzXgyFaYsxgVXcZnEuFSwGlhHYKNvm51rkBdJtJwQIROWP0eHFTG5
 XfQ9z/dPgGDhZXOIZ6rGhV4mhvpUcQdBTdqiSbp1mLp6fG7yG04pkqnotqOjMdZJzA6cN396
 2nikcQwu1kcpcoR3reSrFLOuR+XpLXMQBwK7CnPWUvwu2uVZKb9D2CpwVTe//1PM97DCFKGp
 mBCl8mT7ORIBpaI/MCPaLxVWuHzoa/VdmSH2zaDHLF4n9ip03Kue4FLpjZlOEpzNs8CdRflY
 ULTvUVa45o70H6CM/MrPdvrVZlCIa7IM9K0CenMSdl0erspLS2l4ApfSFyKwDW4+KQrueRlU
 XuBSu6mBGwXA6N35D63XPsGl74tyDo3yW7aSdb81RvP7FaFTHKQW7wKLwPUKOw44aOA5g7S6
 c4329a29iizmdbWOkH/mbP/53hTRZTnLfgac/BqS9M=
IronPort-HdrOrdr: A9a23:f+hjWaNWf/CsxsBcTxP155DYdb4zR+YMi2TDiHoddfUFSKalfp
 6V98jztCWE7gr5PUtNpTnuAtjlfZqxz+8W3WBzB8bAYOCFghrQEGgK1+KLrFOBJ8SXzJ8k6U
 4KSdkYNDSfNykesS/P2njCLz9s+qj1zImYwcPli1t9RwBjbK9tqy9/FwagC0VzAC1LH4AwGp
 aw7tdO42PIQwVjUu2LQl0+G8TTrdzCk5zrJTYAGh4c8QGLyRel8qTzHRS01goXFxlP3bAh22
 7YlBGR3NTQj9iLjjvnk0PD5ZVfn9XsjvNFGcy3k8AQbg7hjw65Db4RJYFr6FoOwd2H2RIPqp
 3hsh0gN8N85zf6ZWeuuybg3AHmzXIH92Li4UXwuwqpneXJABYBT+ZRj4NQdRXUr2A6ustn7a
 5N12WF87JKEBL7mjjn7dSgbWAhqqONmwturQcvtQ0XbWJeUs4mkWUnxjIjLH7UJlOz1GgleN
 Mec/00qswmPW9yVEqpwlWH8ObcI0jbIS32OHTqmvblogS+z0oJv3fwgvZv6ks9yA==
X-Talos-CUID: 9a23:T2I4aW0bwxExlI/WmDZXNrxfHtosYFSMzn7qDnS6JGNnWoKfZUeX0fYx
X-Talos-MUID: 9a23:HRXKJQW2wYuhBvHq/Bnq1W57LOBr2byNUBkvs4ktiuSWLzMlbg==
X-IronPort-AV: E=Sophos;i="6.03,204,1694728800"; 
   d="p7s'?scan'208";a="64461265"
From: Denis OSTERLAND-HEIM <denis.osterland@diehl.com>
To: "barebox@lists.infradead.org" <barebox@lists.infradead.org>
Message-ID: <4a249b0bd0de4ac181e8f1fe50df402f@diehl.com>
MIME-Version: 1.0
Content-Type: multipart/signed; protocol="application/x-pkcs7-signature"; micalg="sha-256"; boundary="----E8FB917E85FD03917A0AED42758790E2"
Date: Fri,  6 Oct 2023 15:12:13 +0200 (CEST)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231006_061215_554185_AD7C5BD7 
X-CRM114-Status: UNSURE (   8.92  )
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
X-Spam-Status: No, score=-104.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	USER_IN_WELCOMELIST,USER_IN_WHITELIST autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v2 2/2] fixup! raspi: fixup additional vc created nodes
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This is an S/MIME signed message

------E8FB917E85FD03917A0AED42758790E2
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit


---
 arch/arm/boards/raspberry-pi/rpi-common.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boards/raspberry-pi/rpi-common.c
b/arch/arm/boards/raspberry-pi/rpi-common.c
index ea3c72fb94..713fad78c9 100644
--- a/arch/arm/boards/raspberry-pi/rpi-common.c
+++ b/arch/arm/boards/raspberry-pi/rpi-common.c
@@ -289,7 +289,7 @@ static struct device_node *register_vc_fixup(struct
device_node *root,
 		tmp->full_name = xstrdup(ret->full_name);
 		of_register_fixup(rpi_vc_fdt_fixup, tmp);
 	} else {
-		pr_info("no '%s' node found in vc fdtn", path);
+		pr_info("no '%s' node found in vc fdt\n", path);
 	}
 
 	return ret;
-- 
2.39.2

------E8FB917E85FD03917A0AED42758790E2
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
MTIxM1owLwYJKoZIhvcNAQkEMSIEILKaVTtbK88fIim1XEX4GCvFAKyzP7x9p8ll
m9CtcDdMMHkGCSqGSIb3DQEJDzFsMGowCwYJYIZIAWUDBAEqMAsGCWCGSAFlAwQB
FjALBglghkgBZQMEAQIwCgYIKoZIhvcNAwcwDgYIKoZIhvcNAwICAgCAMA0GCCqG
SIb3DQMCAgFAMAcGBSsOAwIHMA0GCCqGSIb3DQMCAgEoMA0GCSqGSIb3DQEBAQUA
BIIBAAEPFpKBET59M+TOotg418HFjin7ZfZBntq+YKC8Q5+UW74/0ZEyBLllIlfQ
6C4Zm6bikCG4RWT+ktTNpnWwtxn2BD5RvwC/JsEYj+DAiDFwSxux20+FY0E/172W
XDAodOC1c+ykGXeP1cmEfJxukmEW4JvlDl30h3I+iKxLlfC97gvv0+ds8jrfGVCP
uZwmn3apjUczsLBO7zrD7tfNy6vqZNM2rM5MkBcT0ty0mRlk31ehcb6/lWzTVge3
fNNT9QbonvwKOty00ng7LNOiVp3qCA9ngTub4I2mm5AeQK5FDcqpzJqCywvkEW7v
xfWkhm6w5hJuuThpjulq2yWEiy8=

------E8FB917E85FD03917A0AED42758790E2--



