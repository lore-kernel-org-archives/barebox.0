Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-yk0-x233.google.com ([2607:f8b0:4002:c07::233])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1X1Y35-0007LF-OC
 for barebox@lists.infradead.org; Mon, 30 Jun 2014 09:38:56 +0000
Received: by mail-yk0-f179.google.com with SMTP id 20so4456890yks.38
 for <barebox@lists.infradead.org>; Mon, 30 Jun 2014 02:38:33 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20140630060112.GX14257@pengutronix.de>
References: <alpine.LFD.2.11.1406280904330.2486@localhost>
 <20140630060112.GX14257@pengutronix.de>
Date: Mon, 30 Jun 2014 11:38:33 +0200
Message-ID: <CAOpc7mGu=VYE_9uRJ8-dKmDaqgQaok40u_2EFgSHQCRG=67oXQ@mail.gmail.com>
From: Holger Schurig <holgerschurig@gmail.com>
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
Subject: Re: in sphinx docs, what is "@b barebox" markup supposed to do?
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: "U-Boot Version 2 (barebox)" <barebox@lists.infradead.org>

I found a Sphinx cheat sheet:
http://openalea.gforge.inria.fr/doc/openalea/doc/_build/html/source/sphinx/rest_syntax.html
(where you have all the important things on just one page).

So you can convert "This is @b foo bar" to "This is **foo** bar".

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
