Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YH6GR-000782-JS
 for barebox@lists.infradead.org; Fri, 30 Jan 2015 07:45:16 +0000
Date: Fri, 30 Jan 2015 08:44:53 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150130074453.GR12209@pengutronix.de>
References: <20150129182138.3DA6.AA925319@jp.panasonic.com>
 <20150129093212.GJ18908@pengutronix.de>
 <20150129194731.3DAE.AA925319@jp.panasonic.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20150129194731.3DAE.AA925319@jp.panasonic.com>
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
Subject: Re: [PATCH v2] param: add error check to __dev_add_param()
To: Masahiro Yamada <yamada.m@jp.panasonic.com>
Cc: barebox@lists.infradead.org

On Thu, Jan 29, 2015 at 07:47:31PM +0900, Masahiro Yamada wrote:
> Hi Sascha,
> 
> On Thu, 29 Jan 2015 10:32:12 +0100
> > > > > @@ -130,6 +130,13 @@ static int __dev_add_param(struct param_d *param, struct device_d *dev, const ch
> > > > >  	if (get_param_by_name(dev, name))
> > > > >  		return -EEXIST;
> > > > >  
> > > > > +	if (!name)
> > > > > +		return -EINVAL;
> > > > 
> > > > Name is used already two lines above so barebox will already be crashed
> > > > before this triggers.
> > > > 
> > > > Besides, I normally don't like these checks. dereferencing NULL pointers
> > > > means you get a backtrace showing you what went wrong. Returning an error
> > > > means adding code which in this case makes dev_add_param just fail
> > > > silently because the return value often is not checked.
> > > > 
> > > 
> > > OK, then how about dropping this -EINVAL check?
> > 
> > Yes, please.
> 
> 
> I did that in v3.
> 
> 
> > > 
> > > I think the -ENOMEM check below is still useful.
> > > ( strdup() returns NULL also when NULL is passed,
> > > but in that case this line cannot be reached.
> > > The problem is that is not apparent at a glance..)
> > 
> > Note we also have xstrdup which crashes barebox on out of memory. This
> > is usually the right thing to do when it's known that the allocation is
> > small.
> > 
> 
> I stopped and I have been thinking about it.
> I hesitate a bit to replace it with xstrdup().  I feel like being lazy.
> 
> So, I did not do this in v3.

The name of the parameter can be passed in by the user via the 'global'
command, so using strdup instead seems like a good idea here.

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
