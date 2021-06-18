Delivery-date: Fri, 18 Jun 2021 15:21:34 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1luERB-0006Dn-Vv
	for lore@lore.pengutronix.de; Fri, 18 Jun 2021 15:21:34 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1luER9-0006Q2-Vd
	for lore@pengutronix.de; Fri, 18 Jun 2021 15:21:33 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	References:To:Cc:In-Reply-To:Date:Subject:Mime-Version:Message-Id:From:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=YJwxGKYV2qV3NJ0uBEooIHKfwhJDIbbzH8OcAxVs6e4=; b=b0YhQcRAGEEoxhaIElfhI33mgG
	A4MoCpTuDsDh9nkuhIYh7I52g3Czq4kMwwEtJxPwWwhju55sAXU0/B0HMMwzUAPxVVXAiwbvmLrX2
	b+hRqC/8sKIPtSBcw2ZEIghkhcN1HdhZwNH2emqOFeg8UTsRnZA3/PtblOTZK8RCgy5ZZTtoe7BDu
	6v/WEZ7HPAD8gcGAHAfPyLVYzHljF1P7I++DNmoiFe6//AyaHbuzUfc9k26n2GJnbfq1Cs2FuDjYk
	CPx8/S/7QX+l/mIbzFBrUCL1KlOc63eyJclZpV78eDrgm8v5YMe1kdlbo7tODgyfbAHqDiktiNN1t
	9H1E3sgA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1luEPH-00EAbR-0b; Fri, 18 Jun 2021 13:19:35 +0000
Received: from mail.inside-m2m.de ([188.68.57.244])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1luELu-00E8n6-3S
 for barebox@lists.infradead.org; Fri, 18 Jun 2021 13:16:09 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.inside-m2m.de (Postfix) with ESMTP id 968CD40097;
 Fri, 18 Jun 2021 15:15:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=inside-m2m.de;
 s=default; t=1624022133;
 bh=+80w4zGmEy5qnXDIArru1Uv7VrJKoukpIyOzAfGhIHg=;
 h=From:Subject:Date:In-Reply-To:Cc:To:References:From;
 b=AyBzVZ7InISwPqN0HA/NiPjkW5mOlgSdmw+mz7qtMl3kg1VCQ4hwxhlG4Agg9DFcj
 BqP+TVVw464sichYFBbWXhpmwVzA629wQKyxm58cvofjxT8mBl0fGut2v8LoMBqVe2
 XCajMnRQ77eOrdXcdiYLjvNx3Y1R5FUpLOkWPpmgnLR5Uc72Ux+DXjl8RjdsEkuPw3
 7vlQe6bU7kd5UcCNSJ0GoAygaAQdvAxjui/ZiN2qJeGd4bMVap0tfZ6GhP1dJW5YFD
 tRddeId/PZnFpmG0zlir0Tm3qel5wamqp2+NLz2865WpeMW4EFhDEIYcxEGpSonjFF
 9PT0ToXhqWQrg==
