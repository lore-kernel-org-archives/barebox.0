Delivery-date: Tue, 02 Mar 2021 09:57:37 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lH0qX-0005pK-9o
	for lore@lore.pengutronix.de; Tue, 02 Mar 2021 09:57:37 +0100
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lH0qW-0002tf-FM
	for lore@pengutronix.de; Tue, 02 Mar 2021 09:57:37 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=RLEssg9lhkRJKl7m6bd0EH0sUS9VwJzN4LRFgs8qyzs=; b=3ICt+84z9k6rY75ovcniAtHEu
	jP83kKVfQWglokHdOhgLj1rwoNhJ1tesiEhAUJPTG9aWHvWGq9BCC7mv4x+xBDrsmut8JhCJeaQ98
	xTCwJoS/eylLc6JOM9PLFbDhm/oiomgJRxJkLlEazXYphoV0RtHgHV8Ko7XEsV7die6+rv9IChODm
	nSqA/BOQxjLASSFpxUzrCQF6g0uEkxf9ZS0uPPPOVpWG0p2+KizLkQJQUFqouhcGhoNc9v8mdGk83
	GkGoYtxsFX0N5vZ+m8nEb4kxDVgm0z17R//B8JDu8v91btP1ZZ0y1VXvWayZomtQjSqVrtvA6KTpb
	MWhBJGiBw==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1lH0pW-0005ZN-R0; Tue, 02 Mar 2021 08:56:34 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1lH0pT-0005Yc-Kr
 for barebox@lists.infradead.org; Tue, 02 Mar 2021 08:56:32 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1lH0pS-0002oW-7v; Tue, 02 Mar 2021 09:56:30 +0100
To: Peter Korsgaard <peter@korsgaard.com>
References: <20210301110106.3764-1-a.fatoum@pengutronix.de>
 <20210301110106.3764-3-a.fatoum@pengutronix.de>
 <87im6bqc4g.fsf@dell.be.48ers.dk>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <0cfdd66a-16c6-fe94-4f10-2e70ce62c8b6@pengutronix.de>
Date: Tue, 2 Mar 2021 09:56:29 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.0
MIME-Version: 1.0
In-Reply-To: <87im6bqc4g.fsf@dell.be.48ers.dk>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210302_035631_742660_D3AB8205 
X-CRM114-Status: GOOD (  22.32  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Cc: barebox@lists.infradead.org, Stafford Horne <shorne@gmail.com>,
 sha@pengutronix.de, Jules Maselbas <jmaselbas@kalray.eu>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2001:8b0:10b:1231::1
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_NONE,URIBL_BLOCKED
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 02/11] common: introduce bthreads, co-operative barebox
 threads
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hello Peter,

On 01.03.21 13:42, Peter Korsgaard wrote:
>>>>>> "Ahmad" == Ahmad Fatoum <a.fatoum@pengutronix.de> writes:
> 
> Hi,
>  
>  > +bthreads
>  > +--------
>  > +
>  > +barebox threads are co-operative green threads, which are scheduled whenever
>  > +``is_timeout()`` is called.  This has a few implications. First of all,
>  > +bthreads are not scheduled when ``is_timeout()`` is not called.
>  > +For this and other reasons, loops polling for hardware events should always
>  > +use a timeout, which is best implemented with ``is_timeout()``.
>  > +Another thing to remember is that bthreads can be scheduled anywhere
>  > +in the middle of other device accesses whenever ``is_timeout()`` is
>  > +called. Care must be taken that a green thread doesn't access the very same device
>  > +again itself. See "slices" below on how devices can safely be accessed from
>  > +bthreads.
>  > +
>  > +Unlike pollers, which bthreads are replacing, bthreads are allowed
>  > +access to virtual filesystem. The macro ``assert_command_context()`` is added
>  > +to entry points of the VFS to have the thread yield until it may execute in
>  > +in the correct context. The poller interface is declared in
> 
> s/poller/bthread/
> 
>  > +``include/bthread.h``.  ``bthread_create()`` is used to allocate a bthread
>  > +control block along with its stack. ``bthread_wake()`` can be used to hang
>  > +it into the run queue. From this moment on and until the thread terminates,
> 
> s/hang it into/add/
> 
>  > +the thread will be switched to regularly as long as someone calls
>  > +``is_timeout()``. bthreads are allowed to call ``is_timeout()``, which will
>  > +arrange for other threads to execute.
>  > +
>  > +barebox threads replace previous the previous pollers and workqueues. Poller
> 
> s/previous the previous/the previous infrastructure,/

Thanks! Just sent out a fixup.

> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

