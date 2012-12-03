Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from astoria.ccjclearline.com ([64.235.106.9])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TfVV2-0002YK-0i
 for barebox@lists.infradead.org; Mon, 03 Dec 2012 12:51:52 +0000
Date: Mon, 3 Dec 2012 07:51:50 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
In-Reply-To: <20121203092701.GI10369@pengutronix.de>
Message-ID: <alpine.DEB.2.02.1212030748510.23376@oneiric>
References: <alpine.DEB.2.02.1212011123210.14847@oneiric>
 <20121203092701.GI10369@pengutronix.de>
MIME-Version: 1.0
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
Subject: Re: should i expect trying to mount a cramfs fs to give me a
 segmentation fault?
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: "U-Boot Version 2 (barebox)" <barebox@lists.infradead.org>

On Mon, 3 Dec 2012, Sascha Hauer wrote:

> cramfs was present in barebox very early. I think in some places the
> implementation still assumes that the filesystem image is directly
> memory mapped. Probably we should investigate and either add a big
> warning somewhere or fix it.

  ok, good to know ... i deleted my wiki page regarding barebox and
cramfs since it's clear i didn't understand it.  only suggestion
would be to update this page:

  http://wiki.barebox.org/doku.php?id=user:first_steps

so users don't trip over the same thing i did.  onward ...

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
