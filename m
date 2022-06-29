Delivery-date: Wed, 29 Jun 2022 09:39:04 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o6SHs-000yJE-WF
	for lore@lore.pengutronix.de; Wed, 29 Jun 2022 09:39:04 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o6SHv-0008CD-9b
	for lore@pengutronix.de; Wed, 29 Jun 2022 09:39:03 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=38v0/lormZW+AnUTQobST40Y2ZJEIVSxZY2r4fLQZUs=; b=oMTeOVYLBrCpH72iDIok+6w7Un
	bUkMQLs4S075p3f9z4chne9Pxec+bA+uAJHVntAtNyt9Ai6PE5XlTCqiOJSE9ZT63EQaYwMUH+2/Z
	6dNLjQsqNrl7GgbLTzjkZjUrLwiTO9el2gQQdhGYe4gxOMcreRVkAFC+/lFbUNA70rr8m+0PnRlD1
	YdUzS+oVicmp+3A+HqDbcOjDsDvksdX/R+RSu/6PN/UQyZ/SQ1kMOQi8DFRtpRunKJgmysf4D7pfs
	t7F3Rmh4Y7bZ+sFEm0cfjvfYr2uwHr2FNFjwpRIuXF1lnVMvFf4f9LxJWmsjpNQBScv/mKVZQMOYd
	aVG8YARg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o6SGh-00A8eu-Ey; Wed, 29 Jun 2022 07:37:47 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o6SGc-00A8dW-Gq
	for barebox@lists.infradead.org; Wed, 29 Jun 2022 07:37:43 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1o6SGb-0007zp-A6; Wed, 29 Jun 2022 09:37:41 +0200
Message-ID: <98ba3d2a-f940-3b77-2a5c-a21fbedaec92@pengutronix.de>
Date: Wed, 29 Jun 2022 09:37:40 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.0
Content-Language: en-US
To: Michael Riesch <michael.riesch@wolfvision.net>,
 Barebox <barebox@lists.infradead.org>
References: <95ff064f-aa11-c1ce-9d41-e38f2040c565@wolfvision.net>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <95ff064f-aa11-c1ce-9d41-e38f2040c565@wolfvision.net>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220629_003742_604290_9268406A 
X-CRM114-Status: GOOD (  17.43  )
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
X-Spam-Status: No, score=-3.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,
	SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: Handle null pointer returned by of_overlay_fix_path properly
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hello Michael,

On 22.06.22 10:07, Michael Riesch wrote:
> Hi all,
> 
> The function of_overlay_fix_path returns NULL in certain error cases but
> of_overlay_apply_symbols (which is the only caller) does not check the
> return value. For broken overlays this may result in an exception, which
> is probably not the best way to deal with this situation. I am not sure
> though what would be a good way to handle this error condition. Since
> the call happens in a loop, we may want to ignore the symbol in question
> and continue? Any thoughts?

I would abort overlay application on first error. If this can only
happen because of a malformed overlay, it makes no sense to apply
the overlay partially. Exiting with an error message is a service
to the user to investigate where it went wrong.

Cheers,
Ahmad

> 
> Best regards,
> Michael
> 
> 


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


