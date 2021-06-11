Delivery-date: Fri, 11 Jun 2021 13:47:44 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lrfdY-0005Zc-1j
	for lore@lore.pengutronix.de; Fri, 11 Jun 2021 13:47:44 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lrfdX-0002eh-13
	for lore@pengutronix.de; Fri, 11 Jun 2021 13:47:43 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	References:To:Cc:In-Reply-To:Date:Subject:Mime-Version:Message-Id:From:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=tUfFeOFh3ZEGRXXTj5X7G3li6GhOSOpnlDz/UzYkMw8=; b=I+vaV4M/7SIRDiZaHEw+jdJzAW
	rgNJLkB9k5NOQsLcqANGIsG3Rm0zq+lBle9PJA6F7elTgLkcTrxsDAIZxtBm1vmI43vMkqFdnzqlQ
	A1BUYxPBzsJi9XDolmo2/ShOpU2Yts2QuNPvA51wlDExl6jwixM/VjD84amIbcrkzu9pXoy4EQ5bl
	Grl6N0z9YqjOZ5OitZprrHDOtGqWzWz5KJdF9kD3xf4Vy6m6+6GXvRv2CeeNlCze7R3qIf6WbVPkN
	IGw06vLR1pW7iS2eFUiLbHwv7p0GX8EpnDtcIlizx5ZkFiShdC+PDK6ho6bPTJscHOApgjOo8Rl0K
	x0soldmg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lrfcL-00565u-0k; Fri, 11 Jun 2021 11:46:29 +0000
Received: from mail.inside-m2m.de ([188.68.57.244])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lrfcF-00564n-Ow
 for barebox@lists.infradead.org; Fri, 11 Jun 2021 11:46:25 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.inside-m2m.de (Postfix) with ESMTP id 69AF940533;
 Fri, 11 Jun 2021 13:45:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=inside-m2m.de;
 s=default; t=1623411952;
 bh=8C1zllCp5PwosbpwrvqUf6JMEeed5A+iJ8jsRGBfAic=;
 h=From:Subject:Date:In-Reply-To:Cc:To:References:From;
 b=AJ0ldnjRz0HS0W2s4u3qcM3snWj8BakVjczSdcEj5Vd/qNTOrLOFtQo0ZXJs4lC3Q
 QzWeDnZf+DculiQtHa8JtrN6dSnhp2P4UwZrZADilFQyGr9l1fATwcY+lrXRL6Tln3
 6sCsIJhxWshvHfbNHYtwsapcNc3h2dfKWZsyvKndHdynXP/kWKcy8YpWKHyGMQ1G4C
 k101ZI+T5d/fe+xe+WDpBvGIBLsNqXTwoGvThbBqc0pGEJTfIppA4GofHE+Th8uXUA
 06NHxD1ezURzAYq2OtVYtihf4zNA3dRCUTWvuqTz5CMrX8X6wwjOspbE15mtFABTMD
 aAGKyENuBiglg==
