Delivery-date: Tue, 23 Mar 2021 22:46:02 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lOoqg-0005gU-IT
	for lore@lore.pengutronix.de; Tue, 23 Mar 2021 22:46:02 +0100
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lOoqb-0003Pm-91
	for lore@pengutronix.de; Tue, 23 Mar 2021 22:45:58 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:Message-Id:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=uoqHVLMYkeDkntoz92wAl102dgFgbf73GZkeHI0AYm4=; b=D7t+tAYltcZsqnFoPZUyFSve/
	eg1bap7LwotAjQJnj1TsAX/PLSHHMBE3l/iU8e9VsZ9FLaR/LRk7az+fu0fW/IDIAX4uUlflHl1gQ
	UwdC9Z5q1bILPX2swEniNjdGtX0FkG4p7ouaehTx2orY2ypea/y5UeNnAGO+ja6G2uuZymOocvBtq
	50O9xjv50h7KMcJpj+7bEqtyqaPACW/lL5qSAb4v7xEgcZHOawgXJ213z/rGRaCuDwgfaeq4YidG4
	x56QRlLtwCy7FR9R9LmMTQoCRj70amypuipHL040Kr3qslZ1T3E24h38+3U8YEyCFyTc0Hh5v9sSe
	3/a1iRiug==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lOoow-00Fnxk-Tl; Tue, 23 Mar 2021 21:44:19 +0000
Received: from mail-lf1-x131.google.com ([2a00:1450:4864:20::131])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lOooM-00FnvF-5s
 for barebox@lists.infradead.org; Tue, 23 Mar 2021 21:43:40 +0000
Received: by mail-lf1-x131.google.com with SMTP id q29so28680482lfb.4
 for <barebox@lists.infradead.org>; Tue, 23 Mar 2021 14:43:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=TVoKsVEqctL2SwwHfos9TK6fVies03seNzpcRp3eKWA=;
 b=Z9gWN45VVNSTmVJMnkEVGz2tbYGoMo0hs0c5YG6TRGVaUknI20kaCq6/hvCbrR3ZyL
 OXPFuyr1nfn0zxkcyHSlVIXCuALzq+eqws/ns0T1YvEsn6+RrlYElV1GRt5pjpsSRmHr
 +EmD7vXjJPgXJNIguSNdyQuyTpndNuMdWpW3TqM13bz/fuwJRHs+R0txukxICWPLyajR
 JWgO+ify4sYoMjKXJ/AaHmd84/l0jKGR6l0TWA/MDEPWqtw0fg8KqiLCB64UdstzjtMy
 kdBQ4QCkC5CX8AyA8H3iwz43plqb9UsViMjoEJOnv7H5Vjb105jOacsUQqFL7fRdtHcn
 +99w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=TVoKsVEqctL2SwwHfos9TK6fVies03seNzpcRp3eKWA=;
 b=J/iOD3GN7196Z8a95vU3TLdZJVnFF09flUquXe1dwt3sS+ektf0SURHknqXrWf1SJ8
 eZgNT5fuOtpSIjeDi8qmh5UUmVjrdEVDnmenvkZrSxNgP05crRb1pqtN/HAUdDPlOs3e
 hynTjHrnKirzN16G4DdSJN4NGyyztCcL/RqyqZJKxkAtEl7GrJye9AgF+580ZaGYDBp7
 8DlRsOVlgQmYOAp+BbZ6ekwu9u3qUMyqYj0NIVexOR3waTBKnCP1N3OfqPbnq9nntsCJ
 rVKMVP+0LmOLo/w9rfdrZytNvR3tMyUxCkuGh//4gG8m2vHcc4LqwXtETUjHsetZ1/EI
 fHYA==
X-Gm-Message-State: AOAM531OToqeS5nu/gY7r3Oef7tBjsH6ZnGqo24+K9OetYMM4CRW221E
 UEFqXchgiU0fItyuBArx8VfNI/K/zUlpuA==
X-Google-Smtp-Source: ABdhPJwRNIYfSbAIhAZ5BoOwfIK2geMAZBtj39cJ24MGcnZfZHUWCZJwLU++pDT2RhWS5ZxVyVmzMQ==
X-Received: by 2002:ac2:5444:: with SMTP id d4mr57985lfn.126.1616535816651;
 Tue, 23 Mar 2021 14:43:36 -0700 (PDT)
Received: from flare (t35.niisi.ras.ru. [193.232.173.35])
 by smtp.gmail.com with ESMTPSA id w12sm37755ljm.50.2021.03.23.14.43.35
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 23 Mar 2021 14:43:36 -0700 (PDT)
Date: Wed, 24 Mar 2021 00:43:35 +0300
From: Antony Pavlov <antonynpavlov@gmail.com>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org, rcz@pengutronix.de
Message-Id: <20210324004335.8ec9b1a909b2ea1eae712ec5@gmail.com>
In-Reply-To: <20210321151344.5810-16-a.fatoum@pengutronix.de>
References: <20210321151344.5810-1-a.fatoum@pengutronix.de>
 <20210321151344.5810-16-a.fatoum@pengutronix.de>
