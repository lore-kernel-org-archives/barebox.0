Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VO1sW-0007xP-OP
 for barebox@lists.infradead.org; Mon, 23 Sep 2013 08:52:25 +0000
Date: Mon, 23 Sep 2013 10:52:02 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130923085202.GU30088@pengutronix.de>
References: <20130921064503.GI1137@ns203013.ovh.net>
 <1379745967-4575-1-git-send-email-plagnioj@jcrosoft.com>
 <20130923073346.GT30088@pengutronix.de>
 <20130923080540.GD31585@ns203013.ovh.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20130923080540.GD31585@ns203013.ovh.net>
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
Subject: Re: [PATCH 1/4] misc: add bootcount framework
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Mon, Sep 23, 2013 at 10:05:40AM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> On 09:33 Mon 23 Sep     , Sascha Hauer wrote:
> > On Sat, Sep 21, 2013 at 08:46:04AM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > Can we please just do something like:
> > 
> > common/bootcount.c:
> > 
> > static int bootcount;
> > 
> > /*
> >  * Call this with your actual boot count, already increased by one
> >  * for the current boot.
> >  */
> > int bootcount_set(int count)
> > {
> > 	if (bootcount) {
> > 		pr_err("Bootcount already set\n");
> > 		return -EINVAL;
> > 	}
> > 
> > 	bootcount = count;
> > 
> > 	return 0;
> > }
> > 
> > static int bootcount_init(void)
> > {
> > 	globalvar_add_simple_int_ro("bootcount", &bootcount, "%d");
> > 
> > 	return 0;
> > }
> > late_initcall(bootcount_init);
> 
> no as the bootcount is way more complex for somfy
> 
> we store the boot count in one register with the boot mode
> 
> and the boot count can we reset by the shell
> 
> so it's not a RO

Make it rw then.

Put whatever complexity you need into your somfy code, but all that's
user visible is a single variable (visible to both C code and
userspace). We don't need a framework for this.

> 
> and I do not like to put everything on global

And I do not like creating devices which serve only as a namespace
provider for variables.

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
