Delivery-date: Fri, 24 Apr 2026 10:47:28 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wGCC8-00Fn7M-1j
	for lore@lore.pengutronix.de;
	Fri, 24 Apr 2026 10:47:28 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wGCC7-0002No-P2
	for lore@pengutronix.de; Fri, 24 Apr 2026 10:47:28 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:Cc:To:Subject:
	Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=VUIOe2NXdrPuHbs35rh9ASEuHcc+Z0ZVkHE0EeVxE54=; b=RglN9k0l6/MpQOJVqBida996ZU
	Y3+MhqCB1/3R/LLgUlyf1dC2kI2joUIY+Dp3mn+6iIF/QnfriqAn2WCcDGXho3HNOO8dAhrNSIR9T
	GdRUwt0IHuzfTvgwqlEp621Vxjqo7+SQgwE+m5Aobv/JI6WXhSY9G4C3RGnBEjJfbTGUfi0tjbXvN
	eY6kt1RrVWnD10XEcluKeGrQjsM5gNpCmETfzAHUEuZAKi+zL0xgSMxW+Ehtm5tZkQbnYNFk5fTf9
	QO9Nzxbq9E+svag845wDrhx97e1IutA77LcKJWcz/NJW/OhlSyz/lJlfiwLOw5IxaAeYjpvRzlplN
	/tEHGGwA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wGCBa-0000000CssM-0vG7;
	Fri, 24 Apr 2026 08:46:54 +0000
Received: from mail-dl1-x1236.google.com ([2607:f8b0:4864:20::1236])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wGCBX-0000000Csrn-2Nmm
	for barebox@lists.infradead.org;
	Fri, 24 Apr 2026 08:46:52 +0000
Received: by mail-dl1-x1236.google.com with SMTP id a92af1059eb24-12c637089ccso7548989c88.1
        for <barebox@lists.infradead.org>; Fri, 24 Apr 2026 01:46:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1777020410; cv=none;
        d=google.com; s=arc-20240605;
        b=Rs0aPPlrnrbHOmpmUYRK4+ci8G/tkJE/NGPL1MXM+vJErKRQvVc0D+mDwBx2DJv6Cc
         2+0Hys+Tyv/W9sXv9Sca5j1D9dwFj+Em81KYNorM+tsSjcpkMQWFgwoROLfrH8aPkaJ6
         dRm5TcizZLW5Q1eSwProcva+mExZZ+JFOnrnmBw6D7w8S2WU+GYQEbXGh+GAbBLTsn+R
         wOQYR57QKYOMte6fIXcd1h5LRW7tFFk6KU8+aGQmH2vZ8AL+Kt+ct4F7yuUCvmH3Z2Q3
         /w1hs3Qw3ck9PIV+fUj6M48CUbFhvl0pJeMrwz4agT2i3xvRMI3VXJFal9uXtf18cB2w
         BTOA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=VUIOe2NXdrPuHbs35rh9ASEuHcc+Z0ZVkHE0EeVxE54=;
        fh=7Yiba8wXx+vLUz4ud+g5VaEZLPel68E1Fvl1EGss/6I=;
        b=MHm8XDfp/UyHGZSXpObujPq34WTIP5eR8nC32RMJmzJ5P5peh489W6hbwwtFSM6qAn
         6Gt1FX7g4CL4LGtwlK+ktzqWiFPjxDE9IW0ABIhI94kDPzDvBcaXJVY0kt5/yG23KBbx
         ZQeYkQUrU/mYAEEK2ErBlxLiEJbd035ShQ/6t5tqUzHJCaJBJl8NEngqYwc743CMkz49
         NkXN4j5Yq8p3MpNLlzJjtDJ+4dXutkjp162zF0RHLmec7WpYU1phfyRnGHXMjYsW8KjO
         CSr12XSZutsGbc1LlpU+9AO7hTFaUCj2wMIVyIxTBwBSgmcC+mGQ06TYlT8JJ3Qrpc4p
         lUiw==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1777020410; x=1777625210; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=VUIOe2NXdrPuHbs35rh9ASEuHcc+Z0ZVkHE0EeVxE54=;
        b=rQ2LeDrsnOXdk5lGJuHyfZaHD+PzR1ylQc/USOnkN6SFTSk8Jr/OMiVdr5HiQGETdG
         D1i1lLzrTXqEzMNqJJry7d+8klWzl9mHLkmCT/uy0TJFTdCFm/jh3OWJGTn8y8xekegX
         UkqbRiDNIrhGIOiBB3X5nGj8PL+tXmGpqYVqO6wiRYGMwkX6jOOO0Oxqg8EglR6ouXz3
         GRK0bjpH0UijPRWBeerFftwJobj2rVlXgrrKyYI8o/35QO39WIG1oVhAypw64PTxPLJB
         I1fk14sv1yPwq2SJyAhUGWqQiWDWtD8ca4fxDG7mE+YLL5uCZk5VdO4bc6Dx2qU7JL0/
         /KMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1777020410; x=1777625210;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=VUIOe2NXdrPuHbs35rh9ASEuHcc+Z0ZVkHE0EeVxE54=;
        b=IBsv1JTgKuWPv8UEvgUE/FlZylHXPLiD+6jdWIstZB/jGClfSU7/DQHADmtwgwYog3
         0hQLZW7LgyKcOJBqfkGQhfxdCz0TbuhQDJwLWrE+5sbhsgOuv5b8k5AIMpVFkhATmMxI
         p/SKQ07HuQusXhsOdtEQtjPzjOMAxHYa5kw6lyZ2/WZ3767gmXqi5VWql7D1NswcM9ao
         8fsGYKKx65mmp78ePhWmKdiI4Lt9MfksqNn7Yvc/PHkhq91N1ovtKOZYNmUMjDUE5zQP
         tH7c/fgKcP/U//N/7S9/4R47/m5fmrMvTDANdoqhR9Zl17h77TlKQyDZ93zoMSKRZ3aR
         n3Wg==
