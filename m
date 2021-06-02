Delivery-date: Wed, 02 Jun 2021 20:27:26 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1loVaQ-0007Ua-Ov
	for lore@lore.pengutronix.de; Wed, 02 Jun 2021 20:27:26 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1loVaP-0003zy-S9
	for lore@pengutronix.de; Wed, 02 Jun 2021 20:27:26 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=E1zot3U+iUQmyWA5TXo0FXkW+JlWlHet9dOB85rQ8IU=; b=kH8KcvJLWtFet8
	3zZXWdRAOYp3p3kuebeyuAGHcUVp3cET8MDwr+95zSS0MdJkpHZ66g5f2keQEx05fMHKiy7wY+S0Q
	8Y4rrMF3FLl5eII2ihg81/hl7uwWTHgtHRkgwiKvIELZUtN3GesLrIF7Jm891wY6a2F9d+tIutqfs
	yxyjVJYkk06jQpQEDIdbPdnZz2bt0BsubYJ7txegeEQz9lXgSeRiuuCCzHx2+t00SmafvPdoRJrei
	PGjh9NdzOJs9ah2XehL+e66mrJ7S1mUOE5Eqn7i1EHwqzGFSSqL+ApiDmhxz2gFKdfmpvOHs9jbDN
	Ln5mv+1oBzkcZkli6ODw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1loVYw-005hcX-1z; Wed, 02 Jun 2021 18:25:54 +0000
Received: from mail-lj1-x234.google.com ([2a00:1450:4864:20::234])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1loVYm-005hZc-Jp
 for barebox@lists.infradead.org; Wed, 02 Jun 2021 18:25:48 +0000
Received: by mail-lj1-x234.google.com with SMTP id m3so3763200lji.12
 for <barebox@lists.infradead.org>; Wed, 02 Jun 2021 11:25:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=igorinstitute-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=6dtkdrJChruF5AgNbL5FOr4rhNEsOVp1RyBQu06jqso=;
 b=QXVXMdVWrRixmpNPAWwxTP4iNoI33VSz1PitQ4NoqZKtHY9Xc7Lf088VlKyKLBtVjj
 CFpqvBJCjlY6zyLgZqO+GfgHRfRo4gyTQVFwd3VD0GRhIeR+WAKI2e6QCq06/atMVCt9
 6UzGMxe1xtDTN8xRPX4aEMVKG1OVfuUFRoGozdaoRDopsnimfX8ozCrK9VxOHjq+fyBU
 m8riv/1CBKNvFzXocIeCQQtNklJrbYlbAUbE9hbzWhOwSdLr5cRXBHHVySy8xKsfxyTh
 fhs0BbZLjFZJPmFVMfJCVkLirPwXBH1ogq/9Oguci5w7TPya5+dzRQuU44ifrG7wQtf0
 y3Vg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=6dtkdrJChruF5AgNbL5FOr4rhNEsOVp1RyBQu06jqso=;
 b=Biye2BGgn2FH64Of6XD/UjmGLDmSenfRyEmSrt00fB3PpYKSMIRmF9EkEpEg+H/L8Z
 raI+sbjec7tixs2QeUniaWZwF9kMZHOJXP86kAAG5F0PGjf0rxDzajl4a8nrlqDR7HO9
 bphWSbOXHCPyse8TDLZTWr9+46CxPes2bP2EfaY6clsjGqNmhi4PhjD2T7lUmHIVegn2
 9t+j9He78lxAG+CvTPSAzhoGBQMGxHdo+mgXWWxvDd8mwm8lwm5TtaS745eSFwpc3VtV
 kboMNQVye+CXWYgo/GfaAL+WAZFl89LopnrPNdQRqE98QJa2oPirA2UE890PCCWgmHNM
 SeqQ==
X-Gm-Message-State: AOAM530zkbTgukw8/SFw+BEx117vKvzBTItCg9jB2UxStpLyilSDrOUN
 adggK6fSbehybGKE7/8YlQUJ+cvOUNN1VXFiQrwqyA==
X-Google-Smtp-Source: ABdhPJxowxtwUvkOq1qEF8iKGi+KFvP4u2HVVoNYxLPL2p6sdOVKwDYlBNDewLAjOGK78JiZ7CKHKMQnw0uruUao0xo=
X-Received: by 2002:a05:651c:17a8:: with SMTP id
 bn40mr18437852ljb.288.1622658341220; 
 Wed, 02 Jun 2021 11:25:41 -0700 (PDT)
MIME-Version: 1.0
References: <20210602095507.24609-1-s.hauer@pengutronix.de>
 <20210602095507.24609-12-s.hauer@pengutronix.de>
In-Reply-To: <20210602095507.24609-12-s.hauer@pengutronix.de>
From: Trent Piepho <trent.piepho@igorinstitute.com>
Date: Wed, 2 Jun 2021 11:25:29 -0700
Message-ID: <CAMHeXxNPhA29-Yv9_bDGVJRW-Q7Dcm4juY9EqCrHv0cK0N8fpg@mail.gmail.com>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>,
 Ahmad Fatoum <a.fatoum@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210602_112547_727102_6CD39404 
X-CRM114-Status: GOOD (  10.49  )
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
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 11/24] Add rational_best_approximation()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Wed, Jun 2, 2021 at 3:05 AM Sascha Hauer <s.hauer@pengutronix.de> wrote:
>
> Import rational_best_approximation() from Linux. This is used by an
> upcoming update of the clk_fractional_divider code.

> +               if ((n2 > max_numerator) || (d2 > max_denominator)) {
> +                       unsigned long t = min((max_numerator - n0) / n1,
> +                                             (max_denominator - d0) / d1);
> +

There is a divide by zero bug in this version if the input is greater
than the largest value allowed or less than the smallest non-zero
value allowed.  I sent a patch to lkml for this a week ago,
https://lore.kernel.org/patchwork/patch/1436255/

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

