Delivery-date: Fri, 15 Nov 2024 16:06:24 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tBxtw-002ID5-10
	for lore@lore.pengutronix.de;
	Fri, 15 Nov 2024 16:06:24 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tBxtv-0005m5-EK
	for lore@pengutronix.de; Fri, 15 Nov 2024 16:06:24 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:Cc:To:Subject:
	Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=R4wvOUqc5wFufwSUNYKpVxVfidnyZx/x4rpLoDJG96c=; b=PiJEQWS0ChFj/CMk/NI+w5Bn4+
	B91Fx0Q9ElZ0gLQRnl1o6Lf041hBkLtvVdw3zi2Dy8xR5tpBHG3J6qlCFQl9saLLG0HEhOgHyhm+Y
	Aql0wjv5UYbu1lEJc4UUL7oP5TdZVgwKguuAFPT0ZekneMAmB+XnwTKlTkxreTzIz6VnQKpJ8RnfD
	MCdnK1XjFxIUVYwh0JsaaKOlkjUOHEI7Fy+rm7SmpBKEdIFfVxczHWrp6g3HgZgcPLkDTtT++/m8Z
	DYZK5a5y3m46pU1mkISgmVdZLuBdR+zqEM4zmSfn0Q2m9bwBHPwg+BJyiE56LXZO+2EnTJYCsubHl
	YRfxf9AQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tBxtP-000000035vV-0r3W;
	Fri, 15 Nov 2024 15:05:51 +0000
Received: from mail-wr1-x42f.google.com ([2a00:1450:4864:20::42f])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tBxpF-000000034r8-0K3x
	for barebox@lists.infradead.org;
	Fri, 15 Nov 2024 15:01:34 +0000
Received: by mail-wr1-x42f.google.com with SMTP id ffacd0b85a97d-38231f84dccso13792f8f.1
        for <barebox@lists.infradead.org>; Fri, 15 Nov 2024 07:01:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1731682891; x=1732287691; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=R4wvOUqc5wFufwSUNYKpVxVfidnyZx/x4rpLoDJG96c=;
        b=RCmNDugQXSF9ED/OA5DWLWVNVT6Rq6zwReY4nMZ5qlkbezlF5HyYM3NdfaTvl6vffF
         40KVjaHfcRz+oxaETCjpV6Nbn8QygyLchdyZgiqoELpuT09K/HrQ1j6h9fZRmTyVHcfR
         xNEpu6wNd8l+bzd9GCtKdJju7sVh/+4mL5ZJAuIXQ5wcZ6f3hG+5Fioa1s8SeDzAG5hu
         zWGIUAADDa59kukTHgvikd9qnJe4u/7/QOfMsOq7kxGHdUAhnPcWo35z8D0sUV7MJ3KB
         o1i2JNTuWSR7NGKIZFGNwyGKJx9uBNlPBx/94yOd4dieLthjQQA/x8GiRSc1X2RmnAU5
         ZrQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731682891; x=1732287691;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=R4wvOUqc5wFufwSUNYKpVxVfidnyZx/x4rpLoDJG96c=;
        b=Rp+T6fVpw10yy+D+zzgraZdTxkHVHkA/UIyxRp9igweqCUPlRKJIjxkugMeMOE1+SJ
         YMlHUvswnb3bnENfYCLRLSvmvVJMI/tnzE3OFTK26SRZ5riSJB5jhhNL8wpfuvC4IvY5
         nbkLpD0VvbCnofRbLrri5WoxKCLwG0DQBoUbgjKdJ6lHJ+5RfyMMHLyf8Ob37qvAwIRT
         kTWuw3A7C2hrXTGomIBCycnlDeLUN37Z24s+s1Nfz4SWYY4Jx3S5v7O3EfwjxBW0sFY5
         wITKSVBfLlZnTsT/CmyjvMYv0O0yYOT847bRZNw7FJx1PBzwKaELege1KASChEbIwWuw
         xI4g==
X-Gm-Message-State: AOJu0Ywky4xJng/MOM31i1iNvfUvzBHTm6UyLocR3zEoewgGVCDKjx66
	vkYAWPON0yVnZ7rNXHrty3I86+XOTSHGK0Aw14aQ8UhOSMSOIi6geNsj74wyW6MZQp/RKLQeS6P
	T9sFYo3usO1CmFgI1wm0ANu8f6OJmlA==
X-Google-Smtp-Source: AGHT+IHTsTbKUplUse+j9i+FwsRWlX2EY8YBuBDzCuSFM8GYSHf+l7rqY610X3ivOc59msqzT4WYGMwXvh4fjZbixT0=
X-Received: by 2002:a05:6000:2ae:b0:382:2d59:b143 with SMTP id
 ffacd0b85a97d-3822d59b3c9mr1043117f8f.52.1731682890118; Fri, 15 Nov 2024
 07:01:30 -0800 (PST)
