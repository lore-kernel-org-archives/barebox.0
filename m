Delivery-date: Tue, 15 Jun 2021 20:47:42 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ltE6A-0004Jl-08
	for lore@lore.pengutronix.de; Tue, 15 Jun 2021 20:47:42 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ltE68-0002ko-Rv
	for lore@pengutronix.de; Tue, 15 Jun 2021 20:47:41 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:To:Date:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WmGYfNxBsx+TU1Pgml929E+89en1+7mj54pLkADBGYU=; b=4ZNLhBaip2a0Dy
	wYK6lAVc0n5TJBMmZU4hwSzRGDD+y5HQzXqNOIOqgeW1Ob/5V/CI35LLiKCt3tGsAJE1G0rpVX31s
	lqw/vtupmsw5ylrxlLVoZrg4IU4gLsw5xjIcklN377zyI6c4kEsRKr9Iy6D5Yki3P5gAbFwT+Hg3R
	KK2sDQYBYuUDE7B/6mg5Zij9leh5cnHlKgwBlM3QZhrhwRJHOEvZaPeJnZWTsy61CT6C0DVVTeTE5
	tYRLB1xEMiR0p+u1NLd/RXAJmqqroSaIy/V9yVKyN7r6vq7TWhVCXaNrqWIIBozoKb8ZNZU6ZBEmT
	ODCeNunPBcECdDAMJiEw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ltE4s-002DjG-Tj; Tue, 15 Jun 2021 18:46:23 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lt9IZ-000DEY-4X
 for barebox@bombadil.infradead.org; Tue, 15 Jun 2021 13:40:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=desiato.20200630; h=From:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=inIZsoQ12j3NTmaTeh/8lUMObPq2xRAHLr/OBol1sQ4=; b=QPB8hsQCqeny3YDpYwLKhRRZEv
 oBwP50rZlqDp0Iq54eGmepwf9znr3Thj6DZXM6ThdJevI9dpTGLFpbbxxRA+QRTIVU5jETMNbhpv6
 +nDFQ+yKJRC3Qhq9aOTbPGbFf0Dz83ccsPjbykFkopl9yKMXx5leroLw5qzTv8jQDH7Vm0K49dsJN
 DJ8YBEOE/oZuQhrV4YlQA+giAIsZ6T34oyw4Fvaj5zw++/b8Ysgl4Y+GWPem4P8oR/Mfx6U6tAKM0
 oniZSSBqqKPMYaJOmfYFSynRjun62tgZfFQzcrhTKT+M7r9oU2PBc3mz16IcvZfs0LIpjkXUCgNLI
 ZEwdf/eQ==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lt4v6-007XPq-Ee
 for barebox@lists.infradead.org; Tue, 15 Jun 2021 08:59:50 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lt4vC-0003kr-H5; Tue, 15 Jun 2021 10:59:46 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lt4v8-00059M-TC; Tue, 15 Jun 2021 10:59:42 +0200
Date: Tue, 15 Jun 2021 10:59:42 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <20210615085942.GD9782@pengutronix.de>
References: <20210613222639.13190-1-marc@cpdesign.com.au>
 <cefc5375-c35a-7e32-8cbe-557a3e87fa99@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cefc5375-c35a-7e32-8cbe-557a3e87fa99@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 10:56:04 up 117 days, 12:19, 119 users,  load average: 0.14, 0.09,
 0.12
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210615_095947_294882_E4B8AA2A 
X-CRM114-Status: GOOD (  22.17  )
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
Cc: barebox@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/4] common: boot: don't return too early in bootscript
 dryrun
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, Jun 14, 2021 at 10:51:27AM +0200, Ahmad Fatoum wrote:
> Hi,
> 
> On 14.06.21 00:26, Marc Reilly wrote:
> > A dryrun boot will now run the boot script and a then a
> > dryrun of the bootm.
> 
> This would change behavior for boot scripts that directly boot
> instead of setting up variables for bootm to use, but I think
> that's acceptable,

That's the reason the dryrun for bootscripts is aborted before executing
them. Both ways are not really optimal, but I don't want to replace one
suboptimal solution with another.
Maybe we could pass an option to the bootscript so that a script has
the chance to test for that option before booting. That would still
change the behaviour for scripts that don't test for that option, but
at least they could be fixed.

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

