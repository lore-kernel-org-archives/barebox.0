Delivery-date: Wed, 18 Oct 2023 16:33:44 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qt7cH-00D52A-3G
	for lore@lore.pengutronix.de; Wed, 18 Oct 2023 16:33:44 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qt7cF-0004Ny-IV
	for lore@pengutronix.de; Wed, 18 Oct 2023 16:33:44 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=/UklYYxKeik6Y2yqQ+Wbl0nlf2+p6Va6qdsAC0Dq7kQ=; b=FjJeri3LUyDrXXxjjnZXxR9VaI
	NZbJY43r2XBIKiJhqw/6GfV3K1D09PYaHALNZTfboUcHjWNCGMxS4CmVqqGOHtntmM7OCzOm/Zdul
	i5SRe4R7fWvu9s+hSh+KrtHiyBM3y0Ks+xjHxtvxLq1KShMN9T9IhM+4C9inHXcxfeEhaYL0dIrMx
	JxE105KU1SbDFGOA5Y6/AANRBlrkypEigqDHiPCdwf3sH175uJb0MiFhItd3U59xe1J8Bua8/sB9F
	dWCTph6a4vd+HJK8FfXlgu/9tOTvbYtR88U4pCIDIudwE7+sKK3uIx/WMx3t7NMV1Iu6GTYm+sZRE
	+PUc9x3w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qt7b1-00EuiT-0r;
	Wed, 18 Oct 2023 14:32:27 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qt7ax-00Euhc-2a
	for barebox@lists.infradead.org;
	Wed, 18 Oct 2023 14:32:25 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1qt7aq-00042Y-L4; Wed, 18 Oct 2023 16:32:16 +0200
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <mfe@pengutronix.de>)
	id 1qt7aq-002Zqt-8j; Wed, 18 Oct 2023 16:32:16 +0200
Received: from mfe by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1qt7aq-00F7Ve-6P; Wed, 18 Oct 2023 16:32:16 +0200
Date: Wed, 18 Oct 2023 16:32:16 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20231018143216.oq4k2bqhskurjv5k@pengutronix.de>
References: <20231017213608.3494255-1-m.felsch@pengutronix.de>
 <20231017213608.3494255-5-m.felsch@pengutronix.de>
 <cdc0c007-63fd-8261-26d3-bac17fb8cac3@pengutronix.de>
 <20231018125341.zdsymavtt7qszclf@pengutronix.de>
 <139e779b-7c76-699b-d5e2-6ea3fdb69e85@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <139e779b-7c76-699b-d5e2-6ea3fdb69e85@pengutronix.de>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231018_073223_864480_30038BBF 
