Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VO7X6-0000xd-S0
 for barebox@lists.infradead.org; Mon, 23 Sep 2013 14:54:41 +0000
Date: Mon, 23 Sep 2013 16:54:19 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130923145419.GW30088@pengutronix.de>
References: <1379776829-30964-1-git-send-email-plagnioj@jcrosoft.com>
 <20130923081600.GG31585@ns203013.ovh.net>
 <20130923091309.GB17135@pengutronix.de>
 <20130923143226.GH31585@ns203013.ovh.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20130923143226.GH31585@ns203013.ovh.net>
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
Subject: Re: [PATCH v2] bootm: update os_entry from uimage
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Mon, Sep 23, 2013 at 04:32:26PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> On 11:13 Mon 23 Sep     , Sascha Hauer wrote:
> > On Mon, Sep 23, 2013 at 10:16:00AM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > > On 17:20 Sat 21 Sep     , Jean-Christophe PLAGNIOL-VILLARD wrote:
> > > > if not uimage set 0 by default
> > > > 
> > > > today we do not see the issue as the kernel entry point is the same as the
> > > > load_addr but on other binary its not necessary the case
> > > > 
> > > > as today we ignore the entry point set in the uimage and just assume it's the
> > > > same as the load_addr
> > > > 
> > > > Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> > > > ---
> > > 
> > > this patch will also prepare to add a globalval and a getopt to overwrite the
> > > os_entry
> > 
> > We already have a getopt to overwrite the os_entry: -e
> > 
> > > 
> > > yours do not care about this preparation by not setting
> > > data.os_entry = UIMAGE_SOME_ADDRESS;
> > 
> > Because UIMAGE_SOME_ADDRESS is not suitable for a relative offset to the
> > image start.
> 
> I use this ti let known th e uimage code that the os_entry is not overwrite
> and that it must not modify it
> 
> because if you specify  via getopt or global and do not set UIMAGE_SOME_ADDRESS
> the uimage code will overwrite the provided value

So you have uImages which have the wrong entry point provided in the
images? Why don't you fix the images instead?

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
