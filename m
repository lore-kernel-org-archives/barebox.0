Delivery-date: Sat, 05 Feb 2022 15:14:33 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nGLph-006ThS-Qo
	for lore@lore.pengutronix.de; Sat, 05 Feb 2022 15:14:33 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nGLpg-0007OI-5l
	for lore@pengutronix.de; Sat, 05 Feb 2022 15:14:33 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Message-Id:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PD/X9id24GZV36w4SY72P/1nQe61AC+GTGP2tiuWjmo=; b=2B58vX/Sh+nlsj
	/KWqL4XwVo1RsNlIjtW8PULwUpGbcRdjlNlPGjex9E5kTyM1mqYm76p5jzPUSaFI1yi7xfdOW4+UN
	0HqoXVOQVppgPfola5LjuKvklqhfSK5Y0npof69pldW1k+Gv3Zbud3sYRlr/tf2m8bfZYbsp/1JBH
	7qF40LjQqngjryg32Ao/gTYyLnANp8xBEKjOcLli2dkNAMybe72Minq0OvlI+nOloOo+wNVyifNzN
	7FtBMFR9ECCWDNrPwPwBKp0v0Agm1Lk5ZUgDPmteau340jeoedtYzw+BEtuI6yK+Uny3DDvgQJpLz
	ed+/yW7jTpPm8qkB4bGA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nGLnx-006cnU-0w; Sat, 05 Feb 2022 14:12:45 +0000
