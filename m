Delivery-date: Fri, 11 Jun 2021 14:15:07 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lrg43-0005wm-SR
	for lore@lore.pengutronix.de; Fri, 11 Jun 2021 14:15:07 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lrg40-0005vu-7w
	for lore@pengutronix.de; Fri, 11 Jun 2021 14:15:07 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	References:To:Cc:In-Reply-To:Date:Subject:Mime-Version:Message-Id:From:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Jv5Y2whFhm8daAO7fNiISppSBM1+4GZPjcCS1fk3tiY=; b=mBKgWuh9/a/HAOzIvfy2YoBKs8
	41cVmuS02nl8xog3sreai7huwHvRfBaHI8+F3j1O050MmLrsCzFc29jsb0epWQPstVAyA/ZVyVU6a
	tkMoJja+IiZ+jjOgdC5ezAPV+ASu3e0588TxQbnekA/CaHpQZKRkXpSIMqoMDiIUdhIepm4KwdCgv
	AYmv7XvV7nzIKLWRjFfbVJfCjtSktbgap5XX5SZJwaFnynoqhYjKf4tVbBpSyaZIfS5/YWmCSU+OD
	7Ps6ECLbF9k98LjE7rWGyE++HDd5NS0apwuDyhBj44WZ36Jla27keoeMZmD6nh26fsnXmJ1aC2nIi
	jsU6QXwQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lrg2i-005D9R-HK; Fri, 11 Jun 2021 12:13:44 +0000
Received: from mail.inside-m2m.de ([188.68.57.244])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lrg2d-005D8o-O7
 for barebox@lists.infradead.org; Fri, 11 Jun 2021 12:13:41 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.inside-m2m.de (Postfix) with ESMTP id 55FD640533;
 Fri, 11 Jun 2021 14:13:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=inside-m2m.de;
 s=default; t=1623413588;
 bh=L25aTPvW3NNudq0j6D/vZ+rL9r/Ggy7tXu759LlQr8I=;
 h=From:Subject:Date:In-Reply-To:Cc:To:References:From;
 b=AIMLZ9iOtigmjV07/ytoVqLBC0oTHlNZyaXF7ZraFtrH3i+9PDKaYTnxpFssxBpTt
 QEI7dcp6+nSD1t6VIdFXXTWUHyfAGgyLRpn1ryFizCw1KwcW1QMpZYloxOYxJ5i9GN
 4gAS+oHw68ty0rdZtnF8l+J0TZ4MdJn7vl8sg2oOXYXO2PwjMYl78HrnK7cv5kPWrG
 qpLRI5yK0nTpREA3sNQdF5Rm7ssYNe6Fs42Kbvqwv2+Ebv45vepUr8Wga+UyFLM7LR
 QcUPblbNnRA1pXKW5BIo2T5uvA7pLysNDJGJ+2S9dsHYwH8qNxSSn65qBjNMhJqstK
 hzT5oBhwVGd0g==
