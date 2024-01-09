Delivery-date: Tue, 09 Jan 2024 10:39:24 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rN8Zw-00A7CX-2K
	for lore@lore.pengutronix.de;
	Tue, 09 Jan 2024 10:39:24 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rN8Zw-0005RW-1g
	for lore@pengutronix.de; Tue, 09 Jan 2024 10:39:24 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=bG94C/yqSJLTrDpNXwXGX9sRpD13ot57u3ybYs/FaEY=; b=mezkDz5oHARyVCSykAp73+HWWL
	MkeoZcpF3iXzXkEa+wHKHnis1MNhc81olHk23pk/1bsn080EKJU0pTjEUqUcVAOe/jPVzGqhwU8qq
	wDjeBZZ7pHjALMxESfJx3H55o+KwGqM5Ew88NBQOibAgHa/Cm1CHa0eLpTRHT+Z6Qpz+JJS53DXYC
	qsf+OB2G9lI4VVCOL9nMz608mi32JwLIjAf/WfrqajIIKGpGNagk7O2XVXBa7ZqbdLGJoe0HsGxuW
	MwbUNCS70kLE1VKKZGGSjziWoiFKMEGxS+y4YAKXGYGgopHnG27SONW9UF3mKaukayxjie1iZa7Yk
	FLUNWQjg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rN8YZ-007XU3-2l;
	Tue, 09 Jan 2024 09:37:59 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rN8YW-007XTO-0Q
	for barebox@lists.infradead.org;
	Tue, 09 Jan 2024 09:37:58 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1rN8YU-00055p-Tr; Tue, 09 Jan 2024 10:37:54 +0100
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1rN8YU-001Rde-HC; Tue, 09 Jan 2024 10:37:54 +0100
Received: from sha by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1rN8YU-00B13w-Em; Tue, 09 Jan 2024 10:37:54 +0100
Date: Tue, 9 Jan 2024 10:37:54 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>
Message-ID: <20240109093754.GG1318922@pengutronix.de>
References: <20240109091603.235589-1-s.hauer@pengutronix.de>
 <20240109091603.235589-11-s.hauer@pengutronix.de>
 <5c85bac3-7d08-4bf9-9728-053ccf341a40@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <5c85bac3-7d08-4bf9-9728-053ccf341a40@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240109_013756_173987_D4EE5766 
X-CRM114-Status: GOOD (  27.11  )
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
X-Spam-Status: No, score=-6.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 10/10] ARM: Layerscape: LS1028a: fixup psci node
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Tue, Jan 09, 2024 at 10:26:28AM +0100, Ahmad Fatoum wrote:
> Hello Sascha,
> 
> On 09.01.24 10:16, Sascha Hauer wrote:
> > The upstream LS1028a dtsi files do not have a psci node, so add one
> > in a fixup. This is necessary to bring up the secondary CPU core.
> > 
> > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> > ---
> >  arch/arm/mach-layerscape/Kconfig |  1 +
> >  arch/arm/mach-layerscape/soc.c   | 16 ++++++++++++++++
> >  2 files changed, 17 insertions(+)
> > 
> > diff --git a/arch/arm/mach-layerscape/Kconfig b/arch/arm/mach-layerscape/Kconfig
> > index 5658a63b33..97f2061eee 100644
> > --- a/arch/arm/mach-layerscape/Kconfig
> > +++ b/arch/arm/mach-layerscape/Kconfig
> > @@ -20,6 +20,7 @@ config ARCH_LS1028
> >  	select SYS_SUPPORTS_64BIT_KERNEL
> >  	select ARM_ATF
> >  	select FIRMWARE_LS1028A_ATF
> > +	select ARM_PSCI_OF
> >  
> >  config ARCH_LS1046
> >  	bool
> > diff --git a/arch/arm/mach-layerscape/soc.c b/arch/arm/mach-layerscape/soc.c
> > index 70c1dedb46..30fbb5d1bf 100644
> > --- a/arch/arm/mach-layerscape/soc.c
> > +++ b/arch/arm/mach-layerscape/soc.c
> > @@ -3,7 +3,9 @@
> >  #include <io.h>
> >  #include <init.h>
> >  #include <memory.h>
> > +#include <linux/arm-smccc.h>
> >  #include <linux/bug.h>
> > +#include <asm/psci.h>
> >  #include <mach/layerscape/layerscape.h>
> >  #include <of.h>
> >  
> > @@ -84,6 +86,19 @@ static int ls1021a_init(void)
> >  	return 0;
> >  }
> >  
> > +static int ls1028a_psci_fixup(struct device_node *root, void *unused)
> > +{
> > +	unsigned long psci_version;
> > +	struct arm_smccc_res res = {};
> > +
> > +	arm_smccc_smc(ARM_PSCI_0_2_FN_PSCI_VERSION, 0, 0, 0, 0, 0, 0, 0, &res);
> > +	psci_version = res.a0;
> > +
> > +	of_psci_fixup(root, psci_version, "smc");
> 
> Do you have a restart handler registered for LS1028A? If not, you may consider
> adding the same node to the barebox device tree node too, so it can use PSCI
> to reset the system.

Will do. This makes this patch unnecessary as the existing PSCI client
support will automatically add a PSCI node to the dtb the Kernel is
started with.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