Received: from mail-lf1-x130.google.com ([2a00:1450:4864:20::130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nGLnr-006clk-SS
 for barebox@lists.infradead.org; Sat, 05 Feb 2022 14:12:41 +0000
Received: by mail-lf1-x130.google.com with SMTP id u6so18087848lfm.10
 for <barebox@lists.infradead.org>; Sat, 05 Feb 2022 06:12:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=date:from:to:cc:subject:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Lm7KkvOdEPPy8TnjaOmDXwaHz7PBvhBoAx3RI7DkVQo=;
 b=BETQLp+FGzqFY9OkYwOFWFuhYGFIjAKblrWVc5UHbxTyFeCPLqQTw2cQqo6OL20h8m
 n0kjvaIrlI1sfKhyJI3Fli4hQBYzDfub56SzSQt7QuI6W/BFsO1X5dqwFEnnmtCM6c3f
 1+X/Y9HxbkIfLDetzXSmYq/iJcD01ALx+NU2tzUEG9/YqX9vK2IJgKzyitXjYHbCL4Sn
 icSxXS3kRZMOVgnlG1qr42a2l+2x6XuHueUqwQdEy7RQu9oZYwPuTE/5ASzhgnYeYr3X
 GzkWRnkfJS8LvuL0nLl5LwRo6McQdUTGpaXRXjJI9oqdlgUsGDyySuWIFB4zjVnqkvIm
 AeTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Lm7KkvOdEPPy8TnjaOmDXwaHz7PBvhBoAx3RI7DkVQo=;
 b=3AthTL4bxznkxDPkp9ItOdJBIdfugeMnkdp99l72K7mTszY1SMEYMduJysW5WnMqJL
 dQavup1i+Rv9DmBBUiH56b7pCDlhStZjBbWwbuaMxfOsrz+50hvJw2b9uZhAYR26PrAj
 dUJaVcHosoQ6bungKuHJHcSF9mNroesUCT0SQ9+tXQm4xR8DnOX+AKhoeccNr7U+iU9Z
 z1NX+qHRNPtOkN9tYN30ilYcSe9ZhJQvRbDNNQ+nRT7U4y7nCQBpT3L0Hrc2Z3Kbaetb
 FRpckKMOpSbma+WIDwIPvhZ47klS4PkKVvZ5mD0TSBXQj2guF+2lfhmQMKaUVSJaqIMZ
 C9Wg==
X-Gm-Message-State: AOAM532lhTuvOHmHUis9uBs/GuyMWHU0LNtHkPUDVGdgheYSCVLDD8eM
 ylIYJmUTApEqcwXi2KS+Q1j8CT/hUvs=
X-Google-Smtp-Source: ABdhPJxZA9Nk3n0b9+qw1J3rl/3BXYJj1QBYQE74zqjxvcZLrBpvslXHu4uNDw0ZijFdk09DF1XeDw==
X-Received: by 2002:a05:6512:344b:: with SMTP id
 j11mr2632831lfr.495.1644070356080; 
 Sat, 05 Feb 2022 06:12:36 -0800 (PST)
Received: from flare (t35.niisi.ras.ru. [193.232.173.35])
 by smtp.gmail.com with ESMTPSA id j13sm734187lfu.214.2022.02.05.06.12.34
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sat, 05 Feb 2022 06:12:35 -0800 (PST)
Date: Sat, 5 Feb 2022 17:12:33 +0300
From: Antony Pavlov <antonynpavlov@gmail.com>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Sascha Hauer <sha@pengutronix.de>, barebox@lists.infradead.org
Message-Id: <20220205171233.ec081c7d777a7d267c26fdf5@gmail.com>
In-Reply-To: <9b440929-d7e8-da69-a4b0-dcca1f5a5ce7@pengutronix.de>
References: <20220130150011.e8b22a088b654f6a0b0f96de@gmail.com>
 <9b440929-d7e8-da69-a4b0-dcca1f5a5ce7@pengutronix.de>
X-Mailer: Sylpheed 3.7.0 (GTK+ 2.24.32; i686-pc-linux-gnu)
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220205_061239_944516_59E34FA5 
X-CRM114-Status: GOOD (  17.98  )
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: RFC: Gitlab CI for barebox
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, 31 Jan 2022 11:39:45 +0100
Ahmad Fatoum <a.fatoum@pengutronix.de> wrote:

Hello Ahmad!

> On 30.01.22 13:00, Antony Pavlov wrote:
> > Hi!
> > =

> > I have made simple Gitlab CI for barebox.
> =

> Nice.
> =

> > Gitlab CI runner setup instruction and
> > the source for Debian 11 docker image can be found at:
> > =

> >   https://gitlab.com/frantony/barebox-gitlab-ci-runner
> =

> I had tried something similar, but with Github actions
> =

> https://github.com/a3f/barebox/actions/runs/740206381
> =

> I didn't have the time to pursue this further. I am fine
> with Gitlab as well.
> =

> > =

> > Sample gitlab-ci.yaml config file:
> > =

> >   https://gitlab.com/frantony/barebox/-/commit/b1ed597d8e67c8f76f4f98cd=
1c6605b936cf2471
> =

> Here's how it looks for Github actions with emulate.pl:
> =

> https://github.com/a3f/barebox/blob/emulate.pl/.github/workflows/build-co=
nfigs.yaml

I have just update gitlab runner, please see https://gitlab.com/frantony/ba=
rebox-gitlab-ci-runner/-/commit/f90c3932f1e90f900c4d4304c6a54898a5ee0e1e

As a result runner can build barebox for openrisc architecture and run emul=
ate.pl, see
https://gitlab.com/frantony/barebox/-/pipelines/464224894

There is a problem with emulate.pl for MIPS (see https://gitlab.com/franton=
y/barebox/-/jobs/2058215656).

log/mips/console_main artifact contains the fragment:

---- begin ----
Hit any to stop autoboot:    3
barebox@qemu malta:/ echo "YGIS""XTJCSB"
YGISXTJCSB
barebox@qemu malta:/ echo -o /cmd 'cat /env/data/config'; echo "EOVL""SAWCF=
S"; sh /cmd; echo "EOVL""SAWCFS" $?;
EOVLSAWCFS
could not open /env/data/config: No such file or directory
EOVLSAWCFS 1
barebox@qemu malta:/ echo -o /cmd selftest; echo "BOCZ""OJHGFV"; sh /cmd; e=
cho "BOCZ""OJHGFV" $?;
BOCZOJHGFV
printf: all 116 tests passed
progress_notifier: all 12 tests passed
BOCZOJHGFV 0
barebox@qemu malta:/
---- end ----

there is a problem: "could not open /env/data/config: No such file or direc=
tory"

How we can pass error to gitlab runner? Now runner reports that there is no=
 error.

> > =

> > @Ahmad
> > =

> > I suppose we can add your qemu barebox/test/emulate.pl tests into CI.
> =

> Here is the Github action config for the tests:
> https://github.com/a3f/barebox/blob/emulate.pl/.github/workflows/vm-tests=
.yaml
> =

> Any thoughts on how/if to integrate with the mailing list?

I suppose gitlab itself can send e-mails on CI pipeline fail.


-- =

Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

