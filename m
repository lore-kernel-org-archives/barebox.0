Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UdQ0O-0004LW-K2
 for barebox@lists.infradead.org; Fri, 17 May 2013 19:07:53 +0000
Message-ID: <1368817605.2463.1.camel@antimon>
From: Lucas Stach <dev@lynxeye.de>
Date: Fri, 17 May 2013 21:06:45 +0200
In-Reply-To: <1368779715-3143-1-git-send-email-s.hauer@pengutronix.de>
References: <1368779715-3143-1-git-send-email-s.hauer@pengutronix.de>
Mime-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============9067412433413715852=="
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] ARM: invalidate data caches during early init
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org, Enrico Scholz <enrico.scholz@sigma-chemnitz.de>


--===============9067412433413715852==
Content-Type: multipart/signed; micalg="sha1"; protocol="application/x-pkcs7-signature";
	boundary="=-0WMEjNv5vq+WWhnYV0o8"


--=-0WMEjNv5vq+WWhnYV0o8
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Am Freitag, den 17.05.2013, 10:35 +0200 schrieb Sascha Hauer:
> Some SoCs come up with invalid entries in the data cache. This can
> lead to memory corruption when we enable them later, so invalidate
> the caches early.
>=20
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> CC: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>

Reviewed-by: Lucas Stach <l.stach@pengutronix.de>
Tested-by: Lucas Stach <l.stach@pengutronix.de>

