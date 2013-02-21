Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-bk0-f49.google.com ([209.85.214.49])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U8c8y-0005yZ-4x
 for barebox@lists.infradead.org; Thu, 21 Feb 2013 19:49:24 +0000
Received: by mail-bk0-f49.google.com with SMTP id w11so4333333bku.8
 for <barebox@lists.infradead.org>; Thu, 21 Feb 2013 11:49:20 -0800 (PST)
Date: Thu, 21 Feb 2013 20:50:19 +0100
From: Alexander Aring <alex.aring@gmail.com>
Message-ID: <20130221195019.GD946@x61s.8.8.8.8>
References: <1361307394-24649-1-git-send-email-alex.aring@gmail.com>
 <20130221133102.GQ1906@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20130221133102.GQ1906@pengutronix.de>
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
Subject: Re: [PATCH 1/2] nandtest: use new pread and pwrite functions
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi,

On Thu, Feb 21, 2013 at 02:31:02PM +0100, Sascha Hauer wrote:
> On Tue, Feb 19, 2013 at 09:56:33PM +0100, Alexander Aring wrote:
> > Signed-off-by: Alexander Aring <alex.aring@gmail.com>
> > ---
> >  commands/nandtest.c | 36 ++++++------------------------------
> >  1 file changed, 6 insertions(+), 30 deletions(-)
> 
> Applied, thanks
> 
> I squashed this into the commit adding pread/pwrite to make this commit
> compilable.
> 

Thanks. :-)

Regards
Alex

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
