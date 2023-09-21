Delivery-date: Thu, 21 Sep 2023 15:10:15 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qjJRg-005tmy-GB
	for lore@lore.pengutronix.de; Thu, 21 Sep 2023 15:10:15 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qjJRd-0005Xp-6Y
	for lore@pengutronix.de; Thu, 21 Sep 2023 15:10:14 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=NFNfho8RcEQebttU4scRs+YMwjh3cVVLNQEvY60HUq8=; b=dzEPgHukCOBK0UFppZjRiRD4nb
	FvmA2mOToN22ilDUeCiIjW54Uqg3mGT6pVvKuriqIjVYnmOPM9O8e78Xf2GdClQ+GS1tcal8gg5L9
	+sC5foFcCKZCdc+sE62Djy5rgrwY1ctzL5Kv7qKK4M4C1/Gxch0ngGX6F8lZtNyzeir3r5q4mH2DG
	/f8ag+BULjpL5uUE+dLpzfnLs2S7QpPiUJYO1JGK93ULka0nOU1+HjovVPReNGUOFVpvRH9imF1zl
	LLcN/57zhlSvGejLw6VcYkEJgkim/zWR06mkuaKSAPMKKGRKVgF2KU0YSGpyYidCq98lzJjngv3gI
	7a5HdBPw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qjJQ8-00667C-2q;
	Thu, 21 Sep 2023 13:08:40 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qjJQ7-00666l-1A
	for barebox@bombadil.infradead.org;
	Thu, 21 Sep 2023 13:08:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=In-Reply-To:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=NFNfho8RcEQebttU4scRs+YMwjh3cVVLNQEvY60HUq8=; b=jagEMrBSbYMmN9OeQHfwd2dC83
	oXq4dEmKyXgViISZp0X0S7InlFCwYKh3tIe+BoeDvYOQDsdaLnhn/yghSuCvDkkHomQyrp8vy0nxH
	5d8wnDOlSj7hKvwwyWrCdJov8EpoPpKev7hxBg+fwaOKsGKjM09VTBQVkbJvYyz0CxQgKjbupLqJa
	6M8aK6D12A6NBIWYKHYohfaO6xJgJto8cUMKyN1zcjh0P1sGh6W8trk8xZbr758iw1MCBvh2OrcNg
	+pWUS3USgILJwKBClctL6+c/WewJND1/aPYfWaY355hJ1pRwe7jlHg0vce+xSQXijSFyHHr6vQ4kD
	9yq6oG7g==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qjJQ2-00FO0u-0v
	for barebox@lists.infradead.org;
	Thu, 21 Sep 2023 13:08:37 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qjJQ2-0004yy-S3; Thu, 21 Sep 2023 15:08:34 +0200
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1qjJQ2-007wGK-Fo; Thu, 21 Sep 2023 15:08:34 +0200
Received: from sha by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qjJQ2-00AmsZ-DZ; Thu, 21 Sep 2023 15:08:34 +0200
Date: Thu, 21 Sep 2023 15:08:34 +0200
From: Sascha Hauer <sha@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20230921130834.GR637806@pengutronix.de>
References: <20230921102426.1109289-1-a.fatoum@pengutronix.de>
 <20230921102426.1109289-4-a.fatoum@pengutronix.de>
 <20230921130316.GQ637806@pengutronix.de>
 <2ec608e6-245e-61f7-c3bb-3d04c79cca0d@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <2ec608e6-245e-61f7-c3bb-3d04c79cca0d@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230921_140835_979861_1DC5DAB3 
X-CRM114-Status: GOOD (  23.98  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 4/4] lib: rename json_strcpy to json_strdup
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Thu, Sep 21, 2023 at 03:04:44PM +0200, Ahmad Fatoum wrote:
> On 21.09.23 15:03, Sascha Hauer wrote:
> > On Thu, Sep 21, 2023 at 12:24:26PM +0200, Ahmad Fatoum wrote:
> >> json_strcpy is an unfortunate name for a function that allocates
> >> memory. Rename it to json_strdup instead.
> > 
> > s/json_strcpy/jsmn_strcpy/
> > s/json_strdup/jsmn_strdup/
> 
> Right. Should I resend?

No, that's all for this series. Fixed while applying.

Sascha

> 
> > 
> > Sascha
> > 
> >>
> >> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> >> ---
> >>  include/jsmn.h   | 2 +-
> >>  lib/jsmn.c       | 2 +-
> >>  test/self/json.c | 2 +-
> >>  3 files changed, 3 insertions(+), 3 deletions(-)
> >>
> >> diff --git a/include/jsmn.h b/include/jsmn.h
> >> index 64b3b535ab6e..156ae2086439 100644
> >> --- a/include/jsmn.h
> >> +++ b/include/jsmn.h
> >> @@ -153,7 +153,7 @@ JSMN_API const jsmntok_t *jsmn_locate(const char *path[], const char *json,
> >>   * value does not exist or is not a string. The caller takes ownership of the
> >>   * pointer returned.
> >>   */
> >> -JSMN_API char *jsmn_strcpy(const char *path[], const char *json, const jsmntok_t *tokens);
> >> +JSMN_API char *jsmn_strdup(const char *path[], const char *json, const jsmntok_t *tokens);
> >>  
> >>  #ifdef __cplusplus
> >>  }
> >> diff --git a/lib/jsmn.c b/lib/jsmn.c
> >> index 9e624f7518ad..10a77886a8bd 100644
> >> --- a/lib/jsmn.c
> >> +++ b/lib/jsmn.c
> >> @@ -483,7 +483,7 @@ JSMN_API const jsmntok_t *jsmn_locate(const char *path[], const char *json,
> >>  	return tokens;
> >>  }
> >>  
> >> -JSMN_API char *jsmn_strcpy(const char *path[], const char *json,
> >> +JSMN_API char *jsmn_strdup(const char *path[], const char *json,
> >>  			   const jsmntok_t *tokens)
> >>  {
> >>  	const jsmntok_t *node;
> >> diff --git a/test/self/json.c b/test/self/json.c
> >> index d3088f1b7542..489671768923 100644
> >> --- a/test/self/json.c
> >> +++ b/test/self/json.c
> >> @@ -104,7 +104,7 @@ static void test_json(void)
> >>  	token = jsmn_skip_value(token);
> >>  	__json_expect(json, token, JP("boolean"), JSMN_PRIMITIVE, "true");
> >>  
> >> -	string = jsmn_strcpy(JP("string"), json, tokens);
> >> +	string = jsmn_strdup(JP("string"), json, tokens);
> >>  	if (WARN_ON(!string))
> >>  		goto out;
> >>  
> >> -- 
> >> 2.39.2
> >>
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
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


