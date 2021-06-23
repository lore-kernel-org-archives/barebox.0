Delivery-date: Wed, 23 Jun 2021 08:26:35 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lvwLL-0006Sn-MM
	for lore@lore.pengutronix.de; Wed, 23 Jun 2021 08:26:35 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lvwLK-0006UZ-SY
	for lore@pengutronix.de; Wed, 23 Jun 2021 08:26:35 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=b2451rKwicEak/VPGJjUO6ba7xGMVnVHLcagxHSRUTs=; b=kFTnmO6K5Y8wC1
	bgjqaAIqwRi8O07hI8t+77kNuhNpFkuqCRJeCVZdaemwbxDI9J8Wc8Jriwch0L7BZbJwIMmR0WmIx
	f4VeChDk2DSr8+lLhyRO80BC3kj8aF6K262+nj3qCIzZ5s8sHKS+/pBDWUEpvQMXa2WQE4APyhzIq
	CrwToJyGAtHhKoM+Ash29/P8cSTOFS3NjeOmcvymDzOniLcK2QJD3aE+YiEmL9XHEoz1HtS/Epul8
	s26iXcoQMnPxw0TqGOhjAvGVgV+UDZxgduj22W8ZO4VJoWgRvJ7c/fCSsAtkZ4IiBnJp7JM3ivJgF
	icmKIhPVLp7G/9Pb0uzw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lvwK5-009YuP-Cj; Wed, 23 Jun 2021 06:25:17 +0000
Received: from mail-lj1-x234.google.com ([2a00:1450:4864:20::234])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lvwJz-009YtH-ID
 for barebox@lists.infradead.org; Wed, 23 Jun 2021 06:25:12 +0000
Received: by mail-lj1-x234.google.com with SMTP id c11so1430345ljd.6
 for <barebox@lists.infradead.org>; Tue, 22 Jun 2021 23:25:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=igorinstitute-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=txYdd2l1sWa/lQeLW7hnct5OZg7TwSC/oo2x/uNRaj8=;
 b=iikFhvrcfzrGrO90c+Bc2mGiS4TRTr+W9Z49CqU0Z7bgMhQ8fnD1uVhcY/odzFf3jV
 hT5UOgb7iXffVmTVS+5bkvoOaRxX7aZzpHjlra9VDqZnJ0Qjg55APLOFHPlBbBV0Ud59
 /GBlbM5OdyiXroGKhR6E74CxicbX3t5cdZcrkIaocSBA5RDOjY1tnVStQgHLoZrLQcMV
 9nMMSmHdhCXAnmV4lgV42ZMF/Vr5Ri8Trzx/PPjxutsqjiqJPwyD7FDhpvdbPnpHmNCg
 kw0TEI38DkGG73mw4Dz/VPJIkArGudNRety2q4nhVPbxvH2/ONCdHx/j9Xe/ahw+zAXk
 PCUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=txYdd2l1sWa/lQeLW7hnct5OZg7TwSC/oo2x/uNRaj8=;
 b=AyEWDL92f1G3dbUbBzwkoB3VkWQFCYRR9Flnv0Dpfd5vKcFx8pz1zBcJi7wi0ucvSA
 802GripJ6P/bZY4//F3w8cpeFHoPhFjjDDfuoaGc2Ag0hZQW9Mzpf32l+FHPSaXXm0s9
 cXlepLu+hZwxSkY6z3V/0iVy4kQmJqvQpFTh4AG9nnTGu6w7hPyclO8ypeTLYf0IsiYN
 1YMZPu7Yj8FVMEkTSZCPDCQAtaq9KwO8g5kfr+LMuI18N1Uc/8CxCH7wu6ZMECJXI3ex
 ckSKUus5yuipETgdITZxeh6SG0vLpJMeIf0h/FmdeauBbQd6gto/qEY30BGU1frN6V5v
 S8QA==
X-Gm-Message-State: AOAM531Kesysnh92g7Vl5zkxC8UpLwJsketyeVFdv/r86CblVZzqJnNo
 wfre/JcA+ssNrqcOuBPSzzNw9qBFiMV5muUQLUlwZA==
X-Google-Smtp-Source: ABdhPJyCBg+jI2F5KEEE4mWMbAFiCsN7v2HNDIRWcth0wBnklnetlLR7AOloaFmXHEp0lyY+ye1d1YRTqTnCFgdi8YI=
X-Received: by 2002:a2e:894e:: with SMTP id b14mr6680021ljk.112.1624429507891; 
 Tue, 22 Jun 2021 23:25:07 -0700 (PDT)
MIME-Version: 1.0
References: <20210623043359.18391-1-s.hauer@pengutronix.de>
 <20210623043359.18391-3-s.hauer@pengutronix.de>
In-Reply-To: <20210623043359.18391-3-s.hauer@pengutronix.de>
From: Trent Piepho <trent.piepho@igorinstitute.com>
Date: Tue, 22 Jun 2021 23:24:57 -0700
Message-ID: <CAMHeXxM61PR2HMzZiDG5SFQ7exLPwhMsQFCtqznsfdiadwaZvQ@mail.gmail.com>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210622_232511_792393_B92AB375 
X-CRM114-Status: UNSURE (   9.88  )
X-CRM114-Notice: Please train this message.
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 2/3] libfile: Add copy_fd()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Tue, Jun 22, 2021 at 9:34 PM Sascha Hauer <s.hauer@pengutronix.de> wrote:
> +       while (1) {
> +               int now, wr;
> +
> +               now = read(in, buf, bs);
> +               if (now < 0) {
> +                       ret = now;
> +                       goto err;
> +               }
> +
> +               if (!now)
> +                       break;
> +
> +               wr = write_full(out, buf, now);
> +               if (wr < 0) {
> +                       ret = wr;
> +                       goto err;
> +               }
> +       }
> +
> +       ret = 0;
> +err:
> +        free(buf);
> +
> +       return ret;

This can be quite a bit shorter:

while (1) {
       ret = read(in, buf, bs);
       if (ret <= 0)
               break;
       ret = write_full(out, buf, ret);
       if (ret < 0)
               break;
}
free(buf)
return ret;

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

