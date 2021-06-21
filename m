Delivery-date: Mon, 21 Jun 2021 16:23:01 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lvKpJ-0004wd-4n
	for lore@lore.pengutronix.de; Mon, 21 Jun 2021 16:23:01 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lvKpH-0003Ly-Ti
	for lore@pengutronix.de; Mon, 21 Jun 2021 16:23:00 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	References:To:Cc:In-Reply-To:Date:Subject:Mime-Version:Message-Id:From:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=2Gp0WI/Qcqc1n0gDHuot8jZ6Y2cnzxNJK4iibI2V0Mg=; b=4Oc4SUfs9Wft95qOvgb2atafAi
	TT3T9spkpYBiNbMcFEyIoWxF+jkXAYDAsGhvGi6/uS8grMcaNCrAfKCnImS+r21WZbLZm/HXBCz8c
	UmvneWdvGC5DY3G/ufHuSRQIHL048/G9ff+ByHe6B9dv6vkmvMAlC4s+8K42gZOhRUF03IFioW7Ml
	eY1ZkhFbKEeRbktPBksdr7cjjw2xTDfDWP+lqznlwFDAqzJkd2jYeiAYoN8s0DIYFaMw5C/e/LAkc
	MIEaTtnmdqtBi1oxkGb6zHT93xAk9BsFpACAql+gN+48tU955xRoWUl5vwCej7aekA94kHGBFmpB2
	bMxEz5UA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lvKne-003jbz-Cv; Mon, 21 Jun 2021 14:21:18 +0000
Received: from mail.inside-m2m.de ([188.68.57.244])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lvKnY-003jak-6q
 for barebox@lists.infradead.org; Mon, 21 Jun 2021 14:21:14 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.inside-m2m.de (Postfix) with ESMTP id 62101400DD;
 Mon, 21 Jun 2021 16:21:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=inside-m2m.de;
 s=default; t=1624285268;
 bh=IzYK5maGj/OK076nryLNqqTnPvGkWKwayCd/cXINu8M=;
 h=From:Subject:Date:In-Reply-To:Cc:To:References:From;
 b=Tz4cRKvLGQn8epBHKTX4WXEfy2Ma8to+D7dRJ45+mu7XPSM6iFO3OqSMOxlL65I8T
 KEyvjMQPRX1zJ0CKzAznqhqP8pTxG8rB1jYMjn246fFWv/ud9iKkykHydR9uLUR8MV
 CDzXvx5U2nSfvkUHaH1UmDKfGmqTsccu+aZ19dlO+mHEY53Lzs98s8RN1wXMD1mG22
 yp0GfNeKIazDblKVjz70ZR+XUhlGc3lVL9zKHksFqTmd6KvMsD0/6cPumJwUIZUy22
 vtdIIG95Hnz+WtP2B2Z1zvBCRHvwXcaPDDu/i6CERXRM7B9JC5paauJKTdENEUpORk
 Fll+CpdT/bP9A==
