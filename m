Delivery-date: Wed, 05 May 2021 17:24:59 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1leJOV-0007yw-3P
	for lore@lore.pengutronix.de; Wed, 05 May 2021 17:24:59 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1leJOU-0002YV-A9
	for lore@pengutronix.de; Wed, 05 May 2021 17:24:58 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:Message-Id:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=TZLeErreyOxV54n3+0u5DKAtFurei6nA0GgJJkzhusI=; b=cbxX5aXsUa3i1pCGE2H7vwUlm
	agn4jK65cuh2VimVm8GP+Bp94oclQrHRhv/DvFgq1510b57tvydw4o7We8VOg9AEPsSrWRJ8S9fY9
	Ofu6JTHXx6jrareNLrJkc/G/PcDyEOhgG7uytkOvz8D1xJ473idIOM2mZurioUypzD37czjVgg7qE
	OVf7M8gzPRfoDlSLtLzJjIa6dPjXjopa6sJm2kz2evwsYcczY3Wn6XPp7x3Pb1QFxJ0i0IubZzkmr
	7lPLkhgcXEsssBgc+0w8Sf6VajP/WvjSm15TC+DuZieT8smWSG1I510kB7OFPTZv0q3A/04KPRdRP
	l+lYPSenA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1leJNX-001Y4q-H8; Wed, 05 May 2021 15:23:59 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1leJNR-001Y49-TT
 for barebox@desiato.infradead.org; Wed, 05 May 2021 15:23:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 Content-Type:Mime-Version:References:In-Reply-To:Message-Id:Subject:Cc:To:
 From:Date:Sender:Reply-To:Content-ID:Content-Description;
 bh=4pSobIt5iFVPz0GODyHBuYRIwr+ZP+h/lJv3paSScdI=; b=dPUuyWEJEe27kBPAvbMOLqmwTy
 I2Kuz1IkKkis1d6JPoGaW9DGPxgjBbAx6RCorbr9u26Kfzgq9AicDh8Kt/M8Q2dSWWdbHEof5TtGL
 bRFlFlv4N6wKeT8iGeP2Zw0uQ+crDDoPUrP6Dmg015rp2UGtqfokDDagX69uTX0ueUIXPY6u0GB/O
 aYzroSXDYBRaZZOVJ9MJa5c7CvqmT5ljxnI0Q82YbiS1k1Zdehci1B/OqNGBOmyyrj3M9/7ggG4c2
 dD/lRfXhify6j+wJFprhWtFHFRlbMOuiYRGpsVszbfGeDfohnhsozS/yR6bhCUo2NVQOelDINWe27
 WYtND9vQ==;
Received: from mail-lf1-x12e.google.com ([2a00:1450:4864:20::12e])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1leJNO-004s28-9X
 for barebox@lists.infradead.org; Wed, 05 May 2021 15:23:51 +0000
Received: by mail-lf1-x12e.google.com with SMTP id z9so3096232lfu.8
 for <barebox@lists.infradead.org>; Wed, 05 May 2021 08:23:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=4pSobIt5iFVPz0GODyHBuYRIwr+ZP+h/lJv3paSScdI=;
 b=L0lz60Aolahxp2BLWQpOh+4zV9twDKRQkdjoqQ1715ComBEZHB2XAT+1wUHMjt4c8k
 iYvUYMVlV4mExjt1749rYt/Ec8MszxJgZzEUS2llNuMFD3cTngE9wsotxAvDokDc2vAQ
 SCHHIoClf7Wx/qooiTiC0qUdmdSjZAXDmR7JBB3RvwJK6pzlG7Yy7CqdtDn2qwgFwloq
 U25O8k/X9SYYHPrgBk15/ucgI7A1XwaEnt6RgXoqzjAPTAdh4pz9r2ALI+WOdtayhK3n
 4LoYBOIbD0p5v9JRtdpU9DMDZjCFmxjrfcZpnWkcNhHdOEeufY4W3sHQ6SmFtwXXo9VW
 w1lA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=4pSobIt5iFVPz0GODyHBuYRIwr+ZP+h/lJv3paSScdI=;
 b=oqSlJTWIdo3l15Vm14QSy4+sK/cJp4jPTQAAqlHAflk2kPCI5lNR6u3jfJ3jcyvNqQ
 xsdT/K6lVl6kk/EdQG9BSmWXHg7jWjFV4F+38FBMX6mN3tCip0eVU4a5HhRhSjZaVQBN
 Nh9n2FaL7el0zTJoZi4Sf5mm3Sof8kg1wuKYOQ1lRDfhbAB9sUn1ZUJegs/BP3G9kAE9
 f5eWwzEmvpjDbwzO4t3evPV6Dl/DJrLnJqcK8C+KweChDhOuQ2dEqe35SKflFp91omZY
 jxgSK9vKs3LX6LYWcBDLDgb7fc+jGaXNJk79G829Dp+nyz8Ci6orsZWl3NrjzwjRXs/h
 Ny6A==
