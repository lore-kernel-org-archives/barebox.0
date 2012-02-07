Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from devils.ext.ti.com ([198.47.26.153])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RuoUJ-0003sL-MU
 for barebox@lists.infradead.org; Tue, 07 Feb 2012 17:05:52 +0000
From: "Premi, Sanjeev" <premi@ti.com>
Date: Tue, 7 Feb 2012 17:05:43 +0000
Message-ID: <E28AAFD00EFAA646AE3DF9B89CD24A8931834466@DBDE01.ent.ti.com>
References: <alpine.DEB.2.02.1202070816090.3550@oneiric>
 <E28AAFD00EFAA646AE3DF9B89CD24A89318342F9@DBDE01.ent.ti.com>
 <alpine.DEB.2.02.1202071138340.15978@oneiric>
 <E28AAFD00EFAA646AE3DF9B89CD24A8931834408@DBDE01.ent.ti.com>
 <alpine.DEB.2.02.1202071200480.16867@oneiric>
In-Reply-To: <alpine.DEB.2.02.1202071200480.16867@oneiric>
Content-Language: en-US
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
Subject: RE: "make distclean" doesn't remove generated MLO file
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Cc: "U-Boot Version 2 (barebox)" <barebox@lists.infradead.org>

> -----Original Message-----
> From: Robert P. J. Day [mailto:rpjday@crashcourse.ca] 
> Sent: Tuesday, February 07, 2012 10:33 PM
> To: Premi, Sanjeev
> Cc: U-Boot Version 2 (barebox)
> Subject: RE: "make distclean" doesn't remove generated MLO file
> 
> On Tue, 7 Feb 2012, Premi, Sanjeev wrote:
> 
> > I usually compile both stages together with a 'make clean' in
> > between, hence decided to preserve MLO. Makes it easy to copy both
> > MLO and barebox.bin at same time.
> 
>   is there any sort of requirement about cleaning in between those two
> steps?  if there is, that's a potential "gotcha" that should be
> clearly documented.

No "gotcha" that I know of - but just a habit!

~sanjeev
_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