X-Virus-Scanned: Debian amavisd-new at mail.inside-m2m.de
Received: from mail.inside-m2m.de ([127.0.0.1])
 by localhost (mail.inside-m2m.de [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Jf9iTHv_C_4s; Mon, 21 Jun 2021 16:21:08 +0200 (CEST)
Received: from smtpclient.apple (pd95bb737.dip0.t-ipconnect.de [217.91.183.55])
 (Authenticated sender: konstantin.kletschke@inside-m2m.de)
 by mail.inside-m2m.de (Postfix) with ESMTPSA id C18944005A;
 Mon, 21 Jun 2021 16:21:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=inside-m2m.de;
 s=default; t=1624285268;
 bh=IzYK5maGj/OK076nryLNqqTnPvGkWKwayCd/cXINu8M=;
 h=From:Subject:Date:In-Reply-To:Cc:To:References:From;
 b=Tz4cRKvLGQn8epBHKTX4WXEfy2Ma8to+D7dRJ45+mu7XPSM6iFO3OqSMOxlL65I8T
 KEyvjMQPRX1zJ0CKzAznqhqP8pTxG8rB1jYMjn246fFWv/ud9iKkykHydR9uLUR8MV
 CDzXvx5U2nSfvkUHaH1UmDKfGmqTsccu+aZ19dlO+mHEY53Lzs98s8RN1wXMD1mG22
 yp0GfNeKIazDblKVjz70ZR+XUhlGc3lVL9zKHksFqTmd6KvMsD0/6cPumJwUIZUy22
 vtdIIG95Hnz+WtP2B2Z1zvBCRHvwXcaPDDu/i6CERXRM7B9JC5paauJKTdENEUpORk
 Fll+CpdT/bP9A==
From: Konstantin Kletschke <konstantin.kletschke@inside-m2m.de>
Message-Id: <D71BFF12-5C4D-4C41-B15F-2D53376F5669@inside-m2m.de>
Mime-Version: 1.0 (Mac OS X Mail 14.0 \(3654.120.0.1.1\))
Date: Mon, 21 Jun 2021 16:21:06 +0200
In-Reply-To: <20210621040155.GD9782@pengutronix.de>
Cc: barebox@lists.infradead.org
To: Sascha Hauer <sha@pengutronix.de>
References: <FA60DA2B-8C76-4460-8009-88EAB94A0F2C@inside-m2m.de>
 <20210616123403.GW9782@pengutronix.de>
 <D8E37CF9-C7A1-40AE-B747-69E000D1B727@inside-m2m.de>
 <20210617064144.GZ9782@pengutronix.de>
 <A4554499-51AF-4180-9D58-625A8CA58C97@inside-m2m.de>
 <20210621040155.GD9782@pengutronix.de>
X-Mailer: Apple Mail (2.3654.120.0.1.1)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210621_072112_754185_34554B38 
X-CRM114-Status: GOOD (  25.83  )
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
Content-Type: multipart/mixed; boundary="===============7041209858752187122=="
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: Compiled in boot environment and dtbo files
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)


--===============7041209858752187122==
Content-Type: multipart/signed;
	boundary="Apple-Mail=_4772038E-6314-4DEA-B887-CBC3E30EB3E9";
	protocol="application/pkcs7-signature";
	micalg=sha-256


--Apple-Mail=_4772038E-6314-4DEA-B887-CBC3E30EB3E9
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8

Dear community, dear Sascha,

an accident happened on my side. I totally overlooked that after my =
initial mail with the=20
initial quoted error message the message changed.

Probably either the change of compiling the dtb file (make dtbs =
DTC_FLAGS=3D-@) got
me a __symbols__ node or another thing was sorted out by me on accident =
meanwhile
since still I am trying to get used to device tree handling.

In detail, this messages are not valid any more:

>>>> Loading ARM Linux zImage '/boot/uImage'
>>>> Loading devicetree from '/boot/am335x-boneblack.dtb'
>>>> ERROR: of_resolver: __symbols__ missing from base devicetree
>>>> WARNING: Failed to fixup node in of_overlay_fixup+0x1/0x4: Invalid =
argument
>>>> ERROR: of_resolver: __symbols__ missing from base devicetree
>>>> WARNING: Failed to fixup node in of_overlay_fixup+0x1/0x4: Invalid =
argument

but I get a different set of errors. Probably since including Friday and =
I overlooked this.
How embarassing, sorry!

Now I get:

ERROR: of_resolver: cannot find node ocp in base devicetree
WARNING: Failed to fixup node in of_overlay_fixup+0x1/0x4: Invalid =
argument
ERROR: of_resolver: cannot find node ocp in base devicetree
WARNING: Failed to fixup node in of_overlay_fixup+0x1/0x4: Invalid =
argument

which is very reasonable:=20

> Have a look at the generated dtb file with 'dtc -I dtb -O dts <file>'.
> It should contain a __symbols__ node.

The decompiled result of =E2=80=9Cmy=E2=80=9D dtb has a __symbols__ note =
at the bottom of the file, yes!
I suppose each =E2=80=9Cfragment@n {target =3D XYZ =E2=80=A6=E2=80=9D) =
in a overlay has to have a matching=20
counterpart XYZ in the __symbols__ node in the base file, right? Because =
in my overlay
there is an "target =3D <&ocp>!" without a matching counterpart in the =
base dtb.
Two other entries (uart1, am33xx_pinmux) have a matching entry.=20

> BTW do you have a good reason to use overlays? Overlays only have a

No indeed I don=E2=80=99t necessarily - I realized meanwhile by myself.

Additionally I relaized the overlays I have here in question only do =
some GPIO
multiplexing I can do by hand/script in the /sys gpio section anyway. =
Only interesting
for serial line availability at boot. May be later it=E2=80=99s =
interesting for us for different
variante, I hope I am used to this stuff then.=20

> value when you have different hardware variants in which different
> overlays are loaded. If that's not the case I'd just go with a static
> devicetree and be done with it.

For now I agree and I try to understand how to enable the UART1 and =
UART4
in a static dtb way and I currently search the vanille device tree on =
how to do=20
this and how this currently this is done at least with the working UART0 =
:-)

