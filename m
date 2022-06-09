Delivery-date: Thu, 09 Jun 2022 10:49:57 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nzDrZ-008Zyp-7t
	for lore@lore.pengutronix.de; Thu, 09 Jun 2022 10:49:57 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nzDrX-0003pa-GF
	for lore@pengutronix.de; Thu, 09 Jun 2022 10:49:56 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dWVXI6PkG8UKaB3g2z3foaL3rT/a6jEVTDV85sd3BNU=; b=txIXthgn4vgVQd
	LgpPoJFU+pun8nSkxKTq9fovIGQ1zi2z22n6dech94TT2KZ9hKfmNYHLtumKBPAYtMEKDd7dAoilR
	yJcWVaRAB+6Og24ljw1SEqq8mRtIdXvA6Qosoc2EIWWRlvWTMl4HUWFzCn5nuAS9UKV2kYsKtrSzz
	ckxgMk8dxhS0qddatYVoGNUicJ9XXqSD42TkpVUUBMC87XJ15N2EKgshitF1U38evZwOo3hco8YDz
	XIZ/zKsn910D9ykc71XMWYjO0baUMSj35UIPt9twJpQrHXTdvRRvFPJNn/kyy4DulZ8mxSFR5HHCM
	WoyYl04SfehAFLwa2d3g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nzDq5-000Neo-Q0; Thu, 09 Jun 2022 08:48:26 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nzDc8-000H52-TZ
	for barebox@lists.infradead.org; Thu, 09 Jun 2022 08:34:05 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1nzDc7-00015v-7D; Thu, 09 Jun 2022 10:33:59 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1nzDc6-0001Gd-Uy; Thu, 09 Jun 2022 10:33:58 +0200
Date: Thu, 9 Jun 2022 10:33:58 +0200
From: Sascha Hauer <sha@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org, lgo@pengutronix.de
Message-ID: <20220609083358.GH1615@pengutronix.de>
References: <20220531093537.1731712-1-a.fatoum@pengutronix.de>
 <20220609071928.GY1615@pengutronix.de>
 <27fa57cd-439f-fadf-25df-f1e7e2fd12ad@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <27fa57cd-439f-fadf-25df-f1e7e2fd12ad@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220609_013401_029110_73DEB693 
X-CRM114-Status: GOOD (  35.68  )
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
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] fastboot: inform user if barebox update falls back to
 raw copy
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Thu, Jun 09, 2022 at 10:21:46AM +0200, Ahmad Fatoum wrote:
> Hello Sascha,
> 
> On 09.06.22 09:19, Sascha Hauer wrote:
> > On Tue, May 31, 2022 at 11:35:37AM +0200, Ahmad Fatoum wrote:
> >> Fastboot code determines whether to go into barebox update handler by
> >> checking whether filetype_is_barebox_image() returns true for the image.
> >> This is different from the barebox_update command which leaves it to the
> >> individual handlers to decide whether an image is suitable.
> >>
> >> Coupled with eMMC boot partitions, this could lead to
> >> `barebox_update -t mmc` updating the boot partition, while a
> >> `fastboot flash bbu-mmc` will write the image to the user area instead.
> >>
> >> It may be worth breaking backwards compatibility here and refuse update
> >> in that case, but for now at least alert the user that a raw copy is
> >> being attempted.
> >>
> >> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> >> ---
> >>  common/fastboot.c | 13 ++++++++++++-
> >>  1 file changed, 12 insertions(+), 1 deletion(-)
> >>
> >> diff --git a/common/fastboot.c b/common/fastboot.c
> >> index f8ed40c86e00..50ea8421d92c 100644
> >> --- a/common/fastboot.c
> >> +++ b/common/fastboot.c
> >> @@ -673,7 +673,7 @@ static void cb_flash(struct fastboot *fb, const char *cmd)
> >>  		goto out;
> >>  	}
> >>  
> >> -	if (IS_ENABLED(CONFIG_BAREBOX_UPDATE) && filetype_is_barebox_image(filetype)) {
> >> +	if (IS_ENABLED(CONFIG_BAREBOX_UPDATE)) {
> > 
> > 
> >>  		void *buf;
> >>  		struct bbu_handler *handler;
> >>  		struct bbu_data data = {
> >> @@ -681,6 +681,17 @@ static void cb_flash(struct fastboot *fb, const char *cmd)
> >>  			.flags = BBU_FLAG_YES,
> >>  		};
> >>  
> >> +		if (!filetype_is_barebox_image(filetype)) {
> >> +			if (strstarts(fentry->name, "bbu-")) {
> >> +				fastboot_tx_print(fb, FASTBOOT_MSG_INFO,
> >> +						  "This is _not_ a barebox image...");
> >> +				fastboot_tx_print(fb, FASTBOOT_MSG_INFO,
> >> +						  "Falling back to raw copy to %s", filename);
> >> +			}
> >> +
> >> +			goto copy;
> >> +		}
> > 
> > The handlers starting with "bbu-" are registered from the barebox update
> > code, so falling back to copy is clearly wrong.
> > 
> > The logic to enter this barebox_update path should be:
> > 
> > 	if (IS_ENABLED(CONFIG_BAREBOX_UPDATE) &&
> > 	    (filetype_is_barebox_image(filetype) || strstarts(fentry->name, "bbu-")))
> > 
> > That way we are sure that barebox_update is called when we need it. Also
> > behaviour is consistent to what barebox_update does on the command line.
> 
> This is not consistent with barebox_update behavior. Calling it from command line
> will leave it to update handlers to determine whether an image is a barebox
> image. filetype_is_barebox_image() is exclusively used for fastboot.

With my suggestion we also leave it to the update handlers to decide
whether an image is suitable or not.

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

