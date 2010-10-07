Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-out.m-online.net ([212.18.0.9])
	by canuck.infradead.org with esmtp (Exim 4.72 #1 (Red Hat Linux))
	id 1P3m6W-0005ru-P0
	for barebox@lists.infradead.org; Thu, 07 Oct 2010 08:45:33 +0000
From: Wolfgang Denk <wd@denx.de>
MIME-Version: 1.0
In-reply-to: <20101007080646.GB28242@pengutronix.de>
References: <20101005135213.24F871539A0@gemini.denx.de>
	<20101006072749.GR28242@pengutronix.de>
	<20101006135644.8D7051539A0@gemini.denx.de>
	<20101007080646.GB28242@pengutronix.de>
Date: Thu, 07 Oct 2010 10:45:30 +0200
Message-Id: <20101007084530.82D8E153A7E@gemini.denx.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: Code "borrowed" without attribution to original authors
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Dear Sascha,

In message <20101007080646.GB28242@pengutronix.de> you wrote:
>
> > Do you think such a short hint cannot be done?
> 
> We can (and actually I prefered Jean-Christophe had done it) add a
> hint in the commit log saying that the code is derived from U-Boot,
> but I will not dig through the U-Boot commit log to see who actually
> made a commit looking similar to a barebox commit, and I do not expect
> anyone to do so.

It is trivial to find the commits that added the lines you are
copying from - just run "git blame" on that file.

Thanks.

Wolfgang Denk

-- 
DENX Software Engineering GmbH,     MD: Wolfgang Denk & Detlev Zundel
HRB 165235 Munich, Office: Kirchenstr.5, D-82194 Groebenzell, Germany
Phone: (+49)-8142-66989-10 Fax: (+49)-8142-66989-80 Email: wd@denx.de
All he had was nothing, but that was something, and now it  had  been
taken away.                             - Terry Pratchett, _Sourcery_

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
