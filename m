Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pz0-f41.google.com ([209.85.210.41])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1Qq1M2-0004Zp-Ug
	for barebox@lists.infradead.org; Sun, 07 Aug 2011 11:17:15 +0000
Received: by pzk4 with SMTP id 4so851260pzk.28
	for <barebox@lists.infradead.org>; Sun, 07 Aug 2011 04:17:11 -0700 (PDT)
From: Vikram Narayanan <vikram186@gmail.com>
In-Reply-To: <20110718044640.GJ20678@game.jcrosoft.org>
References: <1310803330.2562.13.camel@ubuntu.ubuntu-domain>
	<20110718044640.GJ20678@game.jcrosoft.org>
Date: Sun, 07 Aug 2011 16:47:04 +0530
Message-ID: <1312715824.10170.2.camel@ubuntu.ubuntu-domain>
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
Subject: Re: [PATCH] checks for return value during the initcall
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Mon, 2011-07-18 at 06:46 +0200, Jean-Christophe PLAGNIOL-VILLARD
wrote:
> On 13:32 Sat 16 Jul     , Vikram Narayanan wrote:
> > Hi,
> > 
> > This patch checks for the return value, if there is no memory allocated in the getc_buffer_flush initcall.
> > 
> > Signed-off-by: Vikram Narayanan<vikram186@gmail.com>
> > ---
> > diff --git a/common/console.c b/common/console.c
> > index d60e57f..c502638 100644
> > --- a/common/console.c
> > +++ b/common/console.c
> > @@ -37,6 +37,7 @@
> >  #include <poller.h>
> >  #include <linux/list.h>
> >  #include <linux/stringify.h>
> > +#include <errno.h>
> >  
> >  LIST_HEAD(console_list);
> >  EXPORT_SYMBOL(console_list);
> > @@ -118,6 +119,8 @@ static int getc_buffer_flush(void)
> >  {
> >  	console_input_buffer = kfifo_alloc(1024);
> >  	console_output_buffer = kfifo_alloc(1024);
> > +	if(!console_input_buffer || !console_output_buffer)
> > +		return ENOMEM;
> return -ENOMEM;
> 
> and a DEBUG_LL message is important here for debug
Please see if this is ok. 

Signed-off-by: Vikram Narayanan <vikram186@gmail.com>
---
 common/console.c |    5 +++++
 1 files changed, 5 insertions(+), 0 deletions(-)

diff --git a/common/console.c b/common/console.c
index d60e57f..3a76320 100644
--- a/common/console.c
+++ b/common/console.c
@@ -118,6 +118,11 @@ static int getc_buffer_flush(void)
 {
 	console_input_buffer = kfifo_alloc(1024);
 	console_output_buffer = kfifo_alloc(1024);
+	if(!console_input_buffer || !console_output_buffer)
+	{
+		PUTS_LL("Memory allocation failed in getc_buffer_flush\n");
+		return -ENOMEM;
+	}
 	return 0;
 }
 
-- 
1.7.2.3



_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
