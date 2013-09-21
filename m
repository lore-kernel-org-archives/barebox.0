Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 4.mo1.mail-out.ovh.net ([46.105.76.26]
 helo=mo1.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VNH3k-0003Gc-Fl
 for barebox@lists.infradead.org; Sat, 21 Sep 2013 06:52:53 +0000
Received: from mail440.ha.ovh.net (gw6.ovh.net [213.251.189.206])
 by mo1.mail-out.ovh.net (Postfix) with SMTP id 0E8401004BC1
 for <barebox@lists.infradead.org>; Sat, 21 Sep 2013 08:52:29 +0200 (CEST)
Date: Sat, 21 Sep 2013 08:53:43 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20130921065343.GJ1137@ns203013.ovh.net>
References: <1379404339-6716-1-git-send-email-plagnioj@jcrosoft.com>
 <20130918070049.GK30088@pengutronix.de>
 <20130919115638.GC24065@ns203013.ovh.net>
 <20130920062927.GU30088@pengutronix.de>
 <20130920080257.GH1137@ns203013.ovh.net>
 <20130920115659.GG30088@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20130920115659.GG30088@pengutronix.de>
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
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 13:56 Fri 20 Sep     , Sascha Hauer wrote:
> On Fri, Sep 20, 2013 at 10:02:57AM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > On 08:29 Fri 20 Sep     , Sascha Hauer wrote:
> > > On Thu, Sep 19, 2013 at 01:56:38PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > > > On 09:00 Wed 18 Sep     , Sascha Hauer wrote:
> > > > > On Tue, Sep 17, 2013 at 09:52:18AM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > > > > > Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> > > > > > ---
> > > > > >  common/filetype.c  | 3 +++
> > > > > >  include/filetype.h | 1 +
> > > > > >  2 files changed, 4 insertions(+)
> > > > > > 
> > > > > > diff --git a/common/filetype.c b/common/filetype.c
> > > > > > index 7507d85..59ea25a 100644
> > > > > > --- a/common/filetype.c
> > > > > > +++ b/common/filetype.c
> > > > > > @@ -35,6 +35,7 @@ static const struct filetype_str filetype_str[] = {
> > > > > >  	[filetype_lzo_compressed] = { "lzo compressed", "lzo" },
> > > > > >  	[filetype_lz4_compressed] = { "lz4 compressed", "lz4" },
> > > > > >  	[filetype_arm_barebox] = { "arm barebox image", "arm-barebox" },
> > > > > > +	[filetype_arm_uboot] = { "arm u-boot image", "arm-u-boot" },
> > > > > >  	[filetype_uimage] = { "U-Boot uImage", "u-boot" },
> > > > > >  	[filetype_ubi] = { "UBI image", "ubi" },
> > > > > >  	[filetype_jffs2] = { "JFFS2 image", "jffs2" },
> > > > > > @@ -226,6 +227,8 @@ enum filetype file_detect_type(const void *_buf, size_t bufsize)
> > > > > >  
> > > > > >  	if (is_barebox_arm_head(_buf))
> > > > > >  		return filetype_arm_barebox;
> > > > > > +	if (buf[15] == 0xdeadbeef)
> > > > > > +		return filetype_arm_uboot;
> > > > > 
> > > > > 0xdeadbeef is such a widely used placeholder that we should use it for
> > > > > filetype detection. Also, I don't think that U-Boot ever specified
> > > > > 0xdeadbeef at this offset as a fixed value. It could be changed without
> > > > > notice.
> > > > 
> > > > on ARM it's keeped for years > 7 IIRC
> > > 
> > > Yes, and there's no indication that it will change. Anyway, this was
> > > never meant as an API and everybody uses 0xdeadbeef as placeholder.
> > 
> > so the question remain how to boot a u-boot that can be a second stage
> 
> 'go'? You could also embed it in an uImage if you really want to use the
> bootm command.

I really hate the go you need to load in ram and then do the go

Best Regards,
J.
> 
> Sascha
> 
> 
> -- 
> Pengutronix e.K.                           |                             |
> Industrial Linux Solutions                 | http://www.pengutronix.de/  |
> Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
