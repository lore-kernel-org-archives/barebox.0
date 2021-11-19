Delivery-date: Fri, 19 Nov 2021 11:54:28 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mo1XI-0003II-RN
	for lore@lore.pengutronix.de; Fri, 19 Nov 2021 11:54:28 +0100
Received: from bombadil.infradead.org ([198.137.202.133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mo1XI-00050m-0i
	for lore@pengutronix.de; Fri, 19 Nov 2021 11:54:28 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ClbPQGsejUIGbWaZMx0+PecwEMptyk5esxde8r1lslI=; b=WJGSU5c9NXLk6H
	9KUF30hb2WxIGmK5c5KpC3HNCjKjI25HIvM3fhjvrSHle73+O78x3MxGEnTU60OzE60b8TbrsN6y5
	venfHSsTwqdDxAwnqw2+QwAFmzLtsHOzfj2xcSqHgn27kJT//oH6RFDlalHVn8nv1qgNVJ5tkMUiw
	b+rbGLCJ6+oVm3XXVB0p1kW6D2lIHigg79op2YeVJLYWDMmQuMwQ7nu2egPvC3tQrDWPOn/aqe6EL
	jZ7Hh6T1RWkBFT1NGzk5PU+dUxfD0nXG8xKZZZTBmnHPPOg+OeCy0GJ1ck8EwKEQtXVDBKqvRFlyA
	mpQdx61ZKdMYm9Pzcd4A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mo1Tm-00AAtI-Tk; Fri, 19 Nov 2021 10:50:51 +0000
Received: from mail-lf1-x135.google.com ([2a00:1450:4864:20::135])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mo1T9-00AAjo-UR
 for barebox@lists.infradead.org; Fri, 19 Nov 2021 10:50:13 +0000
Received: by mail-lf1-x135.google.com with SMTP id t26so41326400lfk.9
 for <barebox@lists.infradead.org>; Fri, 19 Nov 2021 02:50:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=igorinstitute-com.20210112.gappssmtp.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=N7PnOGiChNYnd0ZmiJvGHwQSleXPob0b7h7gRfYgiS0=;
 b=UdEHvQnURvZH5zwE+gikbcHNAYmZFJRs4cVkUO0UwdYCfDTLo/coBv/zF4KpW9wePz
 UX5LWrz1n6ia5NeYjqj3DQAJtPOtW25orvbEZJ1cG+wqazmtmxjMmtFXsUaXF9B9KZLf
 D+RvqEtN+dB5lmGIcyF/A0/O4SdClUdS5hw73TzOyEILOddNG7Loo4C+NCqUZrkzomX2
 77EnPrA+tHFmSGD0fxmnZoT9/sMlo69RVMH06Ocn9q4+HGqA7cCvmL4/AAdUNHi7wY6d
 pfq4XxL4x01hAN+Vj/5daGg5W+uONTTtcv1qOfBgXtCo8oxnmLZg+gvh/AUdnIQ1eSTo
 CaHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=N7PnOGiChNYnd0ZmiJvGHwQSleXPob0b7h7gRfYgiS0=;
 b=AjyAiwRGBEYVs0iZaEQQ0pezug4rwog55icURO0xtO8a2SCtEvYRXSNYg/4rXeIUUB
 rwzh9+qX8t009KrVui0s7Aagsx1MUP9gyu87O5tXoQVYTQTvw1TZgGhTB5CJbUu7Lvei
 yBfiWD9CPeeP2ku4Y2x5seki7YL4PRKz8MrO9sWWJ87X1I+UCTZJ9f5ri7zL9wRs6ov7
 Uw+nYEo0bNhvPjQn6XCIBGmAksJX1n7mchHOrS76ZMEUkTCwfhpTwb06bnaKvIDKkTW+
 +LTHd8GV5DgqQ39vQujhhmoZpwL3aFCkVPIg9lP/Q5+JIlmIaymRIGvKkU5i8s6/0QxL
 ce6w==
X-Gm-Message-State: AOAM530Q4fTdpk6+phgOcoY0UtzoyGkNmkj+H5QFGyD9OmxokiI5AMWQ
 vPzn2hYKZLBHcnp7JlD6pRwC/o6Ue6hFV8NsCs0vnbxihnFfBA==
X-Google-Smtp-Source: ABdhPJwh9givA0eknYyBTls/izBw2ZWC66qvXTMyn8GZUe+8cF9x1y5ggVld25guA+quGpB47kg45LqeJqRED0Mvr2E=
X-Received: by 2002:a05:6512:12c3:: with SMTP id
 p3mr31606288lfg.298.1637319009343; 
 Fri, 19 Nov 2021 02:50:09 -0800 (PST)
MIME-Version: 1.0
References: <20211119095429.1905473-1-andrej.picej@norik.com>
 <20211119095429.1905473-5-andrej.picej@norik.com>
In-Reply-To: <20211119095429.1905473-5-andrej.picej@norik.com>
From: Trent Piepho <trent.piepho@igorinstitute.com>
Date: Fri, 19 Nov 2021 02:49:58 -0800
Message-ID: <CAMHeXxPD9eOdamfmB84e76YtMrifo663zt7cnDN7Qd=iENQdfA@mail.gmail.com>
To: Andrej Picej <andrej.picej@norik.com>
Cc: barebox@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211119_025012_137424_8C4F0D56 
X-CRM114-Status: GOOD (  10.37  )
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
X-SA-Exim-Connect-IP: 198.137.202.133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 4/6] regulator: allow use of dummy regulator
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Fri, Nov 19, 2021 at 1:55 AM Andrej Picej <andrej.picej@norik.com> wrote:
>
>         ret = of_device_ensure_probed(node);
> -       if (ret)
> +       if (ret) {
> +               /*
> +                * If "barebox,allow-dummy-supply" property is set for regulator
> +                * provider allow use of dummy regulator (NULL is returned).
> +                * Check regulator node and its parent if this setting is set
> +                * PMIC wide.
> +                */
> +               node_parent = of_get_parent(node);
> +               if (of_get_property(node, "barebox,allow-dummy-supply", NULL) ||
> +                   of_get_property(node_parent, "barebox,allow-dummy-supply", NULL)) {
> +                       dev_dbg(dev, "Allow use of dummy regulator for " \
> +                               "%s-supply\n", supply);
> +                       ri = NULL;
> +                       goto out;
> +               }
> +
>                 return ERR_PTR(ret);

This return, which was added in "common: add initial barebox
deep-probe support", is a memory leak of propname.  It should be goto
out.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

