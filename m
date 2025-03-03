Delivery-date: Mon, 03 Mar 2025 13:03:45 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tp4WO-009KLz-2E
	for lore@lore.pengutronix.de;
	Mon, 03 Mar 2025 13:03:45 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tp4WN-00028y-Gi
	for lore@pengutronix.de; Mon, 03 Mar 2025 13:03:44 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:
	MIME-Version:Message-ID:Date:References:In-Reply-To:Subject:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=mZzWuJEfaNi/1W20tT+YzvZqtRJRG8SDn0VmfX4XKEM=; b=0XpPYtp4L9O8BhDaGovUW5ZcIr
	/1HNZCh0v+6oSO2nYpdWIKGfvgJEBlB27Vppzfsiak1J9zhg3C50UwtjNPsfUvQ8YINF/QThQmmin
	nKchSfJRzFNVPadTXcq2n08zAr/kAY2W6OmQOt1VC0qS53/SuFTQVzygGWtIfTEYpKTB21PAum1O4
	BFrZraVEWqSDc4p4hKPlpK37ocoZfL5ZFPM9mxrEd1nnBb45yZeOSsq/6axJHI+MOK7KPC3B9AqeK
	iHNRXzxX4V5PinVfcEucR+eje8dss882FcmzCD8njVnGRXBmsbwYXEXbDD3XZH6kwZd37bxKJca6z
	TOw5s0Bw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tp4VZ-00000000flI-45Wv;
	Mon, 03 Mar 2025 12:02:53 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tp3ht-00000000U0S-1Zd8
	for barebox@lists.infradead.org;
	Mon, 03 Mar 2025 11:11:35 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=ratatoskr.pengutronix.de)
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.trumtrar@pengutronix.de>)
	id 1tp3hq-0003bZ-Nb; Mon, 03 Mar 2025 12:11:31 +0100
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <f8f5ceab-65d0-44a3-bf19-8fce40f56bc3@pengutronix.de> (Ahmad
	Fatoum's message of "Mon, 3 Mar 2025 10:12:04 +0100")
References: <20250303-v2025-02-0-topic-socfpga-arria10-v1-0-d66021246a66@pengutronix.de>
	<20250303-v2025-02-0-topic-socfpga-arria10-v1-1-d66021246a66@pengutronix.de>
	<f8f5ceab-65d0-44a3-bf19-8fce40f56bc3@pengutronix.de>
User-Agent: mu4e 1.12.8; emacs 30.0.93
Date: Mon, 03 Mar 2025 12:11:29 +0100
Message-ID: <8734fu2wta.fsf@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; format=flowed
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250303_031133_409501_46B5D922 
X-CRM114-Status: GOOD (  16.63  )
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
Cc: barebox@lists.infradead.org
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/5] ARM: SoCFPGA: move wait_on_timeout to generic
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


Hi Ahmad,

On 2025-03-03 at 10:12 +01, Ahmad Fatoum <a.fatoum@pengutronix.de> wrote:

> Hello Steffen,
>
> On 03.03.25 09:59, Steffen Trumtrar wrote:
> > To be able to use the __wait_on_timeout macro in more places, move it to
> > the generic socfpga header.
> >
> > Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
> > ---
> >  arch/arm/mach-socfpga/arria10-xload.c | 16 ----------------
> >  include/mach/socfpga/generic.h        | 16 ++++++++++++++++
> >  2 files changed, 16 insertions(+), 16 deletions(-)
> >
> > diff --git a/arch/arm/mach-socfpga/arria10-xload.c b/arch/arm/mach-socfpga/arria10-xload.c
> > index afec55c33a278f7aa7c13d16557881a5e13f38f9..fb87135ca94a1fd12992bc8e7fb9d1725831aad6 100644
> > --- a/arch/arm/mach-socfpga/arria10-xload.c
> > +++ b/arch/arm/mach-socfpga/arria10-xload.c
> > @@ -16,22 +16,6 @@
> >  #include <mach/socfpga/generic.h>
> >  #include <linux/sizes.h>
> >
> > -#define __wait_on_timeout(timeout, condition) \
> > -({								\
> > -	int __ret = 0;						\
> > -	int __timeout = timeout;				\
> > -								\
> > -	while ((condition)) {					\
> > -		if (__timeout-- < 0) {				\
> > -			__ret = -ETIMEDOUT;			\
> > -			break;					\
> > -		}						\
> > -		arria10_kick_l4wd0();                           \
> > -                __udelay(1);                                    \
>
> Unrelated to your patch. But feeding the watchdog every 1us is
> a bit excessive, isn't it?
>

uuh, yes. That should not be necessary.


Thanks,
Steffen


--
Pengutronix e.K.                | Dipl.-Inform. Steffen Trumtrar |
Steuerwalder Str. 21            | https://www.pengutronix.de/    |
31137 Hildesheim, Germany       | Phone: +49-5121-206917-0       |
Amtsgericht Hildesheim, HRA 2686| Fax:   +49-5121-206917-5555    |


