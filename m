Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp.reverze.net ([82.161.88.7] helo=fsm.reverze.net)
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WYDCB-0006fh-HU
 for barebox@lists.infradead.org; Thu, 10 Apr 2014 11:31:05 +0000
Message-ID: <534680D8.3040409@reverze.net>
Date: Thu, 10 Apr 2014 13:30:32 +0200
From: Michel Stam <michel@reverze.net>
MIME-Version: 1.0
References: <20140405230029.876959920a802447aeb9720f@gmail.com>
 <A5DB3EAC-DA3A-4BF2-8C21-7C57B5CF9AAE@reverze.net>
 <20140410055200.GJ27055@pengutronix.de>
In-Reply-To: <20140410055200.GJ27055@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============4516034885204472750=="
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: RFC: barebox-x86 as a coreboot payload
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

This is a cryptographically signed message in MIME format.

--===============4516034885204472750==
Content-Type: multipart/signed; protocol="application/pkcs7-signature"; micalg=sha1; boundary="------------ms020502020807090008060101"

This is a cryptographically signed message in MIME format.

--------------ms020502020807090008060101
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: quoted-printable

Hello Sascha,
> I think there is interest in EFI support. It's a good thing to implemen=
t
> a standard boot concept. It could be used on ARM aswell.
> The really bad thing about EFI is that it requires runtime services to
> access the EFI variables from the kernel. For this the kernel calls bac=
k
> into bootloader code. This concept stinks. The kernel should access the=

> variables natively (With some data structure kernel and bootloader agre=
e
> about). I recently heard someone going into that direction, just can't
> remember who it was.
I took a small look at it, apparently there's attempts at a gcc=20
toolchain necessary for compiling this. And yes it has its own=20
development environment.

http://wiki.osdev.org/UEFI
http://sourceforge.net/projects/gnu-efi/

I might get to that some day, its not on my immediate list as yet.

> I don't know either. Do you want to do framebuffer console support
> aswell? That might be difficult.
I was thinking using VESA VBE for this. Maybe looking at the linux=20
kernel code may help here, as VESA VBE seems to have graphical/text=20
modes, having a framebuffer driver on barebox/x86 would be nice.

This will be next after the keyboard driver.


Michel
On 04/10/2014 07:52 AM, Sascha Hauer wrote:
> On Sun, Apr 06, 2014 at 04:32:19PM +0200, Michel Stam wrote:
>> Hello Antony,
>>
>> Interesting idea- I wonder if its difficult given that U-boot is
>> already supported?
>>
>> Personally I have no experience with coreboot, the systems I test on
>> are industrial x86 SBCs with their own BIOS. I suppose it is oossible,=

>> maybe we can borrow code from u-boot.
>>
>> Another thing along the sane lines that crossed my mind is EFI support=

>> for barebox, I wonder if theres interest in that?
> I think there is interest in EFI support. It's a good thing to implemen=
t
> a standard boot concept. It could be used on ARM aswell.
> The really bad thing about EFI is that it requires runtime services to
> access the EFI variables from the kernel. For this the kernel calls bac=
k
> into bootloader code. This concept stinks. The kernel should access the=

> variables natively (With some data structure kernel and bootloader agre=
e
> about). I recently heard someone going into that direction, just can't
> remember who it was.
>
>> Next on my list is keyboard/VGA, maybe VESA support if I have the
>> time. I would like to see a console, possibly a framebuffer driver. No=

>> idea how difficult that will be.
> I don't know either. Do you want to do framebuffer console support
> aswell? That might be difficult.
>
> Sascha
>



--------------ms020502020807090008060101
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
MBgGCSqGSIb3DQEJAzELBgkqhkiG9w0BBwEwHAYJKoZIhvcNAQkFMQ8XDTE0MDQxMDExMzAz
MlowIwYJKoZIhvcNAQkEMRYEFBKrnxyPCrtcIg1NvQ9TWjgq4IMkMGwGCSqGSIb3DQEJDzFf
MF0wCwYJYIZIAWUDBAEqMAsGCWCGSAFlAwQBAjAKBggqhkiG9w0DBzAOBggqhkiG9w0DAgIC
AIAwDQYIKoZIhvcNAwICAUAwBwYFKw4DAgcwDQYIKoZIhvcNAwICASgwgaUGCSsGAQQBgjcQ
BDGBlzCBlDCBjDELMAkGA1UEBhMCSUwxFjAUBgNVBAoTDVN0YXJ0Q29tIEx0ZC4xKzApBgNV
BAsTIlNlY3VyZSBEaWdpdGFsIENlcnRpZmljYXRlIFNpZ25pbmcxODA2BgNVBAMTL1N0YXJ0
Q29tIENsYXNzIDEgUHJpbWFyeSBJbnRlcm1lZGlhdGUgQ2xpZW50IENBAgMJaQ4wgacGCyqG
SIb3DQEJEAILMYGXoIGUMIGMMQswCQYDVQQGEwJJTDEWMBQGA1UEChMNU3RhcnRDb20gTHRk
LjErMCkGA1UECxMiU2VjdXJlIERpZ2l0YWwgQ2VydGlmaWNhdGUgU2lnbmluZzE4MDYGA1UE
AxMvU3RhcnRDb20gQ2xhc3MgMSBQcmltYXJ5IEludGVybWVkaWF0ZSBDbGllbnQgQ0ECAwlp
DjANBgkqhkiG9w0BAQEFAASCAQCVtutsqrpBkwQSyKwAQTY27rRFvVEoGthY6GgciWorFaOr
moVVPMegEEe4Jv+SlI4nOo834iYE8HiOladUZF6hdfn/QZpsEgxkFYKkKFUvvhMgmj9bujoF
ngEi+DRleXgu42mP7nXL5LFkYxU8ZkQPP2wrbdkpBWpcdu697IOG0qs00HqEYG2mpM6xGWJB
7TYfSBrcnrqCq5zcuxTjP4g4+lKowwu8bRLcEfbpRYdFy9x/r7nyxNEIaEcEUWwTssE5cShK
UbSzBj7JBIu1TgkjzkK/iYr6kkW+yVe5R/w4rHLUFS8/duLeyNcjqo7h20A9fdwEPIrHrmqD
KTRPfF/IAAAAAAAA
--------------ms020502020807090008060101--


--===============4516034885204472750==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============4516034885204472750==--
