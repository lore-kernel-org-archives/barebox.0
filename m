Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-f177.google.com ([209.85.217.177])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1STr2o-0003yV-Dy
 for barebox@lists.infradead.org; Mon, 14 May 2012 08:54:19 +0000
Received: by lbbgg6 with SMTP id gg6so3933962lbb.36
 for <barebox@lists.infradead.org>; Mon, 14 May 2012 01:54:14 -0700 (PDT)
Message-ID: <4FB0C830.7010701@gmail.com>
Date: Mon, 14 May 2012 14:54:08 +0600
From: Alexey Galakhov <agalakhov@gmail.com>
MIME-Version: 1.0
References: <20120513090917.GX27341@pengutronix.de>
 <1336912806-4163-1-git-send-email-agalakhov@gmail.com>
 <1336912806-4163-3-git-send-email-agalakhov@gmail.com>
 <201205141003.02064.jbe@pengutronix.de>
In-Reply-To: <201205141003.02064.jbe@pengutronix.de>
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
Subject: Re: [PATCH 2/9] Fine split S3C arch dependencies from generic code
To: Juergen Beisert <jbe@pengutronix.de>
Cc: barebox@lists.infradead.org

On 14.05.2012 14:03, Juergen Beisert wrote:

> You have to touch all S3C24xx based board files just to rename these files 
> from "<socname>-<function>.h" to "<function>-<socname>.h"?
> 
> jbe
> 

Not exactly so. Yes, I have to rename file - to make space for another
one. Having just one file with lots of #ifdefs for two very different
architectures seems to be worse than this.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
