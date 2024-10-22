Delivery-date: Tue, 22 Oct 2024 09:49:01 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t39dV-007Nef-2j
	for lore@lore.pengutronix.de;
	Tue, 22 Oct 2024 09:49:01 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t39dU-0006Aw-D0
	for lore@pengutronix.de; Tue, 22 Oct 2024 09:49:01 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=52Yy0oSWG5ZCEdURMIfuP1/bBFd1HhvzE+sqENgcdJw=; b=4NUzL172aaZ0XtLPYIcWk5Js7P
	KyIf9aKKAuhAhsL32I9NMYynDluKZtW6Y6BP8+iOAaaIum7iZtt2xbYH6+4K5nwIj4qNlnFlpEjba
	sruzE7AaUgAFxDYHREpwqzQpjvy8kfiTKlHuYDt1Kqxcb3BugccTWkEkOcfqpV6zoOfeW+Rln6X9P
	TVz+82UY05YvnPc5p8vycS9wWxEJVVApRdr30BOGGanpF521LuxE3xxS4vjPJ8MbhIkeZB3L41xYi
	ecD+mmA2R4cd6HJ9zhV1KczsaG222eV3l1fycfazEdQPGv7mQCEieMNCHcGJRjKFUswvBs1OdArbm
	9T3JEKHw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t39co-0000000A2UN-3bKL;
	Tue, 22 Oct 2024 07:48:18 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t39ad-0000000A2A9-04fu
	for barebox@lists.infradead.org;
	Tue, 22 Oct 2024 07:46:06 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1t39ab-0005cH-Ae; Tue, 22 Oct 2024 09:46:01 +0200
Received: from [2a0a:edc0:2:b01:1d::c5] (helo=pty.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1t39ab-000pL9-0R;
	Tue, 22 Oct 2024 09:46:01 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1t39ab-007VvW-06;
	Tue, 22 Oct 2024 09:46:01 +0200
Date: Tue, 22 Oct 2024 09:46:01 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: "open list:BAREBOX" <barebox@lists.infradead.org>
Message-ID: <ZxdYOQnykSo8UPbs@pengutronix.de>
References: <20241021-arm-layerscape-tfa-v1-0-0980697b6f66@pengutronix.de>
 <20241021-arm-layerscape-tfa-v1-8-0980697b6f66@pengutronix.de>
 <e0b3f2b7-d023-4dfd-b04b-f6c93247baab@pengutronix.de>
 <ZxZimfS6np9DtESY@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ZxZimfS6np9DtESY@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241022_004603_078446_AB4D22E9 
X-CRM114-Status: GOOD (  22.01  )
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

On Mon, Oct 21, 2024 at 04:18:01PM +0200, Sascha Hauer wrote:
> On Mon, Oct 21, 2024 at 10:55:45AM +0200, Ahmad Fatoum wrote:
> > Hello Sascha,
> > 
> > On 21.10.24 09:21, Sascha Hauer wrote:
> > > Both LS1046a boards supported by barebox have been switched to TF-A, so
> > > drop no longer used PPA support.
> > > 
> > > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> > > ---
> > >  arch/arm/mach-layerscape/Kconfig     |  12 ---
> > >  arch/arm/mach-layerscape/Makefile    |   1 -
> > >  arch/arm/mach-layerscape/ppa-entry.S |  32 --------
> > >  arch/arm/mach-layerscape/ppa.c       | 147 -----------------------------------
> > >  firmware/Makefile                    |   1 -
> > >  include/mach/layerscape/layerscape.h |  10 ---
> > 
> > generate-dummy-fw.sh still has a firmware/ppa-ls1046a.bin
> > reference.
> > 
> > > -static int of_psci_do_fixup(struct device_node *root, void *unused)
> > > -{
> > > -	unsigned long psci_version;
> > > -	struct device_node *np;
> > > -	struct arm_smccc_res res = {};
> > > -
> > > -	arm_smccc_smc(ARM_PSCI_0_2_FN_PSCI_VERSION, 0, 0, 0, 0, 0, 0, 0, &res);
> > > -	psci_version = res.a0;
> > > -
> > > -	for_each_compatible_node_from(np, root, NULL, "fsl,sec-v4.0-job-ring") {
> > 
> > The TF-A doesn't expect one of the job rings to be for its own use?
> 
> Good question. It looks like U-Boot still has this fixup code eventhough
> they have converted to TF-A.
> 
> I wonder what the effects are when we don't apply this quirk. At least
> starting a kernel with PPA and without this quirk doesn't cause any
> problems.

Looking at the TF-A code the CAAM JR3 indeed seems to be used, at least
under certain circumstances, so I'll put the code to disable JR3 in the
kernel back in.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