X-Virus-Scanned: Debian amavisd-new at mail.inside-m2m.de
Received: from mail.inside-m2m.de ([127.0.0.1])
 by localhost (mail.inside-m2m.de [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7YUKuzDeS_EJ; Fri, 11 Jun 2021 14:13:08 +0200 (CEST)
Received: from smtpclient.apple (unknown [94.31.99.208])
 (Authenticated sender: konstantin.kletschke@inside-m2m.de)
 by mail.inside-m2m.de (Postfix) with ESMTPSA id EB23A40493;
 Fri, 11 Jun 2021 14:13:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=inside-m2m.de;
 s=default; t=1623413588;
 bh=L25aTPvW3NNudq0j6D/vZ+rL9r/Ggy7tXu759LlQr8I=;
 h=From:Subject:Date:In-Reply-To:Cc:To:References:From;
 b=AIMLZ9iOtigmjV07/ytoVqLBC0oTHlNZyaXF7ZraFtrH3i+9PDKaYTnxpFssxBpTt
 QEI7dcp6+nSD1t6VIdFXXTWUHyfAGgyLRpn1ryFizCw1KwcW1QMpZYloxOYxJ5i9GN
 4gAS+oHw68ty0rdZtnF8l+J0TZ4MdJn7vl8sg2oOXYXO2PwjMYl78HrnK7cv5kPWrG
 qpLRI5yK0nTpREA3sNQdF5Rm7ssYNe6Fs42Kbvqwv2+Ebv45vepUr8Wga+UyFLM7LR
 QcUPblbNnRA1pXKW5BIo2T5uvA7pLysNDJGJ+2S9dsHYwH8qNxSSn65qBjNMhJqstK
 hzT5oBhwVGd0g==
From: Konstantin Kletschke <konstantin.kletschke@inside-m2m.de>
Message-Id: <FCC3558F-5BCE-4B85-8C9A-80D34BAC8B3F@inside-m2m.de>
Mime-Version: 1.0 (Mac OS X Mail 14.0 \(3654.120.0.1.1\))
Date: Fri, 11 Jun 2021 14:13:07 +0200
In-Reply-To: <20210611120800.GF20470@pengutronix.de>
Cc: barebox@lists.infradead.org
To: Sascha Hauer <sha@pengutronix.de>
References: <97CB9693-C624-4014-8E73-6FDCA035BD62@inside-m2m.de>
 <20210611110857.GF22904@pengutronix.de>
 <202F658B-1D90-4215-9616-28237E491364@inside-m2m.de>
 <20210611120800.GF20470@pengutronix.de>
X-Mailer: Apple Mail (2.3654.120.0.1.1)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210611_051340_112120_50ADEA94 
X-CRM114-Status: GOOD (  13.67  )
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
Content-Type: multipart/mixed; boundary="===============8886570900340822193=="
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


--===============8886570900340822193==
Content-Type: multipart/signed;
	boundary="Apple-Mail=_BD777004-F2E7-48AA-8254-6CF59E9BBFC7";
	protocol="application/pkcs7-signature";
	micalg=sha-256


--Apple-Mail=_BD777004-F2E7-48AA-8254-6CF59E9BBFC7
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8


>> And a coloured command prompt! Are you guys serious? Nice!
>=20
> We're not in the 90ies anymore, are we? ;)

Yes, there have many things happen when I left bootloader/kernel =
programming, many.

And yesterday  I realised my u-boot was not reading my uEnv.txt, never =
did, neither where I put it.
So I bet faster is getting barebox to work than finding out how to make =
u-boot eating my uEnv.txt.

> Indeed that address looked suspicous to me, but I grepped the =
sourcecode
> for 0x4020f010 and 0x4020f0 afterwards.

Okay, I am =E2=80=9Cglad" you needed to verify with grep :-D

Konsti



--Apple-Mail=_BD777004-F2E7-48AA-8254-6CF59E9BBFC7
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
CQMxCwYJKoZIhvcNAQcBMBwGCSqGSIb3DQEJBTEPFw0yMTA2MTExMjEzMDdaMC8GCSqGSIb3DQEJ
BDEiBCBZZVNPMbN11eEABTnpO+IQuFzkeIIVy+tudGa4Nh9x5jCBvQYJKwYBBAGCNxAEMYGvMIGs
MIGWMQswCQYDVQQGEwJHQjEbMBkGA1UECBMSR3JlYXRlciBNYW5jaGVzdGVyMRAwDgYDVQQHEwdT
YWxmb3JkMRgwFgYDVQQKEw9TZWN0aWdvIExpbWl0ZWQxPjA8BgNVBAMTNVNlY3RpZ28gUlNBIENs
aWVudCBBdXRoZW50aWNhdGlvbiBhbmQgU2VjdXJlIEVtYWlsIENBAhEAjME22FZvrY2T2koTKnYL
HzCBvwYLKoZIhvcNAQkQAgsxga+ggawwgZYxCzAJBgNVBAYTAkdCMRswGQYDVQQIExJHcmVhdGVy
IE1hbmNoZXN0ZXIxEDAOBgNVBAcTB1NhbGZvcmQxGDAWBgNVBAoTD1NlY3RpZ28gTGltaXRlZDE+
MDwGA1UEAxM1U2VjdGlnbyBSU0EgQ2xpZW50IEF1dGhlbnRpY2F0aW9uIGFuZCBTZWN1cmUgRW1h
aWwgQ0ECEQCMwTbYVm+tjZPaShMqdgsfMA0GCSqGSIb3DQEBCwUABIIBAFRWD25GhH8E+vGPikbG
bh0w+oM4noflavI0YwsU8UE3dfdAcwGXr+LyxfNZt1+pdYXm2L2kcjB+wVRwjL9mE4IWWfaHh0Cx
p81a31kJ+6jYLlJBrr+p5KpyCCcIASBua5rvqPjY+m86SclW9zhKzOLKqcnpl1XOZP6riD7n+vLQ
zwsIIWSLoos8NtO5n/386sqEKG0JWA1Z2NGlJBlxoFJIIQwwpxH2MK8PhMi9xBr4Brj5pnEIl/Km
IImEl/CC6W+4qQxotphy2OrmNLfQByLmb982LdChANfSft6KebYLP5EZS3qweOiRObNY6mtHRPYx
1jqwi7Gi4ZNhwG6frBsAAAAAAAA=
--Apple-Mail=_BD777004-F2E7-48AA-8254-6CF59E9BBFC7--


--===============8886570900340822193==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============8886570900340822193==--


