Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1WorVI-0002If-Of
 for barebox@lists.infradead.org; Mon, 26 May 2014 09:47:37 +0000
Message-ID: <1401097557.4829.20.camel@weser.hi.pengutronix.de>
From: Lucas Stach <l.stach@pengutronix.de>
Date: Mon, 26 May 2014 11:45:57 +0200
In-Reply-To: <20140525135819.ebfd62810f698e8f13dbf558@gmail.com>
References: <20140525135819.ebfd62810f698e8f13dbf558@gmail.com>
Mime-Version: 1.0
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
Subject: Re: [RFC] [WIP] incorporate picotcp into barebox: a small demo
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: Kristof Roelants <kristof.roelants@tass.be>, barebox@lists.infradead.org, Sam Van Den Berge <sam.van.den.berge@tass.be>, Daniele Lacamera <daniele.lacamera@tass.be>, Daniele Lacamera <mlists@danielinux.net>

Am Sonntag, den 25.05.2014, 13:58 +0400 schrieb Antony Pavlov:
> Hi all!
> 
> I have adapted barebox for work with picotcp network stack.
> 
> Picotcp is not a small piece of code so I can't easyly send
> a patch to the barebox maillist. I have put results of my work on github,
> see mini-howto below.
> 
> This picotcp integration is a dirty hack in many ways.
> We need additional effors for adapting barebox and picotcp
> for more easy joint operation.
> 
> Please express your opinion on my work. I'm awaiting your comments.
> 
You forgot to mention one important thing: Why is this change beneficial
to barebox?
Please don't get me wrong this is in no way a criticism on your work. I
only skimmed through the branch as of now and can't really comment on
the change. So please help me out: do you feel the code is
leaner/cleaner than the existing barebox network support? Or what's your
motivation for this?

Regards,
Lucas


-- 
Pengutronix e.K.             | Lucas Stach                 |
Industrial Linux Solutions   | http://www.pengutronix.de/  |


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
