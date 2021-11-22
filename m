Delivery-date: Mon, 22 Nov 2021 10:47:18 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mp5uw-0005NK-9M
	for lore@lore.pengutronix.de; Mon, 22 Nov 2021 10:47:18 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mp5uu-000154-VK
	for lore@pengutronix.de; Mon, 22 Nov 2021 10:47:18 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=6MEYy8sFcFS7KZ7Mi4c0LCdasgsrgidI+C0WoSp7sE0=; b=VXAv/as3o8viUJfNoUsPc7ujI4
	mAGvVCC3HVX0DGjBKQVq3aRQC2PUMnSriL4/uL77pqO4MrT9fYMPKh+GI0JPd9fdBmrzzOJKs+8Bg
	ZsJrWT3GPoRrgQIgKIJm6AkePT2RBATMZYBF8yaMvQyfyUYfpQw7/vxAz2wjCov5fL2btjmp5CyPJ
	cBu2uWY+05jo7OLRFwEbnnYcQYLWnIFhcJVUJsT8BgH52Uo/JE88jzy4FGKLxkyaNO1iskuUTn/s6
	DtfRCIwIrIODD6DmTZIpLzh5ywi66dT6//uDLZQlF5PWknnQW3roaN/aosmJDPxMtO1nV2xHMtqBU
	QaLGNCig==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mp5tA-00FfKH-Fc; Mon, 22 Nov 2021 09:45:28 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mp5bF-00FZsh-8P
 for barebox@lists.infradead.org; Mon, 22 Nov 2021 09:26:58 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1mp5bD-0007N3-R7; Mon, 22 Nov 2021 10:26:55 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1mp5bD-0005xH-Hg; Mon, 22 Nov 2021 10:26:55 +0100
Date: Mon, 22 Nov 2021 10:26:55 +0100
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Holger Assmann <h.assmann@pengutronix.de>, barebox@lists.infradead.org
Message-ID: <20211122092655.GZ6556@pengutronix.de>
References: <20211119101005.715749-1-h.assmann@pengutronix.de>
 <e0d5792d-6c06-5567-9b2f-48f70cecd5c4@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <e0d5792d-6c06-5567-9b2f-48f70cecd5c4@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 10:15:14 up 277 days, 12:39, 143 users,  load average: 0.65, 0.58,
 0.41
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211122_012657_328627_2BDB55D1 
X-CRM114-Status: GOOD (  29.19  )
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
Subject: Re: [PATCH] fs: jffs2: remove slab cache substitute with malloc
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, Nov 22, 2021 at 09:49:35AM +0100, Ahmad Fatoum wrote:
> On 19.11.21 11:10, Holger Assmann wrote:
> > From: Sascha Hauer <s.hauer@pengutronix.de>
> > 
> > Function jffs2_create_slab_caches() was called by the probing stage
> > every time a new jffs2 volume was mounted. This has lead to the memory
> > allocation pointers for slab caches to become overwritten. As a result
> > the system crashes at least when trying to unmount more than one volume.
> 
> Freeing data still in use is a bug.
> 
> > In Barebox, the respective (pseudo) slab caches are designed to work as a
> > substitute when code gets ported from Linux. They are no real caches, but
> > function as an interface for malloc and can therefore directly be replaced
> > by it.
> 
> Replacing one API with another is clean up and not really related to the
> issue here.

The bug in the jffs2 code is that it allocates global data structures in
probe():

	...
        jffs2_compressors_init();
	...
	jffs2_create_slab_caches();
	...

jffs2_create_slab_caches() has several calls to kmem_cache_create()
which does nothing more than allocating the context data structure for
the kmem_cache. Probing a second jffs2 will overwrite the pointers
returned by kmem_cache_create() leading to a double free when it the
two jffs2 fs are unmounted and jffs2_destroy_slab_caches() is called.
Replacing the kmem_caches with pure malloc indeed fixes this as it makes
allocating of kmem_cache context structure unnecessary.

jffs2_compressors_init() has the same problem. We still need this
function though, so the solution here is to introduce a reference
counting so that it is done exactly once in the first probe().

We can introduce the reference counting for both
jffs2_compressors_init() and jffs2_create_slab_caches() in patch 1/2
and replace kmem_cache with malloc in 2/2. Then 2/2 would indeed only be
a cleanup.

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