X-Mailer: Sylpheed 3.7.0 (GTK+ 2.24.32; i686-pc-linux-gnu)
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210323_214338_696530_9957C228 
X-CRM114-Status: UNSURE (   7.89  )
X-CRM114-Notice: Please train this message.
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
	NICE_REPLY_A,SPF_HELO_NONE,SPF_NONE,URIBL_BLOCKED
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v3 15/21] RISC-V: erizo: migrate to PBL
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Sun, 21 Mar 2021 16:13:38 +0100
Ahmad Fatoum <a.fatoum@pengutronix.de> wrote:

Hi!

I have good news and bad news.

The good news is that erizo barebox successfully runs on real FPGA hardware.

The bad news is that there is no "stack" region in erizo iomem output;
also barebox relocated to te middle of RAM not to the top of RAM:

barebox:/ iomem
0x00000000 - 0xffffffff (size 0x00000000) iomem
  0x80000000 - 0x807fffff (size 0x00800000) ram0
    0x802ffd80 - 0x803ffd7f (size 0x00100000) malloc space
    0x803ffd80 - 0x803fffc3 (size 0x00000244) board data
    0x80400000 - 0x80436cff (size 0x00036d00) barebox
    0x80436d00 - 0x8043eec7 (size 0x000081c8) barebox data
    0x8043eec8 - 0x8044336f (size 0x000044a8) bss
  0x90000000 - 0x9000001f (size 0x00000020) 90000000.uart@90000000.of
  0x91000000 - 0x91000003 (size 0x00000004) 91000000.gpio@91000000.of
  0x91000004 - 0x91000007 (size 0x00000004) 91000000.gpio@91000000.of
barebox:/ =


Please compare with mips malta and arm vexpress-a9 iomem output:

barebox@qemu malta:/ iomem
0x00000000 - 0xffffffff (size 0x00000000) iomem
  0x180003f8 - 0x180003ff (size 0x00000008) 180003f8.serial@180003f8.of
  0x1e000000 - 0x1e3fffff (size 0x00400000) 1e000000.flash@1e000000.of
  0x1f000900 - 0x1f00093f (size 0x00000040) 1f000900.serial@1f000900.of
  0x1f000b00 - 0x1f000b1f (size 0x00000020) 1f000b00.gpio@1f000b00.of
  0xa0000000 - 0xafffffff (size 0x10000000) kseg1_ram0
    0xafb39000 - 0xafb3ffff (size 0x00007000) stack
    0xafb40000 - 0xaff3ffff (size 0x00400000) malloc space
    0xaff40000 - 0xaffa3fdf (size 0x00063fe0) barebox
    0xaffa3fe0 - 0xafff249f (size 0x0004e4c0) barebox data
    0xafffa4a0 - 0xafffe60b (size 0x0000416c) bss
barebox@qemu malta:/ =



barebox@V2P-CA9:/ iomem
0x00000000 - 0xffffffff (size 0x00000000) iomem
  0x10004000 - 0x10004fff (size 0x00001000) amba
  0x10005000 - 0x10005fff (size 0x00001000) amba
  0x10006000 - 0x10006fff (size 0x00001000) amba
  0x10007000 - 0x10007fff (size 0x00001000) amba
  0x10009000 - 0x10009fff (size 0x00001000) amba
  0x1000a000 - 0x1000afff (size 0x00001000) amba
  0x1000b000 - 0x1000bfff (size 0x00001000) amba
  0x1000c000 - 0x1000cfff (size 0x00001000) amba
  0x10011000 - 0x10011fff (size 0x00001000) amba
  0x10012000 - 0x10012fff (size 0x00001000) amba
  0x10017000 - 0x10017fff (size 0x00001000) amba
  0x1001f000 - 0x1001ffff (size 0x00001000) amba
  0x10020000 - 0x10020fff (size 0x00001000) amba
  0x40000000 - 0x43ffffff (size 0x04000000) 40000000.flash@0,00000000.of
  0x44000000 - 0x47ffffff (size 0x04000000) 40000000.flash@0,00000000.of
  0x60000000 - 0x9fffffff (size 0x40000000) ram0
    0x6fefe1c0 - 0x7fdfc37f (size 0x0fefe1c0) malloc space
    0x7fdfc380 - 0x7fdfffe3 (size 0x00003c64) board data
    0x7fe00000 - 0x7fe5749f (size 0x000574a0) barebox
    0x7fe574a0 - 0x7feabb9f (size 0x00054700) barebox data
    0x7feabba0 - 0x7feae90f (size 0x00002d70) bss
    0x7ffe8000 - 0x7ffeffff (size 0x00008000) stack
barebox@V2P-CA9:/ =




-- =

Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

