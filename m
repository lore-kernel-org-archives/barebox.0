Delivery-date: Wed, 10 Dec 2025 10:32:46 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vTGYw-009riQ-2T
	for lore@lore.pengutronix.de;
	Wed, 10 Dec 2025 10:32:46 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vTGYw-00068f-75
	for lore@pengutronix.de; Wed, 10 Dec 2025 10:32:46 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:References:In-Reply-To:Date:Cc:To:From
	:Subject:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=FL0+ofgHWHg8tNpJvbu4X87gCwGPiLybJVQ7tYGgKfA=; b=jkOzIe1rMMEKTGDysqvqbp8a74
	EH1VQ5kf4hX+7gTv4BN3WCL/x03yXCaRx/FkFx4YZHHUBMDbgj45bQ0F3WeI1tp9ZrcLHyVeyX2JT
	YBrbjWSYe2ayuzj6KWjUow9sHoZnyZABjb1YWKaXSOpbZDhSWyKZhHq/3dgjIqnpMl2fUZda+Oc+a
	Y2U7dDEbNpUkozuTjark5fJukqBNFyJibZKbmCYPx6RxSrYaFC+rAjX0jCav06oTvdXxCt4k/xcx9
	+jmbP4CQHx5BG/Wc23XNRotlaQJoGyp7nJq9uEKis5FwVSRj+LHq/SobpPyGa7JNT/aFqdfSlvbDN
	Iq2uFqVg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vTGYU-0000000FHmD-0ABo;
	Wed, 10 Dec 2025 09:32:18 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vTGYR-0000000FHlX-001M
	for barebox@lists.infradead.org;
	Wed, 10 Dec 2025 09:32:16 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[IPv6:::1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <f.pflug@pengutronix.de>)
	id 1vTGYP-00063H-EE; Wed, 10 Dec 2025 10:32:13 +0100
Message-ID: <5ae5767f95d85c9556884def41cd0e627ed2003c.camel@pengutronix.de>
From: Fabian Pflug <f.pflug@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: BAREBOX <barebox@lists.infradead.org>
Date: Wed, 10 Dec 2025 10:32:13 +0100
In-Reply-To: <aTkeuH-uZl2T8Nwi@pengutronix.de>
References: <20251208-v2025-11-0-topic-optee-imx6-start-v1-0-0907128cdb8f@pengutronix.de>
	 <20251208-v2025-11-0-topic-optee-imx6-start-v1-1-0907128cdb8f@pengutronix.de>
	 <aTkeuH-uZl2T8Nwi@pengutronix.de>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.2-0+deb13u1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251210_013215_039251_383947EA 
X-CRM114-Status: GOOD (  17.48  )
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
X-Spam-Status: No, score=-3.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/3] ARM: make arm_mem_scratch respect the OP-TEE stack
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Sascha :)

On Wed, 2025-12-10 at 08:18 +0100, Sascha Hauer wrote:
> Hi Fabian,
>=20
> On Mon, Dec 08, 2025 at 10:28:38AM +0100, Fabian Pflug wrote:
> > According to the ASCII-ART above, before the end of memory comes the
> > optee memory, then the scratch stack.
> >=20
> > Signed-off-by: Fabian Pflug <f.pflug@pengutronix.de>
> > ---
> > =C2=A0arch/arm/include/asm/barebox-arm.h | 2 +-
> > =C2=A01 file changed, 1 insertion(+), 1 deletion(-)
> >=20
> > diff --git a/arch/arm/include/asm/barebox-arm.h b/arch/arm/include/asm/=
barebox-arm.h
> > index 11be8b8583..e630969796 100644
> > --- a/arch/arm/include/asm/barebox-arm.h
> > +++ b/arch/arm/include/asm/barebox-arm.h
> > @@ -159,7 +159,7 @@ static inline unsigned long arm_mem_stack_top(unsig=
ned long endmem)
> > =C2=A0
> > =C2=A0static inline const void *arm_mem_scratch_get(void)
> > =C2=A0{
> > -	return (const void *)arm_mem_scratch(arm_mem_endmem_get());
> > +	return (const void *)arm_mem_scratch(arm_mem_optee(arm_mem_endmem_get=
()));
>=20
> arm_mem_scratch() is:
>=20
> static inline unsigned long arm_mem_scratch(unsigned long endmem)
> {
> 	return arm_mem_optee(endmem) - SCRATCH_SIZE;
> }
>=20
> So this already has the OPTEE space substracted. With your patch it's
> substracted twice.

Yes, you are right! Don't know why I did not see that...

This also makes the third patch in the series wrong, because it will remove=
 the offset twice in another way.

I will send a new series after resolving the comment on the other patch. :)

Fabian

>=20
> Sascha


