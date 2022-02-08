Delivery-date: Tue, 08 Feb 2022 17:20:13 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nHTDx-009csh-NL
	for lore@lore.pengutronix.de; Tue, 08 Feb 2022 17:20:13 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nHTDv-00051x-VQ
	for lore@pengutronix.de; Tue, 08 Feb 2022 17:20:13 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Message-Id:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rZz4x7/iyJ2QNNPu4W3SfIFhMZpxOrvJCFBD73hhqME=; b=J5i7o/qxO6ok2b
	QDxbQhwA9cO3ywnMIMOmOez+/ZMdKYVv2GL6OXXj7n/HpR0nUtm8hC08Zbay4hZI+dULC+EuuXrT4
	ZMVPfb/bnB8P2iD/VjPM9ZILJM+cQUYbYDFTg/iVgWhe1Ivf9VFtO/iJmNlIRuunfcphQniLEc5Md
	dx/aqxmiYYh7E8uqviAkdXYhhMBXMPhABCg4L0snLa91ESAD7IgtBR90pHkSQ3Dmjg+WN9zvjUFgg
	H2YqOxaBgruSOsN0jfUjzcnJacAarTvmIti0hzXIZKrMboJKt3HdKOK0lYpVlQtnQs4a8NeQ8M1c3
	OmNHfArqRgBU+F44YoRQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nHTCB-00EpC9-F6; Tue, 08 Feb 2022 16:18:24 +0000
Received: from mail-lj1-x22f.google.com ([2a00:1450:4864:20::22f])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nHTAu-00EodN-OJ
 for barebox@lists.infradead.org; Tue, 08 Feb 2022 16:17:06 +0000
Received: by mail-lj1-x22f.google.com with SMTP id q22so25180777ljh.7
 for <barebox@lists.infradead.org>; Tue, 08 Feb 2022 08:17:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=date:from:to:cc:subject:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=SxewovBqp8353rBjFJZ7aNazf0sFBxpsLHOP60aqU28=;
 b=NbzP6124R3cXZsY7g8HBV+e+lQfzW7OEFX7ibS/3s/TppWxu0rISJ8lRiccdLjEtcq
 K+jdOXzY7GjTtfEsAEqjs1KNpsaHWFdTiF1PE+pVI6ngB3oF1EOjDmy9o+NhWBfgl1df
 YYkHy2PB87+SvTxQCnDXT4LSx4Nkb0cSl3SrzH2gvTTeS20fYsXLN7gjUhHqRZIzs6Mw
 qfE2U6eiU18PVr/HMEIy15TspvzGWa29eQJhkZ9oEH5d9qWBA63lmrvA3YMpE3OkOTNP
 9lcwg2g+PeKOL7pjfI7BM29YHmgQ834/63HNAKwRSbzLpjHE6D+++c02K3E9nHeozWg7
 5f0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=SxewovBqp8353rBjFJZ7aNazf0sFBxpsLHOP60aqU28=;
 b=wxFw2S7XOIinnDFhbIcB80QUlPAV5bYvVw5WcPUJGYMZVfiE3h3BRGmcF2L9LbH5yM
 hyfjHQQnyYh/e6dxm3SGLnxc3SZiLrWnGZ8kc7Z1PYXpk6yxESqwcwYqXDy2Bf1xzO4V
 RIOmrRIcE/rJ0tBx1wl7Wum80wjY6HxjPimeMgZ2cYUBvdsuKy8RBDLMVNlsgkdy3QpR
 1SFcN99dzRbDXj9s9tnThatEBRuRxZag+mAK+w4BeMC1AP6gDUAufj32YIR+ZqRCcygw
 4j+WcBoHC1HfC602voaG0syKjQSb2zAatGw7IBpEyjzg+zdfCdMPCANGVxbvaevWkg3M
 7H/w==
X-Gm-Message-State: AOAM5300EHHMamDfP/PeS0Cuj15kepjuEBh9JCxVl3cNAe1YFk2j9+RH
 wX/xN7F1mXn18P2yLGGHIbDpaiCi0K4=
X-Google-Smtp-Source: ABdhPJz3TVvpw0ETWdbsxiK8z6ycUUpWnuYSa3YYmDQNPX3nY12HxTfkIjwFslOqukKVad2T3ymkPA==
X-Received: by 2002:a2e:8415:: with SMTP id z21mr3235147ljg.164.1644337020806; 
 Tue, 08 Feb 2022 08:17:00 -0800 (PST)
