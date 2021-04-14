Delivery-date: Wed, 14 Apr 2021 13:09:11 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lWdOR-0001xN-C1
	for lore@lore.pengutronix.de; Wed, 14 Apr 2021 13:09:11 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lWdOQ-0007VV-H4
	for lore@pengutronix.de; Wed, 14 Apr 2021 13:09:11 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:Message-Id:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=3jvkk/7afGAQCev/bqP0nijLywCBAo05wdTQUqd/E2A=; b=Qkz1ts8s6Gk99A1N0rXZzEBCI
	NYiGIoZIy9d3OXlbBRnT9ebxpmVl3btb15hQB4liecvp+ZWJcePhdk7jQQ14CTUOvd0Lebxxru0cR
	3msksDPCWaX+qhJCIY7nZ3rXJQqYbX9E2aC8zpX0fwj+ktauJSvY+isJdXZNMG2rLVSB/Qa4gLipK
	iTjZmfqp3tkcxAPRTyRU/fic5fgb0igdyokOsOPaKYGsg0o1Dyg4Swm3URTkeQBE/QKDrV9Lo4Lb4
	kMRM/DFFKaaO2UZDsfIzXFZYrRjoWLA3eZ8yRTlTY/BfRBEQIKxBHuVzF2vjaHGkxvXrSWgPVNaBs
	IT0cOrwWQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lWdNA-00CMZY-9x; Wed, 14 Apr 2021 11:07:52 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lWdMz-00CMYS-Pm
 for barebox@desiato.infradead.org; Wed, 14 Apr 2021 11:07:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 Content-Type:Mime-Version:References:In-Reply-To:Message-Id:Subject:Cc:To:
 From:Date:Sender:Reply-To:Content-ID:Content-Description;
 bh=ZSiLCyL2PKP4nWDUEED9PA8hGLsnbY/CdAlQf5iuG2w=; b=PExifH6Dx8MleDA/kle7hIz8Yb
 IL640/lYb92r4fixwr3SSc0IYxm2VeR9NiFHR3a/O4R/tIiHSX75mffhNucT71FxjzjhKNP2Iptre
 Gd/Uldjf/MUUl3Ccl6AjetVC1K2KlsPvNZ217veloLTzQFtJFuL+XH4rQTt4AaBC4UhMh8Vyb5jHl
 olT+NSflFhhumZx1P+8weMAc03LTgJo0hSYi8mr8PgR4Q3paA0DEH62JivKglGOf9lh+TYwFjUyoW
 ov7I+/dIHvWG8TQX6G3bLsRT7+T0cy6CWJXYNNx5vC9YxiSrjb0Utbi5XGUN7vfZR753p2GCmLoxw
 T9ko9isg==;
Received: from mail-lf1-x12a.google.com ([2a00:1450:4864:20::12a])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lWdMx-007hWF-BF
 for barebox@lists.infradead.org; Wed, 14 Apr 2021 11:07:40 +0000
Received: by mail-lf1-x12a.google.com with SMTP id r128so5491457lff.4
 for <barebox@lists.infradead.org>; Wed, 14 Apr 2021 04:07:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ZSiLCyL2PKP4nWDUEED9PA8hGLsnbY/CdAlQf5iuG2w=;
 b=ts5ii7TXrxoWQTe7d3tThxQ2RakTn3fWIIbu92+n+UK35GzgyZrjAFxRFxBw3pq6Di
 a9C0AgEoPcC6Y7UyFiiSpXvoHcRGxNRbFc2wiOwn8JBxWTaY2Mdvo32FIdrzRFh5bvma
 AsJMPoTr9YmxvqbHNlcwwwaBMbAAJltg3izFoobrDavNSWFU5sc4065Pdv1A21JsZAjv
 0T6tvG2aQpdS7bCV2L49gGy/euqgtNQ2E5KKuvJAFt6ZfdzZGXiUchIcS7KLAFK+OUrC
 Jha+w0zFyrL/QBQZbc9JBRIrFiL/f1YhbJNXbDZzA6q3Jpw+eg9jLNDE8dMmg20lBFIz
 bqDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ZSiLCyL2PKP4nWDUEED9PA8hGLsnbY/CdAlQf5iuG2w=;
 b=ppzZeFb0qVTDPXKVpaqlIof9MeN/TDup2ov8oJgiMMWeKiA1JvrnMuVVwJM5+fvDdM
 9YS9N6r84OxtqRzclmPDMlSTSAS/+ZKd7m2Tt3MGe0OiwUOKzjEGuaMwJKgCD3fRYh2A
 rHtelMeCfnT9xbhtps/2tfcQPmAe43vq9lKxkI3ZRzQuc94/iGBK3n6xMxP9ICTlks29
 s/txekDOuFaWCvOVH0eJhHLVx9imqXQFTadrTldV196PHAN5QLdEu9tmvoXNQ6MHJPa0
 s5IFBtxjkB0KLsQHE3s5sY4ScybSYsq6BrH+d2sY9XHrP8AZkWPZAj+ufMOxlNog0Uno
 VwAQ==
