Delivery-date: Mon, 15 Mar 2021 13:19:57 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lLmCT-0000pt-IX
	for lore@lore.pengutronix.de; Mon, 15 Mar 2021 13:19:57 +0100
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lLmCS-0007So-Jw
	for lore@pengutronix.de; Mon, 15 Mar 2021 13:19:57 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:Message-Id:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=nvg4Flnf7Mgm7/hrq4nh82bzsA2y2W2ScXxVZ+cAaU0=; b=nd4epsrnbHMLTiyIRrk+lCx/C
	ZFXf2UknmMstwa/kL/u6AhMa21Rn2nN5xZS9yI6twhwMvvHoA/bGHUgUcof3KmsSVZaCeHdIBGkbX
	gPtZ7n5/5hcalN/Bm5UyKwtKXKw63faP7rt1pIbL9ZXjfcsI1ObJ9e8d6XG23mDjsWetILbhYNghD
	JYQkkqPagcp31JacnEhdhAxJr7ocG/085yczFusj+kRxe7KHOpYgZgkvha4uGkNX71NNOYAxVWRRU
	cg4XPpiW+46aeKm1JEtbyRlGZTdmQd0OyB1KfWJGtyGOmfSJlAtezzhk0fKMiXdRSh78+XJ1tMpPq
	29fjus31A==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lLmB8-00Fpo8-3l; Mon, 15 Mar 2021 12:18:34 +0000
Received: from mail-lf1-x131.google.com ([2a00:1450:4864:20::131])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lLm1U-00FmcN-PH
 for barebox@lists.infradead.org; Mon, 15 Mar 2021 12:08:46 +0000
Received: by mail-lf1-x131.google.com with SMTP id d3so56352608lfg.10
 for <barebox@lists.infradead.org>; Mon, 15 Mar 2021 05:08:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=DzpqRkJfVZU+pKVOrcELajdetp45du8wE8wFAnawbYA=;
 b=qX67tJ6cEvzVTwgr37RRojXfZIvStVTpFSFG3U8HtG79VaYk4T3av3V+IcR0iiY2Nv
 N5XY6Xp1m7LvT+JPazbPWfwkeLZbOoBKkDH/w60PJYdIBN3LoWPxExTaRVXv0hnV3rHT
 8G5z3fwM7VIBK4QMcrBruyNefy/gu0B0Vzx1B0miryQMGXfirYaTwNjk2q+8e/6QTq5F
 6RB4J1xkYVHmDKITHPiGfURnp9HXQE+zq01J8ooxxYxHwmealNxG2XBoZsTQt9FT5rph
 aXqM03EuEp6h1hGMsnSG0rhVthY/+k65tm9ZIfAdey1VrpVUHgLnCP1kIejKDJV7aYxP
 HghQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=DzpqRkJfVZU+pKVOrcELajdetp45du8wE8wFAnawbYA=;
 b=TZdEt2R/cPkAet70jprwlRM1/608nOaiIlt4OC7RYI5OBqAYaTup3cEkDHsmkLxilD
 OtqhCZiB60mMUaaJ8GV2dvrVGHDI0i3trtrZJ2NF3McTY6XI1AD23RfsrTb2Yqe7wDmD
 V08mq/zyc7330i6l3t8K2AwkukoXpYNj/URx7xNtx3SbLVLSKlrJD0YiEF6uwe4ZHdiR
 p0xWMJHRhR1LxjmDvt8R98aq+cu79qOthh8MlVGcTpV2/Jk5ga+gPDpzSpdwJAtePeCr
 b/unzvm/ch20l6j6VASK6Quk9CqErwRA4G2AGBxHX6IMx26QAo8t7h2/1/Vr4DekW8G5
 1bIg==
X-Gm-Message-State: AOAM531mmzfknBZYjeDT7na7djRl8WXOXTblY86vBPH3yuGKXAlajUxu
 IeONjdAUaDfyXWaG1GT7w4q03XXUodCZ4Q==
X-Google-Smtp-Source: ABdhPJxOKJRvTWHQbgMbemrlWrk56CYE+WVi4t5yODWW8pos+teOLMf2cl9+/35z0nlcNht1EwYBYw==
X-Received: by 2002:a05:6512:388f:: with SMTP id
 n15mr7811716lft.8.1615810115762; 
 Mon, 15 Mar 2021 05:08:35 -0700 (PDT)
Received: from flare (t35.niisi.ras.ru. [193.232.173.35])
 by smtp.gmail.com with ESMTPSA id h17sm2663131lfc.289.2021.03.15.05.08.35
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 15 Mar 2021 05:08:35 -0700 (PDT)
Date: Mon, 15 Mar 2021 15:08:34 +0300
From: Antony Pavlov <antonynpavlov@gmail.com>
To: Oleksij Rempel <o.rempel@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-Id: <20210315150834.2607507ef97f6a63d68494d4@gmail.com>
In-Reply-To: <20210315114515.hcqboeb53otdums7@pengutronix.de>
References: <20210314122804.4128-1-a.fatoum@pengutronix.de>
 <20210314122804.4128-15-a.fatoum@pengutronix.de>
 <20210315114353.c3bece8ebb5eae822e9349bd@gmail.com>
 <20210315114515.hcqboeb53otdums7@pengutronix.de>
X-Mailer: Sylpheed 3.7.0 (GTK+ 2.24.32; i686-pc-linux-gnu)
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210315_120838_242842_6D608900 
X-CRM114-Status: GOOD (  16.14  )
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
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	NICE_REPLY_A,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: MIPS RELOCATABLE:  [PATCH 14/20] RISC-V: erizo: migrate to PBL
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, 15 Mar 2021 12:45:15 +0100
Oleksij Rempel <o.rempel@pengutronix.de> wrote:

> On Mon, Mar 15, 2021 at 11:43:53AM +0300, Antony Pavlov wrote:
> > On Sun, 14 Mar 2021 13:27:58 +0100
> > Ahmad Fatoum <a.fatoum@pengutronix.de> wrote:
> > =

> > Hi!
> > =

> > > diff --git a/common/Kconfig b/common/Kconfig
> > > index 36207274f07f..37204fb40a44 100644
> > > --- a/common/Kconfig
> > > +++ b/common/Kconfig
> > > @@ -44,7 +44,7 @@ config BLOCK_WRITE
> > >  =

> > >  config USE_COMPRESSED_DTB
> > >  	bool
> > > -	depends on ARM
> > > +	depends on ARM || RISCV
> > >  	select UNCOMPRESS
> > >  	select LZO_DECOMPRESS
> > >  =

> > > @@ -358,7 +358,7 @@ config KALLSYMS
> > >  	  This is useful to print a nice backtrace when an exception occurs.
> > >  =

> > >  config RELOCATABLE
> > > -	depends on PPC || ARM
> > > +	depends on PPC || ARM || RISCV
> > >  	bool "generate relocatable barebox binary"
> > >  	help
> > >  	  A non relocatable barebox binary will run at it's compiled in
> > =

> > Hmmm. AFAIR MIPS barebox is relocatable. Why CONFIG_RELOCATABLE does no=
t depend on MIPS?
> > =

> good point, I'll need to test it

At the first glance the only point to enable CONFIG_RELOCATABLE is to enabl=
e FS_PSTORE.

-- =

Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

