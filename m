Delivery-date: Wed, 03 Mar 2021 16:17:31 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lHTFj-000890-Dw
	for lore@lore.pengutronix.de; Wed, 03 Mar 2021 16:17:31 +0100
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lHTFi-0000Uu-Ap
	for lore@pengutronix.de; Wed, 03 Mar 2021 16:17:31 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=TpHCEnS5Cptm0wUXulxTQFArrT6aIN7PWVzwyv354qw=; b=GjOIn6XH8cR5nP3FIHX4Yspiu
	v7EIOAjQRWybpFcc6151MgG73e4zyau6rZNjJ5iWks7x2q0tjVoWpQJ4Y3V5/fwYpncCXdetnwh7C
	8X5z8ZJzhF1PACb3ay3u7uyD7uJxTaZ289AE8fsZ8XHjjFWwmkAkXjCPdpOqXRjjc/4y6VhoOb7a4
	n5NrKEk2I3shz0gdCuuILjyuTg5egV3vbQDSqTpqp50PF+j8gncE4GUszcDAZpMG3SochhyIU36XB
	ll7C0KgfTwchCSXMkZMgvKVlo+DgfXfs0Hh6oUsd1HyixZ6bCf1aBGqJjtUH3gUrQoGEqp50EvIPa
	AmK0sU1oA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lHTE0-005LVr-E4; Wed, 03 Mar 2021 15:15:44 +0000
Received: from mail-pf1-x436.google.com ([2607:f8b0:4864:20::436])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lHSEg-0055Fj-JB
 for barebox@lists.infradead.org; Wed, 03 Mar 2021 14:12:43 +0000
Received: by mail-pf1-x436.google.com with SMTP id q204so15304625pfq.10
 for <barebox@lists.infradead.org>; Wed, 03 Mar 2021 06:12:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=Nyc79OkBqcm91dkYJ8y+teIBbOTw+kWRs6mRqnmse6Q=;
 b=UiJ5B8DNYc+tMp/m8bJR7YjJ5D4v1XpJV7/7RZTdF0ef2Ch2xSUbs9v3VUXd5dyFEs
 FNNgzGEMERw1tPeUFfXtuJppD1N7s8NxZgLPqaOQlQ8k5hIMIjgQGwyUmrEXRU/J66OT
 LAy1nJZBQNY3KiP7T6C1GDxbltfY8/Rd2QL7obmLziBms/bHMKGp1Y/ucf1S8ixO509G
 xjVcoMn4CX0pMp0oc53fFzguf0PkvbHhf5kaZQwwDuVtXIqTZU439rMW5uRZ/oEB2dxi
 T1NkijT03rWkRohgL3PEsMy2UbzSBFMshyApxbvLGd2UCpBnr6CO9tamh+ohoyRbk1LD
 ti2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=Nyc79OkBqcm91dkYJ8y+teIBbOTw+kWRs6mRqnmse6Q=;
 b=sM/oa/7MZ22TVulzytzcKlJMYAcngEtVBoCWO4ZLoK2Ro0VT+aAgVqEsADpoka2H6C
 UeUYHzm7Txg3q76HCtD0PCrfL+vFbpG4bAy/WckYT9V1U+hdjFXEWs07ksynQ1rygS4r
 NJgl7xj2hIzNHhhh1QeNKdUjofetoqHU971mhQlTwxe2pG+0EDnBjRSjOVFF5h9gBBA/
 xGYtBzvQ1e82w+yPLdge0qRNCfh5fzBf2X0QScZDS2gCqjN3MW+HbfdV04bc4vRiZ2Fs
 nXBeAj+DD+2LGbEq3v+WHl0zduapm6t9a3+UlZIKr10wCahAde2IYtTJHMg11U7DY6fd
 k5SQ==
X-Gm-Message-State: AOAM530cmlRlZ7Oz3CP5IbudP1hW7VHcOLAo8WPjDMZmGhZdzb0vjhLY
 3W/R2udNyr82TOenDh75C0c=
X-Google-Smtp-Source: ABdhPJypQEnF38zZ3cu8bG/UWzZKijlW/Tbckc4bFxPUWM2rqFLo6eulTofJwbXpgbpxSqD/vHM2DA==
X-Received: by 2002:a63:4e09:: with SMTP id c9mr23402537pgb.107.1614780737947; 
 Wed, 03 Mar 2021 06:12:17 -0800 (PST)
Received: from localhost (g98.115-65-200.ppp.wakwak.ne.jp. [115.65.200.98])
 by smtp.gmail.com with ESMTPSA id 190sm24992707pfv.155.2021.03.03.06.12.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 03 Mar 2021 06:12:17 -0800 (PST)
Date: Wed, 3 Mar 2021 23:12:14 +0900
From: Stafford Horne <shorne@gmail.com>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <20210303141214.GG365039@lianli.shorne-pla.net>
References: <20210303135026.3450789-1-shorne@gmail.com>
 <57222afc-9d92-e52d-34d4-0737eff1ec82@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <57222afc-9d92-e52d-34d4-0737eff1ec82@pengutronix.de>
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
Cc: Barebox <barebox@lists.infradead.org>,
 Openrisc <openrisc@lists.librecores.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-2.5 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 0/4] OpenRISC fixes and setjmp/longjmp work
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Wed, Mar 03, 2021 at 03:03:11PM +0100, Ahmad Fatoum wrote:
> Hello Stafford,
> 
> On 03.03.21 14:50, Stafford Horne wrote:
> > Hello,
> > 
> > These are the patches I came up with to get the setjmp/longjmp routines to work
> > on OpenRISC.  It seems to be working well.
> > 
> > The patches are on github here:
> >   https://github.com/stffrdhrn/barebox/tree/openrisc-bthread
> > 
> > I had to revert a commit to remove openrisc to do this work, I hope that can be
> > reverted.
> 
> Great. Thanks for taking the time!
> Could this be tested on qemu-system-or1k? If so, it would be great to have this
> documented in-tree, so future changes could be tested.

Sure, I will try to get it working.  For some reason qemu was getting hung.

Give me a few days.

-Stafford

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

