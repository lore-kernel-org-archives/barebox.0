Delivery-date: Fri, 03 Mar 2023 12:55:18 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pY40L-007VUO-R4
	for lore@lore.pengutronix.de; Fri, 03 Mar 2023 12:55:18 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pY40L-00085G-Kx
	for lore@pengutronix.de; Fri, 03 Mar 2023 12:55:18 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=8KewFH0Yjw4hFgmBcHuJnzPyjbwm9HGYFPhjE3+6/j8=; b=oFz9d2ivcIAuGaV/YbENR4c0jD
	sKMfx3tzQSiT/eDhEKKc+9WalCTmPLF0YVltgZs+Kc5y+JkDvrw21a2hR6uDK/t4Drp7f2bWIqYPY
	DYpgGzq0RqtuPZ16gPF/yt+ohVsu2QsuuLNCv2PNyi08g3BOZAFgUsZpWLbzofIGV8gat1zhszq2P
	fM8aJZJM7fyJ5JN0uB99uIz/IKoP44asa3EL8ursg2Mf+kPb3DdxDgIkjz5z8ZCqGgnfl6M8njQ87
	+1/ZDJFQD8lhD1fqD+s+rptCVZ4cQ5cWJM/r33Ec76RBSA/Y3/Ar0g1nmlH9CizZMyAVpq0LZJVMi
	rlxj8FkQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pY3z2-006ENv-7W; Fri, 03 Mar 2023 11:53:56 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pY3yw-006EMQ-VN
	for barebox@lists.infradead.org; Fri, 03 Mar 2023 11:53:53 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pY3yq-0007nY-8c; Fri, 03 Mar 2023 12:53:44 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pY3yq-00081l-1I; Fri, 03 Mar 2023 12:53:44 +0100
Date: Fri, 3 Mar 2023 12:53:44 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Marco Felsch <m.felsch@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>
Message-ID: <20230303115344.GT32097@pengutronix.de>
References: <20230302105225.943524-1-s.hauer@pengutronix.de>
 <20230303085648.ps2hfgcu4zciqqth@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230303085648.ps2hfgcu4zciqqth@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230303_035351_049729_4C6C6FCE 
X-CRM114-Status: GOOD (  19.36  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 0/2] i.MX: Remove support for old boards
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Fri, Mar 03, 2023 at 09:56:48AM +0100, Marco Felsch wrote:
> Hi Sascha,
> 
> On 23-03-02, Sascha Hauer wrote:
> > This removes a bunch of old boards that nobody showed interest in for a
> > long time:
> > 
> > Freescale boards
> > ================
> > MACH_IMX21ADS
> > MACH_IMX27ADS
> > MACH_FREESCALE_MX25_3STACK
> > MACH_FREESCALE_MX35_3STACK
> > MACH_FREESCALE_MX53_SMD
> > 
> > Eukrea boards
> > =============
> > MACH_EUKREA_CPUIMX25
> > MACH_EUKREA_CPUIMX27
> > MACH_EUKREA_CPUIMX35
> > MACH_EUKREA_CPUIMX51SD
> > 
> > Garz+Fricke boards
> > ==================
> > MACH_NESO
> > MACH_GUF_CUPID
> > 
> > Phytec boards
> > =============
> > MACH_PCM037
> > MACH_PCM043
> > 
> > Amazon boards
> > =============
> > MACH_KINDLE3
> > 
> > The boards all have in common that they do not support device trees and
> > also don't have multi-image support.
> 
> Does this mean that we now have dt-only boards? In that case we can
> remove platform driver data as well later on :)

I haven't realized this, but yes, all the imx_add_* functions are unused
now.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


