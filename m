Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from plane.gmane.org ([80.91.229.3])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WPfzb-0000lV-Rt
 for barebox@lists.infradead.org; Mon, 17 Mar 2014 22:26:48 +0000
Received: from list by plane.gmane.org with local (Exim 4.69)
 (envelope-from <gcbb-barebox@m.gmane.org>) id 1WPfzF-0000GU-P4
 for barebox@lists.infradead.org; Mon, 17 Mar 2014 23:26:25 +0100
Received: from static-82-85-234-51.clienti.tiscali.it ([82.85.234.51])
 by main.gmane.org with esmtp (Gmexim 0.1 (Debian))
 id 1AlnuQ-0007hv-00
 for <barebox@lists.infradead.org>; Mon, 17 Mar 2014 23:26:25 +0100
Received: from cristiano_dealti by static-82-85-234-51.clienti.tiscali.it with
 local (Gmexim 0.1 (Debian)) id 1AlnuQ-0007hv-00
 for <barebox@lists.infradead.org>; Mon, 17 Mar 2014 23:26:25 +0100
From: Cristiano De Alti <cristiano_dealti@hotmail.com>
Date: Mon, 17 Mar 2014 22:25:59 +0000 (UTC)
Message-ID: <loom.20140317T232302-965@post.gmane.org>
References: <loom.20140313T212720-896@post.gmane.org>
 <20140317064328.GB18901@omega>
Mime-Version: 1.0
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
To: barebox@lists.infradead.org

Alexander Aring <alex.aring@...> writes:

> 
> Hi,
> 
> just an idea... don't asking about why. But can you please disable
> 
> ARM_OPTIMZED_STRING_FUNCTIONS
> 
> and test it again? I will check something there...
> 
> - Alex
> 

I've disabled the above CONFIG in Barebox and I don't see any difference in
the duration of the bad blocks scan. Should it take longer?
What was the idea here?
Thanks for your help. I didn't imagine supporting this board was still of
some interest for someone ;)


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