X-Virus-Scanned: Debian amavisd-new at mail.inside-m2m.de
Received: from mail.inside-m2m.de ([127.0.0.1])
 by localhost (mail.inside-m2m.de [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id s8Bngz8Poz2Q; Fri, 11 Jun 2021 13:45:52 +0200 (CEST)
Received: from smtpclient.apple (unknown [94.31.99.208])
 (Authenticated sender: konstantin.kletschke@inside-m2m.de)
 by mail.inside-m2m.de (Postfix) with ESMTPSA id F1B48401B9;
 Fri, 11 Jun 2021 13:45:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=inside-m2m.de;
 s=default; t=1623411952;
 bh=8C1zllCp5PwosbpwrvqUf6JMEeed5A+iJ8jsRGBfAic=;
 h=From:Subject:Date:In-Reply-To:Cc:To:References:From;
 b=AJ0ldnjRz0HS0W2s4u3qcM3snWj8BakVjczSdcEj5Vd/qNTOrLOFtQo0ZXJs4lC3Q
 QzWeDnZf+DculiQtHa8JtrN6dSnhp2P4UwZrZADilFQyGr9l1fATwcY+lrXRL6Tln3
 6sCsIJhxWshvHfbNHYtwsapcNc3h2dfKWZsyvKndHdynXP/kWKcy8YpWKHyGMQ1G4C
 k101ZI+T5d/fe+xe+WDpBvGIBLsNqXTwoGvThbBqc0pGEJTfIppA4GofHE+Th8uXUA
 06NHxD1ezURzAYq2OtVYtihf4zNA3dRCUTWvuqTz5CMrX8X6wwjOspbE15mtFABTMD
 aAGKyENuBiglg==
From: Konstantin Kletschke <konstantin.kletschke@inside-m2m.de>
Message-Id: <202F658B-1D90-4215-9616-28237E491364@inside-m2m.de>
Mime-Version: 1.0 (Mac OS X Mail 14.0 \(3654.120.0.1.1\))
Date: Fri, 11 Jun 2021 13:45:51 +0200
In-Reply-To: <20210611110857.GF22904@pengutronix.de>
Cc: barebox@lists.infradead.org
To: Sascha Hauer <sha@pengutronix.de>
References: <97CB9693-C624-4014-8E73-6FDCA035BD62@inside-m2m.de>
 <20210611110857.GF22904@pengutronix.de>
X-Mailer: Apple Mail (2.3654.120.0.1.1)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210611_044624_137470_5CF19C09 
X-CRM114-Status: GOOD (  16.81  )
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
Content-Type: multipart/mixed; boundary="===============2227174321288814168=="
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: Beaglebone Black defconfigs
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)


--===============2227174321288814168==
Content-Type: multipart/signed;
	boundary="Apple-Mail=_D1F64059-867F-4E74-A15E-507614E7C94B";
	protocol="application/pkcs7-signature";
	micalg=sha-256


--Apple-Mail=_D1F64059-867F-4E74-A15E-507614E7C94B
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8



> On 11. Jun 2021, at 13:08, Sascha Hauer <sha@pengutronix.de> wrote:
>=20
> Hi Konsti, nice to see you here :)

Hi Sascha :-D Nice to see you, too.

> That's the config for the beaglebo*ard*, for the beaglebo*ne* you'll
> have to use the omap_defconfig. This is the config for all omap/am33xx
> boards. The resulting image is images/barebox-am33xx-beaglebone.img.

Thank. You. Very. Much.

E voila, second stage is fine:

[=E2=80=A6]
barebox 2021.05.0-00093-g7689055a8 #5 Fri Jun 11 13:24:00 CEST 2021


Board: TI AM335x BeagleBone black
detected 'BeagleBone Black=E2=80=99
[=E2=80=A6]


And a coloured command prompt! Are you guys serious? Nice!


> Looks consistent. 0x4020f010 is OMAP3_SRAM_SCRATCH_SPACE + 0x10 used =
in
> beagle_board_init_sdram(). It seems you start a binary for the
> beagleboard on your beaglebone.

All your assumptions are correct, I have a nice boot =
loader-coloured-prompt now and
will figure out now to give it my kernel to boot. Expect more stupid =
questions soon :-)

But you don=E2=80=99t tell me you know this address from brain muscle =
memory?

Regards
Konsti=

--Apple-Mail=_D1F64059-867F-4E74-A15E-507614E7C94B
Content-Disposition: attachment;
	filename=smime.p7s
Content-Type: application/pkcs7-signature;
	name=smime.p7s
Content-Transfer-Encoding: base64