> ---
>=20
> This is based on the patches Enrico recently sent. Enrico, I hope
> this fixes your data cache issues in a way that you do not have
> to add this to your board code.
>=20
>  arch/arm/cpu/cache.c         | 21 +++++++++++++++++++++
>  arch/arm/cpu/start-pbl.c     |  2 ++
>  arch/arm/cpu/start.c         |  2 ++
>  arch/arm/include/asm/cache.h |  5 +++++
>  4 files changed, 30 insertions(+)
>=20
> diff --git a/arch/arm/cpu/cache.c b/arch/arm/cpu/cache.c
> index 95c8338..7aab55b 100644
> --- a/arch/arm/cpu/cache.c
> +++ b/arch/arm/cpu/cache.c
> @@ -134,3 +134,24 @@ void arm_early_mmu_cache_flush(void)
>  #endif
>  	}
>  }
> +
> +void v7_mmu_cache_invalidate(void);
> +
> +void arm_early_mmu_cache_invalidate(void)
> +{
> +	switch (arm_early_get_cpu_architecture()) {
> +	case CPU_ARCH_ARMv4T:
> +	case CPU_ARCH_ARMv5:
> +	case CPU_ARCH_ARMv5T:
> +	case CPU_ARCH_ARMv5TE:
> +	case CPU_ARCH_ARMv5TEJ:
> +	case CPU_ARCH_ARMv6:
> +		asm volatile("mcr p15, 0, %0, c7, c6, 0\n" : : "r"(0));
> +		return;
> +#ifdef CONFIG_CPU_32v7
> +	case CPU_ARCH_ARMv7:
> +		v7_mmu_cache_invalidate();
> +		return;
> +#endif
> +	}
> +}
> diff --git a/arch/arm/cpu/start-pbl.c b/arch/arm/cpu/start-pbl.c
> index 6f03c4a..3ef0118 100644
> --- a/arch/arm/cpu/start-pbl.c
> +++ b/arch/arm/cpu/start-pbl.c
> @@ -59,6 +59,8 @@ static noinline __noreturn void __barebox_arm_entry(uin=
t32_t membase,
> =20
>  	endmem -=3D STACK_SIZE; /* stack */
> =20
> +	arm_early_mmu_cache_invalidate();
> +
>  	if (IS_ENABLED(CONFIG_PBL_RELOCATABLE))
>  		relocate_to_current_adr();
> =20
> diff --git a/arch/arm/cpu/start.c b/arch/arm/cpu/start.c
> index 580c1fe..5a3c629 100644
> --- a/arch/arm/cpu/start.c
> +++ b/arch/arm/cpu/start.c
> @@ -124,6 +124,8 @@ void __naked __noreturn barebox_arm_entry(uint32_t me=
mbase, uint32_t memsize,
>  {
>  	arm_setup_stack(membase + memsize - 16);
> =20
> +	arm_early_mmu_cache_invalidate();
> +
>  	__start(membase, memsize, boarddata);
>  }
>  #else
> diff --git a/arch/arm/include/asm/cache.h b/arch/arm/include/asm/cache.h
> index e5621eb..f5f8bf3 100644
> --- a/arch/arm/include/asm/cache.h
> +++ b/arch/arm/include/asm/cache.h
> @@ -10,10 +10,15 @@ int arm_set_cache_functions(void);
> =20
>  #ifdef CONFIG_MMU
>  void arm_early_mmu_cache_flush(void);
> +void arm_early_mmu_cache_invalidate(void);
>  #else
>  static inline void arm_early_mmu_cache_flush(void)
>  {
>  }
> +
> +static inline void arm_early_mmu_cache_invalidate(void)
> +{
> +}
>  #endif
> =20
>  #endif


--=-0WMEjNv5vq+WWhnYV0o8
Content-Type: application/x-pkcs7-signature; name="smime.p7s"
Content-Disposition: attachment; filename="smime.p7s"
Content-Transfer-Encoding: base64

MIAGCSqGSIb3DQEHAqCAMIACAQExCzAJBgUrDgMCGgUAMIAGCSqGSIb3DQEHAQAAoIISpjCCBjMw
ggUboAMCAQICAwZk4jANBgkqhkiG9w0BAQUFADCBjDELMAkGA1UEBhMCSUwxFjAUBgNVBAoTDVN0
YXJ0Q29tIEx0ZC4xKzApBgNVBAsTIlNlY3VyZSBEaWdpdGFsIENlcnRpZmljYXRlIFNpZ25pbmcx
ODA2BgNVBAMTL1N0YXJ0Q29tIENsYXNzIDEgUHJpbWFyeSBJbnRlcm1lZGlhdGUgQ2xpZW50IENB
MB4XDTEzMDQxNDA4MTkxMFoXDTE0MDQxNTE1MjIzNlowUzEZMBcGA1UEDRMQVzBZM3MzM2ZHVmRM
N1paSjEXMBUGA1UEAwwOZGV2QGx5bnhleWUuZGUxHTAbBgkqhkiG9w0BCQEWDmRldkBseW54ZXll
LmRlMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEArjc3YKE/IXk1HEbR+aIwMbueNy32
yL+vhBTFm3jfL+iHdj+jBFjeYQPKir/00APafOS5yn+Qzgfy+TRzVv5mzOD8ySW8TE4xPg/+wyt+
xGWuhLzLIkNxwAghdn6omePL8S55ok0EUsQyb3X7MFNRHEnrk945Yxa6IY6a1ZizHqKqsBqAwSeu
z0Kl34kcCAYnL4NOD8sqDrtlknFXFcnmMtkxp/R5zFE4YlFVs2RuSjuI85iNvVETbXZYaFKEWDH9
NB6u0CJaGQUSa6JZejTxJ9rH3QTYSjtqgmQ9QySmRoWe99ncLboJVlxAMKiO9boyzoAB1s9OLUjP
7IztqMapkwIDAQABo4IC1DCCAtAwCQYDVR0TBAIwADALBgNVHQ8EBAMCBLAwHQYDVR0lBBYwFAYI
KwYBBQUHAwIGCCsGAQUFBwMEMB0GA1UdDgQWBBRHpUJZsGgoLm9G6Z22DdazyY1VYDAfBgNVHSME
GDAWgBRTcu2SnODaywFcfH6WNU7y1LhRgjAZBgNVHREEEjAQgQ5kZXZAbHlueGV5ZS5kZTCCAUwG
A1UdIASCAUMwggE/MIIBOwYLKwYBBAGBtTcBAgMwggEqMC4GCCsGAQUFBwIBFiJodHRwOi8vd3d3
LnN0YXJ0c3NsLmNvbS9wb2xpY3kucGRmMIH3BggrBgEFBQcCAjCB6jAnFiBTdGFydENvbSBDZXJ0
aWZpY2F0aW9uIEF1dGhvcml0eTADAgEBGoG+VGhpcyBjZXJ0aWZpY2F0ZSB3YXMgaXNzdWVkIGFj
Y29yZGluZyB0byB0aGUgQ2xhc3MgMSBWYWxpZGF0aW9uIHJlcXVpcmVtZW50cyBvZiB0aGUgU3Rh
cnRDb20gQ0EgcG9saWN5LCByZWxpYW5jZSBvbmx5IGZvciB0aGUgaW50ZW5kZWQgcHVycG9zZSBp
biBjb21wbGlhbmNlIG9mIHRoZSByZWx5aW5nIHBhcnR5IG9ibGlnYXRpb25zLjA2BgNVHR8ELzAt
MCugKaAnhiVodHRwOi8vY3JsLnN0YXJ0c3NsLmNvbS9jcnR1MS1jcmwuY3JsMIGOBggrBgEFBQcB
AQSBgTB/MDkGCCsGAQUFBzABhi1odHRwOi8vb2NzcC5zdGFydHNzbC5jb20vc3ViL2NsYXNzMS9j
bGllbnQvY2EwQgYIKwYBBQUHMAKGNmh0dHA6Ly9haWEuc3RhcnRzc2wuY29tL2NlcnRzL3N1Yi5j
bGFzczEuY2xpZW50LmNhLmNydDAjBgNVHRIEHDAahhhodHRwOi8vd3d3LnN0YXJ0c3NsLmNvbS8w
DQYJKoZIhvcNAQEFBQADggEBAKb6AtMA7a6sbuRG8oHTFJRD5vsLleuAw+uEOJTYMFCymBRFYqQx
Oa6+SE+h+9ZYW059GIvnxYaQY+LmpvLIZ6EBgg7TpT37WrJiifLUfvb/U2hignujEgsNeDUobdoj
Y7hKSW0gJ/7p6Q4VIMTdaEl/PFTfH81yv3ePqHe9NfuWbVYFAsXOIfh8Ii1UOwv+HaVQ7AN99SC4
bb7CDUVx9ClN271h9TsLgSKgGCzKhvEGTaeV4UrHufp4XLq5bxvht68OjINhTeIr86E7vKxGmRal
qDFigTV12UmijO2vtBTL23UEt6Ym85nsSF+Uk+33JRhTtJ+P8MTY74K6PZCcrPcwggYzMIIFG6AD
AgECAgMGZOIwDQYJKoZIhvcNAQEFBQAwgYwxCzAJBgNVBAYTAklMMRYwFAYDVQQKEw1TdGFydENv
bSBMdGQuMSswKQYDVQQLEyJTZWN1cmUgRGlnaXRhbCBDZXJ0aWZpY2F0ZSBTaWduaW5nMTgwNgYD
VQQDEy9TdGFydENvbSBDbGFzcyAxIFByaW1hcnkgSW50ZXJtZWRpYXRlIENsaWVudCBDQTAeFw0x
MzA0MTQwODE5MTBaFw0xNDA0MTUxNTIyMzZaMFMxGTAXBgNVBA0TEFcwWTNzMzNmR1ZkTDdaWkox
FzAVBgNVBAMMDmRldkBseW54ZXllLmRlMR0wGwYJKoZIhvcNAQkBFg5kZXZAbHlueGV5ZS5kZTCC
ASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBAK43N2ChPyF5NRxG0fmiMDG7njct9si/r4QU
xZt43y/oh3Y/owRY3mEDyoq/9NAD2nzkucp/kM4H8vk0c1b+Zszg/MklvExOMT4P/sMrfsRlroS8
yyJDccAIIXZ+qJnjy/EueaJNBFLEMm91+zBTURxJ65PeOWMWuiGOmtWYsx6iqrAagMEnrs9Cpd+J
HAgGJy+DTg/LKg67ZZJxVxXJ5jLZMaf0ecxROGJRVbNkbko7iPOYjb1RE212WGhShFgx/TQertAi
WhkFEmuiWXo08Sfax90E2Eo7aoJkPUMkpkaFnvfZ3C26CVZcQDCojvW6Ms6AAdbPTi1Iz+yM7ajG
qZMCAwEAAaOCAtQwggLQMAkGA1UdEwQCMAAwCwYDVR0PBAQDAgSwMB0GA1UdJQQWMBQGCCsGAQUF
BwMCBggrBgEFBQcDBDAdBgNVHQ4EFgQUR6VCWbBoKC5vRumdtg3Ws8mNVWAwHwYDVR0jBBgwFoAU
U3Ltkpzg2ssBXHx+ljVO8tS4UYIwGQYDVR0RBBIwEIEOZGV2QGx5bnhleWUuZGUwggFMBgNVHSAE
ggFDMIIBPzCCATsGCysGAQQBgbU3AQIDMIIBKjAuBggrBgEFBQcCARYiaHR0cDovL3d3dy5zdGFy
dHNzbC5jb20vcG9saWN5LnBkZjCB9wYIKwYBBQUHAgIwgeowJxYgU3RhcnRDb20gQ2VydGlmaWNh
dGlvbiBBdXRob3JpdHkwAwIBARqBvlRoaXMgY2VydGlmaWNhdGUgd2FzIGlzc3VlZCBhY2NvcmRp
bmcgdG8gdGhlIENsYXNzIDEgVmFsaWRhdGlvbiByZXF1aXJlbWVudHMgb2YgdGhlIFN0YXJ0Q29t
IENBIHBvbGljeSwgcmVsaWFuY2Ugb25seSBmb3IgdGhlIGludGVuZGVkIHB1cnBvc2UgaW4gY29t
cGxpYW5jZSBvZiB0aGUgcmVseWluZyBwYXJ0eSBvYmxpZ2F0aW9ucy4wNgYDVR0fBC8wLTAroCmg
J4YlaHR0cDovL2NybC5zdGFydHNzbC5jb20vY3J0dTEtY3JsLmNybDCBjgYIKwYBBQUHAQEEgYEw
fzA5BggrBgEFBQcwAYYtaHR0cDovL29jc3Auc3RhcnRzc2wuY29tL3N1Yi9jbGFzczEvY2xpZW50
L2NhMEIGCCsGAQUFBzAChjZodHRwOi8vYWlhLnN0YXJ0c3NsLmNvbS9jZXJ0cy9zdWIuY2xhc3Mx
LmNsaWVudC5jYS5jcnQwIwYDVR0SBBwwGoYYaHR0cDovL3d3dy5zdGFydHNzbC5jb20vMA0GCSqG
SIb3DQEBBQUAA4IBAQCm+gLTAO2urG7kRvKB0xSUQ+b7C5XrgMPrhDiU2DBQspgURWKkMTmuvkhP
ofvWWFtOfRiL58WGkGPi5qbyyGehAYIO06U9+1qyYony1H72/1NoYoJ7oxILDXg1KG3aI2O4Sklt
ICf+6ekOFSDE3WhJfzxU3x/Ncr93j6h3vTX7lm1WBQLFziH4fCItVDsL/h2lUOwDffUguG2+wg1F
cfQpTdu9YfU7C4EioBgsyobxBk2nleFKx7n6eFy6uW8b4bevDoyDYU3iK/OhO7ysRpkWpagxYoE1
ddlJooztr7QUy9t1BLemJvOZ7EhflJPt9yUYU7Sfj/DE2O+Cuj2QnKz3MIIGNDCCBBygAwIBAgIB
HjANBgkqhkiG9w0BAQUFADB9MQswCQYDVQQGEwJJTDEWMBQGA1UEChMNU3RhcnRDb20gTHRkLjEr
MCkGA1UECxMiU2VjdXJlIERpZ2l0YWwgQ2VydGlmaWNhdGUgU2lnbmluZzEpMCcGA1UEAxMgU3Rh
cnRDb20gQ2VydGlmaWNhdGlvbiBBdXRob3JpdHkwHhcNMDcxMDI0MjEwMTU1WhcNMTcxMDI0MjEw
MTU1WjCBjDELMAkGA1UEBhMCSUwxFjAUBgNVBAoTDVN0YXJ0Q29tIEx0ZC4xKzApBgNVBAsTIlNl
Y3VyZSBEaWdpdGFsIENlcnRpZmljYXRlIFNpZ25pbmcxODA2BgNVBAMTL1N0YXJ0Q29tIENsYXNz
IDEgUHJpbWFyeSBJbnRlcm1lZGlhdGUgQ2xpZW50IENBMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8A
MIIBCgKCAQEAxwmDzM4t2BqxKaQuE6uWvooyg4ymiEGWVUet1G8SD+rqvyNH4QrvnEIaFHxOhESi
p7vMz39ScLpNLbL1QpOlPW/tFIzNHS3qd2XRNYG5Sv9RcGE+T4qbLtsjjJbi6sL7Ls/f/X9ftTyh
xvxWkf8KW37iKrueKsxw2HqolH7GM6FX5UfNAwAu4ZifkpmZzU1slBhyWwaQPEPPZRsWoTb7q8hm
gv6Nv3Hg9rmA1/VPBIOQ6SKRkHXG0Hhmq1dOFoAFI411+a/9nWm5rcVjGcIWZ2v/43Yksq60jExi
pA4l5uv9/+Hm33mbgmCszdj/Dthf13tgAv2O83hLJ0exTqfrlwIDAQABo4IBrTCCAakwDwYDVR0T
AQH/BAUwAwEB/zAOBgNVHQ8BAf8EBAMCAQYwHQYDVR0OBBYEFFNy7ZKc4NrLAVx8fpY1TvLUuFGC
MB8GA1UdIwQYMBaAFE4L7xqkQFulF2mHMMo0aEPQQa7yMGYGCCsGAQUFBwEBBFowWDAnBggrBgEF
BQcwAYYbaHR0cDovL29jc3Auc3RhcnRzc2wuY29tL2NhMC0GCCsGAQUFBzAChiFodHRwOi8vd3d3
LnN0YXJ0c3NsLmNvbS9zZnNjYS5jcnQwWwYDVR0fBFQwUjAnoCWgI4YhaHR0cDovL3d3dy5zdGFy
dHNzbC5jb20vc2ZzY2EuY3JsMCegJaAjhiFodHRwOi8vY3JsLnN0YXJ0c3NsLmNvbS9zZnNjYS5j
cmwwgYAGA1UdIAR5MHcwdQYLKwYBBAGBtTcBAgEwZjAuBggrBgEFBQcCARYiaHR0cDovL3d3dy5z
dGFydHNzbC5jb20vcG9saWN5LnBkZjA0BggrBgEFBQcCARYoaHR0cDovL3d3dy5zdGFydHNzbC5j
b20vaW50ZXJtZWRpYXRlLnBkZjANBgkqhkiG9w0BAQUFAAOCAgEACoMIfXirLAZcuGOMXq4cuSN3
TaFx2H2GvD5VSy/6rV55BYHbWNaPeQn3oBSU8KgQZn/Kck1JxbLpAxVCNtsxeW1R87ifhsYZ0qjd
rA9anrW2MAWCtosmAOT4OxK9QPoSjCMxM3HbkZCDJgnlE8jMopH21BbyAYr7b5EfGRQJNtgWcvqS
XwKHnTutR08+Kkn0KAkXCzeQNLeA5LlYUzFyM7kPAp8pIRMQ+seHunmyG642S2+y/qHEdMuGIwpf
z3eDF1PdctL04qYK/zu+Qg1Bw0RwgigVZs/0c5HP2/e9DBHh7eSwtzYlk4AUr6yxLlcwSjOfOmKE
Q/Q8tzh0IFiNu9IPuTGAPBn4CPxD0+Ru8T2wg8/s43R/PT3kd1OEqOJUl7q+h+r6fpvU0Fzxd2tC
8Ga6fDEPme+1Nbi+03pVjuZQKbGwKJ66gEn06WqaxVZC+J8hh/jR0k9mST1iAZPNYulcNJ8tKmVt
jYsv0L1TSm2+NwON58tO+pIVzu3DWwSEXSf+qkDavQam+QtEOZxLBXI++aMUEapSn+k3Lxm48ZCY
fAWLb/Xj7F5JQMbZvCexglAbYR0kIHqW5DnsYSdMD/IplJMojx0NBrxJ3fN9dvX2Y6BIXRsF1du4
qESm4/3CKuyUV7p9DW3mPlHTGLvYxnyKQy7VFBkoLINszBrOUeIxggNvMIIDawIBATCBlDCBjDEL
MAkGA1UEBhMCSUwxFjAUBgNVBAoTDVN0YXJ0Q29tIEx0ZC4xKzApBgNVBAsTIlNlY3VyZSBEaWdp
dGFsIENlcnRpZmljYXRlIFNpZ25pbmcxODA2BgNVBAMTL1N0YXJ0Q29tIENsYXNzIDEgUHJpbWFy
eSBJbnRlcm1lZGlhdGUgQ2xpZW50IENBAgMGZOIwCQYFKw4DAhoFAKCCAa8wGAYJKoZIhvcNAQkD
MQsGCSqGSIb3DQEHATAcBgkqhkiG9w0BCQUxDxcNMTMwNTE3MTkwNjQ1WjAjBgkqhkiG9w0BCQQx
FgQUD3gXVQBSQLj5LxZqa16lVQuu9XUwgaUGCSsGAQQBgjcQBDGBlzCBlDCBjDELMAkGA1UEBhMC
SUwxFjAUBgNVBAoTDVN0YXJ0Q29tIEx0ZC4xKzApBgNVBAsTIlNlY3VyZSBEaWdpdGFsIENlcnRp
ZmljYXRlIFNpZ25pbmcxODA2BgNVBAMTL1N0YXJ0Q29tIENsYXNzIDEgUHJpbWFyeSBJbnRlcm1l
ZGlhdGUgQ2xpZW50IENBAgMGZOIwgacGCyqGSIb3DQEJEAILMYGXoIGUMIGMMQswCQYDVQQGEwJJ
TDEWMBQGA1UEChMNU3RhcnRDb20gTHRkLjErMCkGA1UECxMiU2VjdXJlIERpZ2l0YWwgQ2VydGlm
aWNhdGUgU2lnbmluZzE4MDYGA1UEAxMvU3RhcnRDb20gQ2xhc3MgMSBQcmltYXJ5IEludGVybWVk
aWF0ZSBDbGllbnQgQ0ECAwZk4jANBgkqhkiG9w0BAQEFAASCAQBg+NlDojb7qQo/IwhItPF4ukRz
A4Gv75jJgV/qco+qbWZwhRl3EePwOt5wGJQPjE0tYIQU8VrhEG6imjm0b9kyuKZpAfBuHxshCqiq
NNOKZgU5tZy0hQR8VHbgdwSb6uwlQaBBkXYW2YnZLTWclz43de72e0LBgL3ViPNp5e/Jtge/b/RA
DX+mUXKhfRr8mCKiPcjU6zcxXS9p06WoY0pPBflFWxd/tfvD9s8C1Xh6XtIw5nYiPd88gKfkUnrl
Ar2qH8s9Oblw7QlBGEpGHgNQzIBnIin/dGOwNaZzwrPBXp2OGSqct1qDrTfsb/wkVTJFpk5/Mc++
9Tjv3yNBC+n2AAAAAAAA


--=-0WMEjNv5vq+WWhnYV0o8--



--===============9067412433413715852==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============9067412433413715852==--
