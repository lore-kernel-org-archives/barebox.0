Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cxpVq-0004L6-FX
 for barebox@lists.infradead.org; Tue, 11 Apr 2017 06:42:52 +0000
Date: Tue, 11 Apr 2017 08:42:28 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170411064228.ukq7tfozugwstir7@pengutronix.de>
References: <20170410071420.26884-1-s.hauer@pengutronix.de>
 <20170410071420.26884-4-s.hauer@pengutronix.de>
 <20170410124448.GA1965@ravnborg.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20170410124448.GA1965@ravnborg.org>
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
Subject: Re: [PATCH 03/10] lib: implement simple_strtoll
To: Sam Ravnborg <sam@ravnborg.org>
Cc: Barebox List <barebox@lists.infradead.org>

On Mon, Apr 10, 2017 at 02:44:48PM +0200, Sam Ravnborg wrote:
> Hi Sascha.
> 
> Nitpick mode...
> 
> > --- a/lib/strtox.c
> > +++ b/lib/strtox.c
> > @@ -65,3 +65,11 @@ unsigned long long simple_strtoull (const char *cp, char **endp, unsigned int ba
> >  	return result;
> >  }
> >  EXPORT_SYMBOL(simple_strtoull);
> > +
> > +long long simple_strtoll(const char *cp,char **endp,unsigned int base)
> > +{
> > +	if(*cp=='-')
> 
> It hurts my eyes to see the missing space between if  and "(".

You're right. The whitespace placing throughout the file doesn't help
reading it. I just sent a patch cleaning it up and also fixed the
whitespaces in this patch.

> And on top I did not see simple_strtoull() used in the patch series.
> But then I may have missed it as I just skimmed the patches.

I'm pretty sure it's used ;)

Sascha


-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
