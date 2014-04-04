Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp.reverze.net ([82.161.88.7] helo=fsm.reverze.net)
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WWAkH-000743-Bn
 for barebox@lists.infradead.org; Fri, 04 Apr 2014 20:29:50 +0000
Message-ID: <533F082C.7000003@reverze.net>
Date: Fri, 04 Apr 2014 21:29:48 +0200
From: Michel Stam <michel@reverze.net>
MIME-Version: 1.0
References: <1396634987-3730-1-git-send-email-michel@reverze.net>
 <1396638728.615551432@f156.i.mail.ru> <533EF7A2.90007@reverze.net>
 <1396641524.291157734@f305.i.mail.ru>
In-Reply-To: <1396641524.291157734@f305.i.mail.ru>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============7606285052005511852=="
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCHv2 2/3] x86: Add support for IDE on the legacy I/O ports
To: Alexander Shiyan <shc_work@mail.ru>
Cc: barebox@lists.infradead.org

This is a cryptographically signed message in MIME format.

--===============7606285052005511852==
Content-Type: multipart/signed; protocol="application/pkcs7-signature"; micalg=sha1; boundary="------------ms050807060903030200030505"

This is a cryptographically signed message in MIME format.

--------------ms050807060903030200030505
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

Point taken, I agree as far as the large number of ifdefs is concerned.=20
This code could use some reworking, maybe split off into a separate file =

or even two.

I do not agree about letting the linker optimise, as that is=20
compiler-dependent.

I may look into splitting this up another time.

On 04/04/2014 09:58 PM, Alexander Shiyan wrote:
> Fri, 04 Apr 2014 20:19:14 +0200 =D0=BE=D1=82 Michel Stam <michel@reverz=
e.net>:
>> I prefer to #ifdef out whatever code is not in use. That includes head=
er
>> files, as some don't play nice.
>>
>> In this way, one can be certain that code that is not used will not be=

>> compiled either, and as such will not cause needless errors either. It=

>> also clearly indicates why this particular piece of code is there, in
>> this case the #include.
>> For platform_ide.h maybe not strictly necessary, but call it a habit.
>>
>> While working on this bit of code I got some errors if the BIOS IDE
>> support was not included, so I decided to fix it by ifdef-ing out
>> unnecessary code.
> Summing up, I want to say that a large number of #ifdef is not good.
> Unused code generally should be discarded by linker.
>
>> On 04/04/2014 09:12 PM, Alexander Shiyan wrote:
>>> Fri,  4 Apr 2014 20:09:46 +0200 =D0=BE=D1=82 michel@reverze.net:
>>>> From: Michel Stam <m.stam@fugro.nl>
>>>>
>>>> ---
>>>>    arch/x86/boards/x86_generic/generic_pc.c |   73 +++++++++++++++++=
++++++
>>>>    drivers/ata/ide-sff.c                    |   94 +++++++++++++++++=
+++++++-----
>>>>    drivers/ata/intf_platform_ide.c          |   33 +++++++++-
>>>>    include/ata_drive.h                      |    1 +
>>>>    4 files changed, 180 insertions(+), 21 deletions(-)
>>>>
>>>> diff --git a/arch/x86/boards/x86_generic/generic_pc.c b/arch/x86/boa=
rds/x86_generic/generic_pc.c
>>>> index 74a7224..895b88d 100644
>>>> --- a/arch/x86/boards/x86_generic/generic_pc.c
>>>> +++ b/arch/x86/boards/x86_generic/generic_pc.c
>>>> @@ -27,6 +27,10 @@
>>>>    #include <ns16550.h>
>>>>    #include <linux/err.h>
>>>>   =20
>>>> +#ifdef CONFIG_DISK_INTF_PLATFORM_IDE
>>>> +#include <platform_ide.h>
>>>> +#endif
>>> Uhh, do you really need to #ifdef this?
>>>
>>> ---
> ---
>



--------------ms050807060903030200030505
Content-Type: application/pkcs7-signature; name="smime.p7s"
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename="smime.p7s"
Content-Description: S/MIME Cryptographic Signature

