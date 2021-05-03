Delivery-date: Mon, 03 May 2021 14:03:44 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ldXIe-00037a-7r
	for lore@lore.pengutronix.de; Mon, 03 May 2021 14:03:44 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ldXId-0002N8-Gt
	for lore@pengutronix.de; Mon, 03 May 2021 14:03:44 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=St7XqALYiGvPBZtgSa/6mqqZo5R93TCE5cDZzrAmKt4=; b=gP2as1XmH4CgyCI/B3f5De8YI
	/WNNqRMIHaUCJX0WRxxPlJ172wqVPAJtq41kjMKQnoyjf+NGN2FezjlQgsHbcEWYHh6kufbOgx5kY
	/6cFpZDwjJTxDlKyQ31zX0/TMABCXtCZIyU0XkOb1GkMzWxRjuTMlAT3PKQJSCeTaAn5jVPbH/I5L
	MGgr31vyBGqUFp5Zc3hKNJtkV7aRrYO/Rtu/zPDfhhjLZ/p7VfViZ9WxdTExwbwPQgdIkp/IATmj6
	OuzEc1ERglI3zXGrkCEq2IYnq2dXldwlIEeterRNPXizRJZjRnnIL9S9kzGWRgX0ISeQGSTruPSvN
	p/U10T2eg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1ldXHV-00DovB-Gv; Mon, 03 May 2021 12:02:33 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1ldXH8-00Doui-IL
 for barebox@desiato.infradead.org; Mon, 03 May 2021 12:02:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=In-Reply-To:Content-Type:MIME-Version
 :References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=UzevDTWN+dwNIJLdYQQ26ktR9XR/E0uzlcQMR1UOLOY=; b=vUWHejOf7XX6MDRaPxUWAzB8MR
 zUZ01YbbSaqeDetk+nmdC1AdFJvrVPpoBzgQbO1UrdZ8AEX0zeFs3MXE7/7Tm4TanUYrmRkCLOWJg
 nO3Q1vNPWwyGyQlSlRCUVhNbvnSv9w3RwrvLbxK/UKoYd42qhlarZA4YqY080WAOXczbgH+KbWP6C
 3jwdSmlLQrMOb3E1TWVQbbU+lFySLaDml6K77Z6PabSMtc2YWg+YiGV7Q94vFUDBjGSSMFSjBzczm
 bz/vdxkJHHgCgreHRU6TSDP90iOH/gr4ozz+EowafO1dBHWPMNI8bGU64yb0qQ4A8PaWDx6R/TjZQ
 3314XW4g==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1ldXH5-0032PE-V7
 for barebox@lists.infradead.org; Mon, 03 May 2021 12:02:09 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1ldXH4-0002HQ-BJ; Mon, 03 May 2021 14:02:06 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1ldXH4-0003SQ-1s; Mon, 03 May 2021 14:02:06 +0200
Date: Mon, 3 May 2021 14:02:06 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org,
 Uwe =?iso-8859-15?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Message-ID: <20210503120206.GH19819@pengutronix.de>
References: <20210416091404.92251-1-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210416091404.92251-1-antonynpavlov@gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 14:01:55 up 74 days, 15:25, 100 users,  load average: 0.30, 0.18,
 0.13
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210503_050208_025899_64C5BD8D 
X-CRM114-Status: GOOD (  20.03  )
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
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] scripts/spdxcheck.py: Use Python 3
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Fri, Apr 16, 2021 at 12:14:04PM +0300, Antony Pavlov wrote:
> Based on this linux kernel commit:
> 
> > commit d0259c42abff51b586496a0594933e394efefbc5
> > Author: Bert Vermeulen <bert@biot.com>
> > Date:   Thu Jan 21 09:54:12 2021 +0100
> >
> >    spdxcheck.py: Use Python 3
> >
> >    Python 2.x has been officially EOL'ed for some time, and in any case
> >    the git module for it is hard to come by.
> 
> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
> ---
>  scripts/checkpatch.pl | 4 ++--
>  scripts/spdxcheck.py  | 2 +-
>  2 files changed, 3 insertions(+), 3 deletions(-)

Applied, thanks

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

