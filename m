Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from asavdk4.altibox.net ([109.247.116.15])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1blu61-00015G-B4
 for barebox@lists.infradead.org; Mon, 19 Sep 2016 08:38:38 +0000
Received: from ravnborg.org (unknown [188.228.89.252])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by asavdk4.altibox.net (Postfix) with ESMTPS id A0B0B80246
 for <barebox@lists.infradead.org>; Mon, 19 Sep 2016 10:38:13 +0200 (CEST)
Date: Mon, 19 Sep 2016 10:38:11 +0200
From: Sam Ravnborg <sam@ravnborg.org>
Message-ID: <20160919083811.GA15066@ravnborg.org>
References: <20160917170731.GA30325@ravnborg.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20160917170731.GA30325@ravnborg.org>
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
Subject: Re: [PATCH] strings: new command
To: Barebox List <barebox@lists.infradead.org>

> I was in a situation where I missed "strings".
> So here it is....
> I started out with cat.c - but ended up re-writing everything.
> 
> It has seen light testing on my x86 box.
> Ran it through checkpatch for good measure - fixed a few things.
> 
> The location in Makefile seems random, so I just put it next to cat.
> 
> Before applying please consider if strings is really
> general useful in barebox.

In the end I had no use for strings in barebox, so another reason
to consider if it is really needed.

	Sam

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
