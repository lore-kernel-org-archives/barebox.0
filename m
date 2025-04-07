Delivery-date: Mon, 07 Apr 2025 15:12:17 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u1mGv-009Yvt-2b
	for lore@lore.pengutronix.de;
	Mon, 07 Apr 2025 15:12:17 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u1mGv-0002gs-76
	for lore@pengutronix.de; Mon, 07 Apr 2025 15:12:17 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=8dCTvmpDmW1xgK4Fo6SIksVZIRClkWu9fETPnkgzfAM=; b=pDkLVW52NEKBZJuokRZvIwSkTG
	G5JyETgtOXGPr9G5XgZj9ZQA4JZ5U/B798+DSL2ZfBqvBxzpZGkme+zBbztAIJ2ejZEBSzyI8nmEk
	+ObGNxxq8O4jstLL4L9hNXIoFZalHK4vVW35nj0EoAxJ7jHSZFyh3qYWnADp+PfHhya1PD014A+Mg
	wn9cCM9MOFBNDd0EwnfpiB/etUBrpkvWXtuG73VywtAWDTmYdoToYFFF2IXoYFPDQ43HItUkhOpcW
	qkCYYR6W/AdzsL4NOhQ+BZK12gqofXowI6+hp0a3SnbW0kHXKEG5+YUqvAu1ro6dHdaHybR9vLkdz
	QTAUYqQw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u1mGT-00000000R7E-3vB4;
	Mon, 07 Apr 2025 13:11:49 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u1mEl-00000000Qja-2jNq
	for barebox@lists.infradead.org;
	Mon, 07 Apr 2025 13:10:04 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1u1mEi-0002Ie-Rs; Mon, 07 Apr 2025 15:10:00 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1u1mEi-003lig-2C;
	Mon, 07 Apr 2025 15:10:00 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1u1mEi-004hdx-1r;
	Mon, 07 Apr 2025 15:10:00 +0200
Date: Mon, 7 Apr 2025 15:10:00 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: "open list:BAREBOX" <barebox@lists.infradead.org>
Message-ID: <Z_POqHnz7VBpIqvB@pengutronix.de>
References: <20250407-ratp-fixes-v1-0-4c2501a83bca@pengutronix.de>
 <20250407-ratp-fixes-v1-1-4c2501a83bca@pengutronix.de>
 <ef9dc94a-a756-4903-8632-e94a89d83ba6@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ef9dc94a-a756-4903-8632-e94a89d83ba6@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250407_061003_699646_4A2A6BEC 
X-CRM114-Status: GOOD (  24.56  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/3] ratp: Drop wrong alignment annotation
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Mon, Apr 07, 2025 at 09:59:13AM +0200, Ahmad Fatoum wrote:
> On 07.04.25 09:29, Sascha Hauer wrote:
> > When ratp command handling was introduced in ff612b866f301 ("ratp:
> > implement generic command support") we had an explicit 64bit alignment
> 
> s/64bit/64 byte/

FIxed while applying, thanks

Sascha

> 
> > for the ratp command array in sandbox. This was removed in 52e5c35671
> > ("X86: lds: remove unnecessary alignments"). With this it can happen
> > that the ratp command section starts at a non 64bit aligned address, but
> > the first command in that section will be placed at the first 64bit
> > boundary. __barebox_ratp_cmd_start will no longer point to the actual
> > command then and the array iteration fails.
> > 
> > Just drop the wrong alignment annotation.
> > 
> > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> > ---
> >  include/ratp_bb.h | 7 +------
> >  1 file changed, 1 insertion(+), 6 deletions(-)
> > 
> > diff --git a/include/ratp_bb.h b/include/ratp_bb.h
> > index 418be6fe7b..c6c7c4bc23 100644
> > --- a/include/ratp_bb.h
> > +++ b/include/ratp_bb.h
> > @@ -57,12 +57,7 @@ struct ratp_command {
> >  			       int req_len,
> >  			       struct ratp_bb **rsp,
> >  			       int *rsp_len);
> > -}
> > -#ifdef __x86_64__
> > -/* This is required because the linker will put symbols on a 64 bit alignment */
> > -__attribute__((aligned(64)))
> > -#endif
> > -;
> > +};
> >  
> >  #define BAREBOX_RATP_CMD_START(_name)							\
> >  extern const struct ratp_command __barebox_ratp_cmd_##_name;				\
> > 
> 
> 
> -- 
> Pengutronix e.K.                           |                             |
> Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


