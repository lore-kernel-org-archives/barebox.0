Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp.reverze.net ([82.161.88.7] helo=fsm.reverze.net)
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WSPA2-0000df-7s
 for barebox@lists.infradead.org; Tue, 25 Mar 2014 11:04:51 +0000
Message-ID: <533162B8.8050300@reverze.net>
Date: Tue, 25 Mar 2014 12:04:24 +0100
From: Michel Stam <michel@reverze.net>
MIME-Version: 1.0
References: <C89EFD3CD56F64468D3D206D683A8D2203154121@ldam-msx2.fugro-nl.local>
 <20140325081815.GM17250@pengutronix.de>
In-Reply-To: <20140325081815.GM17250@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============6992243546779821904=="
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: Barebox x86 IDE support
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

This is a cryptographically signed message in MIME format.

--===============6992243546779821904==
Content-Type: multipart/signed; protocol="application/pkcs7-signature"; micalg=sha1; boundary="------------ms000406030607080707060001"

This is a cryptographically signed message in MIME format.

--------------ms000406030607080707060001
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: quoted-printable

Hello Sascha,

I will repost the patches separately as you requested.

With regard to your comment below, this was somewhat intentional, as I=20
understood:
> struct resource iomem_resource =3D {
>         .start =3D 0,
>         .end =3D 0xffffffff,
>         .name =3D "iomem",
>         .children =3D LIST_HEAD_INIT(iomem_resource.children),
> };
as "I/O and memory resource". This is also why I check on the resource=20
type in request_region( ):
>         /*
>          * We keep the list of child resources ordered which helps
>          * us searching for conflicts here.
>          */
>         list_for_each_entry(r, &parent->children, sibling) {
>                 if (end < r->start)
>                         goto ok;
>                 if (start > r->end)
>                         continue;
>
>                 if (type !=3D resource_type(r->parent))
>                         continue;
I retain one resource tree that way, also for if people decide to add=20
DMA or IRQ's in the future. The iteration function skips the resource if =

the types do not match. To me the discussion seems the difference=20
between one linked list for every resource type (=3D=3D more work if a ne=
w=20
type is added), or a single linked list with a type field (new resource=20
type =3D=3D new integer constant, no more).

I would like to hear your thoughts on that.

to be continued after the posting.

Cheers,

Michel
On 03/25/2014 09:18 AM, Sascha Hauer wrote:
> Hi Michel,
>
> On Mon, Mar 24, 2014 at 10:37:48AM +0100, Stam, Michel [FINT] wrote:
>> Hello maintainers,
>>
>> I was wondering if one of you has had time to verify these patches and=
 apply them to trunk?
> Could you send the patches as a series so that it's easier to comment o=
n
> the patches on the list?
>
> There are some things to comment on, I think the most important one is
> this:
>
>> +/*
>> + * request an io region inside the io space
>> + */
>> +struct resource *request_io_region(const char *name,
>> +		resource_size_t start, resource_size_t end,int type)
>> +{
>> +	return request_region(&iomem_resource, name, start, end, type);
>> +}
>>
> You request here from the iomem resource, but ioports are a completely
> separate resource, so you have to use a new toplevel resource like
> this:
>
> /* The root resource for the whole io space */
> struct resource io_resource =3D {
> 	.start =3D 0,
> 	.end =3D 0xffffffff,
> 	.name =3D "ioport",
> 	.children =3D LIST_HEAD_INIT(io_resource.children),
> };
>
> /*
>   * request an io region inside the io space
>   */
> struct resource *request_io_region(const char *name,
> 		resource_size_t start, resource_size_t end)
> {
> 	return request_region(&io_resource, name, start, end, IORESOURCE_IO);
> }
>
> The 'type' argument to request_io_region is unnecessary since the
> function name already implies it, right?
>
> Sascha
>



--------------ms000406030607080707060001
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
MBgGCSqGSIb3DQEJAzELBgkqhkiG9w0BBwEwHAYJKoZIhvcNAQkFMQ8XDTE0MDMyNTExMDQy
NFowIwYJKoZIhvcNAQkEMRYEFId0DRqLYJi09fhKO7BpPjcxpLYWMGwGCSqGSIb3DQEJDzFf
MF0wCwYJYIZIAWUDBAEqMAsGCWCGSAFlAwQBAjAKBggqhkiG9w0DBzAOBggqhkiG9w0DAgIC
AIAwDQYIKoZIhvcNAwICAUAwBwYFKw4DAgcwDQYIKoZIhvcNAwICASgwgaUGCSsGAQQBgjcQ
BDGBlzCBlDCBjDELMAkGA1UEBhMCSUwxFjAUBgNVBAoTDVN0YXJ0Q29tIEx0ZC4xKzApBgNV
BAsTIlNlY3VyZSBEaWdpdGFsIENlcnRpZmljYXRlIFNpZ25pbmcxODA2BgNVBAMTL1N0YXJ0
Q29tIENsYXNzIDEgUHJpbWFyeSBJbnRlcm1lZGlhdGUgQ2xpZW50IENBAgMJaQ4wgacGCyqG
SIb3DQEJEAILMYGXoIGUMIGMMQswCQYDVQQGEwJJTDEWMBQGA1UEChMNU3RhcnRDb20gTHRk
LjErMCkGA1UECxMiU2VjdXJlIERpZ2l0YWwgQ2VydGlmaWNhdGUgU2lnbmluZzE4MDYGA1UE
AxMvU3RhcnRDb20gQ2xhc3MgMSBQcmltYXJ5IEludGVybWVkaWF0ZSBDbGllbnQgQ0ECAwlp
DjANBgkqhkiG9w0BAQEFAASCAQCMkmS4keiY5iKDGw0uksPuFJVLvKycc4LYgCrWTxw3GGsF
amD65J6Ye2fK7q4F4SwY/kP8bQLWieBbjM5VK/RpDYvv3H/8NUCl6Q9TqRNP7JyPugrampIm
I4zVN8VhrbH8rCdndJQPl64GDnOdhiEKjx6bH5ss8pdRG/tiWty6w2xpHCpAfTplf7oV+Bms
zVfR4nzqCyt3blhuSOMFcsj6aNndKMmjWcNQc+BwcFZhmv2J5NhqW++s6bgJ7CVeheKL5f3A
y2Ztp9PB55Wt2W/CKwEZQm5kXvU56iAo2OSFNp+O6eXScWLLLbFFnT3YgAa3xvmbZ2z89uuE
7w0cFhLPAAAAAAAA
--------------ms000406030607080707060001--


--===============6992243546779821904==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============6992243546779821904==--
