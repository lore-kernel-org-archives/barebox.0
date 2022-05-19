Delivery-date: Thu, 19 May 2022 10:14:09 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nrbIP-001r6c-Jj
	for lore@lore.pengutronix.de; Thu, 19 May 2022 10:14:09 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nrbIO-0004uY-DH
	for lore@pengutronix.de; Thu, 19 May 2022 10:14:09 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Z5+cDhxthCQEje7pknG3hcd8VzfRwSAtRGnJddKF9b0=; b=n7Lr3MDN4ZAwoV
	yb+IBwtV6AJcUvnhNp9k/aMydk+lLW4J7QRMbJRst7/tg0WHDT+VcjPjcEeGdF+2F7fUAb1kgr0bn
	8ToNuDKnPNGBi5E90fyQGW37kxMb7hqx/9jhJqFkvnALueNWaOg+pduQzrimuIBuytwhScNju9fjV
	Abj0sl0lZH4C+n3VPcn8PDYH3ntNFktM7YumpD7/AUY7zwz5teTnZPH5CT4+KUfN6kaufR7x91eqf
	j6Vo+sVCyOWu/rEAL7OPamRiWPn4MRnvUY1aURkRlQmTTtNdbh8OptbIIiZlyg2Se3h/0PMNrKR8f
	EIFAFDNIV92lrKC78tIw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nrbHF-005itn-33; Thu, 19 May 2022 08:12:57 +0000
Received: from mail-ej1-x630.google.com ([2a00:1450:4864:20::630])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nrbHA-005iri-L6
 for barebox@lists.infradead.org; Thu, 19 May 2022 08:12:54 +0000
Received: by mail-ej1-x630.google.com with SMTP id m20so8345621ejj.10
 for <barebox@lists.infradead.org>; Thu, 19 May 2022 01:12:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=F3yXxukkUVD4uW4r7sul54qfwYiod1X+AjfrDo1h6VA=;
 b=L89hCMoEzLdxXPh7TUfM6mg+dZAOksPw4ovvlTZtkdlvhonRmaJmEbPv4Wqo5Mxo3H
 EMeyMpuhGwR0V+4VJ+eM2sXm73JhtQXFB9YrjRvOCf024fegc93tYzsm6Qe/Gcq4KiE4
 Pp1hRvjNmc+aBlM/unvtaerSHZiBbirmWgHiVAbMtpqs31Iyay6A0PS0OUA0mrD2ClFD
 4conLq3PQRd57u0wD2Y2jBKR6xi44xDwO/DY3qdnqna4vkFutdj68ca/Fha+mIjcApum
 JXN6A+yZbeYS720Mn1I3oDyxSRp+IZVr40m6MjiHQa7flufCGAyaGjYCwF8EmEio9f8G
 gmSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=F3yXxukkUVD4uW4r7sul54qfwYiod1X+AjfrDo1h6VA=;
 b=lEnZUsXcwwskDGDth7mYRLl6VEHWygC4Z/cZK/3EjI6xPuyCryfEUbvVNQPZga+mtS
 wuGkAUL+c2IOlJPMObkUC38b07egjNVgkuBkMtPca2DyU6g/Z0kw3+EYw797ftzQXqkR
 vRRQfbN4g/XP/7BDQuEFYGUOkL/6IyyDDeulX54bHFlpidM3ucEkIAcwLq68P4dIVoQx
 GkOouvyTPEtUv0ljMIgIeWyFjwpy5Qa532cpDoK4r7wI3mgIoEefWzEVVUPuxzXCYZkj
 TgXAFH7/kPLGi/Q9J2JdjU4f41E+KBzGdn9QlG3itKUhmRSy3UtUkAAp2MW5x0b9u5UZ
 MWPw==
X-Gm-Message-State: AOAM531f/wBLgyN+NiVq3U4bZp4T1JmVBX8fOe+20GxPRX6/YpOKFoF1
 2n6vGTzn2Q8yNGL03BrEcNs/Ps0eDxq83PMuD1H7TzG2NHvMVLy6
X-Google-Smtp-Source: ABdhPJy3jchIvBuvR53xBraPGhmLzYycllPplRqJNvOkCe1yhHvjU5S8n4+9BVPM+xqcF+w3Yy1RD5sjHCWrivM/T1Q=
X-Received: by 2002:a17:907:9805:b0:6f4:fe0e:5547 with SMTP id
 ji5-20020a170907980500b006f4fe0e5547mr3035746ejc.426.1652947968815; Thu, 19
 May 2022 01:12:48 -0700 (PDT)
MIME-Version: 1.0
References: <20220516070049.11963-1-denorl2009@gmail.com>
 <20220516090721.GN25578@pengutronix.de>
In-Reply-To: <20220516090721.GN25578@pengutronix.de>
From: =?UTF-8?B?0JTQtdC90LjRgSDQntGA0LvQvtCy?= <denorl2009@gmail.com>
Date: Thu, 19 May 2022 11:12:37 +0300
Message-ID: <CALHb5ug+DS=F424FDZhbYJgwpPyP27-hCQvyeLQcS7XxmqBEjw@mail.gmail.com>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220519_011252_726149_55FD04DC 
X-CRM114-Status: GOOD (  13.00  )
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
X-Spam-Status: No, score=-4.5 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] clk: fix clk_round_rate() behaviour
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi,

On Mon, 16 May 2022 at 12:07, Sascha Hauer <s.hauer@pengutronix.de> wrote:
> I smell problems with this patch. Which clocks do you have that do not
> have a round_rate hook but still allow to set its rate?

Well, the reason for making this patch was actually the lack of any
output from the clk_set_rate command if there was no set_rate (together
with round_rate) hook set for a given clock. In this case set_rate()
would check round_rate() to be equal to the current rate and leave
without returning an error. But I would like to actually receive some
response about the fact that this clock does not support setting its
rate.
However, I agree with you that this solution may lead to problems.
Maybe instead we should explicitly check in a command whether the given
clock has an appropriate hook set and output some message if this is not
the case. What do you think?

Regards,
Denis

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

