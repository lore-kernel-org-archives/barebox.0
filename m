Delivery-date: Tue, 10 Dec 2024 12:48:13 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tKyir-006MVQ-0K
	for lore@lore.pengutronix.de;
	Tue, 10 Dec 2024 12:48:13 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tKyiq-00032o-VC
	for lore@pengutronix.de; Tue, 10 Dec 2024 12:48:13 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=EalUHVJlyJmlV05NYqVvSbV6BVQWzei7HLjG+w9Qq7o=; b=quDGH2ogFm8dPFMv1cFNBDvR4l
	LCInHAd676nQxcjfFg5Dlg7sjccvPrh9+AcKiYBoykqnvBOK+TsCi8z+/Mz0OeuILIyoifdMG2qQC
	aIwh+XOHq2XumO3dgd/BnidvKYDKg1aTkY+Ab4gAxDhOn6UXcasqkuXwdbUyCBT9ri3QkvdA/2r89
	aTf7y4x0xw45M4UwgSNTJasTQHR8CCCXpyAQLi/gwQaiyC/pzdPuc6Ih5EQkQXmmA3re5tE+1xEae
	AoOcrkRXFnkdYoY0scGLhPvArkmPTLbdNvhoZ3ASjvjFJE2YWCxCnlS2Rtgjt7orWqe7XKPJ5COdN
	uX7q7Vhw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tKyiJ-0000000BLs3-135I;
	Tue, 10 Dec 2024 11:47:39 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tKyiF-0000000BLrN-22WX
	for barebox@lists.infradead.org;
	Tue, 10 Dec 2024 11:47:37 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1tKyiD-0002uX-Fx; Tue, 10 Dec 2024 12:47:33 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1tKyiC-002gLT-1H;
	Tue, 10 Dec 2024 12:47:33 +0100
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1tKyiD-008UhM-0G;
	Tue, 10 Dec 2024 12:47:33 +0100
Date: Tue, 10 Dec 2024 12:47:33 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Alexander Shiyan <eagle.alexander923@gmail.com>
Cc: Barebox List <barebox@lists.infradead.org>
Message-ID: <Z1gqVVWyhdjB-u9w@pengutronix.de>
References: <CAP1tNvQXh3sQz8exOva9oY-XFUh0ULrSuuAA5fNrCREdw8cxAA@mail.gmail.com>
 <Z1MJPVfJY7v2vEgL@pengutronix.de>
 <CAP1tNvSEpZ_==v4o0Om_vCBoN3iuGGu8Qr1SxGxRy4NqCzOB4A@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAP1tNvSEpZ_==v4o0Om_vCBoN3iuGGu8Qr1SxGxRy4NqCzOB4A@mail.gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241210_034735_522363_D408F8CF 
X-CRM114-Status: GOOD (  15.23  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: memtest failed for rk3588
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Tue, Dec 10, 2024 at 02:29:59PM +0300, Alexander Shiyan wrote:
> Hello.
> 
> The dump does not cause a crash, but the output is very strange:
> 
> barebox@Diasom DS-RK3588-BTB-EVB:/ md 0x3fc000100
> 3fc000100: 940033fd b0000060 39477ea1 91274c00               .3..`....~G9.L'.
> 3fc000110: 17ffffe2 91404001 b9428020 37f80180               .....@@. .B....7
> 3fc000120: b9428020 32010000 b9028020 52800020                .B....2 ... ..R
> 3fc000130: b9420822 32000042 b9020822 b9420822               ".B.B..2"...".B.
> 3fc000140: 521c0042 b9020822 d65f03c0 52800000               B..R"....._....R
> 3fc000150: 17fffff8 91404000 34000081 b9428001               .....@@....4..B.
> 3fc000160: 12007821 b9028001 b9420801 121f7821               !x........B.!x..
> 3fc000170: b9020801 b9420801 521c0021 b9020801               ......B.!..R....
> 3fc000180: d65f03c0 d37b7c21 71000c5f 8b010000               .._.!|{._..q....
> 3fc000190: 528aaaa1 72bdddc1 f9400400 b900ac01               ...R...r..@.....
> 3fc0001a0: 529dddc1 72aaaaa1 b90a7c01 b94a2401               ...R...r.|...$J.
> 3fc0001b0: 321c0021 b90a2401 b94a2403 12147463               !..2.$...$J.ct..
> 3fc0001c0: 54000300 52808001 1ac22022 2a030042               ...T...R" ..B..*
> 3fc0001d0: b90a2402 b94a2401 32000021 b90a2401               .$...$J.!..2.$..
> 3fc0001e0: b94a2401 360fffe1 b94a2401 121f7821               .$J....6.$J.!x..
> 3fc0001f0: b90a2401 b94a2401 12147421 b90a2401               .$...$J.!t...$..
> barebox@Diasom DS-RK3588-BTB-EVB:/ md 0x3fc000200
> 3fc000200: xxxxxxxx xxxxxxxx xxxxxxxx xxxxxxxx               ................
> 3fc000210: xxxxxxxx xxxxxxxx xxxxxxxx xxxxxxxx               ................
> 3fc000220: xxxxxxxx xxxxxxxx xxxxxxxx xxxxxxxx               ................
> 3fc000230: xxxxxxxx xxxxxxxx xxxxxxxx xxxxxxxx               ................
> 3fc000240: xxxxxxxx xxxxxxxx xxxxxxxx xxxxxxxx               ................
> 3fc000250: xxxxxxxx xxxxxxxx xxxxxxxx xxxxxxxx               ................
> 3fc000260: xxxxxxxx xxxxxxxx xxxxxxxx xxxxxxxx               ................
> 3fc000270: xxxxxxxx xxxxxxxx xxxxxxxx xxxxxxxx               ................
> 3fc000280: xxxxxxxx xxxxxxxx xxxxxxxx xxxxxxxx               ................
> 3fc000290: xxxxxxxx xxxxxxxx xxxxxxxx xxxxxxxx               ................
> 3fc0002a0: xxxxxxxx xxxxxxxx xxxxxxxx xxxxxxxx               ................
> 3fc0002b0: xxxxxxxx xxxxxxxx xxxxxxxx xxxxxxxx               ................
> 3fc0002c0: xxxxxxxx xxxxxxxx xxxxxxxx xxxxxxxx               ................
> 3fc0002d0: xxxxxxxx xxxxxxxx xxxxxxxx xxxxxxxx               ................
> 3fc0002e0: xxxxxxxx xxxxxxxx xxxxxxxx xxxxxxxx               ................
> 3fc0002f0: xxxxxxxx xxxxxxxx xxxxxxxx xxxxxxxx               ................

See:

| commit d8a6e1c2662aad2f5d9b4050a276b8e6b9fbb3b1
| Author: Jan Luebbe <jlu@pengutronix.de>
| Date:   Sun Aug 3 17:51:38 2014 +0200
| 
|     ARM/mem: handle data aborts gracefully for md
| 
|     Sometimes memory ranges contain inaccessible registers which trigger a
|     data abort when accessed. To handle this gracefully, we extend the data
|     abort exception handler to ignore the exception when configured to do
|     so.
| 
|     This allows detecting inaccessible memory from the md command. It will
|     show XX for unreadable bytes instead.

I don't know why you get a data abort here. The answer is probably
somewhere in the DMC section of the RK3588 reference manual.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


