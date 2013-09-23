Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VO2Cx-0000Bv-OI
 for barebox@lists.infradead.org; Mon, 23 Sep 2013 09:13:32 +0000
Date: Mon, 23 Sep 2013 11:13:09 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130923091309.GB17135@pengutronix.de>
References: <1379776829-30964-1-git-send-email-plagnioj@jcrosoft.com>
 <20130923081600.GG31585@ns203013.ovh.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20130923081600.GG31585@ns203013.ovh.net>
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

On Mon, Sep 23, 2013 at 10:16:00AM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> On 17:20 Sat 21 Sep     , Jean-Christophe PLAGNIOL-VILLARD wrote:
> > if not uimage set 0 by default
> > 
> > today we do not see the issue as the kernel entry point is the same as the
> > load_addr but on other binary its not necessary the case
> > 
> > as today we ignore the entry point set in the uimage and just assume it's the
> > same as the load_addr
> > 
> > Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> > ---
> 
> this patch will also prepare to add a globalval and a getopt to overwrite the
> os_entry

We already have a getopt to overwrite the os_entry: -e

> 
> yours do not care about this preparation by not setting
> data.os_entry = UIMAGE_SOME_ADDRESS;

Because UIMAGE_SOME_ADDRESS is not suitable for a relative offset to the
image start.

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
