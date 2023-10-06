Delivery-date: Fri, 06 Oct 2023 13:50:59 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qojMB-008Nbj-PA
	for lore@lore.pengutronix.de; Fri, 06 Oct 2023 13:50:59 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qojMA-0005NM-SD
	for lore@pengutronix.de; Fri, 06 Oct 2023 13:50:59 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:References:Message-ID:
	Subject:Cc:To:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=bIyfYjPQaIfVjWH0C+0uBo/n51XTsG71fbrsuiHbn5Y=; b=DK+nTDJDH+vgTa444vd69NWnjn
	sSTX4Jg88qNpdV6ziUYvSRApewnqHeIN7b2z38TcQ7aMgLjvlTTAfcwpSWM1UIxvXRMpRF4eiqwYC
	f7urim3CCQQhmuimTTGSDERTjQVOKqyrj9YwiwkyPV5S+sUqmcI5qC/zp042CHN2IiA4OzrBOssPZ
	DFEeNAtOGSCW38NuSnImqXfbhPB4gVmC2x7fk4gAxu3WqRrD77WIpTbGyn8wrQmdWz5B8RdhlDpPF
	HoXcTInk0p2xH2a4A87wwElgz+b3k+UZQII/n/PbrTlVfxZxCO6AvCmmivk0C3bmTvoyYi1FpgpbT
	04QrYouA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qojKx-005ibm-2w;
	Fri, 06 Oct 2023 11:49:43 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qojKu-005ibJ-0d
	for barebox@lists.infradead.org;
	Fri, 06 Oct 2023 11:49:41 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qojKs-0005FC-Ru; Fri, 06 Oct 2023 13:49:38 +0200
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1qojKs-00BVLu-FB; Fri, 06 Oct 2023 13:49:38 +0200
Received: from sha by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qojKs-00D49L-CY; Fri, 06 Oct 2023 13:49:38 +0200
Date: Fri, 6 Oct 2023 13:49:38 +0200
To: Denis Osterland-Heim <denis.osterland@gmail.com>
Cc: barebox@lists.infradead.org
Message-ID: <20231006114938.GD3033385@pengutronix.de>
References: <20231004152051.618427-1-denis.osterland@gmail.com>
 <a308192d641c20d4a4576234e145b82c0e5f9d74.camel@gmail.com>
 <de60ec21d9baea3fce92ba5cbb3c1ed8ff07ca1f.camel@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-15
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <de60ec21d9baea3fce92ba5cbb3c1ed8ff07ca1f.camel@gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231006_044940_231273_2EC8803C 
X-CRM114-Status: GOOD (  18.51  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 2/2] fixup! raspi: fixup additional vc created nodes
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Wed, Oct 04, 2023 at 05:36:03PM +0200, Denis Osterland-Heim wrote:
> Hi,
> 
> Looks broken again, sorry.

Indeed. Fixed up manually.

Regards,
 Sascha

> 
> Regards, Denis
> 
> Am Mittwoch, dem 04.10.2023 um 17:22 +0200 schrieb Denis Osterland-
> Heim:
> > From: Denis OSTERLAND-HEIM <denis.osterland@diehl.com>
> > 
> > ---
> >  arch/arm/boards/raspberry-pi/rpi-common.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> > 
> > diff --git a/arch/arm/boards/raspberry-pi/rpi-common.c
> > b/arch/arm/boards/raspberry-pi/rpi-common.c
> > index ea3c72fb94..713fad78c9 100644
> > --- a/arch/arm/boards/raspberry-pi/rpi-common.c
> > +++ b/arch/arm/boards/raspberry-pi/rpi-common.c
> > @@ -289,7 +289,7 @@ static struct device_node
> > *register_vc_fixup(struct
> > device_node *root,
> >                 tmp->full_name = xstrdup(ret->full_name);
> >                 of_register_fixup(rpi_vc_fdt_fixup, tmp);
> >         } else {
> > -               pr_info("no '%s' node found in vc fdtn", path);
> > +               pr_info("no '%s' node found in vc fdtn", path);
> >         }
> >  
> >         return ret;
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


