Delivery-date: Tue, 22 Jun 2021 12:42:42 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lvdre-0001Q4-FH
	for lore@lore.pengutronix.de; Tue, 22 Jun 2021 12:42:42 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lvdrd-0003NO-9q
	for lore@pengutronix.de; Tue, 22 Jun 2021 12:42:42 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	References:To:Cc:In-Reply-To:Date:Subject:Mime-Version:Message-Id:From:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=++2rvRf/s7ZKUEc91p0h6EyP6eXHV5MGT+QPRKT6l2E=; b=A1cD+r4b2EsiwupLh3DATCRh3i
	fsfwgYwzCAFY7VS9GhzB0qE7ziREz+OLy37tGsQy+Zm2Qya0fGW6Tr7lzK0vzqTbLbULml7H7czJR
	cQBL6Lo4O5ttNWBXZgc7Xf5+37tBNp+iXFmj8YUpjNdI4B88w09s2R/WMNwNJM/FMsrWv/nO3ZnWG
	ROJTcr5Cmb4M9SjKmeiB0QJmgV1MR/OjXo7tNqs4wyMIKre53qCZggV4nE7UMLCGQYH7dkGmJJ2KS
	zxu4ROkatROul2UnIjfWGo0cZxtKcgRmGcPc59rD4ADPBfu5eLuaGKdRuK4MYs8yQdppr8gK7PI8P
	7OQOHB3Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lvdq4-006jWa-86; Tue, 22 Jun 2021 10:41:04 +0000
Received: from mail.inside-m2m.de ([188.68.57.244])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lvdpz-006jVM-4G
 for barebox@lists.infradead.org; Tue, 22 Jun 2021 10:41:01 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.inside-m2m.de (Postfix) with ESMTP id 0A066403D1;
 Tue, 22 Jun 2021 12:40:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=inside-m2m.de;
 s=default; t=1624358426;
 bh=cSfaYKWnDO0JCEfTdGcoGIMqrmJzX+/xJ6x0yc1JcaA=;
 h=From:Subject:Date:In-Reply-To:Cc:To:References:From;
 b=FDHjKY62lGsFmrEo4WkBIjFOrjJZSvC/VBYnUMvJlCt62wDgI/IZnL2TAQbZd+qB3
 GQWilF2Z0IVpSyqW7xEk2bE1W1G4EAA0FWSs0fAwKNvKmJwj9zfMjIokbTGctI3Lh9
 t0vjLdMi+lE3EG1DHtVjxsqqcov409JDpvEAW269f6OvXLtWxELgm9WpetylgEpSmL
 S7xKDiqHyIW7tvj4e7cuOYnq4ne7TrZyW5ctItZv5Cx+OeAqGBEmly8H306/gQsQQS
 aHB3cZGraETcfoGznI45XDaQkiRaeVQ96p5Kv4DLxoKK5eCEugY0MN9WMpo5wQ00eT
 czZK3gU5ZpSRQ==
