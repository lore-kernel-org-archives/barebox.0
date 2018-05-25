Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from asavdk3.altibox.net ([109.247.116.14])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fMGci-0000mW-Es
 for barebox@lists.infradead.org; Fri, 25 May 2018 17:35:30 +0000
Date: Fri, 25 May 2018 19:35:10 +0200
From: Sam Ravnborg <sam@ravnborg.org>
Message-ID: <20180525173510.GA4075@ravnborg.org>
References: <20180523051012.26148-1-andrew.smirnov@gmail.com>
 <20180523084341.i5edq2nznd7spbi3@pengutronix.de>
 <CAHQ1cqEC7Hpc1k2LEpUzDwk=EipeTLXEO1J0Fk4U7vkZ1MEczA@mail.gmail.com>
 <20180525090124.wchev5lakkiny2gr@pengutronix.de>
 <CAHQ1cqG9v=mcKjhusqZYPtqv_sC9U0sxaxh0Tk6E0c_UVmgOaQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAHQ1cqG9v=mcKjhusqZYPtqv_sC9U0sxaxh0Tk6E0c_UVmgOaQ@mail.gmail.com>
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
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [RFC] ARM: mmu: Do not try to pick early TTB up
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: Barebox List <barebox@lists.infradead.org>

> 
> OK, sure. Where do we go from here? Do you want to just take your
> patch or should I update mine, with its War And Peace of a commit
> message, and incorporate what you proposed?

If you update yur patch then please prefix the patch part of
changelog with "|" or similar - so patch do not get confused.
It have bitten me in the past...

	Sam

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
