Delivery-date: Wed, 16 Jun 2021 18:00:40 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ltXy4-0002uD-Ny
	for lore@lore.pengutronix.de; Wed, 16 Jun 2021 18:00:40 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ltXy3-0000Rs-C6
	for lore@pengutronix.de; Wed, 16 Jun 2021 18:00:40 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	References:To:Cc:In-Reply-To:Date:Subject:Mime-Version:Message-Id:From:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=NTlC6QqxQR6SZutxc4++MOz8cAjekS4+5RHhVv4YcoE=; b=UZR9gGwhBCKId0DRBY3CQEHh81
	6lecI5+NMLp9SD/XB7/w7qJ3oPoRPk/DjLqE9PA4aOe8qAMPT91QjGofzZ3z74ogL8ZKB1M9i3T9a
	oE+quPow0/zhj5mMytn8pXYsyZltnxHdXF48eOUjaX72bpP9ijO9tWeuhja0Fr7GmB3DsnZuxXzL9
	wSlC15voNtZzZeZrQyFhNUWDgaP7dR3uCIkHi+2OPgzt9dh2THKX8KST6YOIY+lIsda1OvuyzFUfR
	jsyerv4ompZbaEaihVjEir+nfAS7CO31EVy4sTp1B5YMZpVoTZqnzAaz9DAf8du7XMjdZTFWzAf8i
	SPEzmDcA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ltXwA-0070vr-PX; Wed, 16 Jun 2021 15:58:43 +0000
Received: from mail.inside-m2m.de ([188.68.57.244])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ltXvD-0070Xh-2F
 for barebox@lists.infradead.org; Wed, 16 Jun 2021 15:57:45 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.inside-m2m.de (Postfix) with ESMTP id A1C8F40097;
 Wed, 16 Jun 2021 17:57:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=inside-m2m.de;
 s=default; t=1623859030;
 bh=OV4Ox9HFa5WmuHM18NNAf5Lup82NcfSeWB1DvJTnqQU=;
 h=From:Subject:Date:In-Reply-To:Cc:To:References:From;
 b=bzOLdP0z2OaZ98E3fB4N1U905mu+m8V0hwPbuoz1sbn78Dgtn+F1NavTT0fWUvhxI
 kdSYgw6AiNBYvRus/2tltOxRXq2Rqt0TRRwmraiKEwJkOp/hzmDFVPVGYb+39Lkhui
 iNfv58iWmviuSf7Iddt9iekzTcC/7z3TUTsKVaSD4UgxLFY8HbWHNuueyJxUaayewB
 Y6S3G5BL+4lCWwwhWCXWy1BVMdhw+gm2eKhq5igY8E9NQVdofHFnnuoLAtL/cU1har
 bim3zaQG2hktYBPptMFJD5WYQEupzBwlQyYPsE5uNpsTf7l/kKeEP9fZtF9P3vTHjp
 wo0Mvo1xO9X8A==
