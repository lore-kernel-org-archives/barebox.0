Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ee0-f50.google.com ([74.125.83.50])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WPnQK-0007k7-Nb
 for barebox@lists.infradead.org; Tue, 18 Mar 2014 06:22:53 +0000
Received: by mail-ee0-f50.google.com with SMTP id c13so4869861eek.37
 for <barebox@lists.infradead.org>; Mon, 17 Mar 2014 23:22:27 -0700 (PDT)
Date: Tue, 18 Mar 2014 07:22:22 +0100
From: Alexander Aring <alex.aring@gmail.com>
Message-ID: <20140318062220.GA17105@omega>
References: <loom.20140313T212720-896@post.gmane.org>
 <20140317064328.GB18901@omega>
 <loom.20140317T232302-965@post.gmane.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <loom.20140317T232302-965@post.gmane.org>
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
Subject: Re: i.MX21 ADS NAND flash bad blocks scan. Barebox vs Linux
To: Cristiano De Alti <cristiano_dealti@hotmail.com>
Cc: barebox@lists.infradead.org

On Mon, Mar 17, 2014 at 10:25:59PM +0000, Cristiano De Alti wrote:
> Alexander Aring <alex.aring@...> writes:
> 
> > 
> > Hi,
> > 
> > just an idea... don't asking about why. But can you please disable
> > 
> > ARM_OPTIMZED_STRING_FUNCTIONS
> > 
> > and test it again? I will check something there...
> > 
> > - Alex
> > 
> 
> I've disabled the above CONFIG in Barebox and I don't see any difference in
> the duration of the bad blocks scan. Should it take longer?
> What was the idea here?
> Thanks for your help. I didn't imagine supporting this board was still of
> some interest for someone ;)
> 

mhh then sorry, I experienced a slow imx nand some time ago, too. The
config ARM_OPTIMZED_STRING_FUNCTIONS helped to improve the speedup. Was
just a try, I never looked deeper into the issue...

The issue was a slow tftp with a 'special' host ethernet card. I never
realize what the real problem was and I don't have this hardware anymore.

- Alex

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