MIAGCSqGSIb3DQEHAqCAMIACAQExDzANBglghkgBZQMEAgEFADCABgkqhkiG9w0BBwEAAKCCDBMw
ggX7MIIE46ADAgECAhEAjME22FZvrY2T2koTKnYLHzANBgkqhkiG9w0BAQsFADCBljELMAkGA1UE
BhMCR0IxGzAZBgNVBAgTEkdyZWF0ZXIgTWFuY2hlc3RlcjEQMA4GA1UEBxMHU2FsZm9yZDEYMBYG
A1UEChMPU2VjdGlnbyBMaW1pdGVkMT4wPAYDVQQDEzVTZWN0aWdvIFJTQSBDbGllbnQgQXV0aGVu
dGljYXRpb24gYW5kIFNlY3VyZSBFbWFpbCBDQTAeFw0yMTA1MjEwMDAwMDBaFw0yNDA1MjAyMzU5
NTlaMIH7MQswCQYDVQQGEwJERTEWMBQGA1UECBMNTmllZGVyc2FjaHNlbjEQMA4GA1UEBxMHR2Fy
YnNlbjEYMBYGA1UEChMPSU5TSURFIE0yTSBHbWJIMTUwMwYDVQQLEyxJc3N1ZWQgdGhyb3VnaCBJ
TlNJREUgTTJNIEdtYkggRS1QS0kgTWFuYWdlcjEfMB0GA1UECxMWQ29ycG9yYXRlIFNlY3VyZSBF
bWFpbDEdMBsGA1UEAxMUS29uc3RhbnRpbiBLbGV0c2Noa2UxMTAvBgkqhkiG9w0BCQEWImtvbnN0
YW50aW4ua2xldHNjaGtlQGluc2lkZS1tMm0uZGUwggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEK
AoIBAQCq0vwXwa88PUodDzujRRiO2R6HI+4Z5RTdFLL7azDWeKXNw/4fFwRSbi6x9yNXv6FMAHZ5
1xjH2Qt3VmyBcIuYGDIidvW4XozjU6/aWIz/BviKnYuUEs4/eXPMSabB9ZHqyVZowTPg0kRElWUJ
O7VbSBovTZj4JBgoO6gdVBqycyAdpW1CD0cciUaLVav6dldZlZiznhJexe9b6zOEMURxaDNTxTgn
dc5HKA8kFKCDT4Uf1A6mFkdUIK27whZnCDHkvRLyWEJwau8VYbKTQn8UhwcANqO5n6AOY5ieb1zr
r5SgtLRn4olfMvyjLWOPMu6bkMcBtYGnS1Ryx9mvqiGjAgMBAAGjggHbMIIB1zAfBgNVHSMEGDAW
gBQJwPL8C9qU21/+K9+omULPyeCtADAdBgNVHQ4EFgQUsRGEL6z900tpR9BBhRWeFUq29TUwDgYD
VR0PAQH/BAQDAgWgMAwGA1UdEwEB/wQCMAAwHQYDVR0lBBYwFAYIKwYBBQUHAwQGCCsGAQUFBwMC
MEAGA1UdIAQ5MDcwNQYMKwYBBAGyMQECAQEBMCUwIwYIKwYBBQUHAgEWF2h0dHBzOi8vc2VjdGln
by5jb20vQ1BTMFoGA1UdHwRTMFEwT6BNoEuGSWh0dHA6Ly9jcmwuc2VjdGlnby5jb20vU2VjdGln
b1JTQUNsaWVudEF1dGhlbnRpY2F0aW9uYW5kU2VjdXJlRW1haWxDQS5jcmwwgYoGCCsGAQUFBwEB
BH4wfDBVBggrBgEFBQcwAoZJaHR0cDovL2NydC5zZWN0aWdvLmNvbS9TZWN0aWdvUlNBQ2xpZW50
QXV0aGVudGljYXRpb25hbmRTZWN1cmVFbWFpbENBLmNydDAjBggrBgEFBQcwAYYXaHR0cDovL29j
c3Auc2VjdGlnby5jb20wLQYDVR0RBCYwJIEia29uc3RhbnRpbi5rbGV0c2Noa2VAaW5zaWRlLW0y
bS5kZTANBgkqhkiG9w0BAQsFAAOCAQEAHeviKoZgN7sZ2rAu58d3ogKPl+QDpxVQVVjT83dcHT3i
ix+gY3EQZWKxzr1BWNjxckcop0MHLuOIvDrJp26S06It3XcXx3q60cTq7mvU9N2gOVhYKOnDJRIc
4LLUXJK2BmFgJYMuVnQqWpibiuSKBXHDnl2V1V5KEu9jLhUWy7kOVRMIKh535wNLHAgGt3ackqxA
t09lt8aEKwijx8WsZCKJ5AhLUjUXxO+hRLQG+1pd7btepFDoFqkb7Xj1uyy/2GTSqiYqxF0Evd38
Vglq4dsVQSX/mWRTIkIzCKw7IRhFEJFXfrcrHWdFO2zXz6kiPuBRuUew76sRhmsQiNKQOzCCBhAw
ggP4oAMCAQICEE2ULBDUO+CUCcWBLTorBk8wDQYJKoZIhvcNAQEMBQAwgYgxCzAJBgNVBAYTAlVT
MRMwEQYDVQQIEwpOZXcgSmVyc2V5MRQwEgYDVQQHEwtKZXJzZXkgQ2l0eTEeMBwGA1UEChMVVGhl
IFVTRVJUUlVTVCBOZXR3b3JrMS4wLAYDVQQDEyVVU0VSVHJ1c3QgUlNBIENlcnRpZmljYXRpb24g
QXV0aG9yaXR5MB4XDTE4MTEwMjAwMDAwMFoXDTMwMTIzMTIzNTk1OVowgZYxCzAJBgNVBAYTAkdC
MRswGQYDVQQIExJHcmVhdGVyIE1hbmNoZXN0ZXIxEDAOBgNVBAcTB1NhbGZvcmQxGDAWBgNVBAoT
D1NlY3RpZ28gTGltaXRlZDE+MDwGA1UEAxM1U2VjdGlnbyBSU0EgQ2xpZW50IEF1dGhlbnRpY2F0
aW9uIGFuZCBTZWN1cmUgRW1haWwgQ0EwggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQDK
PO2UCkH/3vlGuejWO+bakr8rEE6qGryCvb4mHCkqKtLNnFCBP22ULvOXqGfV9eNKjkypdR8i0yW2
sxpepwRIm4rx20rno0JKuriIMpoqr03E5cWapdfbM3wccaNDZvZe/S/Uvk2TUxA8oDX3F5ZBykYQ
YVRR3SQ36gejH4v1pXWuN82IKPdsmTqQlo49ps+LbnTeef8hNfl7xZ8+cbDhW5nv0qGPVgGt/biT
kR7WwtMewu2mIr06MbiJBEF2rpn9OVXH+EYB7PmHfpsEkzGp0cul3AhSROpPyx7d53Q97ANyH/yQ
c+jl9mXm7UHR5ymr+wM3/mwIbnYOz5BTk7kTAgMBAAGjggFkMIIBYDAfBgNVHSMEGDAWgBRTeb9a
qitKz1SA4dibwJ3ysgNmyzAdBgNVHQ4EFgQUCcDy/AvalNtf/ivfqJlCz8ngrQAwDgYDVR0PAQH/
BAQDAgGGMBIGA1UdEwEB/wQIMAYBAf8CAQAwHQYDVR0lBBYwFAYIKwYBBQUHAwIGCCsGAQUFBwME
MBEGA1UdIAQKMAgwBgYEVR0gADBQBgNVHR8ESTBHMEWgQ6BBhj9odHRwOi8vY3JsLnVzZXJ0cnVz
dC5jb20vVVNFUlRydXN0UlNBQ2VydGlmaWNhdGlvbkF1dGhvcml0eS5jcmwwdgYIKwYBBQUHAQEE
ajBoMD8GCCsGAQUFBzAChjNodHRwOi8vY3J0LnVzZXJ0cnVzdC5jb20vVVNFUlRydXN0UlNBQWRk
VHJ1c3RDQS5jcnQwJQYIKwYBBQUHMAGGGWh0dHA6Ly9vY3NwLnVzZXJ0cnVzdC5jb20wDQYJKoZI
hvcNAQEMBQADggIBAEFEdQCrOcIV9d6OlW0ycWiMAN0X13ocEDiQyOOxvRcxkfO244K0oX7GzCGH
YaqRbklCszzNWVT4DZU/vYrLaeVEDUbCYg+Ci7vhNn9dNqscbzN0xKBoOuRVjPPWDechU70geT3p
XCxpwi8EXwl+oiz7xpYfY99JSs3E/piztTSxljHitcPr5yoWr9lbkFR8KU3+uGTZ11BfKfuSSaRr
ZFBv133SeY0d2AqvB9Dj2ZDaFZA0OQkkhfAqNgDpVRH99lQV4JSKx0N7/QAEtMj6OF5dRXV6hhXu
U3A0Eql4d0247oBpxvnfcmV95QfG8HP059hZSJe7T2wwC+IzXVDQO4xnnvrQJ07ZWemxc/grFpgi
G+o+pQxapF1bKftysi02Rl6uhdp5wbTeLeYzt2SI9oKSChwGDQQFixtkNnxuwbdrTwvASwvViDPd
IGzIQJrTBqriE5/9nzkXbDZmld8/7DyriJ/A73RIZllX4dH8mHqsRpU8NEX8IQZWpHWGK5A5nVgv
l7MxNfRlIvCvKZQTSnCL8oNqJgHXm6zCB4gBwDonM8V/2kuQAUVazVA3I376eIWGwzjuqh3H88v7
mNHzubLHm5h0ERCSQNz6UoHVZy3q5xeqbYSaxpDQz3lCNObL6sNaOQNh3DcyzqZJYTcGfuLlmC3A
IteAAh7lbybJszYnMYIDxzCCA8MCAQEwgawwgZYxCzAJBgNVBAYTAkdCMRswGQYDVQQIExJHcmVh
dGVyIE1hbmNoZXN0ZXIxEDAOBgNVBAcTB1NhbGZvcmQxGDAWBgNVBAoTD1NlY3RpZ28gTGltaXRl
ZDE+MDwGA1UEAxM1U2VjdGlnbyBSU0EgQ2xpZW50IEF1dGhlbnRpY2F0aW9uIGFuZCBTZWN1cmUg
RW1haWwgQ0ECEQCMwTbYVm+tjZPaShMqdgsfMA0GCWCGSAFlAwQCAQUAoIIB6zAYBgkqhkiG9w0B
CQMxCwYJKoZIhvcNAQcBMBwGCSqGSIb3DQEJBTEPFw0yMTA2MTExMTQ1NTFaMC8GCSqGSIb3DQEJ
BDEiBCBCVum/9lHc5yu+JGCpOoxw+G/yI8Lmf5XtK2oMvQ1DEzCBvQYJKwYBBAGCNxAEMYGvMIGs
MIGWMQswCQYDVQQGEwJHQjEbMBkGA1UECBMSR3JlYXRlciBNYW5jaGVzdGVyMRAwDgYDVQQHEwdT
YWxmb3JkMRgwFgYDVQQKEw9TZWN0aWdvIExpbWl0ZWQxPjA8BgNVBAMTNVNlY3RpZ28gUlNBIENs
aWVudCBBdXRoZW50aWNhdGlvbiBhbmQgU2VjdXJlIEVtYWlsIENBAhEAjME22FZvrY2T2koTKnYL
HzCBvwYLKoZIhvcNAQkQAgsxga+ggawwgZYxCzAJBgNVBAYTAkdCMRswGQYDVQQIExJHcmVhdGVy
IE1hbmNoZXN0ZXIxEDAOBgNVBAcTB1NhbGZvcmQxGDAWBgNVBAoTD1NlY3RpZ28gTGltaXRlZDE+
MDwGA1UEAxM1U2VjdGlnbyBSU0EgQ2xpZW50IEF1dGhlbnRpY2F0aW9uIGFuZCBTZWN1cmUgRW1h
aWwgQ0ECEQCMwTbYVm+tjZPaShMqdgsfMA0GCSqGSIb3DQEBCwUABIIBAJl3EbfPaaDILvzjGQhS
iqfxzzRc3z0rDnxMJJyxanLuwt841FRhi+KyrmHlAphplvpi+bJCGO9SUEjQb8MjE7MdywlzguzV
tWRDpOSZUwRlnE/707aepRNmXv0zDWIMWYtP2w6Dyc71V86ekqs2MaprhU8b7LK66i6wqjwJgRRj
MWvvGM/bOgq4q59wz1PTJAlFfNL9tXbPzaGE2pB0GfNJdthmkqIPsMpTrNkvunefkA4ei2rEmSok
YwaiuXVJH292s8RdivKYpqa/i6qeBrBYUODf1VJn4w0CpAn/8ZeD27Nrob+/ut+NF06s/8hRxQ1t
iKIjsgkUZD4UiWXbahkAAAAAAAA=
--Apple-Mail=_D1F64059-867F-4E74-A15E-507614E7C94B--


--===============2227174321288814168==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============2227174321288814168==--


