Delivery-date: Thu, 23 Sep 2021 11:57:46 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mTLUA-0005Xg-4Z
	for lore@lore.pengutronix.de; Thu, 23 Sep 2021 11:57:46 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mTLU8-0006qw-V6
	for lore@pengutronix.de; Thu, 23 Sep 2021 11:57:45 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pfRZG+D4iKzd4oIMXBqe1GsRq+fKorLjzyph1rppyp0=; b=ZmwkXD4hra9u3c
	gk4Cx+oLdlh7EoASCcAFvvz0vZobZZQssfuNxtY1zbqoLYLoOHaeOajRW2NTqDg07QxlDGgccFnnW
	c5IZly1UbNBv48XtuEFazL3ZI6yDWIURySLfnuEXwUZ5hPeAGS7x2QSbgHY5uYB+yuoxK8ycok8s+
	7rFvwS1o+Fd7V/vCr5TjR+LTSv6Z1gvg+4X8GQBuuuY5UVZKTErcySEX8ru8hCSEC8AcNpo4ef5De
	NY9OBtYjVLxBhrFycOz4NgBKuzqPrhpwRUuvb3gnW10Lk+BdmBWMqM+Hqg2P/pKJ3dwsvwpKPGKyy
	VUHn05svd+5OikU1GSWg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mTLSR-00AqwP-6r; Thu, 23 Sep 2021 09:55:59 +0000
Received: from mail-lf1-x12f.google.com ([2a00:1450:4864:20::12f])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mTLSM-00Aqvg-1N
 for barebox@lists.infradead.org; Thu, 23 Sep 2021 09:55:55 +0000
Received: by mail-lf1-x12f.google.com with SMTP id t10so24440680lfd.8
 for <barebox@lists.infradead.org>; Thu, 23 Sep 2021 02:55:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=igorinstitute-com.20210112.gappssmtp.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=pErvGvw4XvJYY9KevFVBJyKTHn0Hf/1K8V1SJ2AV+yw=;
 b=5nivd67deCTPeIee85fYcRThccq9s18S2C3SXrUOYXBB4Hqu74GkZMltn5SzrEcuxV
 oQfpwSO6dePWN8Yhp+iJaQG+No1DaiaOz1yXnw9S0nHR2Ragegc8MSrwadqeRGj+mfpz
 3/+ivgC852hyR49NGZV2F+8F0WG/rlubYeLI7YI243kV81NSksUTNhlq6Q04ov1cVk6Q
 G7up5zxComJggd99P2k0PLr73PKNKVIBMHmm3BCBVoGT3Fc18fCSwMHW5dwinhh1eUSA
 IQXQpYNKhQDqW83/dzPoJs5O4pdNqMncU0N8HsMRUl15YcwcP8GoM4huaXNwc8/62oIA
 xJkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=pErvGvw4XvJYY9KevFVBJyKTHn0Hf/1K8V1SJ2AV+yw=;
 b=3Md/r5Gl9u3q4IOHFps0N2HRBMJt11DFpLZj5kuYq6FH0iFZntRuR8yrB1Vq6UF3R4
 UK/kHsWDqoIC8XhNvq3HrgQEvU+No0MC1QWNnA0a9XOmCgHq60fCaVmEAMENm+zS6WW5
 w2yKck2VhfAVMtebgPrwpWrcnjfk0e/Tgyze6g0bZxp+kNDFvnNsMkxImIojGRLd6Y50
 QhSfrZFk6ikhE93FvTnSr9oJoSX6CFhtVzlB5U02bYnScdgzsgHyY4xvRr/9urEoz30g
 r6ZH7sqcEQtO9L25XPbdKsubEnSHUOgu5R5QEsu5SHO6x7PLw5DEN5qhHMQyvGKm4OCq
 mFgA==
X-Gm-Message-State: AOAM530o6Jg8L4KBw1xFqvgyIXcrVHoDju4Ua0AF3yNZqldKWJKF7Jrw
 XVEpaIi1jvFUVpr3shJPDL1xcilnqMOL5QmPXl79ZQ==
X-Google-Smtp-Source: ABdhPJwej72dBdvpSdzGwTA5kIRN7ZkubBlkghmzXQwvTJfKUJvBxyUiqSM3AHd33vIMhNAkYlf9yl6655quCADuO8A=
X-Received: by 2002:a05:6512:3886:: with SMTP id
 n6mr3461902lft.279.1632390951370; 
 Thu, 23 Sep 2021 02:55:51 -0700 (PDT)
MIME-Version: 1.0
References: <3ea5144d940ac48701809c7e28061d76495a66fa.camel@phytec.de>
In-Reply-To: <3ea5144d940ac48701809c7e28061d76495a66fa.camel@phytec.de>
From: Trent Piepho <trent.piepho@igorinstitute.com>
Date: Thu, 23 Sep 2021 02:55:40 -0700
Message-ID: <CAMHeXxPsULguR1icV9cEz5v_Vb6pNsuuWiG0PgJ62ONFwFRB+g@mail.gmail.com>
To: Yunus Bas <Y.Bas@phytec.de>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>,
 "sha@pengutronix.de" <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210923_025554_334789_402F6D52 
X-CRM114-Status: GOOD (  18.77  )
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
X-Spam-Status: No, score=-5.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: CRC32 verification on NAND flash
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Tue, Sep 21, 2021 at 7:11 AM Yunus Bas <Y.Bas@phytec.de> wrote:
> Here an example:
> The startpage of slot1 is 0x240000. This is the real address, where
> Barebox is flashed into and can also be dumped using the original
> nand0-partition. Now, when a bad-block occurs prior to the startpage of
> slot1, let's take for example the block at 0x140000, then offset of
> slot1 changes also in the nand0.bb partition. In the original partition
> nand0, slot1 is still at 0x240000, but on nand0.bb, slot1 has been
> moved one block prior to the original offset and changed to 0x220000.

If you partition nand, via e.g. device tree entries, those partition
start offsets are non-BB aware, so do not move.

So if I write X pages to partition 0 BB and read back X pages, I will
know the crc.  And the same for partition 1, even if some blocks in
partition 0 are bad.

But these "slots" you talk about, I think these are not nand
partitions.  Maybe more like the two bootloader slots in an IMX boot
image?

If the position of the slots is determined dynamically at flash time,
then I think your answer is you must also determine it when you check
CRC.  For instance, on imx one could create a command that queries the
FCB to find the two bootloader slot start addresses.  Code is already
there in the imx bbu handler, it just needs an interface.  Or,
something had to determine this dynamic address of the slot, so have
that process also tell you what it determined.  For example, have the
imx bbu code set env variables with the address of the bootloader
slots that it calculates when it flashes barebox.

If you want to calculate one CRC value for all of NAND, then I think
you can not do that.  Because the contents of the entire nand flash
chip are not constant.  Instead have a list of CRCs and lengths for
the parts you have actually flashed.  Most of flash is usually blank
anyway, why even flash blank space?  It just slows down manufacturing.

You must just find the start location for these lengths of data that
have CRCs.  As above, nand partitions start at a constant location, so
this is easy.  Dynamically determined locations one would need to:
query location if it is stored somewhere, have code that determined
the location also provide the value to the verification code, or
repeat the calculation by which the location was determined in the
first place to independently arrive at the same answer.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

