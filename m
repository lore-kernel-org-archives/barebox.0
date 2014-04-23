Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ee0-x232.google.com ([2a00:1450:4013:c00::232])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Wcvtb-00030P-NV
 for barebox@lists.infradead.org; Wed, 23 Apr 2014 12:03:24 +0000
Received: by mail-ee0-f50.google.com with SMTP id c13so710658eek.9
 for <barebox@lists.infradead.org>; Wed, 23 Apr 2014 05:03:00 -0700 (PDT)
Date: Wed, 23 Apr 2014 14:02:55 +0200
From: Alexander Aring <alex.aring@gmail.com>
Message-ID: <20140423120252.GA22616@omega>
References: <1397131446-4816-1-git-send-email-alex.aring@gmail.com>
 <20140423102540.GQ5858@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20140423102540.GQ5858@pengutronix.de>
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
Subject: Re: [PATCH 0/3] memtest: small cleanup
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On Wed, Apr 23, 2014 at 12:25:40PM +0200, Sascha Hauer wrote:
> On Thu, Apr 10, 2014 at 02:04:03PM +0200, Alexander Aring wrote:
> > Hi,
> > 
> > this are three patches to cleanup the memtest command. It removes the the first
> > and last if condition in the sdram regions loop. It was stupid to handle it in
> > that way but since then my skills are improved and it was long time on my list.
> > 
> > I would be happy if somebody can test it with two banks, again...
> 
> I tested it on a Karo TX25 which seems to work fine.
> 
> Applied, thanks
> 

Thanks.

- Alex

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
