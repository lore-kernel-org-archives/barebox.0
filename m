Delivery-date: Mon, 21 Oct 2024 16:35:18 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t2tV8-00766l-0n
	for lore@lore.pengutronix.de;
	Mon, 21 Oct 2024 16:35:18 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t2tV7-0005Tf-Jl
	for lore@pengutronix.de; Mon, 21 Oct 2024 16:35:18 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=rQMDA1OWAI8yn36/7KJLMppSBsxaWOvnnXhWZkLTfFk=; b=NyO8I4ZePy2fkJ2fYcmaT2QPox
	xwk7hXFirYqTyW66dKY3so20fhw+PpK/rHrvqlwaaoLDrBegW+rFPqb4lvvncCBDGvXfPBm805WW8
	hsASFBCpdkBVSkp2Q4VKEeqC83Hkz4emcXDYCMKZfqNxktjVOGRuMGo6TbSgeiqEJaTVLo/4BMmat
	hx6cwLUkltZwpVl54umeYPU7y0ZGztsRLob+ly+l5bhcuuQY0NGkl8QTdDTtjmJpuV1F6qpcBX5BO
	MXywvNeQsgZiFmsvPMaB903tz96TblxrVYrlap+SIive+0uL3PLS7q36iiB6ie2WJy9GJFebxooUO
	SnDowyYw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t2tUb-00000007dJ9-0aQp;
	Mon, 21 Oct 2024 14:34:45 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t2tET-00000007apC-3uhd
	for barebox@lists.infradead.org;
	Mon, 21 Oct 2024 14:18:07 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1t2tER-000408-VO; Mon, 21 Oct 2024 16:18:03 +0200
Received: from [2a0a:edc0:2:b01:1d::c5] (helo=pty.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1t2tEQ-000iCs-06;
	Mon, 21 Oct 2024 16:18:02 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1t2tEP-005ns3-33;
	Mon, 21 Oct 2024 16:18:01 +0200
Date: Mon, 21 Oct 2024 16:18:01 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: "open list:BAREBOX" <barebox@lists.infradead.org>
Message-ID: <ZxZimfS6np9DtESY@pengutronix.de>
References: <20241021-arm-layerscape-tfa-v1-0-0980697b6f66@pengutronix.de>
 <20241021-arm-layerscape-tfa-v1-8-0980697b6f66@pengutronix.de>
 <e0b3f2b7-d023-4dfd-b04b-f6c93247baab@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <e0b3f2b7-d023-4dfd-b04b-f6c93247baab@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241021_071805_998679_B42C747D 
X-CRM114-Status: GOOD (  17.90  )
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
Subject: Re: [PATCH 8/9] ARM: Layerscape: LS1046a: remove PPA support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Mon, Oct 21, 2024 at 10:55:45AM +0200, Ahmad Fatoum wrote:
> Hello Sascha,
> 
> On 21.10.24 09:21, Sascha Hauer wrote:
> > Both LS1046a boards supported by barebox have been switched to TF-A, so
> > drop no longer used PPA support.
> > 
> > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> > ---
> >  arch/arm/mach-layerscape/Kconfig     |  12 ---
> >  arch/arm/mach-layerscape/Makefile    |   1 -
> >  arch/arm/mach-layerscape/ppa-entry.S |  32 --------
> >  arch/arm/mach-layerscape/ppa.c       | 147 -----------------------------------
> >  firmware/Makefile                    |   1 -
> >  include/mach/layerscape/layerscape.h |  10 ---
> 
> generate-dummy-fw.sh still has a firmware/ppa-ls1046a.bin
> reference.
> 
> > -static int of_psci_do_fixup(struct device_node *root, void *unused)
> > -{
> > -	unsigned long psci_version;
> > -	struct device_node *np;
> > -	struct arm_smccc_res res = {};
> > -
> > -	arm_smccc_smc(ARM_PSCI_0_2_FN_PSCI_VERSION, 0, 0, 0, 0, 0, 0, 0, &res);
> > -	psci_version = res.a0;
> > -
> > -	for_each_compatible_node_from(np, root, NULL, "fsl,sec-v4.0-job-ring") {
> 
> The TF-A doesn't expect one of the job rings to be for its own use?

Good question. It looks like U-Boot still has this fixup code eventhough
they have converted to TF-A.

I wonder what the effects are when we don't apply this quirk. At least
starting a kernel with PPA and without this quirk doesn't cause any
problems.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


