Delivery-date: Tue, 14 Sep 2021 21:24:12 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mQE2N-0002yS-W8
	for lore@lore.pengutronix.de; Tue, 14 Sep 2021 21:24:12 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mQE2M-0006DP-V7
	for lore@pengutronix.de; Tue, 14 Sep 2021 21:24:11 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=D4GDptFGx2/NKiUUlDoIRy1SuOJiQ/lAmu1w77eu3gE=; b=s3GtcSe3pSbu5W
	wQs9rdqLjzEavET53MJyGVU2aDWxmf2EmYYSVJdlt8PP5uzzwf7/INX2nORKC22UiRMqhk6sY6BWB
	CQOx1qKPr/YgEddswCS4tgyrR/hVNdahlvF1jfV0qF6Yd/CejnN3OsIClB4dbgx10Qbd0+GmuojLJ
	W7OGizGlIgujn+Yw3ywQ+31RYlsU5sIcArkKAZ54TvY15OGb6cldl77RobPCRsf12LpBz84JLa/i2
	zMqsrKGNHPzPVlge0fZPqM34rzX0+Bls14JKSCfy54QffpfwbcLCCg95cFrqizZLEfppK5spNRpXq
	WEpQy5cVRAoANv3xhXHQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mQE0w-006uYk-FU; Tue, 14 Sep 2021 19:22:42 +0000
Received: from mail-lf1-x130.google.com ([2a00:1450:4864:20::130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mQE0r-006uYK-KY
 for barebox@lists.infradead.org; Tue, 14 Sep 2021 19:22:38 +0000
Received: by mail-lf1-x130.google.com with SMTP id p29so615236lfa.11
 for <barebox@lists.infradead.org>; Tue, 14 Sep 2021 12:22:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=igorinstitute-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=1y+oH1pEsZlK6ppVnQn4OYCzNdTPPm4OLHCFYUUcWNA=;
 b=cvxDYYsC5k2EUWS9J8ZGSt3j7tUs0alojI3cRYp+LSGnOZaXBNQB9O4eBhA0QXDHtp
 vatkyMmuEOcvv8I9PdKqUs+dfP2NH0Iic5mDoydSiMMi3FIG4CN3uEMtuKjsuwgOC2EH
 0AnLIwxVV26EMyfuneiKMuwFeca8YUHusrx17HpdvZ1yxyLKYjuTGghBTZGb8oiHTe48
 wBnfsyxbeHGZl4dl3Sp+mfOe4zNF6REU6svg6uCetph/caeeEtp8u3fl2RsLDMmLZtG4
 SrTF0/ZKKuNb8g+PhPNmM3pSWwG961u/AOD1u9lHV93gG/000aMHgXAlhzUNyGUnBo44
 sOCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=1y+oH1pEsZlK6ppVnQn4OYCzNdTPPm4OLHCFYUUcWNA=;
 b=MXmT8SYjntmCnd7tlIcaaXMfpXLIaazX/sptz6kNungiFuKBgxKCE/FyMvV1Y4wU1M
 uC5+9F/ndrvXmh066/HkaGdA1UQ8EBK9RISkqoz2mVYpFd2DVgStdkmNi6B8TjW90Ev8
 jmnIhd6ZXe/l1Uyn8uk8CbVE2xB/OxCunMfs/VLF+F57X5BWN3GVERx8xJpZdC4dYkf5
 pZrxQ5EB/DA2XR6xR66/SE/z5ZMqsQqNDsqWCkNEabWk0/7T3zaTuzjbwDzvLmx/EK+c
 SW16MS2yU3RyjI77+NTJ+zb0dwYZwhDgNQifYPO93h57ddzZQdBbVnlEnAYZ/B6oWbc3
 whgA==
X-Gm-Message-State: AOAM532CqO1xI1DKbY4Bx9/Yvl1t3FpurKF0zE9jbUffOIR7kGwc9+P0
 2iWd9ZyHALrrJNnZmDik9afEg6Lst5a2VrhSXTF2SA==
X-Google-Smtp-Source: ABdhPJzt5jkVRtZq2Wj2A+2B/4FBmNjkIesIR/kKGjGpssmW2MBzSjiiKWqiyFdXqPpI/QlIp9fHxUosuGs5UdeCyLs=
X-Received: by 2002:ac2:5387:: with SMTP id g7mr14596198lfh.541.1631647355844; 
 Tue, 14 Sep 2021 12:22:35 -0700 (PDT)
MIME-Version: 1.0
References: <20210914132016.22572-1-a.fatoum@pengutronix.de>
 <20210914132016.22572-3-a.fatoum@pengutronix.de>
In-Reply-To: <20210914132016.22572-3-a.fatoum@pengutronix.de>
From: Trent Piepho <trent.piepho@igorinstitute.com>
Date: Tue, 14 Sep 2021 12:22:25 -0700
Message-ID: <CAMHeXxMyGYAM=TSE=V9h8jnkO8rmDE-e5axKeCwURvqcYoG63A@mail.gmail.com>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>, ejo@pengutronix.de,
 rhi@pengutronix.de, uol@pengutronix.de, renaud.barbier@abaco.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210914_122237_726573_AA30BDB3 
X-CRM114-Status: GOOD (  13.97  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 3/4] scripts: unify libusb.h inclusion
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Tue, Sep 14, 2021 at 6:21 AM Ahmad Fatoum <a.fatoum@pengutronix.de> wrote:
>
> I've also run into downstream patches around broken toolchains that
> change <libusb.h> to <libusb-1.0/libusb.h>, so the header is found.

How does this become a problem exactly?  If the toolchain has the file
in the location <includedir>/ibusb-1.0/libusb.h, then shouldn't
pkg-config --cflags have returned -I<includedir>/libusb-1.0 and it
would then find the file just fine?

Or is the problem really that the cross building setup does not have
correct .pc files?

If it's the latter, then I'll point out that my previous email would
let someone put CROSS_LIBUSB_CFLAGS=-I<cross-include-dir>/libusb-1.0
on the make command line and get a build without having .pc files.
This is pretty much what you get with autoconf configure scripts when
you put headers in a non-standard place and don't have .pc files setup
to find them.  You need to supply CFLAGS, LDFLAGS, etc. variables with
the proper -L and -I options to find them.


> +++ b/scripts/libusb.h

By naming this libusb.h, it requires that "libusb.h" find this file
and <libusb.h> find a different header of the same name.  That's
certainly possible by being careful with the "" and <> search paths.
But it seems unnecessarily fragile.  I suggest using libusb-wrapper.h
for this file so you avoid name collisions with the real header file.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