Sadly not barebox related :-)

Kind Regards
Konsti


--Apple-Mail=_4772038E-6314-4DEA-B887-CBC3E30EB3E9
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
CQMxCwYJKoZIhvcNAQcBMBwGCSqGSIb3DQEJBTEPFw0yMTA2MjExNDIxMDZaMC8GCSqGSIb3DQEJ
BDEiBCCMeW58FCuReQ4ElGQu66iCWtDcKb/eKAqoR1C4jjUiKTCBvQYJKwYBBAGCNxAEMYGvMIGs
MIGWMQswCQYDVQQGEwJHQjEbMBkGA1UECBMSR3JlYXRlciBNYW5jaGVzdGVyMRAwDgYDVQQHEwdT
YWxmb3JkMRgwFgYDVQQKEw9TZWN0aWdvIExpbWl0ZWQxPjA8BgNVBAMTNVNlY3RpZ28gUlNBIENs
aWVudCBBdXRoZW50aWNhdGlvbiBhbmQgU2VjdXJlIEVtYWlsIENBAhEAjME22FZvrY2T2koTKnYL
HzCBvwYLKoZIhvcNAQkQAgsxga+ggawwgZYxCzAJBgNVBAYTAkdCMRswGQYDVQQIExJHcmVhdGVy
IE1hbmNoZXN0ZXIxEDAOBgNVBAcTB1NhbGZvcmQxGDAWBgNVBAoTD1NlY3RpZ28gTGltaXRlZDE+
MDwGA1UEAxM1U2VjdGlnbyBSU0EgQ2xpZW50IEF1dGhlbnRpY2F0aW9uIGFuZCBTZWN1cmUgRW1h
aWwgQ0ECEQCMwTbYVm+tjZPaShMqdgsfMA0GCSqGSIb3DQEBCwUABIIBAAEnTubsS4L+fNeW4Y8/
fjeyMzNEmB+GFqRImbQkWe5gIitch9oqAQUIRVBvTBFQgOkl+b8BNjgJo+sJe+i2uuU9im+0ATHU
zTMj+fideqhg9mJJwQSw5lAVJB4Zhytrm8t+UnK3XsXngIrDJbsLMxmRC/JIxi8YznqA8jdzt1wS
8O5gM5HpvKVrHvqg/F66EleLfNocWDs0SsVymWqSyJLTZPUB0gA5VxsRZP2WYlCi99uvq6e1Qh4M
VCq8gUWYAgID30ib5Pw31TJ0AbH8Fm2Y6YpWfdyWkebugYzFFL08rkfOaFrUWr8vkdKJSWQ+A3Bt
nC5DdghCW6seCJtaFCQAAAAAAAA=
--Apple-Mail=_4772038E-6314-4DEA-B887-CBC3E30EB3E9--


--===============7041209858752187122==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============7041209858752187122==--