X-Gm-Message-State: AOAM533/TcU4fpkiAWiDb74YnDllz/8gRBONX1Y3Pos1/b+z58u7W433
 V0+9ehCx3JNkb6lwSnIRrMns6EydXMdMMA==
X-Google-Smtp-Source: ABdhPJwrZwUKkl4miYgh44ofcFjAaytUOl77hVfcN57LDid2ufW3whuvp/n2Abv3cuh8kW/pTXjFWA==
X-Received: by 2002:a05:6512:31c2:: with SMTP id
 j2mr21953645lfe.77.1620228228275; 
 Wed, 05 May 2021 08:23:48 -0700 (PDT)
Received: from flare (t35.niisi.ras.ru. [193.232.173.35])
 by smtp.gmail.com with ESMTPSA id o9sm608105lfi.175.2021.05.05.08.23.47
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 05 May 2021 08:23:47 -0700 (PDT)
Date: Wed, 5 May 2021 18:23:46 +0300
From: Antony Pavlov <antonynpavlov@gmail.com>
To: Jan =?ISO-8859-1?Q?L=FCbbe?= <jlu@pengutronix.de>
Cc: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-Id: <20210505182346.f2fa9326b2994a3821b140a5@gmail.com>
In-Reply-To: <1f4419dcaf9646155cbb8e16aab21b0fcd04a976.camel@pengutronix.de>
References: <20210505100900.88141-1-antonynpavlov@gmail.com>
 <20210505100900.88141-8-antonynpavlov@gmail.com>
 <1f4419dcaf9646155cbb8e16aab21b0fcd04a976.camel@pengutronix.de>
X-Mailer: Sylpheed 3.7.0 (GTK+ 2.24.32; i686-pc-linux-gnu)
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210505_082350_352694_F177ADC7 
X-CRM114-Status: GOOD (  14.67  )
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
Subject: Re: [PATCH 7/9] RISC-V: add initial LiteX SoC support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Wed, 05 May 2021 12:45:23 +0200
Jan L=FCbbe <jlu@pengutronix.de> wrote:

> On Wed, 2021-05-05 at 13:08 +0300, Antony Pavlov wrote:
> > LiteX is a Migen-based System on Chip, supporting softcore
> > VexRiscv CPU, a 32-bits Linux Capable RISC-V CPU.
> > =

> > See https://github.com/enjoy-digital/litex and
> > https://github.com/litex-hub/linux-on-litex-vexriscv
> > for details.
> > =

> > Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
> > ---
> > =

> > =

> =

> =

> > +config MACH_LITEX
> > +	bool "litex family"
> > +	select ARCH_RV32I
> > +	select HAS_DEBUG_LL
> > +	select HAS_NMON
> > +	select USE_COMPRESSED_DTB
> > +	select RISCV_SBI
> > +
> =

> =

> Hmm, there is also https://github.com/litex-hub/linux-on-litex-rocket/ wh=
ich
> uses the 64-bit RocketChip CPU. How would that fit into this naming schem=
e?
> Would it be a different MACH?

Rocket is a 64-bit core, VexRiscv is a 32-bit core.
All LiteX family SoC use the same peripheral IP cores, but different CPU co=
res.

The situation is similar to MIPS Malta FPGA devboard, main FPGA can be burn=
ed with
very different CPU bitstreams:

config MIPS_MALTA
        bool "MIPS Malta board"
        ...
        select SYS_HAS_CPU_MIPS32_R1
        select SYS_HAS_CPU_MIPS32_R2
        select SYS_HAS_CPU_MIPS32_R3_5
        select SYS_HAS_CPU_MIPS32_R5
        select SYS_HAS_CPU_MIPS32_R6
        select SYS_HAS_CPU_MIPS64_R1
        select SYS_HAS_CPU_MIPS64_R2
        select SYS_HAS_CPU_MIPS64_R6
        select SYS_HAS_CPU_NEVADA
        select SYS_HAS_CPU_RM7000


I'll investigate the problem more carefully.
Thanks for noting!

-- =

Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

