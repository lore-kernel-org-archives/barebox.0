Delivery-date: Wed, 16 Jun 2021 10:13:03 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ltQfX-0001ZU-Io
	for lore@lore.pengutronix.de; Wed, 16 Jun 2021 10:13:03 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ltQfW-0004BO-G8
	for lore@pengutronix.de; Wed, 16 Jun 2021 10:13:03 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:
	Date:Message-Id:Subject:Mime-Version:From:Reply-To:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=MAknrNo+DE5sKgfcg+371cD6OhrmHJ+lxGcVvjLr2r0=; b=bIt
	QIXZYjLgSxEuzpdyKMwSatbKxbWaFS30Rzdrhs1RVVF4//ZpmJns9XFHGE5F6CHyJKXjYD7gbQpJm
	RXQKCg9URgla0z3Rueo/wDERIz6NlFz5lyiLyUGD2brH0M+0sVtE8e1ZUmG3U4RfzFLYcM9j545DB
	bs/NWKrlp24smNgJ2awkWLvzh5q09xqA/70K924i4Ad1p2UEvYjQaTqDc7Few4pb+AbY+wMlvKXCP
	SU7b6aVfaNuxxyZ7NwkzMgDcn4KuiSLKCIPSBfqAAVdLOaKS+tyeQxrlRUHUnx7CMACZMIxZjdPmB
	1y3/RfvdKENfoDhIsMkkRF2HhNmU1FA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ltQe9-005L3s-CG; Wed, 16 Jun 2021 08:11:37 +0000
Received: from mail.inside-m2m.de ([188.68.57.244])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ltQe3-005L2o-MX
 for barebox@lists.infradead.org; Wed, 16 Jun 2021 08:11:33 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.inside-m2m.de (Postfix) with ESMTP id B173140073
 for <barebox@lists.infradead.org>; Wed, 16 Jun 2021 10:10:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=inside-m2m.de;
 s=default; t=1623831056;
 bh=b8SV6GU0vl/XbT51FAYxDLhexm6l1uoLlkauJwWsX00=;
 h=From:Subject:Date:To:From;
 b=OHeAGuWX7BnUI8nHEekayxai5fYyl+zOQG0hmcGmojsLjtAPjtxDtH14sbsKvJuj7
 VveSlH6kSZL0rOvvRXEH/7t58wqgVWYgfEPBM8VzK3CYLnFKNHsT+iT2CPAMNEp7uv
 Gz/IH3B7gHcypuw5fHNB5WM6oTnhvkxNIYrgbqW9wCftYxuPOuynC0xgYhP39b//GO
 3A1THoTAhAHY3ConEnG6Zta6UUnBPsUOK/gU951aV4ZQGcXiyNf6MZmrdiF9gBlBWF
 E54L2mLFKo7oOiNluD7ZIuq004cQLDwk7dYAb4QQLZyzkIt5ZvMRf3KA6KiwPbzBOz
 t+QTYCeofVqLg==
