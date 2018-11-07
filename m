Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mout02.posteo.de ([185.67.36.66])
 by casper.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gKLSZ-0004ik-6D
 for barebox@lists.infradead.org; Wed, 07 Nov 2018 10:53:20 +0000
Received: from submission (posteo.de [89.146.220.130]) 
 by mout02.posteo.de (Postfix) with ESMTPS id 6D0C92400FC
 for <barebox@lists.infradead.org>; Wed,  7 Nov 2018 11:52:48 +0100 (CET)
Date: Wed, 7 Nov 2018 11:52:44 +0100
From: Patrick Boettcher <patrick.boettcher@posteo.de>
Message-ID: <20181107115244.60cfb5e5@posteo.de>
In-Reply-To: <20181107073621.yqrnr7ajovrldza3@pengutronix.de>
References: <20181102152751.2a0b995c@yaise-pc1>
 <20181104170705.0ad35065@yaise-pc1>
 <20181106082914.ykoffbmdfqkdaflg@pengutronix.de>
 <20181106141126.1d930ce2@posteo.de>
 <20181107073621.yqrnr7ajovrldza3@pengutronix.de>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: Barebox stops working if /env/boot/mmc is removed
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>

On Wed, 7 Nov 2018 08:36:21 +0100
Sascha Hauer <s.hauer@pengutronix.de> wrote:

> On Tue, Nov 06, 2018 at 02:11:26PM +0100, Patrick Boettcher wrote:
> > On Tue, 6 Nov 2018 09:29:14 +0100
> > Sascha Hauer <s.hauer@pengutronix.de> wrote:  
> > > > The issue seems to have come from a file which was maybe in a
> > > > previous default environment and has been modified in the
> > > > user-environment and was now remove in the default-env or
> > > > overwritten or whatnot.
> > > > 
> > > > It seems that I fixed it by erasing
> > > > the /dev/barebox-environment-partition after flashing the new
> > > > barebox-version.
> > > > 
> > > > For the moment this is not an issue for my system/application.
> > > > It's a bit scary though.    
> > > 
> > > What does "Stops working" mean? Doesn't start at all? Doesn't
> > > start kernel? Your description is a bit vague.  
> > 
> > Stops working means no more output on the serial port after having
> > barebox_updated the image and issued 'reset'. Hardware reset did
> > not do anything.  
> 
> Console output starts before the environment is looked at, so this
> shouldn't be the root cause. I didn't understand where you erased the
> file. Did you erase it in your build, so in the default environment,
> or did you erase it during runtime from the saved environment? For the
> former it could be that the object positions in the binary moved to
> some unlucky place. 

This must have been my case. I deleted a file from the default
environment within my build which was in a previous image.

As I didn't really knew what's going on, I don't remember exactly what
I did.

But I'm quite sure that erasing the barbox-environment-partition fixed
the problem. 

I haven't seen it since then, no matter how much I changed the
built-in-env.

Thanks for your feedback and explanation, I'll keep my eyes open in
case the problem reappears.

regards,
--
Patrick.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
