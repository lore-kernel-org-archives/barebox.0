Delivery-date: Wed, 03 Mar 2021 16:48:49 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lHTk1-0008LW-4F
	for lore@lore.pengutronix.de; Wed, 03 Mar 2021 16:48:49 +0100
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lHTjz-0004lR-OY
	for lore@pengutronix.de; Wed, 03 Mar 2021 16:48:48 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=j0sJdrPaf6IlaNfsreOcQ7fyWPEnWrF90WK2e3xF0vI=; b=JZsBrlHjLU54xi13/cKoeZ/MT
	GdXL06hsRXONsKsEwxDwTj/nKv1OGW/PVLtV1rUY0BcSV9LLTldI3jw77Nra0WS4GBtd5kFx16FA/
	mNKG2z+0s0U7QJqiayAwEE6A1vUcegTgtgaYqXeh02+w69VquhTeYVYQWqNUY4YmrCRIXQnMfCwz+
	CCOad5BqwIpERUboIsp+ot143p57wMSZNIzhyrAfRnYwoQmmdJN2OsBYnQmF/UNM1X8nUr7lpV4tU
	c6UcIQLYyrc8CkBw4eS0eButeHzAoa/U2OoyEgVFP+K7OnU+MJPAw/MPQpySOUrR9C4UZzrRcTm1T
	oHelGTm3Q==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lHTiY-005S8f-DO; Wed, 03 Mar 2021 15:47:18 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lHShO-0059sC-Uf
 for barebox@desiato.infradead.org; Wed, 03 Mar 2021 14:42:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=JacfHgm4MfZJ38j9CE3/9gpUWhD3eNqM7fZqztGQJ9g=; b=ULxrKB/98A5QZLgtsMkfaZd3Qq
 qglDGr+clct3MQAASc6HzNTZnm4EenCYva/ZL4GmtoXwysRWmIOwZ19V6MKL9x/sXYdCGmYwGhurc
 CK4QqR8lMhGd7rdQ6ZXBUR+ZopzgBkaWK4AOFYv3tl+pZbGt+dBp0VpLioY0w2RDB9e+Fel47dq+g
 Iy2L1LL+h7qyqDHIFJfpNfBdpp1jTRmhI0xyBCHGdyAImRYWRYLz5prWrmoWAosm/jMl5mdkILDS7
 Y+OxHajd1pIgoCMwRrQRSz5mM7P/pjEGWE9cahYE1TRHpkzE8jHindeR/KhAqxz8jpsJgt87HhtFU
 88MNGjVw==;
Received: from mail-pl1-x62f.google.com ([2607:f8b0:4864:20::62f])
 by casper.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lHRfT-002nu1-O0
 for barebox@lists.infradead.org; Wed, 03 Mar 2021 13:36:05 +0000
Received: by mail-pl1-x62f.google.com with SMTP id j6so483156plx.6
 for <barebox@lists.infradead.org>; Wed, 03 Mar 2021 05:35:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=JacfHgm4MfZJ38j9CE3/9gpUWhD3eNqM7fZqztGQJ9g=;
 b=qEMLhis94pVMfRFWFjGtGeIFS28QJwFIFAnYH+dw+7lwCJl90UQ19qQwJ0lSUBhMId
 Lim6pRlb1Q7kjygUL+khWCfAp9kxmDWWnGtb5zkU6Jjnwrb6moW4nGzIfYTNifhEAbgv
 z4U6GuGE6HX6dvQA3AUKGDr90ADrcc1NBNF1vP4466exrsy6858QbaDSWU5AfpENbiNK
 gSjLPV1SdAOxgcbijNeQmVFjC4iuEHewLDIiv9eGDx3lh6OYFhZ2mtqfIYT6z9xd7IQA
 SH0WiLgN3KbHHjqrLB54xL1NgdsWu58Vcsj0+mkSgcfCV5AHnRAIr+YuygU+QEIPtBlu
 tuyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=JacfHgm4MfZJ38j9CE3/9gpUWhD3eNqM7fZqztGQJ9g=;
 b=DbOnpR+jvFeQFcrEij0bXnM0H0CL+ng66KJ19u6RQt77hWVAVX+DTk+eSh2drqhi8T
 smMh3rIPjAGrL9ZtAx0N0PGMLLqP25qwSseM2k0F3tuALrEwKgixJHwQzv2IKjqkNJgp
 8zm/mBhr01QgmANUlDufWjDyr3xbXO71dyP5UyisdoKAQGYwtPrtcYpAozy+sOlFi/1V
 zz/8lo77gXq0Hy3yz8O3nQcOgd8BDMTExT5/fvvPV9kiMfprfjnDiK8r0dV625JlHWUj
 V0DJ2i6jtgCGNaGjABineo4soVHoNcHID+zmizROJk20DMO+JomtR7vSVwQQzGrd3v8q
 oatg==