MIME-Version: 1.0
References: <CANn9nbiT8J+irgWYQxiTydNyOiTEiXBo_ZLqdVG1EGpHY9eyOA@mail.gmail.com>
 <ed999cd8-a8e3-4e19-ba7d-924e393945ab@pengutronix.de> <CANn9nbjCGMOavMYQ+_WSGvSXYVcvFsi6d4H89LWqYfjFP4Pk6A@mail.gmail.com>
 <eaf67a30-ea57-4d4a-8be8-b72273918956@pengutronix.de>
In-Reply-To: <eaf67a30-ea57-4d4a-8be8-b72273918956@pengutronix.de>
From: Stefano Manni <stefano.manni@gmail.com>
Date: Fri, 15 Nov 2024 16:01:18 +0100
Message-ID: <CANn9nbhjc_r+Y2zogX9bgKb=BjvOk2AJc5wa4hYSF=00kAP8zA@mail.gmail.com>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241115_070133_117396_D81A6668 
X-CRM114-Status: GOOD (  32.71  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: firmwareload fails for cortex-m7 on imx8mp
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Ahmad,

I put it on here: https://we.tl/t-HrzdMMJXpU
because I didn't know if I can attach files in the mailing list.

Best,
Stefano


Il giorno ven 15 nov 2024 alle ore 15:49 Ahmad Fatoum

<a.fatoum@pengutronix.de> ha scritto:
>
> Hello Stefano,
>
> On 15.11.24 15:47, Stefano Manni wrote:
> > Hello Ahmad,
> >
> > patch [1] works fine when M7 firmware is compiled to run from ITCM. Thank you!
>
> Thanks for testing.
>
> > But when I use exactly the same firmware but compiled to run from DDR
> > (see [2]) I got:
> >
> > barebox@NXP i.MX8MPlus EVK board:/ firmwareload hello-ddr.elf
> > remoteproc0: powering up remoteproc-cm7.of
> > ERROR: remoteproc0: bad phdr da 0x80000000 mem 0x3de4
> > ERROR: remoteproc0: Failed to load program segments: -22
> >
> > Note that I can run it both from linux and u-boot.
> >
> > [1] https://lore.barebox.org/barebox/20241115135242.1251691-1-a.fatoum@pengutronix.de/
> > [2] https://docs.zephyrproject.org/latest/boards/nxp/imx8mp_evk/doc/index.html#programming-and-debugging-m7
>
> Can you send me the ELF file, so I can look at the headers myself?
>
> Cheers,
> Ahmad
>
> >
> > Il giorno ven 15 nov 2024 alle ore 15:02 Ahmad Fatoum
> > <a.fatoum@pengutronix.de> ha scritto:
> >>
> >> Hello Stefano,
> >>
> >> On 15.11.24 14:43, Stefano Manni wrote:
> >>> Dear all,
> >>>
> >>> I cannot run an ELF image on the M7 core on the imx8mp soc.
> >>> The ELF comes from zephyr and it runs as expected when I load it from linux,
> >>> but in barebox I encounter this error:
> >>>
> >>> barebox@NXP i.MX8MPlus EVK board:/ tftp zephyr.elf
> >>>         [################################################################]
> >>> barebox@NXP i.MX8MPlus EVK board:/ firmwareload zephyr.elf
> >>> remoteproc0: powering up remoteproc-cm7.of
> >>> DABT (current EL) exception (ESR 0x96000061) at 0x00000000007e0004
> >>
> >> https://esr.arm64.dev/#0x96000061 decodes this as
> >> "Abort caused by writing to memory" (Alignment fault) with valid FAR.
> >>
> >> FAR is the addresss listed here (0x00000000007e0004), which is indeed
> >> not divisible by 8.
> >>
> >>> [<ffd826f4>] (__arch_memcpy+0x48/0x13c) from [<ffd82a00>] (memcpy+0xc/0x14)
> >>
> >> The optimized memcpy used here expects misalignment not to trap.
> >>
> >>> As you can see the exception happens when rproc_elf_load_segments() tries to
> >>> memcpy a segment where the M7 expects it. The ELF has been compiled to run
> >>> from ITCM memory (0x007E0000-0x007FFFFF).
> >>>
> >>> Do you have any idea? Maybe may I have to put a reserved-memory for ITCM?
> >>
> >> I think I may have broken this when I changed barebox to map everything outside
> >> main memory as uncached.
> >>
> >> I did this, because we 1) don't want to risk the main CPU speculating into I/O
> >> memory and 2) don't want to have to use memory barriers for synchronization.
> >>
> >> The flipside is that drivers that access I/O memory must do this via
> >> readl/writel and friends or via memcpy_io/memset_io. This was already required
> >> before, but some drivers that didn't do this were lucky enough to fly under
> >> the radar. At least for remoteproc, this seems no longer the case.
> >>
> >> I just Cc'd you on a patch to fix this for remoteproc.
> >> Please let me know with a Tested-by if this resolves your issue.
> >>
> >> Cheers,
> >> Ahmad
> >>
> >>>
> >>> Thank you.
> >>>
> >>> Best,
> >>> Stefano
> >>>
> >>>
> >>
> >>
> >> --
> >> Pengutronix e.K.                           |                             |
> >> Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
> >> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
> >> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
> >
>
>
> --
> Pengutronix e.K.                           |                             |
> Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


