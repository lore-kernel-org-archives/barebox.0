Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VMuDx-0000OR-9d
 for barebox@lists.infradead.org; Fri, 20 Sep 2013 06:29:54 +0000
Date: Fri, 20 Sep 2013 08:29:28 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130920062927.GU30088@pengutronix.de>
References: <1379404339-6716-1-git-send-email-plagnioj@jcrosoft.com>
 <20130918070049.GK30088@pengutronix.de>
 <20130919115638.GC24065@ns203013.ovh.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20130919115638.GC24065@ns203013.ovh.net>
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
Subject: Re: [PATCH 1/2] filetype: add arm u-boot support
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Thu, Sep 19, 2013 at 01:56:38PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> On 09:00 Wed 18 Sep     , Sascha Hauer wrote:
> > On Tue, Sep 17, 2013 at 09:52:18AM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > > Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> > > ---
> > >  common/filetype.c  | 3 +++
> > >  include/filetype.h | 1 +
> > >  2 files changed, 4 insertions(+)
> > > 
> > > diff --git a/common/filetype.c b/common/filetype.c
> > > index 7507d85..59ea25a 100644
> > > --- a/common/filetype.c
> > > +++ b/common/filetype.c
> > > @@ -35,6 +35,7 @@ static const struct filetype_str filetype_str[] = {
> > >  	[filetype_lzo_compressed] = { "lzo compressed", "lzo" },
> > >  	[filetype_lz4_compressed] = { "lz4 compressed", "lz4" },
> > >  	[filetype_arm_barebox] = { "arm barebox image", "arm-barebox" },
> > > +	[filetype_arm_uboot] = { "arm u-boot image", "arm-u-boot" },
> > >  	[filetype_uimage] = { "U-Boot uImage", "u-boot" },
> > >  	[filetype_ubi] = { "UBI image", "ubi" },
> > >  	[filetype_jffs2] = { "JFFS2 image", "jffs2" },
> > > @@ -226,6 +227,8 @@ enum filetype file_detect_type(const void *_buf, size_t bufsize)
> > >  
> > >  	if (is_barebox_arm_head(_buf))
> > >  		return filetype_arm_barebox;
> > > +	if (buf[15] == 0xdeadbeef)
> > > +		return filetype_arm_uboot;
> > 
> > 0xdeadbeef is such a widely used placeholder that we should use it for
> > filetype detection. Also, I don't think that U-Boot ever specified
> > 0xdeadbeef at this offset as a fixed value. It could be changed without
> > notice.
> 
> on ARM it's keeped for years > 7 IIRC

Yes, and there's no indication that it will change. Anyway, this was
never meant as an API and everybody uses 0xdeadbeef as placeholder.

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