X-Virus-Scanned: Debian amavisd-new at mail.inside-m2m.de
Received: from mail.inside-m2m.de ([127.0.0.1])
 by localhost (mail.inside-m2m.de [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rmv-Ar6IWF-4; Fri, 18 Jun 2021 15:15:33 +0200 (CEST)
Received: from smtpclient.apple (pd95bb737.dip0.t-ipconnect.de [217.91.183.55])
 (Authenticated sender: konstantin.kletschke@inside-m2m.de)
 by mail.inside-m2m.de (Postfix) with ESMTPSA id 0CA3640082;
 Fri, 18 Jun 2021 15:15:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=inside-m2m.de;
 s=default; t=1624022133;
 bh=+80w4zGmEy5qnXDIArru1Uv7VrJKoukpIyOzAfGhIHg=;
 h=From:Subject:Date:In-Reply-To:Cc:To:References:From;
 b=AyBzVZ7InISwPqN0HA/NiPjkW5mOlgSdmw+mz7qtMl3kg1VCQ4hwxhlG4Agg9DFcj
 BqP+TVVw464sichYFBbWXhpmwVzA629wQKyxm58cvofjxT8mBl0fGut2v8LoMBqVe2
 XCajMnRQ77eOrdXcdiYLjvNx3Y1R5FUpLOkWPpmgnLR5Uc72Ux+DXjl8RjdsEkuPw3
 7vlQe6bU7kd5UcCNSJ0GoAygaAQdvAxjui/ZiN2qJeGd4bMVap0tfZ6GhP1dJW5YFD
 tRddeId/PZnFpmG0zlir0Tm3qel5wamqp2+NLz2865WpeMW4EFhDEIYcxEGpSonjFF
 9PT0ToXhqWQrg==
From: Konstantin Kletschke <konstantin.kletschke@inside-m2m.de>
Message-Id: <A4554499-51AF-4180-9D58-625A8CA58C97@inside-m2m.de>
Mime-Version: 1.0 (Mac OS X Mail 14.0 \(3654.120.0.1.1\))
Date: Fri, 18 Jun 2021 15:15:32 +0200
In-Reply-To: <20210617064144.GZ9782@pengutronix.de>
Cc: barebox@lists.infradead.org
To: Sascha Hauer <sha@pengutronix.de>
References: <FA60DA2B-8C76-4460-8009-88EAB94A0F2C@inside-m2m.de>
 <20210616123403.GW9782@pengutronix.de>
 <D8E37CF9-C7A1-40AE-B747-69E000D1B727@inside-m2m.de>
 <20210617064144.GZ9782@pengutronix.de>
X-Mailer: Apple Mail (2.3654.120.0.1.1)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210618_061606_525570_3666476B 
X-CRM114-Status: GOOD (  23.60  )
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
Content-Type: multipart/mixed; boundary="===============8553654169923028824=="
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
Subject: Re: Compiled in boot environment and dtbo files
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)


--===============8553654169923028824==
Content-Type: multipart/signed;
	boundary="Apple-Mail=_02F4A299-0F62-440D-842F-69DE6115D16B";
	protocol="application/pkcs7-signature";
	micalg=sha-256


--Apple-Mail=_02F4A299-0F62-440D-842F-69DE6115D16B
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8



> In the end it goes down to putting an entry like this into
> loader/entries/foo.conf into your rootfs:

I will investigate this definitely carefully since this has nice =
advantages
controlling the boot from userspace, especially in order to gain a =
proper
failover environment.

Meanwhile I realized I most probably have no problem with barebox and
dtb/dtbo handling. At least it _is_ preparing =E2=80=9Cmy=E2=80=9D dtbo =
files and trying to=20
handle them.

In my initial mail regarding this thread I mentioned how this works on =
my=20
Beaglebones when I kept the delivered debian environment with u-boot.
The goal is to have the serial lines enabled as serial after bootup on =
the
pinheaders and there
this works with those dtbo files. Also I realized I can omit them and =
bitbang
in the GPIO multiplex mechanism below /sys/platform/... to gain the same
effect. Because the debian kernel setup (including the dtb file?) is =
enabling all
four serial lines at boot, regardless what I do:

[    0.952482] 44e09000.serial: ttyS0 at MMIO 0x44e09000 (irq =3D 30, =
base_baud =3D 3000000) is a 8250
[    1.713812] console [ttyS0] enabled
[    1.718482] 48022000.serial: ttyS1 at MMIO 0x48022000 (irq =3D 31, =
base_baud =3D 3000000) is a 8250
[    1.728498] 48024000.serial: ttyS2 at MMIO 0x48024000 (irq =3D 32, =
base_baud =3D 3000000) is a 8250
[    1.738387] 481a6000.serial: ttyS3 at MMIO 0x481a6000 (irq =3D 33, =
base_baud =3D 3000000) is a 8250
[    1.748351] 481a8000.serial: ttyS4 at MMIO 0x481a8000 (irq =3D 34, =
base_baud =3D 3000000) is a 8250
[    1.758188] 481aa000.serial: ttyS5 at MMIO 0x481aa000 (irq =3D 35, =
base_baud =3D 3000000) is a 8250

The dtbo files only do some GPIO multiplexing (I realized yesterday).

In my kernel setup only the first serial interface gets enabled:

[    0.734644] 44e09000.serial: ttyO0 at MMIO 0x44e09000 (irq =3D 29, =
base_baud =3D 3000000) is a OMAP UART0
[    1.303154] printk: console [ttyO0] enabled

Maybe the overlays are not working since there are referring to not =
enabled serial interfaces,=20
like "target =3D <&uart1>;=E2=80=9D for example? I am still =
investigating where differences between my=20
rather vanilla setup and the debian changes are...


>> Loading ARM Linux zImage '/boot/uImage'
>> Loading devicetree from '/boot/am335x-boneblack.dtb'
>> ERROR: of_resolver: __symbols__ missing from base devicetree
>> WARNING: Failed to fixup node in of_overlay_fixup+0x1/0x4: Invalid =
argument
>> ERROR: of_resolver: __symbols__ missing from base devicetree
>> WARNING: Failed to fixup node in of_overlay_fixup+0x1/0x4: Invalid =
argument
>=20
> You have to compile the device tree with -@ passed to dtc. If you are
> building the device tree in the Kernel this does the trick:
>=20
> make dtbs DTC_FLAGS=3D-@

I prepared a kernel (usually I use yocto, I did not found where to apply =
flags for =E2=80=9Cmake dtbs=E2=80=9D so I
prepared a test setup) and dtbo files this way. The compile process =
spits many warnings and the=20
resulting binary size increases, but the error =E2=80=9C[=E2=80=A6] =
Invalid argument" is identical.

As said, I have to figure this out further, I suppose the barebox is =
doing just fine!

Kind Regards
Konstantin



--Apple-Mail=_02F4A299-0F62-440D-842F-69DE6115D16B
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
CQMxCwYJKoZIhvcNAQcBMBwGCSqGSIb3DQEJBTEPFw0yMTA2MTgxMzE1MzJaMC8GCSqGSIb3DQEJ
BDEiBCDP6JjCzWjULadIdi9JURvuqpXu/eDBkpIERYHFWwjkaTCBvQYJKwYBBAGCNxAEMYGvMIGs
MIGWMQswCQYDVQQGEwJHQjEbMBkGA1UECBMSR3JlYXRlciBNYW5jaGVzdGVyMRAwDgYDVQQHEwdT
YWxmb3JkMRgwFgYDVQQKEw9TZWN0aWdvIExpbWl0ZWQxPjA8BgNVBAMTNVNlY3RpZ28gUlNBIENs
aWVudCBBdXRoZW50aWNhdGlvbiBhbmQgU2VjdXJlIEVtYWlsIENBAhEAjME22FZvrY2T2koTKnYL
HzCBvwYLKoZIhvcNAQkQAgsxga+ggawwgZYxCzAJBgNVBAYTAkdCMRswGQYDVQQIExJHcmVhdGVy
IE1hbmNoZXN0ZXIxEDAOBgNVBAcTB1NhbGZvcmQxGDAWBgNVBAoTD1NlY3RpZ28gTGltaXRlZDE+
MDwGA1UEAxM1U2VjdGlnbyBSU0EgQ2xpZW50IEF1dGhlbnRpY2F0aW9uIGFuZCBTZWN1cmUgRW1h
aWwgQ0ECEQCMwTbYVm+tjZPaShMqdgsfMA0GCSqGSIb3DQEBCwUABIIBAKXLhnWbcZJSSyy3wJJd
aobdDMRkcAGL6cb1FOf331rWnsyBlRLTE+WxFs4wJRRajlKIBdY2vV5CIgKfHxMVwV7YX6JguuwC
9EkojP48BsAY624Xn4Vz8MpEnlkWYUUQZXXboP2onGwfF8hv4wrCvRJFjjvTE2Nv2Erm0+SGTtmS
rwtClM1sJcKSZB+jLCX2WsE55NpGibRdQVt3CoZLEvGYW02tuAjUb8OOCy147AqChkddbo05DnPt
oSOoi87aA6rDJVojGH8QtHY1CXoBT7fPrT2URSfyYyXcOGcqpI21DOrCXGDo4kT58BllC01WQMfy
v5OgwMpHFMYqDueWqe8AAAAAAAA=
--Apple-Mail=_02F4A299-0F62-440D-842F-69DE6115D16B--


--===============8553654169923028824==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============8553654169923028824==--


