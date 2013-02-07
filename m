Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ee0-f47.google.com ([74.125.83.47])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U3ZJ8-00084T-HQ
 for barebox@lists.infradead.org; Thu, 07 Feb 2013 21:47:03 +0000
Received: by mail-ee0-f47.google.com with SMTP id e52so1665001eek.6
 for <barebox@lists.infradead.org>; Thu, 07 Feb 2013 13:46:59 -0800 (PST)
Date: Thu, 7 Feb 2013 22:47:46 +0100
From: Alexander Aring <alex.aring@gmail.com>
Message-ID: <20130207214744.GE2572@x61s.8.8.8.8>
References: <1360269380-28155-1-git-send-email-alex.aring@gmail.com>
 <20130207213524.GC1906@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20130207213524.GC1906@pengutronix.de>
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
Subject: Re: [PATCH 0/4] Small fixes in barebox
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi Sascha,

On Thu, Feb 07, 2013 at 10:35:24PM +0100, Sascha Hauer wrote:
> On Thu, Feb 07, 2013 at 09:36:16PM +0100, Alexander Aring wrote:
> > First I tried to change getopt optstring argument to "const char *"
> > and I test it with an allyesconfig for compiler warnings.
> > 
> > Then there popup some compile errors, which I tried to fix.
> > 
> > I am not happy with some of these solutions. Maybe someone have an idea
> > how we can make it better.
> > 
> > hush: add getopt only if it enabled
> >  - I don't know if this needs a fix. But if we disable getopt there is a
> >    no-op getopt implementation in the command list. This patch don't add
> >    getopt to the command list at runtime, but the no-op implementation is
> >    still there. Maybe a compiletime solution is better to remove the
> >    no-op implementation.
> 
> I don't understand. getopt is not there if CONFIG_HUSH_GETOPT is
> disabled. It's ifdeffed out.
> 

Yes it's ifdeffed out with an empty no-op getopt implementation. But
this will be add to the barebox command list.

So if we type "getopt" we don't get a "Unknown command" message, barebox
run only a no-op getopt implementation.

This patch will don't add getopt to the command list if we don't enable
it. I let the no-op getopt implementation there, otherwise we get a
compiler warning.

Regards
Alex


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
