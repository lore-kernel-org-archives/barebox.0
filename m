Delivery-date: Sat, 15 May 2021 08:48:28 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lho68-0002w6-6L
	for lore@lore.pengutronix.de; Sat, 15 May 2021 08:48:28 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lho65-00046s-EL
	for lore@pengutronix.de; Sat, 15 May 2021 08:48:28 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:MIME-Version:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=RpB1lB+TQ9ZKUiFvctRHm6kJomAHTXB9N2Nj74zSZPc=; b=lHfo3U3abBLO2h
	eqDnioJEJCMRhU/h+njo8G0F8VBvDP90BSHqoOCRek1n3M5Zxtt8Ze7CijZus8TyBxJ5TJQP+DL2v
	f81msrrokuwGviyEs54IRRcxBiLVxlmUufFyilHhFtQXZcIC/o1aD/CzBIUspY2AsR5pUmiOpYx42
	7wwZ7NmMIvWvD0psjL4vdSzXNs0Q/SUu8WLF24kAHHWMJ6rH4FCAPlYoS8y3k3wma3xgc8Ve8qZYD
	g7d9oK7kdFLBccW9QUM3sVLGpn+M2AnZvWLE5OhagnhIYaDbkPJq97M8lJg59cAeNXB2FeqO/W8Ze
	/Qmo5gKiwUGlmdc+Jkrw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lho4h-009r9v-0r; Sat, 15 May 2021 06:46:59 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lho4d-009r9q-NI
 for barebox@desiato.infradead.org; Sat, 15 May 2021 06:46:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Type:To:Subject:Message-ID:
 Date:From:MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:
 Content-ID:Content-Description:In-Reply-To:References;
 bh=pElHUhuInWQt+agubDYHC2+Cy0ovTPwcnt01KxvtCE0=; b=WiukBiPqXSqnqSaJX7y+RNgPjE
 bUM15cZtghvdupyKQTQFrpxzGFrINwHhXsSJRl/TwpFOYX9UIvfIsTp4Y3oCDJAIs3Qsr55Bc6pHF
 XvyKtOfzZV7BbFPK0obBddXvketdvX7LATQkfpgUJUGoHDaqjQnrf6kxgKpe15FjVguIjfCxlk1S7
 bgyzThFHIgs16lj0AQn9AyWumcoYxK/J16Sv5D3MKcxNAk2SrvS0DkvG7dQmad7+kYwSzacH9y6Li
 2bVNKq48RiPUQGjo0qT2e1h4fbhd+wW7yABqotbBdRdap4qbVC+dlWq1SD59F/SqsPWtd1n2s1mlv
 5aeGx/Tg==;
Received: from mail-lf1-x12e.google.com ([2a00:1450:4864:20::12e])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lho4a-00CPyI-ME
 for barebox@lists.infradead.org; Sat, 15 May 2021 06:46:54 +0000
Received: by mail-lf1-x12e.google.com with SMTP id x19so1481085lfa.2
 for <barebox@lists.infradead.org>; Fri, 14 May 2021 23:46:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=igorinstitute-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:from:date:message-id:subject:to;
 bh=pElHUhuInWQt+agubDYHC2+Cy0ovTPwcnt01KxvtCE0=;
 b=fqiZLYfJ1+vN+9rfv5XGAAFT2g2phOW80pYh8eN70G2wUi9oTqIErC+PbfMt/GktHm
 nMDUESMisnUUxqkCGcUmcVMhqDrMK/wkhsx+xCZAzqAtnng5OXkQMYsUOdfVJaa/pyTY
 eiSIiOJsZ72uCIez2SERd50TASWIAQMxdg6rTb/fjz+GIJMaoZofMahx9z8cMslyGxlk
 TtAzwN5vw3Q88qIWiM6D7BJmAevpoQ9rUGrUkoF94tfS0Qt8jK15H8GaMWCJd5bwxs+C
 oLAzuDTUPpmPZHBGYgWQlLeWWIaifpH8YocyY35bCiw7heYG0pyP4XVKlM6pEZrCyy+D
 AwlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=pElHUhuInWQt+agubDYHC2+Cy0ovTPwcnt01KxvtCE0=;
 b=CnHde8tZYwQlJTopV98BK3tq3vZ6b2zvf3PsuiASG3+l6RWfHBEGpPeA+uU0UMAWqC
 IPd1Bm7388DSPdjMk8U4dljYUrNhu5oVZGMArAw+wxnqiOLCdasVlshgOPd+RXkjJ0sy
 skOGvQbfAZhS+XxWFjn4aFgTSPXK2Hierb+4Oke25YV4nmRR/QUACmyfhd2qGNAHiAuT
 ASlB30Djs+qTjiXkMl6UYFVnyHllt91aQ+Ejb72LVQWrP+LQ63CxYei6nnhCHibbcbzp
 V26g4v22kyem6nnLd7hMen2ol5BC2NUsZIb2FfoQn54ti0QBku3wcZfDQ8N6+Fomg9xy
 8aWw==