X-Gm-Message-State: AOJu0Yy8uuftseIKd08/Y+kta/oocSchOim+c8CVddfVwmRrCSwmeVst
	OVZewhAeChtr/ZhZzUuFVX2TfMZ07Q/pWhmGOYUEbznxQIW1BOxig2iWXSYCw2rNHIEKc0+hynD
	GngN8j/xFuiTNW7kK5HFvXyfnckwu6zMFcr/LJPk=
X-Gm-Gg: AeBDiesy8BjB+QV3RSG5lndPVk7FgWdxCjk0bS28ZbGuj+sOCyztkDRzJ0/sNcK6NTr
	c2kh1jh/D0z0/u+aVFW+upP3wZs+2XYQ0Hg+vslcRUEwEFVmRkeHAl1Alt5IDVbP0lVZRpIUzY7
	dkUXdBiZlrSdLT6rDYIKkdaJ1/T364ax3F4n1PiSjeCaCKo6SCs2/5owiO5/CT8SAM6C6/SVgtO
	ymEvRvBFBwIP0xW9+YMwwic9bLOW7L4KRivhlQ6HJmWBi9iBNjphylEKxSWf6C71Rvj6UqIJi7y
	alzYkZje5uwxfHdr
X-Received: by 2002:a05:7022:ff45:b0:128:d2a5:709c with SMTP id
 a92af1059eb24-12c73fb3381mr18312537c88.33.1777020410424; Fri, 24 Apr 2026
 01:46:50 -0700 (PDT)
MIME-Version: 1.0
References: <20260416134518.3282395-1-eagle.alexander923@gmail.com> <d437f1d8-c079-4e17-ab67-f9090be6af9f@pengutronix.de>
In-Reply-To: <d437f1d8-c079-4e17-ab67-f9090be6af9f@pengutronix.de>
From: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Fri, 24 Apr 2026 11:46:39 +0300
X-Gm-Features: AQROBzCWVB9JWHG5yugLWNiOSRvztK-_IaxHT3eQCIz9SMiY6RTsSj-YWmfVfDw
Message-ID: <CAP1tNvSfV1Yz0f9NDaN-e88KYFzPNkC16ZjTRPSyBd-hNKXMyg@mail.gmail.com>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260424_014651_610237_25C498E6 
X-CRM114-Status: GOOD (  25.33  )
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
X-Spam-Status: No, score=-4.2 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FORGED_GMAIL_RCVD,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/2] Add support for extlinux.conf
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Ahmad.

