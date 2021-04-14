Delivery-date: Wed, 14 Apr 2021 09:53:27 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lWaL1-0000ay-GQ
	for lore@lore.pengutronix.de; Wed, 14 Apr 2021 09:53:27 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lWaL0-00022d-Ji
	for lore@pengutronix.de; Wed, 14 Apr 2021 09:53:27 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=0FYKUx3cy0UV/d2zfHOe5iL8KM+bi9olhqdFpEUk9Ck=; b=DTr7KwdzghddTWAr2308Qcgah
	tBhG3ia0zvVyp1WxOAF6hBbXCFnc7lKL5r+osfDimdvfqMO6vcLZJlqy85S+wbkSZAVurf60hFigR
	xSdso83bppRuLZ8QngdVhpAIQWL4qhQpTJJJEJ+ofAzRrPByju+8ZeijIdjDWcm57Hh2l2ePgGT7f
	cNRxTCosc1MvRsebAlbzxLInregthTuzfFdzUlAG49nccGQRIIfx8xCf4cxAyN8tdChp37nLTarkx
	45N5+5rHt+inYMpnMYcTF7ywv/gGM+XKYRPksNVIi3VlD2wMvUCQGhvrYQQOgV0r59CxsfgUL6/EA
	OUHiMf81Q==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lWaJn-00BtMs-Ri; Wed, 14 Apr 2021 07:52:12 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lWaJZ-00BtL3-34
 for barebox@desiato.infradead.org; Wed, 14 Apr 2021 07:51:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=In-Reply-To:Content-Type:MIME-Version
 :References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=uPxPDT+42pJzadPnbNw+QIN+llMGiaYqmbDTztNFG5s=; b=dF3U6q/NmF4AJI5BUZ996kmcbk
 MBrSX9/VEcMN5vmj7vsAljM5Sy/PETHRFzdHhXKZh3UhuAzXnsmt+l94zVjAdTgL1uyZiTcG+msJU
 1W54MI9uR59ZvTSJLJxwqyNj1xBbfRuOoaP8RhYoA//lszAyAePSTW9D7JGzTDf5wCnagTEy3ZgMW
 J78DiOu4kon/gXWOt6oGWGYJh0E29dAw+XiSOEC1ieMs4bsWqW15NyGNWjnZpKCU5xEF4JXSdlP5Z
 +rfQxMwxYVxQxep+Ee/4RQvcFOxwlpkjmS7lgNbOIc+clrhG9TomKJ+Hles3G9w4pgZu8udxbiZzT
 2avkUpVA==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lWaJW-007aJU-9l
 for barebox@lists.infradead.org; Wed, 14 Apr 2021 07:51:55 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lWaJU-0001vN-5P; Wed, 14 Apr 2021 09:51:52 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lWaJT-0005Dg-Rf; Wed, 14 Apr 2021 09:51:51 +0200
Date: Wed, 14 Apr 2021 09:51:51 +0200
From: Sascha Hauer <sha@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Lars Pedersen <lapeddk@gmail.com>, barebox@lists.infradead.org,
 Bruno Thomsen <bruno.thomsen@gmail.com>
Message-ID: <20210414075151.GR19819@pengutronix.de>
References: <20210413061727.186938-1-lapeddk@gmail.com>
 <20210413092340.241337-1-lapeddk@gmail.com>
 <20210413134048.GO19819@pengutronix.de>
 <b95f7406-03a3-f7ea-43bf-8731ed5046dd@pengutronix.de>
 <20210414070830.GQ19819@pengutronix.de>
 <be3811aa-ae66-e92b-12d8-5f1e30813159@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <be3811aa-ae66-e92b-12d8-5f1e30813159@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 09:51:21 up 55 days, 11:15, 100 users,  load average: 0.14, 0.19,
 0.17
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210414_005154_355632_9C3893B7 
X-CRM114-Status: GOOD (  18.73  )
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
X-Spam-Status: No, score=-2.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] ARM: i.MX: Fix Kamstrup mx7 concentrator default cfg
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Wed, Apr 14, 2021 at 09:15:04AM +0200, Ahmad Fatoum wrote:
> Hi,
> 
> On 14.04.21 09:08, Sascha Hauer wrote:
> >> If a board deems reset important enough to force it when enabled,
> >> why not?
> > 
> > With that reasoning you could enable each and everything from a board. I
> > don't think that's a path we want to go.
> 
> Hmm, okay. It could go into the defconfig though, if Lars wants to.

Indeed, and I recommend doing so.

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

