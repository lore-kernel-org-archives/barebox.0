Delivery-date: Fri, 25 Jun 2021 09:53:18 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lwgeM-000857-7f
	for lore@lore.pengutronix.de; Fri, 25 Jun 2021 09:53:18 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lwgeH-0007IB-4v
	for lore@pengutronix.de; Fri, 25 Jun 2021 09:53:18 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=5uKv9JvngHNKkJPPEfDktbh5/BbSEbzkAxbeg0XKMzM=; b=3qQJzUOC1H7kYN/cpRml32t2R7
	huGh34ww/6VVbH4njBMpiBHpIox1CL7BICgcxuI7J0U/ryDyR7AyepBC495vgslBK5uKzMOLXIpHX
	sOmX3Je/SA+eoN3Ja4WyaxjMDJkJ+wYEl8BLCcFGWmWYw6DaPRdmlZPKGiomuVlErwM9c51ONN46v
	lJxLjAXJFQuEo/Ci+cCCZAYvht3V/Or6QEuv3qm12TfN0DpKFGbOA5f8OEexWpGCzKWvAgwDkRInb
	/I8wEPVGrV2Fd8JtU+NYQrjGOl+dQcgUyhoMgXJpR5P8JN9NtLvA5FRfLjAzcZPtR+Quy/z12KUOd
	kgnQUv/A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lwgcY-0008gR-Pw; Fri, 25 Jun 2021 07:51:26 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lwgLn-00014f-CI
 for barebox@lists.infradead.org; Fri, 25 Jun 2021 07:34:08 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lwgLl-0003Ur-MS; Fri, 25 Jun 2021 09:34:05 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lwgLl-0002Nf-D1; Fri, 25 Jun 2021 09:34:05 +0200
Date: Fri, 25 Jun 2021 09:34:05 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20210625073405.GB9782@pengutronix.de>
References: <20210622082617.18011-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210622082617.18011-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 09:33:47 up 127 days, 10:57, 118 users,  load average: 0.12, 0.13,
 0.10
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210625_003407_504259_D36554A0 
X-CRM114-Status: GOOD (  19.65  )
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
X-Spam-Status: No, score=-4.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v4 0/8] usbgadget: add support for USB mass storage gadget
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Tue, Jun 22, 2021 at 10:26:09AM +0200, Ahmad Fatoum wrote:
> v3 -> v4:
>   - change bthreads to be scheduled like workqueues instead of pollers
>   - change virtio input from bthread to poller
>   - add useful bthread debug print
> 
> v2 -> v3:
>   - rebase on v3 of the preparatory system partitions series
>   - have usbgadget -S '' fallback to use $global.system.partitions
>   - do file_list_detect_all at gadget instantiation time
> 
> v1 -> v2:
> 
>   - rebase on top of new bthread API
>   - drop blocking fallback implementation; we now have bthreads
>     everywhere
>   - reuse $global.system.partitions instead of creating even
>     more autostart variables
>   - fix assert_command_context to actually do what the
>     commit message said
> 
> 
> Ahmad Fatoum (8):
>   input: virtio: poll from poller, not bthread
>   bthread: add debug print for scheduler context switches
>   common: move workqueue handling from poller_call() to sched()
>   common: bthread: schedule only in command context
>   bthread: implement basic Linux-like completion API
>   Documentation: devel: background-execution: update bthread docs
>   usbgadget: refactor usbgadget_register to accept array
>   usbgadget: add support for USB mass storage gadget

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

