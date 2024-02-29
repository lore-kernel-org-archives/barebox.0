Delivery-date: Thu, 29 Feb 2024 10:34:26 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rfco6-00FFO7-0U
	for lore@lore.pengutronix.de;
	Thu, 29 Feb 2024 10:34:26 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rfco3-0002JC-5E
	for lore@pengutronix.de; Thu, 29 Feb 2024 10:34:26 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=C/QJyvreW0FH8MXK85oqi/+PNXlHr8RFrIg7QfP6Ip8=; b=XJJDXlrqyHwiVHqjm9apeErQH0
	bcylGHlMQzbHyGTjJkuhhHbvQVX+BZn3+qd5aVOVjr6E2UAgheFD6EFGCZeJBT5NXjFHF0wyz2ErQ
	Yv/z24Q7uCWC902UMy3oIyjo5QY9fXoouSQSVIlj/GWOGNVLBN5NTiLUSWrun8bP5/ugGx1Evx4bz
	6EQOFamLScykod0fZYEOpy9hXI0RbxWUXq7mp8Dk8SN/JaSfJexqq7B6Opg/2Te/OLbP6hzHxuHaq
	1ESalZv8w7xSdYlK9ZO1INzv0mL/uvppj+sx3d0zmX02x2hNhJNqHiG18Ll2JH80Q8bvzOK11ICap
	CFuQAUPg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rfcnH-0000000CvYG-1YNZ;
	Thu, 29 Feb 2024 09:33:35 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rfcn8-0000000CvSz-388H
	for barebox@lists.infradead.org;
	Thu, 29 Feb 2024 09:33:28 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1rfcn7-00025z-26; Thu, 29 Feb 2024 10:33:25 +0100
Received: from [2a0a:edc0:2:b01:1d::c5] (helo=pty.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <mfe@pengutronix.de>)
	id 1rfcn6-003Ymp-LZ; Thu, 29 Feb 2024 10:33:24 +0100
Received: from mfe by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1rfcn6-00DWrN-1s;
	Thu, 29 Feb 2024 10:33:24 +0100
Date: Thu, 29 Feb 2024 10:33:24 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20240229093324.by6gutzs6g3bgknz@pengutronix.de>
References: <20240228180319.2739412-1-a.fatoum@pengutronix.de>
 <20240229091020.6fdnglwbla75hpn3@pengutronix.de>
 <cd591f96-026f-4fc8-8f26-f572143b32e7@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cd591f96-026f-4fc8-8f26-f572143b32e7@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240229_013326_959955_BF692B55 
X-CRM114-Status: GOOD (  26.76  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH master] optee: don't warn about missing OP-TEE header
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 24-02-29, Ahmad Fatoum wrote:
> On 29.02.24 10:10, Marco Felsch wrote:
> > Hi Ahmad,
> > 
> > On 24-02-28, Ahmad Fatoum wrote:
> >> OP-TEE header is checked once in PBL, saved into scratch area after
> >> verification and then checked again in barebox proper.
> >>
> >> The check in PBL fails silently, but the check in barebox proper that
> >> should always follow, because the header isn't written to the scratch
> >> area is printed with error log level.
> >>
> >> Printing an error in either case is wrong though as using a raw OP-TEE
> >> binary without header is a valid use case and the OP-TEE header may
> >> also be missing when barebox is chainloaded from a running barebox.
> >>
> >> Therefore reduce the message to debug log level.
> >>
> >> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> >> ---
> >>  common/optee.c | 4 ++--
> >>  1 file changed, 2 insertions(+), 2 deletions(-)
> >>
> >> diff --git a/common/optee.c b/common/optee.c
> >> index 34667f1f51e0..a8a43554e757 100644
> >> --- a/common/optee.c
> >> +++ b/common/optee.c
> >> @@ -14,8 +14,8 @@ int optee_verify_header(const struct optee_header *hdr)
> >>  		return -EINVAL;
> > 
> > Shouldn't be the fix:
> > 
> > 	if (IS_ERR_OR_NULL(hdr))
> > 		return -EINVAL;
> > 
> > to fail silently.
> 
> hdr is a valid pointer for me, but it doesn't point at a header, which causes
> me to get an error message.

Yes, I have noticed the code path for non-pbl part as well now :/

I was thinking about:

	if (hdr->magic == 0)
		return -EINVAL;

but this is not far awways from you change. Therefore:

Reviewed-by: Marco Felsch <m.felsch@pengutronix.de>

PS: Could you please fix the silent check as well by using IS_ERR_OR_NULL()?

Regards,
  Marco

> 
> Thanks,
> Ahmad
> 
> > 
> > Regards,
> >   Marco
> > 
> >>  
> >>  	if (hdr->magic != OPTEE_MAGIC) {
> >> -		pr_err("Invalid header magic 0x%08x, expected 0x%08x\n",
> >> -			   hdr->magic, OPTEE_MAGIC);
> >> +		pr_debug("Invalid header magic 0x%08x, expected 0x%08x\n",
> >> +			 hdr->magic, OPTEE_MAGIC);
> >>  		return -EINVAL;
> >>  	}
> >>  
> >> -- 
> >> 2.39.2
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