> Thanks for your patch!
>
> On 4/16/26 3:45 PM, Alexander Shiyan wrote:
> > This adds support for the extlinux.conf configuration format, commonly
> > used by Syslinux and many Linux distributions. The configuration file
> > is typically located at /boot/extlinux/extlinux.conf or
> > /extlinux/extlinux.conf and defines boot entries with kernel, initrd,
> > device tree, and command line options.
...
> > +static int extlinux_boot(struct bootentry *be, int verbose, int dryrun)
> > +{
> > +     struct extlinux_entry *e =
> > +             container_of(be, struct extlinux_entry, entry);
> > +     char *kernel_abs, *initrd_abs = NULL, *fdt_abs = NULL;
> > +     struct bootm_data data = {};
> > +     int ret;
> > +
> > +     bootm_data_init_defaults(&data);
> > +
> > +     data.dryrun = max_t(int, dryrun, data.dryrun);
> > +     data.verbose = max(verbose, data.verbose);
> > +     data.appendroot = true;
>
> Not sure this is a good idea because of potential of clashing with
> extlinux appended command line options.

globalvar_add_bool("extlinux.fix_root", NULL); ?

...
> > +     if (e->append)
> > +             globalvar_add_simple("linux.bootargs.dyn.extlinux", e->append);
> > +
> > +     pr_info("Booting extlinux label '%s'\n", e->label);
> > +
> > +     ret = bootm_boot(&data);
>
> Please make use of new bootm_entry instead, so it can be used with devboot:
>
> https://github.com/barebox/barebox/blob/next/Documentation/user/devboot.rst

I haven't figured out how to do this yet...

...
> > +static struct extlinux_entry *parse_extlinux_conf(const char *abspath,
> > +                                               const char *rootpath)
> > +{
> > +     char *buf, *bufptr, *line, *p, *default_label = NULL;
> > +     struct extlinux_entry *entry = NULL;
> > +
> > +     bufptr = read_file(abspath, NULL);
> > +     if (!bufptr)
> > +             return ERR_PTR(-errno);
> > +
> > +     for (p = bufptr; *p; p++)
> > +             if (*p == '\r')
> > +                     *p = '\n';
>
> I think this can be dropped.
>
> > +
> > +     buf = bufptr;
> > +     while ((line = strsep(&buf, "\n")) != NULL) {
>
> And then you replace the set searched here with "\r\n"

The end of the line may be \n, \r, \n\r.
We are simply converting it to a uniform format.

> > +             char *key, *val;
> > +
> > +             line = skip_spaces(line);
> > +
> > +             if (*line == '#' || *line == '\0')
> > +                     continue;
> > +
>
> Nitpick: I think below can be simplified to:
>
> > +             key = line;
> > +             val = strchr(line, ' ');
> > +             if (!val)
> > +                     val = strchr(line, '\t');
> > +             if (val) {
> > +                     *val++ = '\0';
> > +                     val = skip_spaces(val);
> > +             } else
> > +                     continue;
>
> key = strsep(&line, ' \t');
> val = strsep(&line, '\n');
> val = isempty(val) ? NULL : skip_spaces(val);

strsep inserts a null byte in place of the separator; this will
corrupt the buffer,
and consequently, we will not be able to find the val.

> > +
> > +             if (!default_label) {
> > +                     if (!strcasecmp(key, "DEFAULT"))
> > +                             default_label = xstrdup(val);
> > +
> > +                     continue;
> > +             }
> > +
> > +             if (!strcasecmp(key, "LABEL")) {
> > +                     if (!strcmp(val, default_label)) {
>
> defaut_label might not have been set here?

No: if (!default_label) ... continue;


