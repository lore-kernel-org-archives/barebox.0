Delivery-date: Mon, 01 Nov 2021 19:54:30 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mhcRy-0007ZA-5u
	for lore@lore.pengutronix.de; Mon, 01 Nov 2021 19:54:30 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mhcRx-00053x-C8
	for lore@pengutronix.de; Mon, 01 Nov 2021 19:54:29 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3jH26rRCUttDVnp+3LQ6zVBCii5evUlGVBvDxEJBN08=; b=eEr0S81g2ILHZe
	a8rZPBLcGYDhWe9JCodA05m1Wk6acE7jScyMkaXUgixDaPYU3pyTCiN+xTnghmLX931v4Le/zTCCU
	7HbaNW4kExGxT9Y3YM7CY9c5KetHoKQqp9NbpZMXkdjjGyqs5SCurD8ohcj9tQVAAYHmsuKliVTM/
	9w1TCct6gn5CJt7cWxNUQKgBGPz/gtQMLdQW8Wnt0l1Gn39znJanfmVOvK8PUYd3NlJyy/0c3jhJV
	zbsrKCXw3kWGF8Z/Fez5HfQsNx2l1nA52k0hyDzvZ0q0fCzt3T2nVPIzW5tcCzrGu7gcNbX6Clu8y
	3NFGyi3V2MAMN1qSUkXg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mhcPK-00H48h-Lp; Mon, 01 Nov 2021 18:51:46 +0000
Received: from mail-lj1-x235.google.com ([2a00:1450:4864:20::235])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mhcPG-00H48E-H2
 for barebox@lists.infradead.org; Mon, 01 Nov 2021 18:51:43 +0000
Received: by mail-lj1-x235.google.com with SMTP id 17so27783848ljq.0
 for <barebox@lists.infradead.org>; Mon, 01 Nov 2021 11:51:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=igorinstitute-com.20210112.gappssmtp.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=wU66io8fMHpBDcWrneshwxihGGlwd+yRnRJq9o7aAME=;
 b=nzCl+a6rYexNmyJGK/Rm4A35pv4fARcO9hTCVY31XvEF+AUCZMv7RcxxLa9DaTtJVt
 KLkh9ZjqQQy32XmwBX1qeLyMqTrhO1yQIByzNGhK7ohatJLG28mQWatOXIfnImLIFfIU
 uuILCoB6ctlVcNhFAMkB4Xo7sRPl73UYBm4a4b+dbcgpy/tEpZPWTZVOkql6p1NKTZqU
 OPb6THplNmAQHUJNYzEwet+2V4/QsBUiVuD4mfKsa7gIL9tunDs0FVAB3SWY0EwVRP11
 m6qRQYFFAYkYJvd+Fe8NJNnhMU9zhdRvDNbk6jDZU7hk/bRdPv3FcBM7xqiRONWx9W2B
 uLLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=wU66io8fMHpBDcWrneshwxihGGlwd+yRnRJq9o7aAME=;
 b=AQL+AeEbLw/nn3J2c+Lsz4hFRS+52CXDesrXJdoXuaaqsHbvSnPUbTr3B5hDFmzXsW
 yPv/HTWpdO/oXlryLZuCBAC6qaDQcCL4/b8pbrX+y2aYxtWbRuGNJ65dHjttGo8PZCbc
 d98zs7wZ41dOPTFJ+sX5ZI1nxVaGp4TK0mzmI/+rM7Bwpu+Gl7HrgH+GVmtic+Bb3UBS
 DKrFuvEnNc21V0sxSGaWHjzp2RJeF1UIjrjzDOvDByZVYvcyOz0LPmSwJGRQsx47WeTf
 JIDb/YE8e+wm202TAQwIRm4QU3z1kRJL7cEfnk58AqOkxorFEzkDjh/xsRn94QCNUcyl
 MWCg==
X-Gm-Message-State: AOAM531OODQBrat/JaVO0VgjTMUhTtBcklCP2yXKQFkong8/MXDDid2V
 KjHJSpccfq2ihc1gA4d61PShUfRT+Ff5e/9T0kOPSgOHxrI=
X-Google-Smtp-Source: ABdhPJyLkB8s0LHgz+qhEE70z/J332HLXDneJakYZx68hrlf0xUyT1RJMn5gSu1KkhZKzn1jr0jlDurRFZNiuKbIyu0=
X-Received: by 2002:a05:651c:319:: with SMTP id
 a25mr3681698ljp.488.1635792700805; 
 Mon, 01 Nov 2021 11:51:40 -0700 (PDT)
MIME-Version: 1.0
References: <20211101174053.68486-1-abbotti@mev.co.uk>
 <81e7492a-e822-72ce-e230-05d53abe22f7@pengutronix.de>
In-Reply-To: <81e7492a-e822-72ce-e230-05d53abe22f7@pengutronix.de>
From: Trent Piepho <trent.piepho@igorinstitute.com>
Date: Mon, 1 Nov 2021 11:51:30 -0700
Message-ID: <CAMHeXxNP6X=aWx3bG8uo6qUPSNs0UD+9CA-Pz0=V99-S8y6MbA@mail.gmail.com>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Ian Abbott <abbotti@mev.co.uk>, barebox@lists.infradead.org, 
 Steffen Trumtrar <s.trumtrar@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211101_115142_588413_64B10E60 
X-CRM114-Status: GOOD (  10.50  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] ARM: socfpga: Set reset-names property for &mmc
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, Nov 1, 2021 at 10:52 AM Ahmad Fatoum <a.fatoum@pengutronix.de> wrote:
> >
> > Add the missing "reset-names" property to the "&mmc" node in
> > "arch/arm/dts/socfpga.dtsi".  It probably needs fixing in the upstream
> > Linux device tree sources too!
> >
> >
> > +&mmc {
> > +     reset-names = "reset";
>
> FWIW, this now adheres to the synopsys-dw-mshc-common binding:

reset-names, when there is just one reset type supported, is supposed
to be optional.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

