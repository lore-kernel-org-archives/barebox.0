Delivery-date: Fri, 11 Jun 2021 12:07:53 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lre4v-0004Cy-8O
	for lore@lore.pengutronix.de; Fri, 11 Jun 2021 12:07:53 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lre4u-0006Jb-2x
	for lore@pengutronix.de; Fri, 11 Jun 2021 12:07:53 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:
	Date:Message-Id:Subject:Mime-Version:From:Reply-To:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=CfI5d0Lw7i1/LyGjGMY+j63nbFcV8UqvnmZ1pA/nO6M=; b=UCJ
	Cxk447vlDNXqjg7e5vSp0eqkiTpb+bydMiW0OouZ8PrWt2x9qh5rcHYYMwgrvq1VcSV+mAlwPwCh6
	NPdnL4H3iW42lAcq9N0YUBDJtG5Yhp76ivbzawXR9aCjQiHjIyZf0dfyToCGroVYDI8aXVF/J+ODd
	DXjSmjV0ygUxUnL8e8RyhvSooh9fMHBWA86/mK3Cq7ZFXMT3jhobSdsz82tzN1wTr396auhXBtwDb
	FHs7mZ1VCiLx6l6R64Ym8b6vzd4kNKoiQGjZ5hQKffHml6Wuc5ZiozHK1pPCLrkBdUFJDGwewp7Qb
	+1tTGGWqgC8GDP/v/MSblt0DMULiZ9A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lre3W-004eJ8-QY; Fri, 11 Jun 2021 10:06:26 +0000
Received: from mail.inside-m2m.de ([188.68.57.244])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lre3Q-004eI6-Om
 for barebox@lists.infradead.org; Fri, 11 Jun 2021 10:06:22 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.inside-m2m.de (Postfix) with ESMTP id C6FF440380
 for <barebox@lists.infradead.org>; Fri, 11 Jun 2021 12:05:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=inside-m2m.de;
 s=default; t=1623405944;
 bh=44srdVbeO5/serYuYQr5/X6nwfH3Q1e7lIn5LNDHZR8=;
 h=From:Subject:Date:To:From;
 b=SehhxEVv+6Ff+8GRy/ZpvwImq4kFKcIrS31Y4+OYZvshXE0e+cXBxJssTPFfRDeW4
 jeVBWsJ8F0t77N+Reqh5kzdixxXZP+iMd/pD69veZJ2jVYGKUdwVt2OwIX+fhcmo6g
 MLMkdle6eQKRTAuOgueMI73YPdSG+6Grm4vqpKWrBGxhS52LEdj+zEgF6EHoajkYOy
 GZAwS0uZg1DWTg5PSqIXJInJt1/kZu7eOE8WFml7ibKKo6IQ6DsJd53JL467/xTEb0
 pDJKhqD7a8ObsIjDCWXV7X56fcakKw0PSHF769gdKFH88eay/mXeRn2Ez6x/bDKCfS
 YHFsd2wDJdFlA==
