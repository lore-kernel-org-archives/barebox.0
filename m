Delivery-date: Thu, 16 Jun 2022 17:03:59 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o1r2M-0043FA-7O
	for lore@lore.pengutronix.de; Thu, 16 Jun 2022 17:03:59 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o1r2M-0000Bm-BL
	for lore@pengutronix.de; Thu, 16 Jun 2022 17:03:59 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:Message-ID:References:In-Reply-To:
	Subject:Cc:To:From:Date:MIME-Version:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NISOAOKnEIquJyBUC5a3aEIcume9ecYvrUXwwURsopU=; b=CSq++e6wEaUYbQ
	uUkj/W8/H5J/FjOPN/9GQh2ydMBYkbSY4lA2cTsUpCPVeKxIxXBBd7+FpF1xfP9BcWt6AHmk6S1NC
	+p1Qjl6dNZJrMjssLdeZeOTyoGQ9FLx1AGkPlVWdlhu+gGoD2TawslA/eQsr9kqRxwMDQYI+BnkTl
	O5v02UcSIvOKQZuM1NEuIZbrlYRbF1fp1oTZC3l7efie0n3iUiG0NNGwHceK6G+OrOIYkMZaj8S/9
	s+jGcrVTk2/nkz8q2RSjXiE/8/e+p0a5Np2r8DuxR1JRZXvL8N9QMeb/V5h8FwV8NnjNmLATV+Hgt
	hlwiexwW68PGyFSrcZMw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1r0u-00379s-F2; Thu, 16 Jun 2022 15:02:28 +0000
Received: from smtp15.bhosted.nl ([2a02:9e0:8000::26])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1r0o-00377B-ME
	for barebox@lists.infradead.org; Thu, 16 Jun 2022 15:02:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=protonic.nl; s=202111;
	h=content-transfer-encoding:content-type:message-id:references:in-reply-to:
	 reply-to:subject:cc:to:from:date:mime-version:from;
	bh=NISOAOKnEIquJyBUC5a3aEIcume9ecYvrUXwwURsopU=;
	b=qmCO5Mo0c0mtgF7rbntG3rrJKNZOgyafXue8zUmoZjQlniaDmortPSsx/CsWDjn7uQPu/b4qigBw6
	 7mVflllSvBzHY8dJUCNdNN3Y5gvG3Q8xOmwoP8SNstYwTRtCzUe9m74p1goXt5LKQVJfNxqv3TwrJq
	 YFj78Eb3/0NzxqQkZFcHKuG8QBftGkI68+ot1dAnBCRF4Dzs/Yq+KVQ9qSCgoglmYZlF8+Fc83EI+S
	 owtfhn4HxCNFCyKj3ze1G7FCVX1iDDSiiosuKh8P0S7bHg6FUVJnON5x0xfWhge5FD5+zN7FKzmOOu
	 kmEs+n6P8gE2w5BPVOVNqqhNJM11bhg==
X-MSG-ID: 50087699-ed85-11ec-ba03-0050569d3a82
MIME-Version: 1.0
Date: Thu, 16 Jun 2022 17:02:17 +0200
From: Robin van der Gracht <robin@protonic.nl>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org
In-Reply-To: <20220616135030.GX1615@pengutronix.de>
References: <20220616125040.212193-1-robin@protonic.nl>
 <20220616135030.GX1615@pengutronix.de>
User-Agent: Roundcube Webmail/1.4.11
Message-ID: <ea270bc41308cedde4958733a89d4eb1@protonic.nl>
X-Sender: robin@protonic.nl
Organization: Protonic Holland
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220616_080222_910647_1EB61990 
X-CRM114-Status: GOOD (  14.49  )
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
Reply-To: robin@protonic.nl
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] lib: parameter: Free previous string value in
 param_string_set
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 2022-06-16 15:50, Sascha Hauer wrote:
> On Thu, Jun 16, 2022 at 02:50:40PM +0200, Robin van der Gracht wrote:
>> When the parameter has no set function the previous (saved_value) is not
>> freed up on completion.
>> 
>> Signed-off-by: Robin van der Gracht <robin@protonic.nl>
>> ---
>>  lib/parameter.c | 4 +++-
>>  1 file changed, 3 insertions(+), 1 deletion(-)
>> 
>> diff --git a/lib/parameter.c b/lib/parameter.c
>> index adc3c7cdea..fe7e7b1ba4 100644
>> --- a/lib/parameter.c
>> +++ b/lib/parameter.c
>> @@ -262,8 +262,10 @@ static int param_string_set(struct device_d *dev, 
>> struct param_d *p, const char
>>  	value_new = strim(value_new);
>>  	*ps->value = value_new;
>> 
>> -	if (!ps->set)
>> +	if (!ps->set) {
>> +		free(value_save);
>>  		return 0;
>> +	}
> 
> Fixing this bug reveals another one. We do a:
> 
> 	value_new = xstrdup(val);
> 	value_new = strim(value_new);
> 
> When 'val' has whitespaces at the beginning we no longer free the
> pointer originally returned from xstrdup, but the pointer with
> whitespaces stripped. I'll queue a fix for this before this patch.

Good catch.

ACK

- Robin