X-Gm-Message-State: AOAM533UbEBxBGc3VMIh9mzVi5Nvz01P45cVxCZsl6fywWOLdGKK26wu
 A/EVmyPmWQs8Vr0LPFkCH4HkxYfVtswuv/MP9q99P2HdlRmHqg==
X-Google-Smtp-Source: ABdhPJwIA/Gx2CUxTuXe59xCcHKwLODSgmxQzA/12KhweTm+4/FDusztsQFG8E6ju0IrbrJvIcYzoH+BlaZu32rGPZI=
X-Received: by 2002:a19:c511:: with SMTP id w17mr4102941lfe.113.1621061209456; 
 Fri, 14 May 2021 23:46:49 -0700 (PDT)
MIME-Version: 1.0
From: Trent Piepho <trent.piepho@igorinstitute.com>
Date: Fri, 14 May 2021 23:46:38 -0700
Message-ID: <CAMHeXxMH8E4ae3HvFtkckJAc_hk1xWBJxMyBxab_OdPRn3y1Vw@mail.gmail.com>
To: barebox@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210514_234652_960391_8A7DA627 
X-CRM114-Status: GOOD (  11.60  )
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
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Board specific environments and broken configs
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

I wanted to add some additional commands to the env for a new board.
The barebox docs have this:

The default environment is composed from different directories during
compilation:
defaultenv/....
...
arch/$ARCH/boards/<board>/env       -> board specific overlay

Which made me think that putting an "env" directory in the board
directory would automatically add it to the environment.  It seemed
like a few boards I looked at did this and nothing more.  But no, this
does not work.

I see two ways to add extra env.  One is to reference a path in
CONFIG_DEFAULT_ENVIRONMENT_PATH.  The other is to add a path to
bbenv-y in the board's Makefile and then defaultenv_append_directory()
that linked in data in the board code.

But it seems like some boards do neither!  How do they work?  AFAICT,
the answer is they don't work.

I tried to do an exhaustive survey of board envs.  I found 98 env
directories used by 95 boards.  57 of those boards use a manual
defaultenv_append_directory().  There are 39 env directories not added
this way (efika-mx-smartbook has two env dirs, one in the makefile and
one not, thus 57 + 39 - 1 = 95).

Of the 39 env dirs not added in board code, 27 are referenced in a
defconfig file in CONFIG_DEFAULT_ENVIRONMENT_PATH.

And thus 12 env dirs appear to have no use in barebox.  delphi-poc20
appears to not even be a board, having just an env file, no code, no
references I could, and added in a commit for another board.  Mistake?

The 12 boards with apparently unused envs:
chumby_falconwing
crystalfontz-cfa10036
datamodul-edm-qmx6
delphi-poc20
dss11
efika-mx-smartbook
generic
karo-tx25
karo-tx51
mx31moboard
skov-imx6
technexion-wandboard

An issue with CONFIG_DEFAULT_ENVIRONMENT_PATH is that it applies to
all boards in a config.  If multiple boards are built at once, e.g.
imx_v7_defconfig, then there is no way for each board to have a
different extra env this way.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

