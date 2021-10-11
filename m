Delivery-date: Mon, 11 Oct 2021 19:54:52 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mZzVk-0006wM-6F
	for lore@lore.pengutronix.de; Mon, 11 Oct 2021 19:54:52 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mZzVj-0005hP-6F
	for lore@pengutronix.de; Mon, 11 Oct 2021 19:54:51 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/J3dmzQ7FzH0y8WjgkpDa6vtCGkT+SXad2rW1zGRb5g=; b=BsAm296EGoiuLE
	QiLkHKzR8EUvvCCMaYASECWW0Me0NBEW0MsKnd6BlGJkdey6tZ1FpopHrZUxrKhRHd+1g0DR48m9O
	nQ+UVRLANr1Vblw12Jz0t7PbN5Y+FvidCDZ7Kv9yqnw5foRAtOo1hBP3CFHn3KMUcoY+KH0lkIL/Q
	gz4WMf73Rxe8iqQaIGx1hluW3Mpy3HRI0BfD/jOMd+0BKHzxPvGczN/kJY0BCmjeYn8DmfSseW0J4
	PlWt+41qmKFPyhYY9eYXZxVI2RRbVZUpRafJBozZKbEI1U24g5nY8igG2S1KjU+6s1GY0eJfgeajV
	f8LD7t5uznx7VL3mdbcQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mZzUU-00AIbD-8g; Mon, 11 Oct 2021 17:53:34 +0000
Received: from mail-lf1-x131.google.com ([2a00:1450:4864:20::131])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mZzUG-00AIYQ-QF
 for barebox@lists.infradead.org; Mon, 11 Oct 2021 17:53:22 +0000
Received: by mail-lf1-x131.google.com with SMTP id j21so59303387lfe.0
 for <barebox@lists.infradead.org>; Mon, 11 Oct 2021 10:53:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=igorinstitute-com.20210112.gappssmtp.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=8PGe9xvjH7RV81H10LzpjvdgQezztao4B3iUP/kxuHI=;
 b=ED7etfGkijNNywRiFPCaELdBfZLbbIPDMmkzEbNSMIHNcN1VUcA+yILBdtIBx69GMS
 zLtGvaF/bqQIi8wZCb0YmWl9qVKZu9b94LIgni44CTqwgeM4Ci4Ex7wiXaCG5beZzn6r
 do8dCCarIksMFccdXEpd3oH7igDQt5xUnHRW4CrAWCuepmDL9SmePqKFBHSCvCW5wH5n
 QxOX7urBF1PkaeJubrnzMQzWaiC5TgoMgLBFlrz9Q645TgqgAepZNeKRfaUg4y69YV6j
 vdQsPfDIaFiBbrygRLjgZbUtIukpR+svq42bZqZCJHn5NO1tab678KquPZFhd4oLRD7f
 5EsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=8PGe9xvjH7RV81H10LzpjvdgQezztao4B3iUP/kxuHI=;
 b=Esj3pODXyOS+/lbSiltUuygmPzX7M+oinhi5O0kdVAt9jDb1cfk4KiGFPnVChQZYET
 UU0ZWcoT1ftAkAF01BFdjiywwKMUsZm1XhRatOmyNMvYQ/Mn7OoIID4G2KSDjOPbARbb
 4hKC/xiBuGttAGI+E2lkSk08EDKOGgCNFcjuNX8DDQOK848wg5hsgETFwCzxD7uCBCRZ
 HdcR54F2C4mmmtrJdNo6onmgRZOsK3A68IRVbulLQKX+ZJqya2T+EhAiWNWWtH8XJRut
 TExeKWHfP8AkFnDcGjeHtKMX+uMeGSGyaA4A6Oak4IYhqafGSix/+BMizAbd2O7lwj3+
 anbw==
X-Gm-Message-State: AOAM533nMYqJaYU9ZSPvUJv8s3nEe3OZLshwLnYp0FueEkO32j4I9bQr
 O0cOjX6hOpgeIHgji/KQgaBFee4nbN9aIfAwHaUYQg==
X-Google-Smtp-Source: ABdhPJzo+h+5XxFguCEgb0nB+OjeVyhYbcLVh+kx0ZDiNoPa2p1Af+r6U4gPuLTfjH79cHfj/QKyXmxEfcNNpfu2pp0=
X-Received: by 2002:a2e:7616:: with SMTP id r22mr23639383ljc.241.1633974798284; 
 Mon, 11 Oct 2021 10:53:18 -0700 (PDT)
MIME-Version: 1.0
References: <20211011080346.37197-1-s.hauer@pengutronix.de>
 <20211011080346.37197-8-s.hauer@pengutronix.de>
In-Reply-To: <20211011080346.37197-8-s.hauer@pengutronix.de>
From: Trent Piepho <trent.piepho@igorinstitute.com>
Date: Mon, 11 Oct 2021 10:53:07 -0700
Message-ID: <CAMHeXxP1MycJ4zarcdc74BH9Wi9eiT+JFgbeYB12751FriKpLw@mail.gmail.com>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211011_105320_875445_31BBA844 
X-CRM114-Status: UNSURE (   8.46  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 7/9] ARM: rk3568: Detect USB boot
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, Oct 11, 2021 at 1:04 AM Sascha Hauer <s.hauer@pengutronix.de> wrote:
> @@ -151,6 +151,11 @@ static struct rk_bootsource bootdev_map[] = {
>         { .src = BOOTSOURCE_SPI_NOR, .instance = 0 },
>         { .src = BOOTSOURCE_SPI_NAND, .instance = 0 },
>         { .src = BOOTSOURCE_MMC, .instance = 1 },
> +       { .src = BOOTSOURCE_UNKNOWN, .instance = 0 },
> +       { .src = BOOTSOURCE_UNKNOWN, .instance = 0 },
> +       { .src = BOOTSOURCE_UNKNOWN, .instance = 0 },
> +       { .src = BOOTSOURCE_UNKNOWN, .instance = 0 },
> +       { .src = BOOTSOURCE_USB, .instance = 0 },
>  };

Instead of blank entries, one could do designated array initialization
(since BOOTSOURCE_UNKNOWN is 0):

static struct rk_bootsource bootdev_map[] = {
       [0x01] = { .src = BOOTSOURCE_NAND, .instance = 0 },
       [0x02] = { .src = BOOTSOURCE_MMC, .instance = 0 },
       [0x03] = { .src = BOOTSOURCE_SPI_NOR, .instance = 0 },
       [0x04] = { .src = BOOTSOURCE_SPI_NAND, .instance = 0 },
       [0x05] = { .src = BOOTSOURCE_MMC, .instance = 1 },
       [0x0a] =  { .src = BOOTSOURCE_USB, .instance = 0 },
};

I also like the way the register value shows up in the table.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

