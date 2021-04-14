Delivery-date: Wed, 14 Apr 2021 07:56:12 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lWYVY-0000Uj-ND
	for lore@lore.pengutronix.de; Wed, 14 Apr 2021 07:56:12 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lWYVY-0005FR-0j
	for lore@pengutronix.de; Wed, 14 Apr 2021 07:56:12 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Mime-Version:Message-Id:Subject:Cc:From:Date:
	Reply-To:To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=87b+VQ5wGPsNlN6ID/xxGQ5YBZ1Nm6YKFS+zwXwUYKE=; b=bPeJJ1mBG2W5wN
	GKtV0tgvp7EF4Kc8jmtPBfx2/eEgClQdJRSFLJ/DT/chGnDLEFEFVeOjEju48y23Ta8XLrTM4avt2
	Nzw38PRDaW5h+PdtOyqO0i4lgVxqTI4bZTBoecHAyIvl4DWvHecs/XxkUeMG6g3uGU/1ILpQcwOvl
	k6z1OF0dAMF/s3J2IIccZdgLdRPAKPGtcGI/RcgiJCVHtxAcAtr1/i7ZeCMTWbd04jDJjhcj85X+0
	4GJB/O/wSbRaitMlG/4Bhv+806d8leXkhuBQUTFIAV4ZixUruCRAiDl6Vj2gsfxUOOe8jSfjxhVIq
	82fZtuBKpBUR9kfCczsg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lWYU4-00Baai-SO; Wed, 14 Apr 2021 05:54:41 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lWYTr-00BaZk-UA
 for barebox@desiato.infradead.org; Wed, 14 Apr 2021 05:54:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 Content-Type:Mime-Version:Message-Id:Subject:Cc:From:Date:Sender:Reply-To:To:
 Content-ID:Content-Description:In-Reply-To:References;
 bh=66NU4R7qE1gJor9ztWmLDM3BHGWYH3RA7fdYwLYJUzY=; b=M26lrHKXVlk+4DPDy4QzzMXTY/
 qvhMeU9MC44Rz6s4XPg6o7VTy55SUzacJCa1B4k2NT6v1CqstDgIW6LYbbl9Qk6+EwBBzBCs5UY0I
 wJLiws59Q+5RWp0a7T9kRGgjJ1LDgN6RO7sxl1edauEMks+6912e041g2AYZQwfhQU3c8iV0L5pCD
 hJjTXiH/4lmQIpY90MUVZwVdjcY3qSbZxgGmt78Mhx8knXnXUQn6wDOKGtytrtpsDewKFr+DMj2cq
 mIzaCgC1WGok57EU2iq1H+cqB/zkMq775XgD8ezJEMur10vIPQOl4XrGUaNJhhsfgWCRxaxQ2ocFb
 dGeRaSSQ==;
Received: from mail-lf1-x129.google.com ([2a00:1450:4864:20::129])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lWYTp-007VWJ-Fd
 for barebox@lists.infradead.org; Wed, 14 Apr 2021 05:54:26 +0000
Received: by mail-lf1-x129.google.com with SMTP id w8so22685403lfr.0
 for <barebox@lists.infradead.org>; Tue, 13 Apr 2021 22:54:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:cc:subject:message-id:mime-version
 :content-transfer-encoding;
 bh=66NU4R7qE1gJor9ztWmLDM3BHGWYH3RA7fdYwLYJUzY=;
 b=jIlgUCmeEWu6YmD3oWiVc3tmrhqagMr2e9PXoXy4QigD0fvLOp1esjgSpl2YNFZ1Wi
 r0yGEvucwssbktaZbSQGwpVsGxuk/RxTz6OBN/eTfMtsQZRNiaUuRuTe5wO0KkrHzFE8
 yRYkSpSmHOMRwPX124bMljj4pb1ma1eUoNxHr0VQe7y+kQ6PKtMbGD6fI/IQ6TfxFBOI
 10y/WL+P/3mznMd1Uwts0uet3AzfBsLDpla3MXGqb3Ueu0+UfdayimlryMWiKxWgKvBN
 /e/lI7EtwelvnTi66yzi5SAxZ7ul/Q+O0dTq8WzPx4g2Q6uLVjZV6IV8r4StQWeet3rH
 lQxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:cc:subject:message-id:mime-version
 :content-transfer-encoding;
 bh=66NU4R7qE1gJor9ztWmLDM3BHGWYH3RA7fdYwLYJUzY=;
 b=nZRpm0OWRyzB3mc9vfY+pKK4wl7OQqMKRtMO2aOhkq/Lr3PNtNRpzgFK2ZbjUZGs5a
 cU1xb8lD1eMLRRirHWk/vvzfPNhG7b1drgTu6TX97seDgOOnWGbhAzeFEWOWzN07NPL/
 L8gbyUy4G0Z7+7+lyr5cyCso2GUEEymEPqQEvIolhw09DGD4U5ZCbT9R/J0zNy0m1asc
 8Y6j37JFEFMJhpWNQe8rp6logn2xiWx0RUb8FDmYFCCTsWiSCeM742ES3OxrtQe2QJoe
 sa4dmeRwl2KX3p8AQ7piCxWSC8Wms/AGDhMLQkBCt82DWme6gD8grHSUh+ca1hrO9mv2
 +/AQ==