X-Gm-Message-State: AOAM532GrkU+vE4sxXptfGKPmwEkhF/N/8zNX/ZN1g1Fb2GsAll4vLJ8
 qYGuPP+av7E9koxGuMOXkwYskRbhUSBzUA==
X-Google-Smtp-Source: ABdhPJyjh4HbJNPCyR7OsHlktsRmUBYuKzQSKqitqYdGgGrErIfWS1QRfT+4+Nr8r3M/siuSibYx9w==
X-Received: by 2002:a19:f802:: with SMTP id a2mr17790176lff.545.1618398457800; 
 Wed, 14 Apr 2021 04:07:37 -0700 (PDT)
Received: from flare (t35.niisi.ras.ru. [193.232.173.35])
 by smtp.gmail.com with ESMTPSA id b139sm3934837lfd.93.2021.04.14.04.07.37
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 14 Apr 2021 04:07:37 -0700 (PDT)
Date: Wed, 14 Apr 2021 14:07:36 +0300
From: Antony Pavlov <antonynpavlov@gmail.com>
To: Sascha Hauer <sha@pengutronix.de>, Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-Id: <20210414140736.bf2d10eed1149d407434575a@gmail.com>
In-Reply-To: <20210414095427.GS19819@pengutronix.de>
References: <20210414085422.ea70e3d7a89787a1ceda4b2c@gmail.com>
 <20210414095427.GS19819@pengutronix.de>
X-Mailer: Sylpheed 3.7.0 (GTK+ 2.24.32; i686-pc-linux-gnu)
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210414_040739_406874_AF4D8D4F 
X-CRM114-Status: GOOD (  14.64  )
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
Subject: Re: RISC-V: erizo: large gap between bss and stack regions
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Wed, 14 Apr 2021 11:54:27 +0200
Sascha Hauer <sha@pengutronix.de> wrote:

> On Wed, Apr 14, 2021 at 08:54:22AM +0300, Antony Pavlov wrote:
> > Hi Ahmad!
> > =

> > Here is the iomem command output on erizo:
> > =

> > barebox:/ iomem
> > 0x00000000 - 0xffffffff (size 0x00000000) iomem
> >   0x80000000 - 0x807fffff (size 0x00800000) ram0
> >     0x804ffd00 - 0x805ffcff (size 0x00100000) malloc space
> >     0x805ffd00 - 0x805fffe6 (size 0x000002e7) board data
> >     0x80600000 - 0x80636b1f (size 0x00036b20) barebox
> >     0x80636b20 - 0x8063ec9b (size 0x0000817c) barebox data
> >     0x8063ec9c - 0x80643147 (size 0x000044ac) bss
> >     0x807e0000 - 0x807fffff (size 0x00020000) stack
> >   0x90000000 - 0x9000001f (size 0x00000020) 90000000.uart@90000000.of
> >   0x91000000 - 0x91000003 (size 0x00000004) 91000000.gpio@91000000.of
> >   0x91000004 - 0x91000007 (size 0x00000004) 91000000.gpio@91000000.of
> > =

> > I see large unused region between bss and stack regions (>1600 Kbytes).
> =

> That's normal. The compressed barebox knows the size of the uncompressed
> barebox, but it doesn't know the size of the bss segment above it. For
> that reason we have a very pessimistic estimate of:
> =

> #define MAX_BSS_SIZE SZ_1M
> =

> The barebox binary itself is then aligned to the previous 1MiB
> boundary, so barebox usually starts at 2MiB below the end of SDRAM.
> That's a bit wasteful for boards with very little memory like the erizo,
> but that's how things are at the moment.

Can we make it configurable via Kconfig?

-- =

Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

