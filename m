Delivery-date: Wed, 27 Aug 2025 13:08:13 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1urE0k-0053k0-1T
	for lore@lore.pengutronix.de;
	Wed, 27 Aug 2025 13:08:13 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1urE0j-0001gt-4r
	for lore@pengutronix.de; Wed, 27 Aug 2025 13:08:13 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=CG4fWWgGsKZ+Zbvk+NFJeCQ6RhpGVeN/XlH2EeEuuu0=; b=b3C/lJkgZ+zuA0/h5G85ctA9F0
	q1PbDTiOgEoHqS46bMrxh/ajMEAaUfkiiyJZvpEoesiTTEdvgYvib54+i8O91shCWqJdrdVys0u5v
	FkOlj4Svki6zbwCNa6wKNnLokb0yMMMbdh9+KdxBJCnKQDYTpW8oGm3dqT4GWsxXE07cvXrVA3D55
	yl0BMibOCDor8mwN8V9lkTb1kpPR6uW6TBHJ/t8C2EWJY+in4L7eFPSBe81395RuNmxuMvoYK2CrH
	aJaitfgaLLXCMgCsgw3+/idy++yFrkKqvnoIkvblME8f4eTwxd4ofrBEIHrb1pVVGNEPZY30hGUQd
	2HnuYeHg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1urDzq-0000000FA2M-46uu;
	Wed, 27 Aug 2025 11:07:18 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1urCMm-0000000Eplb-0jit
	for barebox@lists.infradead.org;
	Wed, 27 Aug 2025 09:22:53 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1urCMj-0003eq-2Y; Wed, 27 Aug 2025 11:22:49 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1urCMi-002N3d-2N;
	Wed, 27 Aug 2025 11:22:48 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1urCMi-002ooZ-22;
	Wed, 27 Aug 2025 11:22:48 +0200
Date: Wed, 27 Aug 2025 11:22:48 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: chalianis1@gmail.com
Cc: barebox@lists.infradead.org
Message-ID: <aK7OaAdTGHt7HLwQ@pengutronix.de>
References: <20250827060606.610447-1-chalianis1@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250827060606.610447-1-chalianis1@gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250827_022252_215043_9BA84091 
X-CRM114-Status: GOOD (  23.93  )
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] arm: crypto: add a check for crypto extensions support.
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi,

On Wed, Aug 27, 2025 at 02:06:06AM -0400, chalianis1@gmail.com wrote:
> From: Chali Anis <chalianis1@gmail.com>
> 
> In some configuration the CPU may raise an exception bacause of an
> unknown instruction if it does not support Crypto Extensions for
> example in some BCM281X (RPi3B in my case) when running barebox
> as an EFI Payload, where the EFI stops with a synchronous execption
> See bellow:
> Synchronous Exception at 0x0000000037BFF548
> SP 0x0000000037F798C0 ELR 0x0000000037BFF548
> SPSR 0x20000209 FPSR 0x00000000
> ESR 0x02000000 FAR 0x14F64325185430BF
> ESR : EC 0x00 IL 0x1 ISS 0x00000000
> 
> Signed-off-by: Chali Anis <chalianis1@gmail.com>
> ---
>  arch/arm/crypto/sha1-ce-glue.c | 6 ++++++
>  arch/arm/crypto/sha2-ce-glue.c | 6 ++++++
>  2 files changed, 12 insertions(+)
> 
> diff --git a/arch/arm/crypto/sha1-ce-glue.c b/arch/arm/crypto/sha1-ce-glue.c
> index 5b49237573fa..3c5213774429 100644
> --- a/arch/arm/crypto/sha1-ce-glue.c
> +++ b/arch/arm/crypto/sha1-ce-glue.c
> @@ -88,6 +88,12 @@ static struct digest_algo m = {
>  
>  static int sha1_ce_mod_init(void)
>  {
> +	uint64_t isar0;
> +
> +	asm volatile("mrs %0, ID_AA64ISAR0_EL1" : "=r"(isar0));

You could use read_sysreg():

#include <asm/sysreg.h>

	isar0 = read_sysreg(ID_AA64ISAR0_EL1);

> +	if (!(isar0 & 0xF00))
> +		return -EOPNOTSUPP;

defines for this bitmask would be cool. I just looked at the kernel and
it seems a bit overkill for barebox, but maybe something like

#define ID_AA64ISAR0_EL1_SHA1_MASK	GENMASK(11, 8)
#define ID_AA64ISAR0_EL1_SHA2_MASK	GENMASK(15, 12)

in asm/sysreg.h would do it as a start.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


