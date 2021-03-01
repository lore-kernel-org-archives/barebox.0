Delivery-date: Mon, 01 Mar 2021 13:43:31 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lGhtb-0004d4-Pq
	for lore@lore.pengutronix.de; Mon, 01 Mar 2021 13:43:31 +0100
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lGhta-0003hM-RR
	for lore@pengutronix.de; Mon, 01 Mar 2021 13:43:31 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:Date:References:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=4vY2SxlCH1haIvZd2wzzpzfHDqPBllAV2UghdEtXENE=; b=EaNocIIzQsBu0SlmIcsL2IzdB
	GeaVh82H4jchoS9xR8GruoeiMOBx1gz/qXJ1ZK8mzfoXrNb3nc+RO4Sktg90xGYzst2jgdcp2VREs
	/jv92NTwL8uPnAeeB4rvxYUV3SEiNb9muROlgxq69u0BJUxznTKDedEmH9RZAcBQcfKdH0nCNd8IY
	lEGfM68t205AaW8bjW88HZHorW4o98vJW2cR4RIVvgWivrMVY+SdlgYZz8hb+o5kRxJDb3ScgTeZD
	ts1Uu95N9reOBb4Qn5skvV8eB+lR4hhZbmnC6FuuKKTiWq3zbcC7va4nFcaxA3m+8iOsZF4nt5iYs
	L1mugJTDw==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1lGhsM-0005Zn-OJ; Mon, 01 Mar 2021 12:42:14 +0000
Received: from mail-ed1-x52d.google.com ([2a00:1450:4864:20::52d])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1lGhsJ-0005Yp-HA
 for barebox@lists.infradead.org; Mon, 01 Mar 2021 12:42:12 +0000
Received: by mail-ed1-x52d.google.com with SMTP id b13so11313704edx.1
 for <barebox@lists.infradead.org>; Mon, 01 Mar 2021 04:42:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:from:to:cc:subject:references:date:in-reply-to:message-id
 :user-agent:mime-version;
 bh=7K2ZytibQMFgEbpZd5bPpLrtDSvUqldSWwNOjVr9GjU=;
 b=RdTD78OLTGePoo8H0Nxs4fSSyq7KIH6x/gbYhEQ/LXULtYhoVVqLLCNJ0+97RCZfdf
 aZX/37ccCRJrV74uQdCzKj9HWttRTJJ1o7IixIEnymg0m5WkoU3z4NSyIDEEL90h26rG
 IB+kZ6mr1vOWYdcEpfEWFNydfnWm60vwd9bJSzwxoWGwrP+i6OqxZXNlLRyGnNF9zmau
 Gy1ukWeoW5ipeMBzOo+2a0iBwNrDyIMWpAAk1/KSi6unoxnmy6KeeaF6UEkoINGJ8Tvk
 DgnQCcTGmc4AQwmvIc66mSg9bYVHPZ+wZYpbrnkGpXt6o7Iz8rSRN+prsGXDv8hlrE0f
 nyFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:references:date
 :in-reply-to:message-id:user-agent:mime-version;
 bh=7K2ZytibQMFgEbpZd5bPpLrtDSvUqldSWwNOjVr9GjU=;
 b=kOmwcGnpZNCSw5SFtQgcpp/WDQxLXTtJCfdxVxs/YM5z8aS1YFUbLfvHKq5nCS09wz
 hlIaYsi8sWVOrtBKf6pK14GkmIyetJHYtVkCKSQJ7QNH52YQQ2OXQzFMdbd+30u0htIK
 aUqaCkzt1EDK1MuShkHX4YItTk52XaemiUPBCusZLs2ZTCcKCJ7s8sef2vspzMeKmKac
 Z0socjwJhDcjQXTEaf6IoaoJC/R9TVVWAiWlTL7kNFE6XMr51ldS65b89yFMWjdZL7EE
 VAglZOH9VG11kJSIufCRy/FESvKCEYhgX+onNDHlCZRGmNAgTaH6eFTGh5suH6XglU1b
 oAJw==
X-Gm-Message-State: AOAM531Wh5hl9TjJL0qRgRUomtpCsMgB7Hoee7+aNZUIfyq+1dUfmYeS
 WhettLyWEj6DYZsJoLUWYkZfnlm4TmM=
X-Google-Smtp-Source: ABdhPJxAJzM1GN2OqcA1vMW+2MMx05pxO+7Ov2qFAgoLTODGvrac9AymjLJloqUdgCF0X40/8abL6A==
X-Received: by 2002:aa7:d656:: with SMTP id v22mr13907573edr.119.1614602528526; 
 Mon, 01 Mar 2021 04:42:08 -0800 (PST)
Received: from dell.be.48ers.dk (d51a5bc31.access.telenet.be. [81.165.188.49])
 by smtp.gmail.com with ESMTPSA id
 z16sm13491022ejd.102.2021.03.01.04.42.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 01 Mar 2021 04:42:07 -0800 (PST)
Received: from peko by dell.be.48ers.dk with local (Exim 4.92)
 (envelope-from <peter@korsgaard.com>)
 id 1lGhsF-00047C-7C; Mon, 01 Mar 2021 13:42:07 +0100
From: Peter Korsgaard <peter@korsgaard.com>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
References: <20210301110106.3764-1-a.fatoum@pengutronix.de>
 <20210301110106.3764-3-a.fatoum@pengutronix.de>
Date: Mon, 01 Mar 2021 13:42:07 +0100
In-Reply-To: <20210301110106.3764-3-a.fatoum@pengutronix.de> (Ahmad Fatoum's
 message of "Mon, 1 Mar 2021 12:00:57 +0100")
Message-ID: <87im6bqc4g.fsf@dell.be.48ers.dk>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.1 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210301_074211_615687_9C81F82F 
X-CRM114-Status: GOOD (  17.22  )
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
X-Spam-Status: No, score=-3.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 02/11] common: introduce bthreads,
 co-operative barebox threads
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

>>>>> "Ahmad" == Ahmad Fatoum <a.fatoum@pengutronix.de> writes:

Hi,
 
 > +bthreads
 > +--------
 > +
 > +barebox threads are co-operative green threads, which are scheduled whenever
 > +``is_timeout()`` is called.  This has a few implications. First of all,
 > +bthreads are not scheduled when ``is_timeout()`` is not called.
 > +For this and other reasons, loops polling for hardware events should always
 > +use a timeout, which is best implemented with ``is_timeout()``.
 > +Another thing to remember is that bthreads can be scheduled anywhere
 > +in the middle of other device accesses whenever ``is_timeout()`` is
 > +called. Care must be taken that a green thread doesn't access the very same device
 > +again itself. See "slices" below on how devices can safely be accessed from
 > +bthreads.
 > +
 > +Unlike pollers, which bthreads are replacing, bthreads are allowed
 > +access to virtual filesystem. The macro ``assert_command_context()`` is added
 > +to entry points of the VFS to have the thread yield until it may execute in
 > +in the correct context. The poller interface is declared in

s/poller/bthread/

 > +``include/bthread.h``.  ``bthread_create()`` is used to allocate a bthread
 > +control block along with its stack. ``bthread_wake()`` can be used to hang
 > +it into the run queue. From this moment on and until the thread terminates,

s/hang it into/add/

 > +the thread will be switched to regularly as long as someone calls
 > +``is_timeout()``. bthreads are allowed to call ``is_timeout()``, which will
 > +arrange for other threads to execute.
 > +
 > +barebox threads replace previous the previous pollers and workqueues. Poller

s/previous the previous/the previous infrastructure,/

-- 
Bye, Peter Korsgaard

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

