Delivery-date: Wed, 17 May 2023 15:15:55 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pzH0W-004KBD-D9
	for lore@lore.pengutronix.de; Wed, 17 May 2023 15:15:55 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pzH0U-00057l-1z
	for lore@pengutronix.de; Wed, 17 May 2023 15:15:54 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=FQUXah6quUYOWI1Xq7GzDCI1mGYDG3YZsA447kM0mp8=; b=CeIwu/U2CeeqOs0D6gwZknx8Kq
	9SwZWTJ/WzO2kW57oeOorzsorckDDca8ljCMXeUj1M+UqQno4Fo9wkmejXXy0qgt6q/cLAwvrDoAO
	PoaJeaSZG2qpZFlg9V77aNWHAKYlrHDBE0fGguDse5OK9UqRDNGDCZEt69ogQtCifG7XGr6duLnAC
	mIFum7Q1ryveO0y38WUNtgyxXHng8GRV3GD0fwLDMLh/DMPuIQyi8ErkTL/eledt8cLhboo9J6Yyu
	uoXStce7vGkweXtKKTtr8TYQ4fhSRuqWxXqvJd6SIgIvv7cippzSM1lJCdDg4Z7EUpI36tSkOVo6c
	8Z5EyPkg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pzGzU-009wRL-2o;
	Wed, 17 May 2023 13:14:52 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pzGzR-009wQ7-0L
	for barebox@lists.infradead.org;
	Wed, 17 May 2023 13:14:50 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pzGzP-0004b4-97; Wed, 17 May 2023 15:14:47 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pzGzO-0005mY-FJ; Wed, 17 May 2023 15:14:46 +0200
Date: Wed, 17 May 2023 15:14:46 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>
Message-ID: <20230517131446.GZ29365@pengutronix.de>
References: <20230517090340.3954615-1-s.hauer@pengutronix.de>
 <20230517090340.3954615-5-s.hauer@pengutronix.de>
 <88966b89-6574-4240-80e1-031137ab73c9@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <88966b89-6574-4240-80e1-031137ab73c9@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230517_061449_143372_F7603D66 
X-CRM114-Status: GOOD (  24.96  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 04/34] ARM: put scratch mem area below OP-TEE
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Wed, May 17, 2023 at 02:48:43PM +0200, Ahmad Fatoum wrote:
> On 17.05.23 11:03, Sascha Hauer wrote:
> > We want to reserve memory for OP-TEE at the end of available SDRAM,
> > so move the scratch area below OP-TEE and not above.
> > 
> > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> > ---
> >  arch/arm/include/asm/barebox-arm.h | 4 ++--
> >  1 file changed, 2 insertions(+), 2 deletions(-)
> > 
> > diff --git a/arch/arm/include/asm/barebox-arm.h b/arch/arm/include/asm/barebox-arm.h
> > index f446044be6..6e6606d005 100644
> > --- a/arch/arm/include/asm/barebox-arm.h
> > +++ b/arch/arm/include/asm/barebox-arm.h
> > @@ -71,14 +71,14 @@ static inline void arm_fixup_vectors(void)
> >  
> >  void *barebox_arm_boot_dtb(void);
> >  
> > -#define arm_mem_scratch(endmem) ((endmem) - SZ_32K)
> > +#define arm_mem_scratch(endmem) ((endmem) - OPTEE_SIZE - SZ_32K)
> >  
> >  static inline const void *arm_mem_scratch_get(void)
> >  {
> >  	return (const void *)arm_mem_scratch(arm_mem_endmem_get());
> >  }
> >  
> > -#define arm_mem_stack_top(endmem) ((endmem) - SZ_64K - OPTEE_SIZE)
> > +#define arm_mem_stack_top(endmem) ((endmem) - SZ_64K)
> 
> I don't understand why you drop OPTEE_SIZE here. Wouldn't the stack
> now eat into the OP-TEE region?

I accidently thought that arm_mem_stack_top() is calculated based on the
region above it, namely arm_mem_scratch(), but really it's calculated
based on endmem directly.

Indeed it's wrong like this, it should be:

#define arm_mem_stack_top(endmem) (arm_mem_scratch(endmem) - SZ_64K)

I just stumbled upon the SZ_64K here. I followed the value back to 2016
and found 75c96bd2459e ("ARM: Do not use last 64KiB of address space for
barebox"). I had a board that time that has SDRAM at the very end of the
32bit address space. On that board it happened that we overwrite parts
of the lowlevel memory with the vector table. It seems that has been
lost over time as now we put the scratch space and possibly parts of
OP-TEE into the last 64k.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


