Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-bk0-f49.google.com ([209.85.214.49])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TFmgV-0001Ep-HJ
 for barebox@lists.infradead.org; Sun, 23 Sep 2012 13:57:24 +0000
Received: by bkwj4 with SMTP id j4so158974bkw.36
 for <barebox@lists.infradead.org>; Sun, 23 Sep 2012 06:57:21 -0700 (PDT)
From: Christoph Fritz <chf.fritz@googlemail.com>
In-Reply-To: <20120923132946.GB26553@game.jcrosoft.org>
References: <1348328517.25235.5.camel@mars>
 <1348338458-30735-1-git-send-email-plagnioj@jcrosoft.com>
 <1348341957.24868.6.camel@mars> <20120922201637.GZ26553@game.jcrosoft.org>
 <20120923121139.GA10871@mars>  <20120923132946.GB26553@game.jcrosoft.org>
Date: Sun, 23 Sep 2012 15:57:09 +0200
Message-ID: <1348408629.3795.1.camel@mars>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] net: add multiple nameserver support
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Sun, 2012-09-23 at 15:29 +0200, Jean-Christophe PLAGNIOL-VILLARD
wrote:
> On 14:11 Sun 23 Sep     , Christoph Fritz wrote:
> > Today limit it to 2
> > 
> > Update dhcp support as option 6 allow to get n nameserver
> > If more than 2 nameserver are provided by the DHCP server ignore them.
> I rethink about it and no I do not want wo check it the format here
> 
> as I plan to make the globalvar more commoon and swtich net to it too
> 

I'm fine when the not modified version gets applied.

You can add a
Tested-by: Christoph Fritz <chf.fritz@googlemail.com>

 Thanks,
   -- Christoph


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