X-Virus-Scanned: Debian amavisd-new at mail.inside-m2m.de
Received: from mail.inside-m2m.de ([127.0.0.1])
 by localhost (mail.inside-m2m.de [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ls9jkD8nEHqT for <barebox@lists.infradead.org>;
 Fri, 11 Jun 2021 12:05:44 +0200 (CEST)
Received: from smtpclient.apple (unknown [94.31.99.208])
 (Authenticated sender: konstantin.kletschke@inside-m2m.de)
 by mail.inside-m2m.de (Postfix) with ESMTPSA id 5CF44402AB
 for <barebox@lists.infradead.org>; Fri, 11 Jun 2021 12:05:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=inside-m2m.de;
 s=default; t=1623405944;
 bh=44srdVbeO5/serYuYQr5/X6nwfH3Q1e7lIn5LNDHZR8=;
 h=From:Subject:Date:To:From;
 b=SehhxEVv+6Ff+8GRy/ZpvwImq4kFKcIrS31Y4+OYZvshXE0e+cXBxJssTPFfRDeW4
 jeVBWsJ8F0t77N+Reqh5kzdixxXZP+iMd/pD69veZJ2jVYGKUdwVt2OwIX+fhcmo6g
 MLMkdle6eQKRTAuOgueMI73YPdSG+6Grm4vqpKWrBGxhS52LEdj+zEgF6EHoajkYOy
 GZAwS0uZg1DWTg5PSqIXJInJt1/kZu7eOE8WFml7ibKKo6IQ6DsJd53JL467/xTEb0
 pDJKhqD7a8ObsIjDCWXV7X56fcakKw0PSHF769gdKFH88eay/mXeRn2Ez6x/bDKCfS
 YHFsd2wDJdFlA==
From: Konstantin Kletschke <konstantin.kletschke@inside-m2m.de>
Mime-Version: 1.0 (Mac OS X Mail 14.0 \(3654.120.0.1.1\))
Message-Id: <97CB9693-C624-4014-8E73-6FDCA035BD62@inside-m2m.de>
Date: Fri, 11 Jun 2021 12:05:43 +0200
To: barebox@lists.infradead.org
X-Mailer: Apple Mail (2.3654.120.0.1.1)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210611_030621_279651_3A93B24C 
X-CRM114-Status: GOOD (  12.43  )
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
Content-Type: multipart/mixed; boundary="===============0775368915500103772=="
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
Subject: Beaglebone Black defconfigs
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)


--===============0775368915500103772==
Content-Type: multipart/signed;
	boundary="Apple-Mail=_D7F7E11E-E7E4-432A-A27E-6215C464DB0D";
	protocol="application/pkcs7-signature";
	micalg=sha-256


--Apple-Mail=_D7F7E11E-E7E4-432A-A27E-6215C464DB0D
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8

Hello,

I am currently trying to bring up barebox for my Beaglebone Black =
devices.

I did an "ARCH=3Darm CROSS_COMPILE=3Darm-buildroot-linux-gnueabihf- make =
am335x_mlo_defconfig=E2=80=9D, make and
copied resulting barebox-am33xx-beaglebone-mlo.img to MLO into my FAT =
boot partition.

Then I did "ARCH=3Darm CROSS_COMPILE=3Darm-buildroot-linux-gnueabihf- =
make omap3530_beagle_defconfig=E2=80=9D, make=20
and copied resulting barebox-beagleboard.img to barebox.bin into my boot =
FAT.

Is the the different prefix in the defconfigs (am33=E2=80=A6 vs. =
omap35=E2=80=A6) reasonable?=20
Is this approach generally reasonable?

Many references in internet to matching
defconfigs I found refer to non existing ones, there seems to happen =
great overhaul meanwhile.=20
I am also asking because, well, it does not work:

barebox 2021.05.0-00093-g7689055a8 #2 Fri Jun 11 09:01:36 CEST 2021


Board: TI AM335x BeagleBone
detected 'BeagleBone Black'
omap-hsmmc 48060000.mmc@0.of: registered as mmc0
omap-hsmmc 481d8000.mmc@0.of: registered as mmc1
booting from MMC
mmc1: detected MMC card version 5.1
mmc1: registered mmc1
unable to handle paging request at address 0x4020f010
pc : [<8ffbbd5a>]    lr : [<8ffbbd89>]
sp : 9ffeffb0  ip : 00000000  fp : 00014e2c
r10: 00125920  r9 : 8ffbbce5  r8 : 9ffe4000
r7 : 80000000  r6 : 9fe1a46e  r5 : 402f0400  r4 : 8ffbbcdc
r3 : 0000060a  r2 : 4020f010  r1 : abe742c3  r0 : 80000000
Flags: nzCv  IRQs off  FIQs on  Mode SVC_32

no stack data available

This repeats endlessly. I investigated the data sheet and if I am =
correct 0x4020f010 seems to be a reserved
area in L3 memory map.

Kind Regards
Konsti

INSIDE M2M GmbH
Konstantin Kletschke
Berenbosteler Stra=C3=9Fe 76 B
30823 Garbsen

Telefon: +49 (0) 5137 90950136
Mobil: +49 (0) 151 15256238
Fax: +49 (0) 5137 9095010

konstantin.kletschke@inside-m2m.de
http://www.inside-m2m.de=20

Gesch=C3=A4ftsf=C3=BChrung: Michael Emmert, Ingo Haase, Dr. Fred =
K=C3=B6nemann, Derek Uhlig
HRB: 111204, AG Hannover


--Apple-Mail=_D7F7E11E-E7E4-432A-A27E-6215C464DB0D
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
CQMxCwYJKoZIhvcNAQcBMBwGCSqGSIb3DQEJBTEPFw0yMTA2MTExMDA1NDNaMC8GCSqGSIb3DQEJ
BDEiBCALO7Vgws1WBQM2BcA24qud4hlpprc7Rm3sBzR+ND2lLTCBvQYJKwYBBAGCNxAEMYGvMIGs
MIGWMQswCQYDVQQGEwJHQjEbMBkGA1UECBMSR3JlYXRlciBNYW5jaGVzdGVyMRAwDgYDVQQHEwdT
YWxmb3JkMRgwFgYDVQQKEw9TZWN0aWdvIExpbWl0ZWQxPjA8BgNVBAMTNVNlY3RpZ28gUlNBIENs
aWVudCBBdXRoZW50aWNhdGlvbiBhbmQgU2VjdXJlIEVtYWlsIENBAhEAjME22FZvrY2T2koTKnYL
HzCBvwYLKoZIhvcNAQkQAgsxga+ggawwgZYxCzAJBgNVBAYTAkdCMRswGQYDVQQIExJHcmVhdGVy
IE1hbmNoZXN0ZXIxEDAOBgNVBAcTB1NhbGZvcmQxGDAWBgNVBAoTD1NlY3RpZ28gTGltaXRlZDE+
MDwGA1UEAxM1U2VjdGlnbyBSU0EgQ2xpZW50IEF1dGhlbnRpY2F0aW9uIGFuZCBTZWN1cmUgRW1h
aWwgQ0ECEQCMwTbYVm+tjZPaShMqdgsfMA0GCSqGSIb3DQEBCwUABIIBACvHXzxzQsdMWhYVERxK
G1oBpxyTlqNknqwQJFglvd3uAcDlAOC87e44+8B7N8VUNLOH+IwxavMZvCbMOxjN+HPAL1ZgqkcV
xMlv+AsbUX17PB46FdidyhwCknlvvfCtGGV8xkhR4XI3sbnzi0cZBlugD0Zobj3pdPhFGtVVu5d4
bD+8qvZp3yumorDeL/6gSmDICLLfStvYrOH5vzHLsnGu+PVR4kuBomz84nnECmz5KxWvY56KnVxh
0rC9HL+MdmNH62J+k9hgIYEMSd/AvIpNCnycJpsOLkI+3TMhSYPCmRJITWdAg0cvfQSFFH/f4Ndm
ERVnu2m975KeE22KLsYAAAAAAAA=
--Apple-Mail=_D7F7E11E-E7E4-432A-A27E-6215C464DB0D--


--===============0775368915500103772==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============0775368915500103772==--


