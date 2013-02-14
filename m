Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 2.mo3.mail-out.ovh.net ([46.105.75.36]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1U670F-0000Sq-KC
 for barebox@lists.infradead.org; Thu, 14 Feb 2013 22:10:04 +0000
Received: from mail612.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id 299CCFF8383
 for <barebox@lists.infradead.org>; Thu, 14 Feb 2013 23:24:50 +0100 (CET)
Date: Thu, 14 Feb 2013 23:08:55 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20130214220855.GW19322@game.jcrosoft.org>
References: <20130214154759.GT19322@game.jcrosoft.org>
 <1360857147-489-1-git-send-email-plagnioj@jcrosoft.com>
 <1360857147-489-2-git-send-email-plagnioj@jcrosoft.com>
 <20130214163618.GV1906@pengutronix.de>
 <20130214165323.GU19322@game.jcrosoft.org>
 <20130214170507.GA8097@sig21.net>
 <20130214191702.GZ1906@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20130214191702.GZ1906@pengutronix.de>
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
Subject: Re: [PATCH 2/5] filetype: add GPT support
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org, Rob Herring <rob.herring@calxeda.com>

On 20:17 Thu 14 Feb     , Sascha Hauer wrote:
> On Thu, Feb 14, 2013 at 06:05:07PM +0100, Johannes Stezenbach wrote:
> > On Thu, Feb 14, 2013 at 05:53:23PM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > > On 17:36 Thu 14 Feb     , Sascha Hauer wrote:
> > > > On Thu, Feb 14, 2013 at 04:52:24PM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > > > > GPT need to be check before MBR
> > > > > 
> > > > > Cc: Rob Herring <rob.herring@calxeda.com>
> > > > > Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> > > > > ---
> > > > >  common/filetype.c  |    4 ++++
> > > > >  include/filetype.h |    1 +
> > > > >  2 files changed, 5 insertions(+)
> > > > > 
> > > > > diff --git a/common/filetype.c b/common/filetype.c
> > > > > index 22fc621..6563ecc 100644
> > > > > --- a/common/filetype.c
> > > > > +++ b/common/filetype.c
> > > > > @@ -48,6 +48,7 @@ static const struct filetype_str filetype_str[] = {
> > > > >  	[filetype_bmp] = { "BMP image", "bmp" },
> > > > >  	[filetype_png] = { "PNG image", "png" },
> > > > >  	[filetype_ext] = { "ext filesystem", "ext" },
> > > > > +	[filetype_gpt] = { "GUID Partition Table", "gpt" },
> > > > >  };
> > > > >  
> > > > >  const char *file_type_to_string(enum filetype f)
> > > > > @@ -159,6 +160,9 @@ enum filetype file_detect_type(const void *_buf, size_t bufsize)
> > > > >  	if (bufsize < 512)
> > > > >  		return filetype_unknown;
> > > > >  
> > > > > +	if (bufsize >= 520 && strncmp(&buf8[512], "EFI PART", 8) == 0)
> > > > > +		return filetype_gpt;
> > > > > +
> > > > 
> > > > The list is sorted by size, so please move this below:
> > > on purpose
> > > 
> > > EFI need to be detect before mbr
> > 
> > IMHO the check is too simple, it will give false positive if
> > GPT is replaced by DOS MBR and not zeroed out.  Need to check
> > for protective MBR.
> 
> So is_fat_or_mbr() should test if the MBR is a protective MBR and return
> false in this case?

no as the efi is more I do the check in efi.c protective bit and right type

I move the code to filetype

but efi need to be before MBR as you could have both for retro compatibility

Nest Regards,
J.
> 
> Sascha
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