X-Virus-Scanned: Debian amavisd-new at mail.inside-m2m.de
Received: from mail.inside-m2m.de ([127.0.0.1])
 by localhost (mail.inside-m2m.de [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id MKEFIWj1yIAd; Wed, 16 Jun 2021 17:57:10 +0200 (CEST)
Received: from smtpclient.apple (pd95bb737.dip0.t-ipconnect.de [217.91.183.55])
 (Authenticated sender: konstantin.kletschke@inside-m2m.de)
 by mail.inside-m2m.de (Postfix) with ESMTPSA id 0C76540073;
 Wed, 16 Jun 2021 17:57:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=inside-m2m.de;
 s=default; t=1623859030;
 bh=OV4Ox9HFa5WmuHM18NNAf5Lup82NcfSeWB1DvJTnqQU=;
 h=From:Subject:Date:In-Reply-To:Cc:To:References:From;
 b=bzOLdP0z2OaZ98E3fB4N1U905mu+m8V0hwPbuoz1sbn78Dgtn+F1NavTT0fWUvhxI
 kdSYgw6AiNBYvRus/2tltOxRXq2Rqt0TRRwmraiKEwJkOp/hzmDFVPVGYb+39Lkhui
 iNfv58iWmviuSf7Iddt9iekzTcC/7z3TUTsKVaSD4UgxLFY8HbWHNuueyJxUaayewB
 Y6S3G5BL+4lCWwwhWCXWy1BVMdhw+gm2eKhq5igY8E9NQVdofHFnnuoLAtL/cU1har
 bim3zaQG2hktYBPptMFJD5WYQEupzBwlQyYPsE5uNpsTf7l/kKeEP9fZtF9P3vTHjp
 wo0Mvo1xO9X8A==
From: Konstantin Kletschke <konstantin.kletschke@inside-m2m.de>
Message-Id: <D8E37CF9-C7A1-40AE-B747-69E000D1B727@inside-m2m.de>
Mime-Version: 1.0 (Mac OS X Mail 14.0 \(3654.120.0.1.1\))
Date: Wed, 16 Jun 2021 17:57:09 +0200
In-Reply-To: <20210616123403.GW9782@pengutronix.de>
Cc: barebox@lists.infradead.org
To: Sascha Hauer <sha@pengutronix.de>
References: <FA60DA2B-8C76-4460-8009-88EAB94A0F2C@inside-m2m.de>
 <20210616123403.GW9782@pengutronix.de>
X-Mailer: Apple Mail (2.3654.120.0.1.1)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210616_085743_473566_A3CA1A1A 
X-CRM114-Status: GOOD (  30.91  )
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
Content-Type: multipart/mixed; boundary="===============5086419168019551456=="
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


--===============5086419168019551456==
Content-Type: multipart/signed;
	boundary="Apple-Mail=_3548429A-2596-4290-ABAF-3FE4F9F1A87C";
	protocol="application/pkcs7-signature";
	micalg=sha-256


--Apple-Mail=_3548429A-2596-4290-ABAF-3FE4F9F1A87C
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8


> defaultenv/defaultenv-2-base/boot is the generic place used for all
> boards. As you are using the beaglebone you should rather manipulate
> arch/arm/boards/beaglebone/defaultenv-beaglebone/. This directory is
> added with defaultenv_append_directory(defaultenv_beaglebone) to the
> environment once we actually know we are running on the beaglebone.

I moved my customisations to the board specific part of the tree, works
like a charm. Thanks for the clarification about its role.

> https://systemd.io/BOOT_LOADER_SPECIFICATION/. With that you can put
> Kernel and device tree into the rootfs and start the whole thing with
> "boot emmc".

Well, I am rather open minded to do that, even if I can configure the =
kernel and
device tree from rootfs. But I need to investigate on how this is done =
properly=E2=80=A6

> Yes. Where this is stored depends on the board. In case of the
> beaglebone there's a FAT on the eMMC anyway, so we use that to store =
the
> environment. The environment is a binary file, it's like that because
> normally you don't have a FS available.

I found the file but I was not sure if my setup was working properly, I =
tried to
change boot.default via =E2=80=9Cglobal boot.default=3D=E2=80=A6=E2=80=9D,=
 found it in the env and after
reboot in the file in the env tree, but not applied in the environment. =
Sourcing it
worked.=20

> During runtime that would be "nv boot.default=3Dinsidem2m; saveenv".
> When you want to make that the default create a file
> arch/arm/boards/beaglebone/defaultenv-beaglebone/nv/boot.default with
> the content "insidem2m"

The =E2=80=9Cnv boot.default=3D=E2=80=A6=E2=80=9D approach worked fine, =
was persisted and reread on reset
and creating the file got me a fine compiled in default for that. Thanks =
for the helpful
advise!

> mount mmc1.1
> of_overlay /mnt/mmc1.1/lib/firmware/BB-UART1-00A0.dtbo
> of_overlay /mnt/mmc1.1/lib/firmware/BB-UART4-00A0.dtbo

Are those commands supposed to be integrated into a boot entry? Your =
assumptions
about mmc1.1are understood. Mounting works and with of_overlay (I did =
not have the
command available, wasn=E2=80=99t aware of CONFIG_CMD_OF_OVERLAY=3Dy)
I can load the dtbo files manually and automated with my modified boot =
entry:


barebox@TI AM335x BeagleBone black:/ cat /env/boot/insidem2m=20
#!/bin/sh


mount mmc1.1
of_overlay /mnt/mmc1.1/boot/BB-UART1-00A0.dtbo
of_overlay /mnt/mmc1.1/boot/BB-UART4-00A0.dtbo


global.bootm.image=3D/boot/uImage
global.bootm.oftree=3D/boot/am335x-boneblack.dtb
=
global.linux.bootargs.dyn.root=3D"cape_enable=3Dcapemgr.enable_partno=3DBB=
-UART1,BB-UART4 bone_capemgr.uboot_capemgr_enabled=3D1 =
root=3D/dev/mmcblk0p2 rootfstype=3Dext4 rootwait=E2=80=9D


In both cases I get an error+warning:

Booting entry 'insidem2m'
mounted /dev/mmc1.1 on /mnt/mmc1.1

Loading ARM Linux zImage '/boot/uImage'
Loading devicetree from '/boot/am335x-boneblack.dtb'
ERROR: of_resolver: __symbols__ missing from base devicetree
WARNING: Failed to fixup node in of_overlay_fixup+0x1/0x4: Invalid =
argument
ERROR: of_resolver: __symbols__ missing from base devicetree
WARNING: Failed to fixup node in of_overlay_fixup+0x1/0x4: Invalid =
argument
commandline: console=3DttyO0,115200n8  =
cape_enable=3Dcapemgr.enable_partno=3DBB-UART1,BB-UART4 =
bone_capemgr.uboot_capemgr_enabled=3D1 root=3D/dev/mmcblk0p2 =
rootfstype=3Dext4 rootwait
Booting Linux on physical CPU 0x0
[=E2=80=A6]

As expected, no additional serial UARTs available.

Is the order of loading (of_overlay before loading devicetree) messing =
things up? If not, what does?
Is it reasonable for me to learn the bootloader spec stuff?


Kin regards
Konsti


--Apple-Mail=_3548429A-2596-4290-ABAF-3FE4F9F1A87C
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
CQMxCwYJKoZIhvcNAQcBMBwGCSqGSIb3DQEJBTEPFw0yMTA2MTYxNTU3MDlaMC8GCSqGSIb3DQEJ
BDEiBCDqvuXIAe0N8i3Xs0rlhxPMWYXfHcjBFMmM9aaLAUju8jCBvQYJKwYBBAGCNxAEMYGvMIGs
MIGWMQswCQYDVQQGEwJHQjEbMBkGA1UECBMSR3JlYXRlciBNYW5jaGVzdGVyMRAwDgYDVQQHEwdT
YWxmb3JkMRgwFgYDVQQKEw9TZWN0aWdvIExpbWl0ZWQxPjA8BgNVBAMTNVNlY3RpZ28gUlNBIENs
aWVudCBBdXRoZW50aWNhdGlvbiBhbmQgU2VjdXJlIEVtYWlsIENBAhEAjME22FZvrY2T2koTKnYL
HzCBvwYLKoZIhvcNAQkQAgsxga+ggawwgZYxCzAJBgNVBAYTAkdCMRswGQYDVQQIExJHcmVhdGVy
IE1hbmNoZXN0ZXIxEDAOBgNVBAcTB1NhbGZvcmQxGDAWBgNVBAoTD1NlY3RpZ28gTGltaXRlZDE+
MDwGA1UEAxM1U2VjdGlnbyBSU0EgQ2xpZW50IEF1dGhlbnRpY2F0aW9uIGFuZCBTZWN1cmUgRW1h
aWwgQ0ECEQCMwTbYVm+tjZPaShMqdgsfMA0GCSqGSIb3DQEBCwUABIIBADNASitBqtttLkB4vJiS
GYkiuIJw8pKvlpkWf8qjv4vFScKv6azWtwtVaK3IWxjnvqNY3/8ysHg+20gTd9EuDFbBYi2mczUT
MTV4Ex+jEgSeRRhtz93ktN5LWjtJmlm5GovYJwzmjpUNOjEUPw1b5jvyI9PDmfC34BgvhdhoFq1d
KJz7Mbha2xiuOWVtGw8PiZTV07VNLzSDNwcvKgfqA4iFRfmqyI0G2yrABOK4RUkthqYZT5vRKaQ7
tF6qf0lttwkNb/s97sk5CrEcUY/heHfJPFmpUQkGjM74MLqBbMhCfF0mulkVDSxrIpi26dpuZ4jy
CGvA+Bhz8Ge93l4rHxIAAAAAAAA=
--Apple-Mail=_3548429A-2596-4290-ABAF-3FE4F9F1A87C--


--===============5086419168019551456==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============5086419168019551456==--