MIAGCSqGSIb3DQEHAqCAMIACAQExCzAJBgUrDgMCGgUAMIAGCSqGSIb3DQEHAQAAoIIMmzCC
BjQwggQcoAMCAQICAR4wDQYJKoZIhvcNAQEFBQAwfTELMAkGA1UEBhMCSUwxFjAUBgNVBAoT
DVN0YXJ0Q29tIEx0ZC4xKzApBgNVBAsTIlNlY3VyZSBEaWdpdGFsIENlcnRpZmljYXRlIFNp
Z25pbmcxKTAnBgNVBAMTIFN0YXJ0Q29tIENlcnRpZmljYXRpb24gQXV0aG9yaXR5MB4XDTA3
MTAyNDIxMDE1NVoXDTE3MTAyNDIxMDE1NVowgYwxCzAJBgNVBAYTAklMMRYwFAYDVQQKEw1T
dGFydENvbSBMdGQuMSswKQYDVQQLEyJTZWN1cmUgRGlnaXRhbCBDZXJ0aWZpY2F0ZSBTaWdu
aW5nMTgwNgYDVQQDEy9TdGFydENvbSBDbGFzcyAxIFByaW1hcnkgSW50ZXJtZWRpYXRlIENs
aWVudCBDQTCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBAMcJg8zOLdgasSmkLhOr
lr6KMoOMpohBllVHrdRvEg/q6r8jR+EK75xCGhR8ToREoqe7zM9/UnC6TS2y9UKTpT1v7RSM
zR0t6ndl0TWBuUr/UXBhPk+Kmy7bI4yW4urC+y7P3/1/X7U8ocb8VpH/Clt+4iq7nirMcNh6
qJR+xjOhV+VHzQMALuGYn5KZmc1NbJQYclsGkDxDz2UbFqE2+6vIZoL+jb9x4Pa5gNf1TwSD
kOkikZB1xtB4ZqtXThaABSONdfmv/Z1pua3FYxnCFmdr/+N2JLKutIxMYqQOJebr/f/h5t95
m4JgrM3Y/w7YX9d7YAL9jvN4SydHsU6n65cCAwEAAaOCAa0wggGpMA8GA1UdEwEB/wQFMAMB
Af8wDgYDVR0PAQH/BAQDAgEGMB0GA1UdDgQWBBRTcu2SnODaywFcfH6WNU7y1LhRgjAfBgNV
HSMEGDAWgBROC+8apEBbpRdphzDKNGhD0EGu8jBmBggrBgEFBQcBAQRaMFgwJwYIKwYBBQUH
MAGGG2h0dHA6Ly9vY3NwLnN0YXJ0c3NsLmNvbS9jYTAtBggrBgEFBQcwAoYhaHR0cDovL3d3
dy5zdGFydHNzbC5jb20vc2ZzY2EuY3J0MFsGA1UdHwRUMFIwJ6AloCOGIWh0dHA6Ly93d3cu
c3RhcnRzc2wuY29tL3Nmc2NhLmNybDAnoCWgI4YhaHR0cDovL2NybC5zdGFydHNzbC5jb20v
c2ZzY2EuY3JsMIGABgNVHSAEeTB3MHUGCysGAQQBgbU3AQIBMGYwLgYIKwYBBQUHAgEWImh0
dHA6Ly93d3cuc3RhcnRzc2wuY29tL3BvbGljeS5wZGYwNAYIKwYBBQUHAgEWKGh0dHA6Ly93
d3cuc3RhcnRzc2wuY29tL2ludGVybWVkaWF0ZS5wZGYwDQYJKoZIhvcNAQEFBQADggIBAAqD
CH14qywGXLhjjF6uHLkjd02hcdh9hrw+VUsv+q1eeQWB21jWj3kJ96AUlPCoEGZ/ynJNScWy
6QMVQjbbMXltUfO4n4bGGdKo3awPWp61tjAFgraLJgDk+DsSvUD6EowjMTNx25GQgyYJ5RPI
zKKR9tQW8gGK+2+RHxkUCTbYFnL6kl8Ch507rUdPPipJ9CgJFws3kDS3gOS5WFMxcjO5DwKf
KSETEPrHh7p5shuuNktvsv6hxHTLhiMKX893gxdT3XLS9OKmCv87vkINQcNEcIIoFWbP9HOR
z9v3vQwR4e3ksLc2JZOAFK+ssS5XMEoznzpihEP0PLc4dCBYjbvSD7kxgDwZ+Aj8Q9PkbvE9
sIPP7ON0fz095HdThKjiVJe6vofq+n6b1NBc8XdrQvBmunwxD5nvtTW4vtN6VY7mUCmxsCie
uoBJ9OlqmsVWQvifIYf40dJPZkk9YgGTzWLpXDSfLSplbY2LL9C9U0ptvjcDjefLTvqSFc7t
w1sEhF0n/qpA2r0GpvkLRDmcSwVyPvmjFBGqUp/pNy8ZuPGQmHwFi2/14+xeSUDG2bwnsYJQ
G2EdJCB6luQ57GEnTA/yKZSTKI8dDQa8Sd3zfXb19mOgSF0bBdXbuKhEpuP9wirslFe6fQ1t
5j5R0xi72MZ8ikMu1RQZKCyDbMwazlHiMIIGXzCCBUegAwIBAgIDCWkOMA0GCSqGSIb3DQEB
BQUAMIGMMQswCQYDVQQGEwJJTDEWMBQGA1UEChMNU3RhcnRDb20gTHRkLjErMCkGA1UECxMi
U2VjdXJlIERpZ2l0YWwgQ2VydGlmaWNhdGUgU2lnbmluZzE4MDYGA1UEAxMvU3RhcnRDb20g
Q2xhc3MgMSBQcmltYXJ5IEludGVybWVkaWF0ZSBDbGllbnQgQ0EwHhcNMTQwMzI0MDkzNzUx
WhcNMTUwMzI1MDkyMDI1WjBhMRkwFwYDVQQNExBrY08xVFp2YlB1VHJwckU4MQswCQYDVQQG
EwJOTDEUMBIGA1UEAxMLTWljaGVsIFN0YW0xITAfBgkqhkiG9w0BCQEWEm1pY2hlbEByZXZl
cnplLm5ldDCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBAKionYnufAXXVz55IVqM
4hUGc32XO6pXeHy2wb85GLs5UFnLVwqt+SsZWkAzGh2yb+ig59tamcw67ugX+6i+ya9UVD9E
lEPAYK3A5yTdM2Umg1944YiZjrV01NuHhrRPJTATZwmIqFCjqYKGaCt6xV5R/bEpSmetM66J
shnVbeRnMRzzocNuUkTiJqZu6mZRGcORfCDMUnfP7Sevzq9mCMKQM4q0tiMOK5MHdnfXnDhj
4VJGuOIzTqnMvivIENboKNtbJju4Yjmorm7kJ435fWlcBa0k2TyFrT+hkxooh2cwTclH6I1U
dh614RPbAG433Me9LzZNNkXX053VGwzKyyUCAwEAAaOCAvIwggLuMAkGA1UdEwQCMAAwCwYD
VR0PBAQDAgSwMB0GA1UdJQQWMBQGCCsGAQUFBwMCBggrBgEFBQcDBDAdBgNVHQ4EFgQUNr7g
vLJAY8/w3wL6MIaqa0bw6fwwHwYDVR0jBBgwFoAUU3Ltkpzg2ssBXHx+ljVO8tS4UYIwHQYD
VR0RBBYwFIESbWljaGVsQHJldmVyemUubmV0MIIBZgYDVR0gBIIBXTCCAVkwggFVBgsrBgEE
AYG1NwECAzCCAUQwLgYIKwYBBQUHAgEWImh0dHA6Ly93d3cuc3RhcnRzc2wuY29tL3BvbGlj
eS5wZGYwggEQBggrBgEFBQcCAjCCAQIwJxYgU3RhcnRDb20gQ2VydGlmaWNhdGlvbiBBdXRo
b3JpdHkwAwIBARqB1lRoaXMgY2VydGlmaWNhdGUgd2FzIGlzc3VlZCBhY2NvcmRpbmcgdG8g
dGhlIFN0YXJ0U1NMIFdlYi1vZi1UcnVzdCBDb21tdW5pdHkgVmFsaWRhdGlvbiByZXF1aXJl
bWVudHMgb2YgdGhlIFN0YXJ0Q29tIENBIHBvbGljeSwgcmVsaWFuY2Ugb25seSBmb3IgdGhl
IGludGVuZGVkIHB1cnBvc2UgaW4gY29tcGxpYW5jZSBvZiB0aGUgcmVseWluZyBwYXJ0eSBv
YmxpZ2F0aW9ucy4wNgYDVR0fBC8wLTAroCmgJ4YlaHR0cDovL2NybC5zdGFydHNzbC5jb20v
Y3J0dTEtY3JsLmNybDCBjgYIKwYBBQUHAQEEgYEwfzA5BggrBgEFBQcwAYYtaHR0cDovL29j
c3Auc3RhcnRzc2wuY29tL3N1Yi9jbGFzczEvY2xpZW50L2NhMEIGCCsGAQUFBzAChjZodHRw
Oi8vYWlhLnN0YXJ0c3NsLmNvbS9jZXJ0cy9zdWIuY2xhc3MxLmNsaWVudC5jYS5jcnQwIwYD
VR0SBBwwGoYYaHR0cDovL3d3dy5zdGFydHNzbC5jb20vMA0GCSqGSIb3DQEBBQUAA4IBAQCN
6w5arF+jboDXRlVPluqz/vHrmIY879dUxp4eLAfMCeL1efdrTcT8pOLSbJO80EQy460rDFOQ
2pbLKXkM9PfkcO/VKGG9CYWVjAFe2uyinxrtUE3EkfwLOleiLfFdDpSSQUfS1ns3nfrTU59w
VKUafg+j4u03gY78SI6WmPOWiQSQtHR8/ZIn1wz0bnI/2713PJgA1d9AgrZx13rib1fI7jQQ
wsJVWFG1B6acc05BmlIxtcp5NEwiJQmsT4hsRAtQvNbM4ivGBsZ7JocUe3Gqb4TBjv7/03Rw
fv2WhemEVSAMGgVGCLNIouhhHSMot1LEzfNZyUaIL3uPcy5z34zCMYID3TCCA9kCAQEwgZQw
gYwxCzAJBgNVBAYTAklMMRYwFAYDVQQKEw1TdGFydENvbSBMdGQuMSswKQYDVQQLEyJTZWN1
cmUgRGlnaXRhbCBDZXJ0aWZpY2F0ZSBTaWduaW5nMTgwNgYDVQQDEy9TdGFydENvbSBDbGFz
cyAxIFByaW1hcnkgSW50ZXJtZWRpYXRlIENsaWVudCBDQQIDCWkOMAkGBSsOAwIaBQCgggId
MBgGCSqGSIb3DQEJAzELBgkqhkiG9w0BBwEwHAYJKoZIhvcNAQkFMQ8XDTE0MDQwNDE5Mjk0
OFowIwYJKoZIhvcNAQkEMRYEFOopmPJUivVAjA3ZbH6yybwWWEdaMGwGCSqGSIb3DQEJDzFf
MF0wCwYJYIZIAWUDBAEqMAsGCWCGSAFlAwQBAjAKBggqhkiG9w0DBzAOBggqhkiG9w0DAgIC
AIAwDQYIKoZIhvcNAwICAUAwBwYFKw4DAgcwDQYIKoZIhvcNAwICASgwgaUGCSsGAQQBgjcQ
BDGBlzCBlDCBjDELMAkGA1UEBhMCSUwxFjAUBgNVBAoTDVN0YXJ0Q29tIEx0ZC4xKzApBgNV
BAsTIlNlY3VyZSBEaWdpdGFsIENlcnRpZmljYXRlIFNpZ25pbmcxODA2BgNVBAMTL1N0YXJ0
Q29tIENsYXNzIDEgUHJpbWFyeSBJbnRlcm1lZGlhdGUgQ2xpZW50IENBAgMJaQ4wgacGCyqG
SIb3DQEJEAILMYGXoIGUMIGMMQswCQYDVQQGEwJJTDEWMBQGA1UEChMNU3RhcnRDb20gTHRk
LjErMCkGA1UECxMiU2VjdXJlIERpZ2l0YWwgQ2VydGlmaWNhdGUgU2lnbmluZzE4MDYGA1UE
AxMvU3RhcnRDb20gQ2xhc3MgMSBQcmltYXJ5IEludGVybWVkaWF0ZSBDbGllbnQgQ0ECAwlp
DjANBgkqhkiG9w0BAQEFAASCAQAKYO69Id9GrKWoQB49kp/KESDN5mGFxJSftO/zOxqDZK/l
wFAWvCmt3/ruKeybz2T/Etl5ERA0xBe2h4TipXDYj576rvpn65+b4V8A+o/c+jNaZK8Vz3ak
6laQwVWERmbeqeLTlF3zEZ3iu/Y4CeKwxCJu5bL1n+Clo/682nPNgjcszegybnAILi5S3ptN
oQIDVmI3EQvB6M21az5OvBYAkWfRG2Gs2JMzBQQRFA8yIw75JzTJ7P0eehL2PS+IfKwtAyqh
2Hd83tPmEGSlLOYi+P2mpyVXkgJdsRG+Wa/+twR7adrXlJQZ1Ki7FuteOBFPQ8iVfh0ydNmG
5tcMBVuxAAAAAAAA
--------------ms050807060903030200030505--


--===============7606285052005511852==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============7606285052005511852==--
