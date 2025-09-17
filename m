Delivery-date: Wed, 17 Sep 2025 15:04:53 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uyrq9-0044u0-0P
	for lore@lore.pengutronix.de;
	Wed, 17 Sep 2025 15:04:53 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uyrq8-0008EG-IX
	for lore@pengutronix.de; Wed, 17 Sep 2025 15:04:53 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=e5Pq5JkYiQiRQVg+J/mm+pIV8LkS3F+6CcmC/T1z+CM=; b=G0/SkW3iMVmn1TS6fm49eXVKHG
	lNp9yy8fnJauhPUHdbahTXTQS23OE5pjt3boRhmkIUDechGeqgBs5zbN2OaTkECnm0IR+1X3qtNuT
	tDRIWRhj5V6ln0Sai+2JNqjDdUaU8JDsq+mMYRe50+Kq4xMwLJAfR0u2ReCsOriYI6WjyqIkiw88P
	IG57bL9z/BrEMfeWDlkdYSiG+eXQLnXdAj6qp719GpdbQu/XBY5COpZancizXbG4nG0IuI748wjcQ
	9erFvKaaFQFCZm1LpwbgYCbk3im+gYsqEdlI1ffjDQQqP+4Ytxjj2MXgUmLX5Jt8WwZ7yK4THm158
	VUkEMRtw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uyrpW-0000000BWJO-0bdC;
	Wed, 17 Sep 2025 13:04:14 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uyrpT-0000000BWI0-0TC4
	for barebox@lists.infradead.org;
	Wed, 17 Sep 2025 13:04:12 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1uyrpP-00085t-GY; Wed, 17 Sep 2025 15:04:07 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1uyrpP-001lTB-13;
	Wed, 17 Sep 2025 15:04:07 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1uyrpP-00DiBA-0k;
	Wed, 17 Sep 2025 15:04:07 +0200
Date: Wed, 17 Sep 2025 15:04:07 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>
Message-ID: <aMqxx2GFYYmg9G7X@pengutronix.de>
References: <20250917095834.2727068-1-s.hauer@pengutronix.de>
 <70e5f030-a3c5-4fa8-af71-99084828d56e@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <70e5f030-a3c5-4fa8-af71-99084828d56e@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250917_060411_148399_37EFAC4E 
X-CRM114-Status: GOOD (  20.24  )
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
X-Spam-Status: No, score=-4.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] firmware: handle firmware files being links correctly
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Wed, Sep 17, 2025 at 12:21:57PM +0200, Ahmad Fatoum wrote:
> On 9/17/25 11:58 AM, Sascha Hauer wrote:
> > Sometimes firmware files can be links. When rebuilding barebox correctly
> > rebuilds the firmware when file the link points to is updated, but the
> > firmware is not rebuilt when the link itself is changed to link to
> > another file.
> 
> This is surprising. I though GNU make looks at the mtime of the destination.

It does, but in this case it should also consider the timestamp of the
link itself, not the destination.

> > @@ -80,7 +82,7 @@ filechk_fwbin = { \
> >  	echo "    .p2align ASM_LGPTR"				;\
> >  	echo ".global _fw_$(FWSTR)_sha_start"			;\
> >  	echo "_fw_$(FWSTR)_sha_start:"				;\
> > -	echo "    .incbin \"$(fwobjdir)/$(FWNAME).sha.bin\""	;\
> > +	echo "    .byte $${SHA}"				;\
> >  	echo ".global _fw_$(FWSTR)_sha_end"			;\
> 
> How about we add here an
> 
> .if _fw_$(FWSTR)_sha_start - _fw_$(FWSTR)_sha_end
> 	.err
> 	.warnig "sha256sum empty"
> .endif
> 
> As .byte doesn't require an argument, this would ensure breakage to be
> noticed at compile time.

Ok. The .if expression is reversed. Will change to:

	.if _fw_$(FWSTR)_sha_start + 32 - _fw_$(FWSTR)_sha_end
	.error "sha256sum invalid"
	.endif"

This not only checks for an empty sha sum but also for the correct
length.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