X-Virus-Scanned: Debian amavisd-new at mail.inside-m2m.de
Received: from mail.inside-m2m.de ([127.0.0.1])
 by localhost (mail.inside-m2m.de [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id b74GgNSRk5GW; Tue, 22 Jun 2021 12:40:25 +0200 (CEST)
Received: from smtpclient.apple (pd95bb737.dip0.t-ipconnect.de [217.91.183.55])
 (Authenticated sender: konstantin.kletschke@inside-m2m.de)
 by mail.inside-m2m.de (Postfix) with ESMTPSA id 94EE840183;
 Tue, 22 Jun 2021 12:40:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=inside-m2m.de;
 s=default; t=1624358425;
 bh=cSfaYKWnDO0JCEfTdGcoGIMqrmJzX+/xJ6x0yc1JcaA=;
 h=From:Subject:Date:In-Reply-To:Cc:To:References:From;
 b=ECmETGhJtfG1TGsJxRLFlaprQB+wdtGpomEXcT54sy9LWJKkPfry7Tk8dyIpLf+rz
 05H0h9597yTyrmqbvou39XZswPvuRhXdB6UQJVsnBeIKbCJWewAc72RTOu7pgsuibx
 st8BdTxCBkZfU8gBunzEbM0OnfUqaJsZzlgPHWWWgAWrTa2rhsJh0U24cG26CFV6+t
 tuunGd19LrLjnc0dEPztXDFNeedhgBq1p9/i7FM69cTJK0oGjSNvBmCenjd1pKQoOV
 gBjXLtEwG8HYUEwYEAGuhf3zX372WZVyzduGe0YxIDz3sWwdMOHMTvsF2LNX0JutBr
 6/xbAvxRmTSlA==
From: Konstantin Kletschke <konstantin.kletschke@inside-m2m.de>
Message-Id: <1D32E771-3167-453F-AF94-606F610CEEC2@inside-m2m.de>
Mime-Version: 1.0 (Mac OS X Mail 14.0 \(3654.120.0.1.1\))
Date: Tue, 22 Jun 2021 12:40:25 +0200
In-Reply-To: <D71BFF12-5C4D-4C41-B15F-2D53376F5669@inside-m2m.de>
Cc: barebox@lists.infradead.org
To: Sascha Hauer <sha@pengutronix.de>
References: <FA60DA2B-8C76-4460-8009-88EAB94A0F2C@inside-m2m.de>
 <20210616123403.GW9782@pengutronix.de>
 <D8E37CF9-C7A1-40AE-B747-69E000D1B727@inside-m2m.de>
 <20210617064144.GZ9782@pengutronix.de>
 <A4554499-51AF-4180-9D58-625A8CA58C97@inside-m2m.de>
 <20210621040155.GD9782@pengutronix.de>
 <D71BFF12-5C4D-4C41-B15F-2D53376F5669@inside-m2m.de>
X-Mailer: Apple Mail (2.3654.120.0.1.1)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210622_034059_520452_2073CFBE 
X-CRM114-Status: GOOD (  16.91  )
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
Content-Type: multipart/mixed; boundary="===============7090241216993674949=="
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: Compiled in boot environment and dtbo files
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)


--===============7090241216993674949==
Content-Type: multipart/signed;
	boundary="Apple-Mail=_60204E74-55BD-48E3-90CB-925B8711178F";
	protocol="application/pkcs7-signature";
	micalg=sha-256


--Apple-Mail=_60204E74-55BD-48E3-90CB-925B8711178F
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8

I got the uart1 and uart4 available on boot after I changed the =
appropiate dtsi in this way:

--- arch/arm/boot/dts/am335x-bone-common.dtsi_ORIG	2021-01-29 =
15:08:15.085080693 +0100
+++ arch/arm/boot/dts/am335x-bone-common.dtsi	2021-06-22 =
11:26:48.197115876 +0200
@@ -96,6 +96,20 @@
 		>;
 	};
=20
+	uart1_pins: pinmux_uart1_pins {
+		pinctrl-single,pins =3D <
+			AM33XX_PADCONF(AM335X_PIN_UART1_RXD, =
PIN_INPUT_PULLUP, MUX_MODE0)
+			AM33XX_PADCONF(AM335X_PIN_UART1_TXD, =
PIN_OUTPUT_PULLDOWN, MUX_MODE0)
+		>;
+	};
+
+	uart4_pins: pinmux_uart4_pins {
+		pinctrl-single,pins =3D <
+            AM33XX_PADCONF(AM335X_PIN_GPMC_WAIT0, PIN_INPUT_PULLUP, =
MUX_MODE6)	/* (T17) gpmc_wait0.uart4_rxd */
+            AM33XX_PADCONF(AM335X_PIN_GPMC_WPN, PIN_OUTPUT_PULLDOWN, =
MUX_MODE6)	/* (U17) gpmc_wpn.uart4_txd */
+		>;
+	};
+
 	clkout2_pin: pinmux_clkout2_pin {
 		pinctrl-single,pins =3D <
 			AM33XX_PADCONF(AM335X_PIN_XDMA_EVENT_INTR1, =
PIN_OUTPUT_PULLDOWN, MUX_MODE3)	/* xdma_event_intr1.clkout2 */
@@ -190,6 +204,20 @@
=20
 	status =3D "okay";
 };
