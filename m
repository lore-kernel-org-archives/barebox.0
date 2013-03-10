Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UEd55-0002Wk-Oj
 for barebox@lists.infradead.org; Sun, 10 Mar 2013 10:02:16 +0000
Date: Sun, 10 Mar 2013 11:02:13 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130310100213.GN1906@pengutronix.de>
References: <1362826391-16215-1-git-send-email-s.hauer@pengutronix.de>
 <E4906CA1-E082-429B-8A7D-BB21E85A65E7@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <E4906CA1-E082-429B-8A7D-BB21E85A65E7@jcrosoft.com>
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
Subject: Re: [PATCH] image and bss size decrease
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Sun, Mar 10, 2013 at 02:38:06AM +0800, Jean-Christophe PLAGNIOL-VILLARD wrote:
> 
> On Mar 9, 2013, at 6:53 PM, Sascha Hauer <s.hauer@pengutronix.de> wrote:
> 
> > This series decreases the image size and bss size a bit. First
> > we make malloc available in all initcalls by moving the malloc
> > pool initialization before start_barebox().
> > 
> > We then decrease the image size by making some statically initialized
> > structs smaller. struct command has a struct list_head member
> > which can be removed by wrapping the static struct command into
> > a dynamically initialized one which contains the list_head. Also
> > the embedded struct device_d in struct bus_type is removed in
> > favour for a dynamically allocated one.
> > 
> > Also we make the bss smaller by allocating the FILE table and
> > the gpio_desc table dynamically. The bss size is may become
> > a problem on boards which run from SRAM. Here the malloc pool
> > is in the big SDRAM area, but the bss is in SRAM, so it makes
> > sense to move the big tables from bss to SDRAM by using malloc.
> > 
> 
> How much less
> 
> IIRC I try this too but with PBL it's bigger

With PBL it's still smaller, but on a pcm038 defconfig it's only 18
bytes, so this is not really worth the effort. Decreasing the bss
size still makes sense though.

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