X-Virus-Scanned: Debian amavisd-new at mail.inside-m2m.de
Received: from mail.inside-m2m.de ([127.0.0.1])
 by localhost (mail.inside-m2m.de [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id E9LYeDAggnzy for <barebox@lists.infradead.org>;
 Wed, 16 Jun 2021 10:10:56 +0200 (CEST)
Received: from smtpclient.apple (pd95bb737.dip0.t-ipconnect.de [217.91.183.55])
 (Authenticated sender: konstantin.kletschke@inside-m2m.de)
 by mail.inside-m2m.de (Postfix) with ESMTPSA id 4500F4006E
 for <barebox@lists.infradead.org>; Wed, 16 Jun 2021 10:10:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=inside-m2m.de;
 s=default; t=1623831056;
 bh=b8SV6GU0vl/XbT51FAYxDLhexm6l1uoLlkauJwWsX00=;
 h=From:Subject:Date:To:From;
 b=OHeAGuWX7BnUI8nHEekayxai5fYyl+zOQG0hmcGmojsLjtAPjtxDtH14sbsKvJuj7
 VveSlH6kSZL0rOvvRXEH/7t58wqgVWYgfEPBM8VzK3CYLnFKNHsT+iT2CPAMNEp7uv
 Gz/IH3B7gHcypuw5fHNB5WM6oTnhvkxNIYrgbqW9wCftYxuPOuynC0xgYhP39b//GO
 3A1THoTAhAHY3ConEnG6Zta6UUnBPsUOK/gU951aV4ZQGcXiyNf6MZmrdiF9gBlBWF
 E54L2mLFKo7oOiNluD7ZIuq004cQLDwk7dYAb4QQLZyzkIt5ZvMRf3KA6KiwPbzBOz
 t+QTYCeofVqLg==
From: Konstantin Kletschke <konstantin.kletschke@inside-m2m.de>
Mime-Version: 1.0 (Mac OS X Mail 14.0 \(3654.120.0.1.1\))
Message-Id: <FA60DA2B-8C76-4460-8009-88EAB94A0F2C@inside-m2m.de>
Date: Wed, 16 Jun 2021 10:10:55 +0200
To: barebox@lists.infradead.org
X-Mailer: Apple Mail (2.3654.120.0.1.1)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210616_011132_234015_AF2D5CB5 
X-CRM114-Status: GOOD (  18.86  )
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
Content-Type: multipart/mixed; boundary="===============9058526511429461968=="
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
Subject: Compiled in boot environment and dtbo files
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)


--===============9058526511429461968==
Content-Type: multipart/signed;
	boundary="Apple-Mail=_ED4A4E6B-EAEA-487B-95FF-A3AA7C5F201D";
	protocol="application/pkcs7-signature";
	micalg=sha-256


--Apple-Mail=_ED4A4E6B-EAEA-487B-95FF-A3AA7C5F201D
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8

Dear community,

actually I wonder how to prepare a reset/boot up default boot =
environment compiled in.

Is it correct, that my 1st task to achieve this is to add a new file in =
defaultenv/defaultenv-2-base/boot
like =E2=80=9Cinsidem2m=E2=80=9D for example? I managed to modify the =
existing =E2=80=9Csd=E2=80=9D entry to be able to boot
and persist this, thats how my new entry should look:

#!/bin/sh

global.bootm.image=3D/boot/uImage
global.bootm.oftree=3D/boot/am335x-boneblack.dtb
=
global.linux.bootargs.dyn.root=3D"cape_enable=3Dcapemgr.enable_partno=3DBB=
-UART1,BB-UART4 bone_capemgr.uboot_capemgr_enabled=3D1 =
root=3D/dev/mmcblk0p2 rootfstype=3Dext4 rootwait=E2=80=9D

right?


I can edit and modify those file and persist them, where is this saved? =
In my case it looks modified stuff shows
up in barebox.env in my /boot.

Especially my question is, when I add a boot entry compiled in, the =
boot.default variable should get this entry
and this must be reset/default compiled-in, how is this done?

My second issue is, currently I need to apply two dtbo files to the =
kernel booting, how do I do this in barebox?

In u-boot this looks like

uboot_overlay_addr0=3D/lib/firmware/BB-UART1-00A0.dtbo
uboot_overlay_addr1=3D/lib/firmware/BB-UART4-00A0.dtbo

in uEnv.txt, I did not find a pendant in the barebox world yet. The =
capemgr/slot kernel commandline stuff is
deprecated, right?=20




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


--Apple-Mail=_ED4A4E6B-EAEA-487B-95FF-A3AA7C5F201D
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
CQMxCwYJKoZIhvcNAQcBMBwGCSqGSIb3DQEJBTEPFw0yMTA2MTYwODEwNTVaMC8GCSqGSIb3DQEJ
BDEiBCDz9Ktzd3miNcTjM0HRQ4rNr4/ZjehwWyC/m32/s7nzHTCBvQYJKwYBBAGCNxAEMYGvMIGs
MIGWMQswCQYDVQQGEwJHQjEbMBkGA1UECBMSR3JlYXRlciBNYW5jaGVzdGVyMRAwDgYDVQQHEwdT
YWxmb3JkMRgwFgYDVQQKEw9TZWN0aWdvIExpbWl0ZWQxPjA8BgNVBAMTNVNlY3RpZ28gUlNBIENs
aWVudCBBdXRoZW50aWNhdGlvbiBhbmQgU2VjdXJlIEVtYWlsIENBAhEAjME22FZvrY2T2koTKnYL
HzCBvwYLKoZIhvcNAQkQAgsxga+ggawwgZYxCzAJBgNVBAYTAkdCMRswGQYDVQQIExJHcmVhdGVy
IE1hbmNoZXN0ZXIxEDAOBgNVBAcTB1NhbGZvcmQxGDAWBgNVBAoTD1NlY3RpZ28gTGltaXRlZDE+
MDwGA1UEAxM1U2VjdGlnbyBSU0EgQ2xpZW50IEF1dGhlbnRpY2F0aW9uIGFuZCBTZWN1cmUgRW1h
aWwgQ0ECEQCMwTbYVm+tjZPaShMqdgsfMA0GCSqGSIb3DQEBCwUABIIBAFnAXc2ImU3WTfrknNGH
a+vY3PuUhMWSKNSAfflic8oTOsBnmmUyCFglBtAaNP5CfmU+kruD40zDiYmURI4/w2bpHwKzvi1M
4cRsv79t7Rlkx0pKKFeS38yL8W+1VlgGn4d1K1LRvGBC6DPEsQsezGy5ajpO3Mi6sm9K3ooyQA8h
3Ptv3KbSFw77i1ur5pVJ2ARu321Js2Wokhn8gd0fH8BSpIllbVX8dwtV6LicElP5LmqBiJFakR8d
IIPR+tZUB8Cg+4HhgvTl/LwihxKF9+mrN+1btVA8pDMzWJ0I8Claaw21HtvEYf/HwtOuiMY+9tfk
ma0WI/ZooBOEG7Gjb6MAAAAAAAA=
--Apple-Mail=_ED4A4E6B-EAEA-487B-95FF-A3AA7C5F201D--


--===============9058526511429461968==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============9058526511429461968==--


