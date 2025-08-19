Delivery-date: Tue, 19 Aug 2025 20:16:34 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uoQst-002LmI-1R
	for lore@lore.pengutronix.de;
	Tue, 19 Aug 2025 20:16:34 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uoQss-0002uH-A6
	for lore@pengutronix.de; Tue, 19 Aug 2025 20:16:34 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=7zwz4fqSEHZyiHjcB/wEdTpsxWmqMiEnBX43R8NlGks=; b=OhAm4C+8EVs5UoLT+WRaohYtwU
	M9mvHGQCARevutKLooIZAxdBzrHUXmY05JkLIIk4jq0B+Tb8K75Yabyf5r+v1LXI2Qdz1kR/hjycL
	9k4BEI9ki4gly0Tnojo0GICTda7a+M0jy/pWVEloGa1RA50aooE77/Ykuum7UA34UoDKyHSPoZFrx
	wtfpZD8t679uJgELXQAJK9b8B/70ayW2j5TQnK2yjz7wLOHPYRt3M6RJkH2eXAcHby7qrUQpYFZrf
	kY7WxAg3HlaLd4UI5C1zq6E2h9SeSfK7dPHJPegygwbdURAVlGi3Qq6AkC3yrMrQWaCFkjoIjos6Q
	C2Pif0jg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uoQsD-0000000BFkq-277j;
	Tue, 19 Aug 2025 18:15:53 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uoNUM-0000000AmGx-23RZ
	for barebox@lists.infradead.org;
	Tue, 19 Aug 2025 14:39:03 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1uoNUL-0005Vv-6u; Tue, 19 Aug 2025 16:39:01 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1uoNUL-0015vg-05;
	Tue, 19 Aug 2025 16:39:01 +0200
Received: from mfe by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1uoNUK-003tIm-31;
	Tue, 19 Aug 2025 16:39:00 +0200
Date: Tue, 19 Aug 2025 16:39:00 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: BAREBOX <barebox@lists.infradead.org>
Message-ID: <20250819143900.mhpsqoxnlcgetinm@pengutronix.de>
References: <20250818-v2025-06-0-topic-nvmem-v2-0-b6d677f6c519@pengutronix.de>
 <20250818-v2025-06-0-topic-nvmem-v2-10-b6d677f6c519@pengutronix.de>
 <aKRyGJXIcNd9oAm5@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <aKRyGJXIcNd9oAm5@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250819_073902_528544_2959DA3A 
X-CRM114-Status: GOOD (  18.74  )
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
Subject: Re: [PATCH v2 10/15] nvmem: core: add nvmem-layout support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi Sascha,

On 25-08-19, Sascha Hauer wrote:
> Hi Marco,
> 
> These patches conflict with Ahmads bfetch changes. I think I fixed
> this up, but please check the result.
> 
> On Mon, Aug 18, 2025 at 07:44:44PM +0200, Marco Felsch wrote:
> > diff --git a/drivers/nvmem/core.c b/drivers/nvmem/core.c
> > index 7d026330105b629e68353ae5cdbbf966284da7ea..b87dd9375c6f0a2b446e4f1c2e51c6bf042e550d 100644
> > --- a/drivers/nvmem/core.c
> > +++ b/drivers/nvmem/core.c
> > @@ -35,6 +35,7 @@ struct nvmem_cell {
> >  };
> >  
> >  static LIST_HEAD(nvmem_devs);
> > +static LIST_HEAD(nvmem_layouts);
> 
> During merging I realized nvmem_layouts is unused. I dropped it, but I
> wonder if this variable is added accidently or if something else is
> missing in this patchset?

The variable was added accidently and I didn't noticed it :/

Regards,
  Marco


> 
> Sascha
> 
> -- 
> Pengutronix e.K.                           |                             |
> Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
> 


