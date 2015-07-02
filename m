Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 7.mo2.mail-out.ovh.net ([188.165.48.182])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZAapg-0003VE-QN
 for barebox@lists.infradead.org; Thu, 02 Jul 2015 09:31:02 +0000
Received: from mail629.ha.ovh.net (gw6.ovh.net [213.251.189.206])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id CCE8210001CE
 for <barebox@lists.infradead.org>; Thu,  2 Jul 2015 11:30:37 +0200 (CEST)
Mime-Version: 1.0 (Mac OS X Mail 8.2 \(2098\))
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
In-Reply-To: <CABQt-U=gj3q-_ok0WW+C=NJfnJq0CQzvyEmud2exzFmQKS2Mdw@mail.gmail.com>
Date: Thu, 2 Jul 2015 17:30:09 +0800
Message-Id: <931117BB-24FC-4564-AD2F-B66FA129D3C1@jcrosoft.com>
References: <CABQt-U=gj3q-_ok0WW+C=NJfnJq0CQzvyEmud2exzFmQKS2Mdw@mail.gmail.com>
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
Subject: Re: how to do a digest on a flashed uImage ? uimage command evolution
To: Philippe Leduc <ledphilippe@gmail.com>
Cc: barebox@lists.infradead.org


> On Jul 2, 2015, at 4:53 PM, Philippe Leduc <ledphilippe@gmail.com> wrote:
> 
> Hi,
> 
> First thank you for the details answers :)
> 
> Following your explanations/propositions, I think uimagefs is not
> suited to my needs. I think therefore make an evolution of the uImage
> command to be able to retrieve the size of my image and to copy it
> efficiently into the RAM.
> 
> I'll try to propose a patch next week for review. But before that,
> what do you think about thes follwing interface:
> 
> uimage - extract/verify/copy uImage
> 
> Usage: uimage [-vienc] FILE
> 
> Options:
>        -i                      show information about image
>        -v                     verify image
>        -e OUTFILE      extract image to OUTFILE
>        -n NO               use image number NO in multifile image
>        -c OUTFILE      Copy the image to OUTFILE
>        -s SIZE            Return the size of the uimage file into a VARiable.
> 


I see no point to extract and copy as you you need to mount it

and then use cp

Best Regards,
J.
_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
