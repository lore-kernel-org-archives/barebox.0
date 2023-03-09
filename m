Delivery-date: Thu, 09 Mar 2023 16:54:01 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1paIae-00F0X6-U3
	for lore@lore.pengutronix.de; Thu, 09 Mar 2023 16:54:01 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1paIad-0000lL-Js
	for lore@pengutronix.de; Thu, 09 Mar 2023 16:54:01 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=W2EuZ9n7Kp0YBMOzVMqAGs0j4+aV0c8Ch+J/jTwqMZg=; b=NXDLTOdIzqB87MAdVu5ZU5haZA
	VGohY342nda/7Epxt7J2vt4/5BRmtfNlGSPxSJqDHnYy5SaxMh/Zl/fEy3hGV9lsqW4XgdXWZDA0s
	fmaNjCd5j8ENkGSMFLxCyG+1cDnjnbb42tOHLG/RXKVdGsAMZQDbRgxWMueL3yCaZxB+KwR4nL1zg
	cHaH7bMiZh//hSRlHOfSodk6G5SAVUJjuiocuWq6E6QIcXnFFfSayDQVl49c2hxFVrnrYDf+XeqyL
	zPGEb14zyeFpKYxR82ubYo+F41ighuzDX0RxLLjxrJ6HET3DgcF+P+s93UlsEf9+nq4oaEr05h+zk
	ICXBGYeA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1paIZ0-00B3EA-1L; Thu, 09 Mar 2023 15:52:19 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1paIJE-00Awlg-OZ
	for barebox@lists.infradead.org; Thu, 09 Mar 2023 15:36:02 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1paIJD-0006TD-6o; Thu, 09 Mar 2023 16:35:59 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1paIJD-0003hH-11; Thu, 09 Mar 2023 16:35:59 +0100
Date: Thu, 9 Mar 2023 16:35:59 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>
Message-ID: <20230309153559.GI5784@pengutronix.de>
References: <20230309115208.973893-1-s.hauer@pengutronix.de>
 <20230309115208.973893-2-s.hauer@pengutronix.de>
 <dea9d06a-3bd2-dbb5-c740-53f2a0b63d1d@pengutronix.de>
 <20230309152815.GH5784@pengutronix.de>
 <ea6090bd-36bf-eec0-993a-8bbd044dd48e@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ea6090bd-36bf-eec0-993a-8bbd044dd48e@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230309_073600_831091_996E26F1 
X-CRM114-Status: GOOD (  29.55  )
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
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 1/7] kbuild: Add target to build dtb overlay files
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Thu, Mar 09, 2023 at 04:33:22PM +0100, Ahmad Fatoum wrote:
> On 09.03.23 16:28, Sascha Hauer wrote:
> > On Thu, Mar 09, 2023 at 02:24:36PM +0100, Ahmad Fatoum wrote:
> >> On 09.03.23 12:52, Sascha Hauer wrote:
> >>> Device tree overlay files have the suffix dtso in source format
> >>> and dtbo in binary format. Add the necessary targets to build dtbo
> >>> files from dtso files and also dtbo.o files to include into the
> >>> barebox binary.
> >>> The overlay files shouldn't include the device tree snippets from
> >>> CONFIG_EXTERNAL_DTS_FRAGMENTS which makes it necessary to specify
> >>> these fragments as an argument to cmd_dtc.
> >>>
> >>> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> >>> ---
> >>>  scripts/Makefile.build |  4 ++++
> >>>  scripts/Makefile.lib   | 11 ++++++++++-
> >>>  2 files changed, 14 insertions(+), 1 deletion(-)
> >>>
> >>> diff --git a/scripts/Makefile.build b/scripts/Makefile.build
> >>> index 216f03677b..33480a81b4 100644
> >>> --- a/scripts/Makefile.build
> >>> +++ b/scripts/Makefile.build
> >>> @@ -258,12 +258,16 @@ intermediate_targets = $(foreach sfx, $(2), \
> >>>  					$(filter %$(strip $(1)), $(targets))))
> >>>  # %.asn1.o <- %.asn1.[ch] <- %.asn1
> >>>  # %.dtb.o <- %.dtb.S <- %.dtb <- %.dts
> >>> +# %.dtbo.o <- %.dtbo.S <- %.dtbo <- %.dtso
> >>>  # %.dtb.pbl.o <- %.dtb.S <- %.dtb <- %.dts (Barebox only)
> >>> +# %.dtbo.pbl.o <- %.dtbo.S <- %.dtbo <- %.dtso (Barebox only)
> >>>  # %.lex.o <- %.lex.c <- %.l
> >>>  # %.tab.o <- %.tab.[ch] <- %.y
> >>>  targets += $(call intermediate_targets, .asn1.o, .asn1.c .asn1.h) \
> >>>  	   $(call intermediate_targets, .dtb.o, .dtb.S .dtb.z .dtb) \
> >>> +	   $(call intermediate_targets, .dtbo.o, .dtbo.S .dtbo.z .dtbo) \
> >>>  	   $(call intermediate_targets, .dtb.pbl.o, .dtb.S .dtb.z .dtb) \
> >>> +	   $(call intermediate_targets, .dtbo.pbl.o, .dtbo.S .dtbo.z .dtbo) \
> >>
> >> I see now reason to allow building an overlay for PBL. Should we drop this?
> > 
> > I thought some board might want to apply an overlay in PBL, but the code
> > to apply an overlay is not there, not even the code to unflatten a dtb.
> > So right, this can be removed.
> > 
> >>
> >>>  	   $(call intermediate_targets, .lex.o, .lex.c) \
> >>>  	   $(call intermediate_targets, .tab.o, .tab.c .tab.h)
> >>>  
> >>> diff --git a/scripts/Makefile.lib b/scripts/Makefile.lib
> >>> index 6e0d92cf75..6af2fe07b2 100644
> >>> --- a/scripts/Makefile.lib
> >>> +++ b/scripts/Makefile.lib
> >>> @@ -361,13 +361,19 @@ cmd_dt_S_dtb = $(srctree)/scripts/gen-dtb-s $(subst -,_,$(*F)) $< $(CONFIG_IMD)
> >>>  $(obj)/%.dtb.S: $(obj)/%.dtb $(obj)/%.dtb.z $(srctree)/scripts/gen-dtb-s FORCE
> >>>  	$(call if_changed,dt_S_dtb)
> >>>  
> >>> +$(obj)/%.dtbo.S: $(obj)/%.dtbo $(obj)/%.dtbo.z $(srctree)/scripts/gen-dtb-s FORCE
> >>> +	$(call if_changed,dt_S_dtb)
> >>> +
> >>>  $(obj)/%.dtb.z: $(obj)/%.dtb FORCE
> >>>  	$(call if_changed,$(suffix_y))
> >>>  
> >>> +$(obj)/%.dtbo.z: $(obj)/%.dtbo FORCE
> >>> +	$(call if_changed,$(suffix_y))
> >>
> >> Can we drop this and change scripts/gen-dtb-s to skip creating the compressed DTB
> >> if we have a *.dtbo?
> > 
> > What's wrong with building compressed overlays? That might come in
> > handy later.
> Either you link it into barebox proper and then you should rather compress
> barebox proper itself.
> 
> Or you pick out the *.dtbo.z from the barebox build directory and in that
> case you will need decompress by hand anyway, because compressed DT
> is currently only handled for barebox live DT.

Ok, right.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