Received: from flare (t35.niisi.ras.ru. [193.232.173.35])
 by smtp.gmail.com with ESMTPSA id m17sm1976855lfr.24.2022.02.08.08.16.59
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 08 Feb 2022 08:16:59 -0800 (PST)
Date: Tue, 8 Feb 2022 19:16:58 +0300
From: Antony Pavlov <antonynpavlov@gmail.com>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-Id: <20220208191658.9dbe219f58321367a27bc8a1@gmail.com>
In-Reply-To: <20220205171233.ec081c7d777a7d267c26fdf5@gmail.com>
References: <20220130150011.e8b22a088b654f6a0b0f96de@gmail.com>
 <9b440929-d7e8-da69-a4b0-dcca1f5a5ce7@pengutronix.de>
 <20220205171233.ec081c7d777a7d267c26fdf5@gmail.com>
X-Mailer: Sylpheed 3.7.0 (GTK+ 2.24.32; i686-pc-linux-gnu)
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220208_081704_879174_1BC5AD00 
X-CRM114-Status: GOOD (  22.12  )
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

On Sat, 5 Feb 2022 17:12:33 +0300
Antony Pavlov <antonynpavlov@gmail.com> wrote:

> On Mon, 31 Jan 2022 11:39:45 +0100
> Ahmad Fatoum <a.fatoum@pengutronix.de> wrote:
> =

> Hello Ahmad!
> =

> > On 30.01.22 13:00, Antony Pavlov wrote:
> > > Hi!
> > > =

> > > I have made simple Gitlab CI for barebox.
> > =

> > Nice.
> > =

> > > Gitlab CI runner setup instruction and
> > > the source for Debian 11 docker image can be found at:
> > > =

> > >   https://gitlab.com/frantony/barebox-gitlab-ci-runner
> > =

> > I had tried something similar, but with Github actions
> > =

> > https://github.com/a3f/barebox/actions/runs/740206381
> > =

> > I didn't have the time to pursue this further. I am fine
> > with Gitlab as well.
> > =

> > > =

> > > Sample gitlab-ci.yaml config file:
> > > =

> > >   https://gitlab.com/frantony/barebox/-/commit/b1ed597d8e67c8f76f4f98=
cd1c6605b936cf2471
> > =

> > Here's how it looks for Github actions with emulate.pl:
> > =

> > https://github.com/a3f/barebox/blob/emulate.pl/.github/workflows/build-=
configs.yaml
> =

> I have just update gitlab runner, please see https://gitlab.com/frantony/=
barebox-gitlab-ci-runner/-/commit/f90c3932f1e90f900c4d4304c6a54898a5ee0e1e
> =

> As a result runner can build barebox for openrisc architecture and run em=
ulate.pl, see
> https://gitlab.com/frantony/barebox/-/pipelines/464224894
> =

> There is a problem with emulate.pl for MIPS (see https://gitlab.com/frant=
ony/barebox/-/jobs/2058215656).
> =

> log/mips/console_main artifact contains the fragment:
> =

> ---- begin ----
> Hit any to stop autoboot:    3
> barebox@qemu malta:/ echo "YGIS""XTJCSB"
> YGISXTJCSB
> barebox@qemu malta:/ echo -o /cmd 'cat /env/data/config'; echo "EOVL""SAW=
CFS"; sh /cmd; echo "EOVL""SAWCFS" $?;
> EOVLSAWCFS
> could not open /env/data/config: No such file or directory
> EOVLSAWCFS 1
> barebox@qemu malta:/ echo -o /cmd selftest; echo "BOCZ""OJHGFV"; sh /cmd;=
 echo "BOCZ""OJHGFV" $?;
> BOCZOJHGFV
> printf: all 116 tests passed
> progress_notifier: all 12 tests passed
> BOCZOJHGFV 0
> barebox@qemu malta:/
> ---- end ----
> =

> there is a problem: "could not open /env/data/config: No such file or dir=
ectory"

The same problem with ARM architecture.
It looks like CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW_IKCONFIG=3Dy is set on=
ly in RISC-V virt{32/64}_defconfig.

-- =

Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