X-CRM114-Status: GOOD (  37.62  )
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
Subject: Re: [PATCH 4/4] imx-usb-loader: fix windows usage
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 23-10-18, Ahmad Fatoum wrote:
> On 18.10.23 14:53, Marco Felsch wrote:
> > On 23-10-18, Ahmad Fatoum wrote:
> >> On 17.10.23 23:36, Marco Felsch wrote:
> >>> This ports commit 561f0377db5e ("Transfer always specified report 2
> >>> length") from imx_usb_loader[1] to our implementation.
> >>>
> >>> | commit 561f0377db5e1a36f5ab5e17f97d774f9f1e22ab
> >>> | Author: Stefan Agner <stefan.agner@toradex.com>
> >>> | Date:   Wed Nov 2 16:51:24 2016 -0700
> >>> |
> >>> |     Transfer always specified report 2 length
> >>> |
> >>> |     The Windows HIDAPI is very strict when it comes to packet lengths:
> >>> |     The API always expect the length specified by the device and rejects
> >>> |     the transfer otherwise. The report size is specified by the HID
> >>> |     Report Descriptor. The i.MX 6 SoC reports a report 2 size of 1024.
> >>> |     Currently, imx_usb reads the length from the device specific config
> >>> |     files and stores it in max_transfer. This change uses max_transfer
> >>> |     for report 2 when using the HID API.
> >>> |
> >>> |     The boot ROM handles too long transfers just fine. Also NXP's
> >>> |     sb_loader transfers always complete reports. The change has been
> >>> |     successfully tested on Linux and Windows.
> >>> |
> >>> |     Given that the device reports the size, it is probably also "the
> >>> |     right thing to do"...
> >>> |
> >>> |     With that change, we might end up transferring up to 1023 bytes
> >>> |     more than actually necessary. Make sure that DoIRomDownload does
> >>> |     not print an error message and returns successfully even if too
> >>> |     many bytes have been transferred (this now typically happens at the
> >>> |     end of every file).
> >>> |
> >>> |     In write_dcd use a signed length variable to keep track of remaining
> >>> |     bytes. Continue transfer loop only if more than 0 bytes are left to
> >>> |     transfer. Also drop the m_ prefix, m_ is usually used for member
> >>> |     variables but this is a local variable.
> >>> |
> >>> |     Signed-off-by: Stefan Agner <stefan.agner@toradex.com>
> >>>
> >>> [1] https://github.com/boundarydevices/imx_usb_loader/commit/561f0377db5e1a36f5ab5e17f97d774f9f1e22ab
> >>>
> >>> Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
> >>> ---
> >>>  scripts/imx/imx-usb-loader.c | 8 ++++++--
> >>>  1 file changed, 6 insertions(+), 2 deletions(-)
> >>>
> >>> diff --git a/scripts/imx/imx-usb-loader.c b/scripts/imx/imx-usb-loader.c
> >>> index 676f077c25..ece4603b2b 100644
> >>> --- a/scripts/imx/imx-usb-loader.c
> >>> +++ b/scripts/imx/imx-usb-loader.c
> >>> @@ -484,12 +484,16 @@ static int transfer(int report, void *p, unsigned cnt, int *last_trans)
> >>>  		err = libusb_bulk_transfer(usb_dev_handle,
> >>>  					   (report < 3) ? 1 : 2 + EP_IN, p, cnt, last_trans, 1000);
> >>>  	} else {
> >>> -		unsigned char tmp[1028];
> >>> +		unsigned char tmp[1028] = { 0 };
> >>>  
> >>>  		tmp[0] = (unsigned char)report;
> >>>  
> >>>  		if (report < 3) {
> >>>  			memcpy(&tmp[1], p, cnt);
> >>> +
> >>> +			if (report == 2)
> >>> +				cnt = mach_id->max_transfer;
> >>
> >> Did you verify that this can't result in an out-of-bounds read?
> > 
> > How should that be possible? The tmp-array is always 1028-byte and we
> > already do limit cnt to max_transfer if cnt is larger than max_transfer.
> 
> In the case that cnt < mach_id->max_transfer, we increase cnt to
> mach_id->max_transfer and pass that to libusb. Are we guaranteed
> that libusb won't read out of bounds, i.e. buf + cnt - 1 is always
> inside tmp?

At the moment it is guaranteed that mach_id->max_transfer is always
smaller than 1028. libusb always start to read at &tmp[0] so the last
read may transfer useless bytes (0) but we are always within the tmp
buffer. So no out-of-bound reads.

> >> I'd have expected either an adjustment to tmp's size or a description
> >> why a buffer overread can't happen in the commit message.
> > 
> > Sorry but can you elaborate where a buffer overrread can happen?
> 
> You groked the code and wrote the patch, so I hoped you could tell me
> "no, buffer overflow can't happen because ...".

Please see above.

Regards,
  Marco

> 
> Cheers,
> Ahmad
> 
> > 
> > Regards,
> >   Marco
> > 
> >>> +
> >>>  			if (mach_id->hid_endpoint) {
> >>>  				int trans;
> >>>  				err = libusb_interrupt_transfer(usb_dev_handle,
> >>> @@ -739,7 +743,7 @@ static int send_buf(void *buf, unsigned len)
> >>>  	while (1) {
> >>>  		int now = get_min(cnt, mach_id->max_transfer);
> >>>  
> >>> -		if (!now)
> >>> +		if (now <= 0)
> >>>  			break;
> >>>  
> >>>  		err = transfer(2, p, now, &now);
> >>
> >> -- 
> >> Pengutronix e.K.                           |                             |
> >> Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
> >> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
> >> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
> >>
> >>
> > 
> 
> -- 
> Pengutronix e.K.                           |                             |
> Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
> 
> 