X-Gm-Message-State: AOAM531hv0I0ZKj6SmgRnd9VEJo4t1gN50ZxzSs0Vg66YeEq7TLzOdL4
 7/sA3P+oqDLbXdTwMJe8lBk=
X-Google-Smtp-Source: ABdhPJyAswWBJgHAq1FG8bzAXKZos/Iwdc/gnj0MgterrC7KcXpXSx2lopejgtuONpQ1DHrdcKSndw==
X-Received: by 2002:a17:902:e886:b029:e4:2b8e:3c65 with SMTP id
 w6-20020a170902e886b02900e42b8e3c65mr24914970plg.1.1614778557522; 
 Wed, 03 Mar 2021 05:35:57 -0800 (PST)
Received: from localhost (g98.115-65-200.ppp.wakwak.ne.jp. [115.65.200.98])
 by smtp.gmail.com with ESMTPSA id u4sm24423969pgj.29.2021.03.03.05.35.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 03 Mar 2021 05:35:56 -0800 (PST)
Date: Wed, 3 Mar 2021 22:35:54 +0900
From: Stafford Horne <shorne@gmail.com>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org, sha@pengutronix.de,
 Jules Maselbas <jmaselbas@kalray.eu>
Message-ID: <20210303133554.GF365039@lianli.shorne-pla.net>
References: <20210301110106.3764-1-a.fatoum@pengutronix.de>
 <20210303121547.GE365039@lianli.shorne-pla.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210303121547.GE365039@lianli.shorne-pla.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210303_133605_480455_CED2CB03 
X-CRM114-Status: GOOD (  22.15  )
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
X-Spam-Status: No, score=-2.4 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH v2 00/11] common: introduce bthreads, co-operative
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Wed, Mar 03, 2021 at 09:15:47PM +0900, Stafford Horne wrote:
> On Mon, Mar 01, 2021 at 12:00:55PM +0100, Ahmad Fatoum wrote:
> > Hello,
> > 
> > This is v2 of barebox coroutine support:
> >     https://lists.infradead.org/pipermail/barebox/2021-February/035032.html
> > 
> > As discussed with Sascha, if this is to be added, this should be added for
> > all architectures and not be optional. If we have this as integral part,
> > it means we can substitute coroutines for:
> >     - pollers: just wrap the code in a loop
> >     - async pollers: just call a delay function in the loop
> >     - workqueues: assert_command_context yields until in command context
> > 
> > In addition, we will have much less work porting over threaded code from
> > Linux. See the referenced series for an example of a USB mass storage
> > gadget.
> > 
> > To prepare for replacing them, the functionality is renamed to
> > bthreads (as in barebox threads) and is made separate from pollers.
> > 
> > How to add new architecture support:
> > 
> >   - Apply this series or check out https://github.com/a3f/barebox/tree/bthread
> 
> Now that I got a dev environment booting off master I have switched to your
> bthread branch.  I found there is already a commit to remove openrisc in next.
> 
> I will revert this in my branch.
> 
> Is there a timeframe you aim to have this all done?
> 
> Also, It seems networking it not working for me that is ok for the work here,
> but it will be something I have to look into next for OpenRISC.

The openrisc implementation is on this branch, I will send a patch in bit.

  https://github.com/stffrdhrn/barebox/tree/openrisc-bthread

-Stafford

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

