Delivery-date: Mon, 06 Dec 2021 09:54:21 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mu9lN-0008Or-SW
	for lore@lore.pengutronix.de; Mon, 06 Dec 2021 09:54:21 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mu9lM-00006m-UX
	for lore@pengutronix.de; Mon, 06 Dec 2021 09:54:21 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=iDbpNQqz8LA1w0ufpztZZlnpvZsxMCHegKKEoCrxH9I=; b=hua/lGiy7SxTCYQ7uY/OIXf0x4
	FqbA/RR1dUIWewchrN6J+JM0lHRv1ZhKLL9DyAazFTR6jSahF/HmDyvXopf92xhvUikSG4FAREiqZ
	mnWmvpw5KLgD2yxdgF5Bbwx7nJ5x5ckyRc2kV5hSsgDBA6oqf9fNz8AQQ6/c52fDVrBK4dHEsrrWQ
	BhOM36ehgZqK2FvExdMuF4VZY3ARtG4W5vyQefQtHqC6L5bTXaJpS8q3M3PDJN2eHPshfsr5ZuOoc
	7IRcyxsmxnMPrJrFBFB7GZJFxqZgSQKE4s+B4IaywDlIBB3I2djrzF17SAw9RKo32LR74ae2LIUd8
	bYi5pQzg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mu9ju-0032vh-P1; Mon, 06 Dec 2021 08:52:50 +0000
Received: from mail.inside-m2m.de ([188.68.57.244])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mu9jp-0032ug-E0
 for barebox@lists.infradead.org; Mon, 06 Dec 2021 08:52:46 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.inside-m2m.de (Postfix) with ESMTP id 2D43140266;
 Mon,  6 Dec 2021 09:52:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=inside-m2m.de;
 s=default; t=1638780763;
 bh=thlPkvYchJWXAwwJPwP8sq+zmIhdkRJbXdQDoXh3P/I=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=NCwLXQWc8v99ZxqAHRJBz+XRT+imakTg8UbKw1Vh/Oyw3ALL0vAUe5AXbUfogF8xG
 5q6EqzbAIkf+bmeGC3vflou4NkdKj2mzVp/EiPsyPoUGTrs9L31uHF7teOa56Pj7Lj
 Ny9/HWe1O00AO2zQtlP77T/NbpRXlsxDr+1WVyUBxkJ9Vxc7/OahljR0n5sdgjqOrS
 WTmzME7HsigE1EjV+Ukq4zmOeVn+/NpddYVd/pGNthIpy4GR2yURRe6CfcC4MrNjmE
 3OEbG8NrE9IhsprW/UanTzJ9bftK1hrKO4KgZ4NjJIfhtaCzbYIcVygmXTSNAH9EnX
 HZJcubr8pfWuw==
X-Virus-Scanned: Debian amavisd-new at mail.inside-m2m.de
Received: from mail.inside-m2m.de ([127.0.0.1])
 by localhost (mail.inside-m2m.de [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1GtZHX3Q-zkg; Mon,  6 Dec 2021 09:52:42 +0100 (CET)
Received: from mail.inside-m2m.de (mail.inside-m2m.de [188.68.57.244])
 (Authenticated sender: konstantin.kletschke@inside-m2m.de)
 by mail.inside-m2m.de (Postfix) with ESMTPSA id CDEF2400D4;
 Mon,  6 Dec 2021 09:52:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=inside-m2m.de;
 s=default; t=1638780762;
 bh=thlPkvYchJWXAwwJPwP8sq+zmIhdkRJbXdQDoXh3P/I=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=Be2EdduVuihlXr2kv8GLUvc2Y1wh/MWxqUujV/KGLHNu1zFXZhETxUaGvBximOclp
 THmNHcvI1LTDrFKnmQBY7RVH1xyB9GDF7YPqhLSAQywHSVnJKdiHBZ9t5pQgJ8OrFY
 qmPAbRe5C6I4bdrJmFC+GpVk+AcpVmUu5BYlTVBxNym8lqyPtJ6sTC383jTsmfS8qs
 yyTKePQkYoVg/zYUckZmKGL43QiWP1oUI4onCuE4Vuehq/FQKI6mawea2UGKHmJu0k
 wZbKQbN31ktotzGVYSrKAZ5SvvbzfhtZ6G4PrULtV7NE+CNscF+vbJxelK9UTToMJq
 rkLcyQZO+eXBQ==
MIME-Version: 1.0
Date: Mon, 06 Dec 2021 09:52:42 +0100
From: Konstantin Kletschke <konstantin.kletschke@inside-m2m.de>
To: Roland Hieber <rhi@pengutronix.de>
Cc: Trent Piepho <trent.piepho@igorinstitute.com>, barebox@lists.infradead.org
Organization: Inside M2M GmbH
In-Reply-To: <20211205225529.5rf5zqpbg7trovst@pengutronix.de>
References: <9215c9815f25cc3328a05d6c9553ac36@inside-m2m.de>
 <CAMHeXxOoXjqtSGXdE73oROUk9ybFmFv7gi8PtzLsKn=iH+FXLA@mail.gmail.com>
 <20211205225529.5rf5zqpbg7trovst@pengutronix.de>
Message-ID: <53eacf7da01a5bf6aa14a949a469d10a@inside-m2m.de>
X-Sender: konstantin.kletschke@inside-m2m.de
User-Agent: Roundcube Webmail/1.3.0 
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211206_005245_655393_BF8D47E4 
X-CRM114-Status: UNSURE (   6.55  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: Howto implement bootchooser <-> rauc interaction
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 2021-12-05 23:55, Roland Hieber wrote:

> In short:  barebox state is meant to be read (and written) from the
> Linux world too, in contrast to the barebox env, which is only meant to
> be used by barebox itself.

Thanks for the clear statement, I wont mess with environment for that 
anymore :)

> You probably also want to delete your bootchooser variables from the 
> env
> so they don't cause confusion :-) You can inspect the state variables
> with 'devinfo state', and set them via 'state.variablename=value'. They
> should also show up in 'global'.

I will clear this up, I will check to move this into the state.* 
namespace.

Regards
Konsti

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

