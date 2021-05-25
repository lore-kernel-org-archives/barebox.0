Delivery-date: Tue, 25 May 2021 07:47:39 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1llPul-0007Mc-UN
	for lore@lore.pengutronix.de; Tue, 25 May 2021 07:47:39 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1llPul-0000Tu-2s
	for lore@pengutronix.de; Tue, 25 May 2021 07:47:39 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=1mzWGRo3mlkyB6HBVhdnEpqMfFHdtY8etEsB1O7fumM=; b=ORDTWfobu+AzP7Wi4ATNJP19eg
	3NMKflgwRVxqH9xeCUB+wgX4iXZV/M/23gvuuOaxBqxOB4sGz109WfTXHfTPwesRDy0kRq5EVpffU
	vYxOFZgurHxWTIc9hMfZqfqHTReNOwxVAXKDvxiYAhov9vUV8MOlCLpK8xsG/u+PtZ7tjP3Cxar2f
	Hsid2jMbbJITx8faIoQ+AkNIU8LTdnOttAtlUcTDpJeFPEGO6h+hON6JoRczByCnJxCcukVhLx8dh
	KDLFk5TGJpF57SOJoH1f2V/E2BpLLeGBKvucAyRSVU2zP55ro7K6FV3OvvMxEmpgQnxUwii5ec2Bd
	3zN3gPzw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1llPtX-003T9H-1q; Tue, 25 May 2021 05:46:23 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1llPtR-003T8M-Sx
 for barebox@lists.infradead.org; Tue, 25 May 2021 05:46:19 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1llPtQ-00005v-7C; Tue, 25 May 2021 07:46:16 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1llPtP-00084V-UQ; Tue, 25 May 2021 07:46:15 +0200
Date: Tue, 25 May 2021 07:46:15 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Holger Assmann <h.assmann@pengutronix.de>, barebox@lists.infradead.org,
 Rouven Czerwinski <r.czerwinski@pengutronix.de>
Message-ID: <20210525054615.GI31738@pengutronix.de>
References: <20210518105759.4604-1-h.assmann@pengutronix.de>
 <9fd00674-7953-f510-f2e5-fe076ef00b9b@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <9fd00674-7953-f510-f2e5-fe076ef00b9b@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 07:39:25 up 96 days,  9:03, 79 users,  load average: 0.02, 0.14, 0.17
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210524_224617_955497_C5166387 
X-CRM114-Status: GOOD (  20.50  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v3] ARM: webasto-ccbv2: Add variant with 512MB RAM
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Tue, May 18, 2021 at 01:33:43PM +0200, Ahmad Fatoum wrote:
> 
> On 18.05.21 12:57, Holger Assmann wrote:
> > -$(call build_imx_habv4img, CONFIG_MACH_WEBASTO_CCBV2, start_imx6ul_ccbv2, webasto-ccbv2/flash-header-imx6ul-webasto-ccbv2, imx6ul-webasto-ccbv2)
> > +$(call build_imx_habv4img, CONFIG_MACH_WEBASTO_CCBV2, start_imx6ul_ccbv2, webasto-ccbv2/flash-header-imx6ul-webasto-ccbv2-256, imx6ul-webasto-ccbv2-256m)
> > +
> > +$(call build_imx_habv4img, CONFIG_MACH_WEBASTO_CCBV2, start_imx6ul_ccbv2, webasto-ccbv2/flash-header-imx6ul-webasto-ccbv2-512, imx6ul-webasto-ccbv2-512m)
> 
> I think this is the first board that uses the exact same entry point, but different
> *.imxcfg. I built the patch to see if this actually does what it should and it
> doesn't seem to be the case: both images/barebox-imx6ul-webasto-ccbv2-256m.img
> and images/barebox-imx6ul-webasto-ccbv2-512m.img are identical..

This happens because we intermediately create the file
images/start_imx6ul_ccbv2.pblb.imximg. We would have to create two
different imx images, one for each config file. This doesn't fit into
the build process currently, so let's go with v4 holger has sent.

We could add IMD tags for the memsize like Phytec has done:

BAREBOX_IMD_TAG_STRING(physom_mx6_memsize_SZ_256M, IMD_TYPE_PARAMETER, "memsize=256", 0);

That would at least otherwise justify that we need different entry
points ;)

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

