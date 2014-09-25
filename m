Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pa0-f46.google.com ([209.85.220.46])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XXBCv-0005jQ-2w
 for barebox@lists.infradead.org; Thu, 25 Sep 2014 15:43:49 +0000
Received: by mail-pa0-f46.google.com with SMTP id kx10so11259179pab.33
 for <barebox@lists.infradead.org>; Thu, 25 Sep 2014 08:43:27 -0700 (PDT)
References: <2F9C706F-8EBC-453B-8BA1-116680C7926A@kamama.com>
 <1411632866.2207.2.camel@tellur.intern.lynxeye.de>
Mime-Version: 1.0 (1.0)
In-Reply-To: <1411632866.2207.2.camel@tellur.intern.lynxeye.de>
Message-Id: <AE2FDA55-436B-4DF7-AE47-9B32D0CFFAC7@kamama.com>
From: Ryan Du Bois <rdub@kamama.com>
Date: Thu, 25 Sep 2014 08:43:25 -0700
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
Subject: Re: nvidia jetson tk1 help
To: Lucas Stach <dev@lynxeye.de>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

Thanks Lucas, I'll check that out when I get into the office today.

Cheers!

> On Sep 25, 2014, at 1:14, Lucas Stach <dev@lynxeye.de> wrote:
> 
> Hi Ryan,
> 
> Am Mittwoch, den 24.09.2014, 12:23 -0700 schrieb Ryan Du Bois:
>> Hey There,
>> 
>> I'm having trouble getting barebox to boot on an Nvidia Jetson TK1.  I'm using the tegra-v7_defconfig, and trying to load it to the board via the tegrarcm tool.
>> 
>> Has anyone done this before who might have a recipe that works?
> 
> Please just "make docs". In there you'll find a chapter on how to
> bootstrap a Tegra board. The description is for the Beaver board, but
> things work the same way on Jetson. If you have any other question, feel
> free to ask.
> 
> Regards,
> Lucas
> 

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