+
+&uart1 {
+	pinctrl-names =3D "default";
+	pinctrl-0 =3D <&uart1_pins>;
+
+	status =3D "okay";
+};
+
+&uart4 {
+	pinctrl-names =3D "default";
+	pinctrl-0 =3D <&uart4_pins>;
+
+	status =3D "okay";
+};
=20
 &usb {
 	status =3D "okay=E2=80=9D;


This change is activating and enabling those uarts at boot and does pin =
muxing properly.
It=E2=80=99s not muxing only as I previously assumed wrongly =
investigating the initial overlays.

I will go with that and if in future it is required programming proper =
overlays for
this that will be a side quest unrelated to barebox.

I just put a result into this mail thread if someone stumbles upon this.

Kind Regards
Konsti



--Apple-Mail=_60204E74-55BD-48E3-90CB-925B8711178F
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
CQMxCwYJKoZIhvcNAQcBMBwGCSqGSIb3DQEJBTEPFw0yMTA2MjIxMDQwMjVaMC8GCSqGSIb3DQEJ
BDEiBCAMocXOSoT8AlBf11PWy72VkfSJsLuedSeFyBpPyWUEADCBvQYJKwYBBAGCNxAEMYGvMIGs
MIGWMQswCQYDVQQGEwJHQjEbMBkGA1UECBMSR3JlYXRlciBNYW5jaGVzdGVyMRAwDgYDVQQHEwdT
YWxmb3JkMRgwFgYDVQQKEw9TZWN0aWdvIExpbWl0ZWQxPjA8BgNVBAMTNVNlY3RpZ28gUlNBIENs
aWVudCBBdXRoZW50aWNhdGlvbiBhbmQgU2VjdXJlIEVtYWlsIENBAhEAjME22FZvrY2T2koTKnYL
HzCBvwYLKoZIhvcNAQkQAgsxga+ggawwgZYxCzAJBgNVBAYTAkdCMRswGQYDVQQIExJHcmVhdGVy
IE1hbmNoZXN0ZXIxEDAOBgNVBAcTB1NhbGZvcmQxGDAWBgNVBAoTD1NlY3RpZ28gTGltaXRlZDE+
MDwGA1UEAxM1U2VjdGlnbyBSU0EgQ2xpZW50IEF1dGhlbnRpY2F0aW9uIGFuZCBTZWN1cmUgRW1h
aWwgQ0ECEQCMwTbYVm+tjZPaShMqdgsfMA0GCSqGSIb3DQEBCwUABIIBAC5DfJMpQkC3c5eV31cn
vQP9PacJ25qYoD/BFt6AB7eR9uVZBg8B1qMRb+hV9Ruvgb6t6vzeyggogAcAlqWtl/ZPbBkJj8Dl
PBqgMQACky5XMMo8VQCNftfQw/SFbn+DVO1MFyFB0dDdC4oGIlojJyLL38p1zlH6tcRNaXPr0ZIC
/9BS5FVm1tsq7bZRVhbWwSxtiMVlfgKRwHsCuZWd+wto7haaDtBGlfkQg+oRUnqFdxe8wWnU+RAb
U4xElEH7vClC5GUbX6fir2B7BLGrPaZute+oCgXSoQuNbHitQDZG2oBFppWI0KpwG1w6ai4UNkF9
k7AOOTHjMAX1EHXQ2xMAAAAAAAA=
--Apple-Mail=_60204E74-55BD-48E3-90CB-925B8711178F--


--===============7090241216993674949==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============7090241216993674949==--


