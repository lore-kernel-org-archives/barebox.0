Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.light-speed.de ([2a01:238:42e1:1700:f55f:c92c:4164:be13])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1eNnfv-00089F-GX
 for barebox@lists.infradead.org; Sat, 09 Dec 2017 22:32:54 +0000
Received: from macbook-pro.fritz.box (ipb2181a42.dynamic.kabel-deutschland.de
 [178.24.26.66]) (authenticated bits=0)
 by mail.light-speed.de (8.14.9/8.14.9) with ESMTP id vB9MWEG7002808
 (version=TLSv1/SSLv3 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
 for <barebox@lists.infradead.org>; Sat, 9 Dec 2017 23:32:20 +0100
From: Jens Maus <mail@jens-maus.de>
Mime-Version: 1.0 (Mac OS X Mail 11.2 \(3445.5.20\))
Message-Id: <C315E0B1-4F4E-4814-9106-85C7E1363C2D@jens-maus.de>
Date: Sat, 9 Dec 2017 23:32:13 +0100
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============8000816750938596353=="
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: barebox on RaspberryPi2 and Pi3
To: barebox@lists.infradead.org


--===============8000816750938596353==
Content-Type: multipart/signed;
	boundary="Apple-Mail=_64B58387-5EE3-4501-83E5-F938CF3B3E8F";
	protocol="application/pkcs7-signature";
	micalg=sha1


--Apple-Mail=_64B58387-5EE3-4501-83E5-F938CF3B3E8F
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8

Hello Barebox developers,

I am currently trying to use barebox for one of my embedded linux =
projects which is mainly targeted for the RaspberryPi hardware platform. =
I was already able to compile barebox (v2017.11 using rpi_defconfig) and =
successfully run it on an old RaspberryPi1 Model B version using the =
=E2=80=9Ebarebox-raspberry-pi-1.img=E2=80=9C file as a kernel image. It =
shows up on my serial console using 115200/8N1 and I am able to play =
around with the console commands.

However, when I use the =E2=80=9Ebarebox-raspberry-pi-2.img=E2=80=9C =
file together with a RaspberryPi2 nothing shows up on the serial =
console. Also using an old version (v2017.09) doesn=E2=80=99t show up =
anything and the green LED on the Pi2 just flashes in a 1 second =
interval. The same happens with a Pi3 and nothing shows up on the serial =
console or the HDMI connection.

As the changelog states that at least the Pi2 should be supported I =
wonder what could be the reason why I am only able to get barebox =
running on the old RaspberryPi1 Model B hardware but not on newer =
RaspberryPi models.

Any help would be appreciated.

Best Regards,

Jens
--=20
Jens Maus, Dresden/Germany
http://jens-maus.de/

*** Content is authentic only with digital signature  ***


--Apple-Mail=_64B58387-5EE3-4501-83E5-F938CF3B3E8F
Content-Disposition: attachment;
	filename=smime.p7s
Content-Type: application/pkcs7-signature;
	name=smime.p7s
Content-Transfer-Encoding: base64

MIAGCSqGSIb3DQEHAqCAMIACAQExCzAJBgUrDgMCGgUAMIAGCSqGSIb3DQEHAQAAoIILFTCCBSsw
ggQToAMCAQICECZjrZBOsAh0wIm4jfkIPVkwDQYJKoZIhvcNAQELBQAwdTELMAkGA1UEBhMCSUwx
FjAUBgNVBAoTDVN0YXJ0Q29tIEx0ZC4xKTAnBgNVBAsTIFN0YXJ0Q29tIENlcnRpZmljYXRpb24g
QXV0aG9yaXR5MSMwIQYDVQQDExpTdGFydENvbSBDbGFzcyAyIENsaWVudCBDQTAeFw0xNjA4MTgw
NjQ3NTBaFw0xODA4MTgwNjQ3NTBaMGcxCzAJBgNVBAYTAkRFMRAwDgYDVQQIDAdTYWNoc2VuMRAw
DgYDVQQHDAdEcmVzZGVuMRIwEAYDVQQDDAlKZW5zIE1hdXMxIDAeBgkqhkiG9w0BCQEWEW1haWxA
amVucy1tYXVzLmRlMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAyw/fMCBVK7Lie4Xn
wr9w1kjWdGx/2f16rKIve6WaYI0WGiUSAUIkO6+hj//vpy0y1gLMv4e3ingzbQFskGuiDk/1Om9z
eWgqkHbzSEM22riKUfZ57wRgrfmvtQE+KpcUsTbJgklIT3JuiT/IpbSj45sa9ayRaxlE/StGAKYK
OZUC/8UAejXPiuzWuXydJptEdT8odjp/jm/XRc7blL26wI3fX+4x3lxEYNTSo/xG7QhnrOqmjC5L
H0lG/kOaneNXn5vpEon1bNRbP/yspFCXDl99SgF6Gl0qsTb87W2TzfI1Rc9ftGJLpEwazdpMJbdn
ATUREWzyEd9yfi8Pq/sX5wIDAQABo4IBwzCCAb8wDgYDVR0PAQH/BAQDAgSwMB0GA1UdJQQWMBQG
CCsGAQUFBwMCBggrBgEFBQcDBDAJBgNVHRMEAjAAMB0GA1UdDgQWBBRZ+h8e4OhHPUfSDEa3/vA0
ZVpq4DAfBgNVHSMEGDAWgBSZl6sYNTqLWUVDmLJyccj0+wnPFjBvBggrBgEFBQcBAQRjMGEwJAYI
KwYBBQUHMAGGGGh0dHA6Ly9vY3NwLnN0YXJ0c3NsLmNvbTA5BggrBgEFBQcwAoYtaHR0cDovL2Fp
YS5zdGFydHNzbC5jb20vY2VydHMvc2NhLmNsaWVudDIuY3J0MDgGA1UdHwQxMC8wLaAroCmGJ2h0
dHA6Ly9jcmwuc3RhcnRzc2wuY29tL3NjYS1jbGllbnQyLmNybDAcBgNVHREEFTATgRFtYWlsQGpl
bnMtbWF1cy5kZTAjBgNVHRIEHDAahhhodHRwOi8vd3d3LnN0YXJ0c3NsLmNvbS8wVQYDVR0gBE4w
TDAMBgorBgEEAYG1NwYBMDwGCysGAQQBgbU3AQIFMC0wKwYIKwYBBQUHAgEWH2h0dHBzOi8vd3d3
LnN0YXJ0c3NsLmNvbS9wb2xpY3kwDQYJKoZIhvcNAQELBQADggEBALpsTScyNkDi/KZbG18cyMnI
4odFgiFD4KqVdhwvQRh/42wWVC6oFazyTn9XWwu4zLMJSM3Csuhok26DkShegnPsvV5uz4v32HRB
YpD5Sr9DmdHxjIkaQNgYcf0Qcvrp2J8FormAzb1Pg1Q6b8g5jH6tXQzpvdi0HLBpURpSD59zsRLV
f+2G/ZYw8T8jEmZ1aFF7A2QbnAP9sLGCows81o09LC/gdTgb/W4wdBfYtqm4/Pimw6B0Qs8LgaG/
GE4y7EVh7PZhaxG98MckOKkC3SV2VPKrCW+XY+PtCkkWu0REtxD7FLdqw+kbyim4NdNTCcEvJpn1
Y1budCK8ozk6nywwggXiMIIDyqADAgECAhBctkhuRwyYxn/2gNtkSuKNMA0GCSqGSIb3DQEBCwUA
MH0xCzAJBgNVBAYTAklMMRYwFAYDVQQKEw1TdGFydENvbSBMdGQuMSswKQYDVQQLEyJTZWN1cmUg
RGlnaXRhbCBDZXJ0aWZpY2F0ZSBTaWduaW5nMSkwJwYDVQQDEyBTdGFydENvbSBDZXJ0aWZpY2F0
aW9uIEF1dGhvcml0eTAeFw0xNTEyMTYwMTAwMDVaFw0zMDEyMTYwMTAwMDVaMHUxCzAJBgNVBAYT
AklMMRYwFAYDVQQKEw1TdGFydENvbSBMdGQuMSkwJwYDVQQLEyBTdGFydENvbSBDZXJ0aWZpY2F0
aW9uIEF1dGhvcml0eTEjMCEGA1UEAxMaU3RhcnRDb20gQ2xhc3MgMiBDbGllbnQgQ0EwggEiMA0G
CSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQDuD1CMlQkjhKz1UGqP1jeiTiH9MgllRz6vOPrVG/eE
0H/J4QQLV/PeL8RT4xc44bEzsoJu0IhwnEchb+TxE/qw88w7hxODuw3N8Faxix6a1jp83+RWvZHZ
f78+O+3GYBpekZfTOe9A/FoTXbcgwZfLTMQodn+ckNnX31M/1M2f2/7VA7QBlvihontyHQOlIlry
QXnGI0UMCD21oopKtW48ckv0wUVg8irBKGMeD65gTON/Fsw/ZBbBqadoD1jt85FIM1ql24WUBEBw
O1d0ykCKOIbgcqes3fbcjQpruUNMBbIu1MMIRMqwjx/M7IvSKcS7VYRWl0/K2byzWvBAHh/1AgMB
AAGjggFkMIIBYDAOBgNVHQ8BAf8EBAMCAQYwHQYDVR0lBBYwFAYIKwYBBQUHAwIGCCsGAQUFBwME
MBIGA1UdEwEB/wQIMAYBAf8CAQAwMgYDVR0fBCswKTAnoCWgI4YhaHR0cDovL2NybC5zdGFydHNz
bC5jb20vc2ZzY2EuY3JsMGYGCCsGAQUFBwEBBFowWDAkBggrBgEFBQcwAYYYaHR0cDovL29jc3Au
c3RhcnRzc2wuY29tMDAGCCsGAQUFBzAChiRodHRwOi8vYWlhLnN0YXJ0c3NsLmNvbS9jZXJ0cy9j
YS5jcnQwHQYDVR0OBBYEFJmXqxg1OotZRUOYsnJxyPT7Cc8WMB8GA1UdIwQYMBaAFE4L7xqkQFul
F2mHMMo0aEPQQa7yMD8GA1UdIAQ4MDYwNAYEVR0gADAsMCoGCCsGAQUFBwIBFh5odHRwOi8vd3d3
LnN0YXJ0c3NsLmNvbS9wb2xpY3kwDQYJKoZIhvcNAQELBQADggIBAJlBQQTO9iT1TjA0eEO7V/1A
bBvMAfibjAgofxmJ01jBmHKg0pbTjWInTTYoxb3LBgz3mfjvvS1PjnIfb29MyVm0G/PSHjgq7Ews
1dEJMPC9XTuxPf2c+MWLkynBlotW542JprW+iTWfZafyUtzIKW1hk0YASJ8zSSj8D++9yR+0Uhkb
vlECJkdi1+et0EaI7HIX6ccj1rfcFFflWX/fPT64dn9jpg9s0nuJug4WsVkEK236WndZoMHrZmgF
7CIyZ3T0muqYwkASDDcRt9A21o/Mc+D8Q6GVmKRGB3gEKvOtsioHZEqJv6CdAm3a6gloo5pX3RL1
eCzc8Lzfs4T0ISZjr8xNMbTGlsuHaFH+stDewKsfnpo4N64OtAGrzmVfFFsMIRENRHsVlSEe/6LV
pBpjn00+7bqEN3qeqSxIOraYJ12mJ08G4YnP2U1fadHIaS50O5ZXqAivoBl9pi/6CBNc5wIMlkXM
yFZ0sLsI+9ErFDu9OJhX7iWCo69X0ydlzXj08+2K1PKyr+g6/vTPHur63JotNrhyoWEJyWEjBLA4
QmJXfGpB5u+bCwNfsFpcYAlkiFt1Rs2vemgSBy3q4DHDbPKvr1YImZNRSHP+TX9NP94JRkmqcyD/
qaN7u2JV1pRAlwG0npyrn6ZQM1QHV+iFbwQ4VqLMWk//QVo/rZy1MYIDTjCCA0oCAQEwgYkwdTEL
MAkGA1UEBhMCSUwxFjAUBgNVBAoTDVN0YXJ0Q29tIEx0ZC4xKTAnBgNVBAsTIFN0YXJ0Q29tIENl
cnRpZmljYXRpb24gQXV0aG9yaXR5MSMwIQYDVQQDExpTdGFydENvbSBDbGFzcyAyIENsaWVudCBD
QQIQJmOtkE6wCHTAibiN+Qg9WTAJBgUrDgMCGgUAoIIBmTAYBgkqhkiG9w0BCQMxCwYJKoZIhvcN
AQcBMBwGCSqGSIb3DQEJBTEPFw0xNzEyMDkyMjMyMTRaMCMGCSqGSIb3DQEJBDEWBBR14pzkL1qg
WCYVcpD5ZQUBPa1SEDCBmgYJKwYBBAGCNxAEMYGMMIGJMHUxCzAJBgNVBAYTAklMMRYwFAYDVQQK
Ew1TdGFydENvbSBMdGQuMSkwJwYDVQQLEyBTdGFydENvbSBDZXJ0aWZpY2F0aW9uIEF1dGhvcml0
eTEjMCEGA1UEAxMaU3RhcnRDb20gQ2xhc3MgMiBDbGllbnQgQ0ECECZjrZBOsAh0wIm4jfkIPVkw
gZwGCyqGSIb3DQEJEAILMYGMoIGJMHUxCzAJBgNVBAYTAklMMRYwFAYDVQQKEw1TdGFydENvbSBM
dGQuMSkwJwYDVQQLEyBTdGFydENvbSBDZXJ0aWZpY2F0aW9uIEF1dGhvcml0eTEjMCEGA1UEAxMa
U3RhcnRDb20gQ2xhc3MgMiBDbGllbnQgQ0ECECZjrZBOsAh0wIm4jfkIPVkwDQYJKoZIhvcNAQEB
BQAEggEAelK0OcCRdfZq5KewdgKYH8ToBSv717qnJT0TnYvG/W9OXooBJKFi/G4kpkz6ciaxhbVw
TO72xRF6bkHlhc3pm8KTwFrSlGwAiX+7aX84di4Bs5PikBtT2zPeRnY86W9mX3Iy9iITngG+BNfp
dpgqcHYt7V+LiMgTaSzaQlqG4ZKLXs6lJbdkEStCPtOX6WitI5kGp9qAQ5TelH5XoRTE0stBTLQC
U7lIusnST8q5dY+0YUa9gljfWqWvYH53KcLrYk+vo6ZorqGlsGcAPnvR/cYTNPhoko0UKwBCfD0v
W87iD5QCdK6bDal+KCKa/KnToFZxp2A5XjevG6Hy7/P96wAAAAAAAA==
--Apple-Mail=_64B58387-5EE3-4501-83E5-F938CF3B3E8F--


--===============8000816750938596353==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============8000816750938596353==--
