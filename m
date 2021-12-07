Delivery-date: Tue, 07 Dec 2021 10:27:41 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1muWlB-0000Pf-2V
	for lore@lore.pengutronix.de; Tue, 07 Dec 2021 10:27:41 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1muWlA-0004KF-4v
	for lore@pengutronix.de; Tue, 07 Dec 2021 10:27:40 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=kdUTxCmxsp/mWFzY2C32K6ZuP1t9Hh3HfSFWVikDEQA=; b=xJy83XCRLHEDUv7IJUc5AurKyw
	55egv0+fp+7PHXaAfanlcOEK/Z3d8GLxylPpJH1FimdQ11l7DVhA81gA4dBfc6Uwx9klY3PsM11E/
	E5d+YKRPuCtSc2ayMjpp9V7dAPHflaJSSUABxlDWXN6uouN0KyEfeROzlxyc2u7JFr8JP/Jetfy4q
	eH/j7y9P4mFdWo8TgtuG0zH++TBKUUVIVwGh8NRvykWFsrdKDdFIeBY5f1Wl6Ia5rcgaptKEVYHHq
	nrPfsKvLTPnx0UtGW8XEoHkvURMhyXUf8HUi6Nft/lf90Jd/3rv87D7tGSyIIz8/OxUEAEfOQQN1a
	c2UMcNEg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1muWjm-007nwp-AF; Tue, 07 Dec 2021 09:26:14 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1muWjh-007nwP-Mb
 for barebox@lists.infradead.org; Tue, 07 Dec 2021 09:26:11 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1muWjf-0004Ei-Pt; Tue, 07 Dec 2021 10:26:07 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1muWjf-0004RC-H1; Tue, 07 Dec 2021 10:26:07 +0100
Date: Tue, 7 Dec 2021 10:26:07 +0100
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org, ukl@pengutronix.de
Message-ID: <20211207092607.GM28260@pengutronix.de>
References: <20211202074256.200325-1-a.fatoum@pengutronix.de>
 <20211202074256.200325-2-a.fatoum@pengutronix.de>
 <f1721621-fc62-7ec8-f1cb-b6659853ab22@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <f1721621-fc62-7ec8-f1cb-b6659853ab22@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 10:20:22 up 292 days, 12:44, 143 users,  load average: 0.31, 0.16,
 0.18
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211207_012609_768126_788FD482 
X-CRM114-Status: GOOD (  23.38  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 2/3] ARM: turn arm_mem_stack_top into a macro
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Thu, Dec 02, 2021 at 09:01:10AM +0100, Ahmad Fatoum wrote:
> On 02.12.21 08:42, Ahmad Fatoum wrote:
> > This makes it possible to use for static initialization, like done in a
> > follow-up commit.
> > 
> > Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> > ---
> >  arch/arm/include/asm/barebox-arm.h | 13 ++++++-------
> >  1 file changed, 6 insertions(+), 7 deletions(-)
> > 
> > diff --git a/arch/arm/include/asm/barebox-arm.h b/arch/arm/include/asm/barebox-arm.h
> > index d70de6d5e6e6..0481d3391c26 100644
> > --- a/arch/arm/include/asm/barebox-arm.h
> > +++ b/arch/arm/include/asm/barebox-arm.h
> > @@ -97,14 +97,13 @@ static inline void arm_fixup_vectors(void)
> >  
> >  void *barebox_arm_boot_dtb(void);
> >  
> > -static inline unsigned long arm_mem_stack_top(unsigned long membase,
> > -					      unsigned long endmem)
> > -{
> > -	if (IS_ENABLED(CONFIG_BOOTM_OPTEE) || IS_ENABLED(CONFIG_PBL_OPTEE))
> > -		endmem -= OPTEE_SIZE;
> > +#define __arm_mem_stack_top(membase, endmem) ((endmem) - SZ_64K)
> >  
> > -	return endmem - SZ_64K;
> > -}
> > +#if defined(CONFIG_BOOTM_OPTEE) || defined(CONFIG_PBL_OPTEE)
> > +#define arm_mem_stack_top(membase, endmem) (__arm_mem_stack_top(membase, endmem) - OPTEE_SIZE)
> > +#else
> > +#define arm_mem_stack_top(membase, endmem) (__arm_mem_stack_top(membase, endmem) - OPTEE_SIZE)
> 
> Argh. Should have looked more closely before sending out. I'll respin later,
> but looking forward to feedback in the mean time.

Apart from this error this series looks good to me (at least in the
range of how good such a preprocessor/assembly wasteland can look).

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