X-Gm-Message-State: AOAM531KJSk2CtTqA1+ECJeIFhREoFHrbj5MIJS9jA51iHXYtM3g7boJ
 JH+r4wvuWnWD3x2d8z84SU8dv8wUolYPEw==
X-Google-Smtp-Source: ABdhPJwAonESzZuuidlpzPrwXwt8no2v5zMHxyId7Mg5SZyB7Ir5m6DTfE2/3hBs7fPYO7+gStK3jg==
X-Received: by 2002:ac2:5f19:: with SMTP id 25mr26280992lfq.328.1618379663050; 
 Tue, 13 Apr 2021 22:54:23 -0700 (PDT)
Received: from flare (t35.niisi.ras.ru. [193.232.173.35])
 by smtp.gmail.com with ESMTPSA id d15sm3659338lfs.21.2021.04.13.22.54.22
 for <barebox@lists.infradead.org>
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 13 Apr 2021 22:54:22 -0700 (PDT)
Date: Wed, 14 Apr 2021 08:54:22 +0300
From: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org
Message-Id: <20210414085422.ea70e3d7a89787a1ceda4b2c@gmail.com>
X-Mailer: Sylpheed 3.7.0 (GTK+ 2.24.32; i686-pc-linux-gnu)
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210413_225425_559353_C7B81A02 
X-CRM114-Status: UNSURE (   6.08  )
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
X-Spam-Status: No, score=-1.2 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	MALFORMED_FREEMAIL,MISSING_HEADERS,SPF_HELO_NONE,SPF_NONE autolearn=no
	autolearn_force=no version=3.4.2
Subject: RISC-V: erizo: large gap between bss and stack regions
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi Ahmad!

Here is the iomem command output on erizo:

barebox:/ iomem
0x00000000 - 0xffffffff (size 0x00000000) iomem
  0x80000000 - 0x807fffff (size 0x00800000) ram0
    0x804ffd00 - 0x805ffcff (size 0x00100000) malloc space
    0x805ffd00 - 0x805fffe6 (size 0x000002e7) board data
    0x80600000 - 0x80636b1f (size 0x00036b20) barebox
    0x80636b20 - 0x8063ec9b (size 0x0000817c) barebox data
    0x8063ec9c - 0x80643147 (size 0x000044ac) bss
    0x807e0000 - 0x807fffff (size 0x00020000) stack
  0x90000000 - 0x9000001f (size 0x00000020) 90000000.uart@90000000.of
  0x91000000 - 0x91000003 (size 0x00000004) 91000000.gpio@91000000.of
  0x91000004 - 0x91000007 (size 0x00000004) 91000000.gpio@91000000.of

I see large unused region between bss and stack regions (>1600 Kbytes).

For comparrison, the regions on mips malta are packed much more closely:

barebox@qemu malta:/ iomem
0x00000000 - 0xffffffff (size 0x00000000) iomem
  0x180003f8 - 0x180003ff (size 0x00000008) 180003f8.serial@180003f8.of
  0x1e000000 - 0x1e3fffff (size 0x00400000) 1e000000.flash@1e000000.of
  0x1f000900 - 0x1f00093f (size 0x00000040) 1f000900.serial@1f000900.of
  0x1f000b00 - 0x1f000b1f (size 0x00000020) 1f000b00.gpio@1f000b00.of
  0xa0000000 - 0xafffffff (size 0x10000000) kseg1_ram0
    0xafb39000 - 0xafb3ffff (size 0x00007000) stack
    0xafb40000 - 0xaff3ffff (size 0x00400000) malloc space
    0xaff40000 - 0xaffa417f (size 0x00064180) barebox
    0xaffa4180 - 0xafff263f (size 0x0004e4c0) barebox data
    0xafffa640 - 0xafffe7ab (size 0x0000416c) bss

-- =

Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

