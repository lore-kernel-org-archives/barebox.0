Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x236.google.com ([2a00:1450:4010:c03::236])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZAaFQ-0005aN-OP
 for barebox@lists.infradead.org; Thu, 02 Jul 2015 08:53:33 +0000
Received: by lagh6 with SMTP id h6so56474194lag.2
 for <barebox@lists.infradead.org>; Thu, 02 Jul 2015 01:53:08 -0700 (PDT)
MIME-Version: 1.0
Date: Thu, 2 Jul 2015 10:53:08 +0200
Message-ID: <CABQt-U=gj3q-_ok0WW+C=NJfnJq0CQzvyEmud2exzFmQKS2Mdw@mail.gmail.com>
From: Philippe Leduc <ledphilippe@gmail.com>
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
To: barebox@lists.infradead.org

Hi,

First thank you for the details answers :)

Following your explanations/propositions, I think uimagefs is not
suited to my needs. I think therefore make an evolution of the uImage
command to be able to retrieve the size of my image and to copy it
efficiently into the RAM.

I'll try to propose a patch next week for review. But before that,
what do you think about thes follwing interface:

uimage - extract/verify/copy uImage

Usage: uimage [-vienc] FILE

Options:
        -i                      show information about image
        -v                     verify image
        -e OUTFILE      extract image to OUTFILE
        -n NO               use image number NO in multifile image
        -c OUTFILE      Copy the image to OUTFILE
        -s SIZE            Return the size of the uimage file into a VARiable.


Regards,


Philippe LEDUC
ledphilippe@gmail.com

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
