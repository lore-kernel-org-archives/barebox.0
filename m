Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-we0-x22c.google.com ([2a00:1450:400c:c03::22c])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XQGE1-0000C5-TD
 for barebox@lists.infradead.org; Sat, 06 Sep 2014 13:40:22 +0000
Received: by mail-we0-f172.google.com with SMTP id w62so493305wes.3
 for <barebox@lists.infradead.org>; Sat, 06 Sep 2014 06:39:59 -0700 (PDT)
Date: Sat, 6 Sep 2014 15:39:56 +0200
From: Alexander Aring <alex.aring@gmail.com>
Message-ID: <20140906133954.GB27510@omega>
References: <540AFD24.1000802@linux-source.de> <20140906123745.GA27510@omega>
 <540B060B.2070404@linux-source.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <540B060B.2070404@linux-source.de>
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
Subject: Re: [PATCH] commands: add lodvar - load variable from file content
To: Sebastian Block <basti@linux-source.de>
Cc: barebox@lists.infradead.org

On Sat, Sep 06, 2014 at 03:03:07PM +0200, Sebastian Block wrote:
> Hi Alex,
> 
> > On Sat, Sep 06, 2014 at 02:25:08PM +0200, Sebastian Block wrote:
> >> This adds a command to load a variable from file content.
> >> It is a work-a-round for "var=$(cat file)".
> >>
> > 
> > doesn't commands/readf.c do similar things?
> > 
> 
> you are right. Please forget this patch.
> 

Please don't interpret this as negative comment, you are always welcome
to introduce new commands. :-)

- Alex

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
