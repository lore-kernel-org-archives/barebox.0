Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 1.mo2.mail-out.ovh.net ([46.105.63.121]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1U6PEb-0001GA-QK
 for barebox@lists.infradead.org; Fri, 15 Feb 2013 17:38:07 +0000
Received: from mail170.ha.ovh.net (gw6.ovh.net [213.251.189.206])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id 539D9DC185B
 for <barebox@lists.infradead.org>; Fri, 15 Feb 2013 18:48:32 +0100 (CET)
Date: Fri, 15 Feb 2013 18:36:55 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20130215173655.GC19322@game.jcrosoft.org>
References: <20130215125941.GB19322@game.jcrosoft.org>
 <1360935317-7386-1-git-send-email-plagnioj@jcrosoft.com>
 <1360935317-7386-2-git-send-email-plagnioj@jcrosoft.com>
 <20130215173218.GX1906@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20130215173218.GX1906@pengutronix.de>
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

On 18:32 Fri 15 Feb     , Sascha Hauer wrote:
> On Fri, Feb 15, 2013 at 02:35:14PM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > GPT need to be check before MBR
> > 
> > Cc: Rob Herring <rob.herring@calxeda.com>
> > Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> > ---
> >  common/filetype.c  |   47 +++++++++++++++++++++++++++++++++++++++++++++++
> >  include/filetype.h |    1 +
> >  2 files changed, 48 insertions(+)
> > 
> > diff --git a/common/filetype.c b/common/filetype.c
> > index 22fc621..06fa803 100644
> > --- a/common/filetype.c
> > +++ b/common/filetype.c
> > @@ -48,6 +48,7 @@ static const struct filetype_str filetype_str[] = {
> >  	[filetype_bmp] = { "BMP image", "bmp" },
> >  	[filetype_png] = { "PNG image", "png" },
> >  	[filetype_ext] = { "ext filesystem", "ext" },
> > +	[filetype_gpt] = { "GUID Partition Table", "gpt" },
> >  };
> >  
> >  const char *file_type_to_string(enum filetype f)
> > @@ -69,9 +70,52 @@ const char *file_type_to_short_string(enum filetype f)
> >  #define MBR_StartSector		8	/* MBR: Offset of Starting Sector in Partition Table Entry */
> >  #define BS_55AA			510	/* Boot sector signature (2) */
> >  #define MBR_Table		446	/* MBR: Partition table offset (2) */
> > +#define MBR_partition_size	16	/* MBR: Partition table offset (2) */
> >  #define BS_FilSysType32		82	/* File system type (1) */
> >  #define BS_FilSysType		54	/* File system type (1) */
> >  
> > +#define MBR_PART_sys_ind	4
> > +#define MBR_PART_start_sect	8
> > +#define MBR_OSTYPE_EFI_GPT	0xee
> > +
> > +static inline int pmbr_part_valid(const uint8_t *buf)
> > +{
> > +	if (buf[MBR_PART_sys_ind] == MBR_OSTYPE_EFI_GPT &&
> > +		get_unaligned_le32(&buf[MBR_PART_start_sect]) == 1UL) {
> > +		return 1;
> > +	}
> > +
> > +	return 0;
> > +}
> > +
> > +/**
> > + * is_gpt_valid(): test Protective MBR for validity and EFI PART
> > + * @mbr: pointer to a legacy mbr structure
> > + *
> > + * Description: Returns 1 if PMBR is valid, 0 otherwise.
> > + * Validity depends on two things:
> > + *  1) MSDOS signature is in the last two bytes of the MBR
> > + *  2) One partition of type 0xEE is found
> 
> Still wrong. This describes is_pmbr_valid, but the function is named and
> implements is_gpt_valid. I suggest implemting a real is_pmbr_valid
> function and call it from is_gpt_valid which additionally checks for the
> gpt header.

we test both pmr and EFI PART fo this is right

test Protective MBR for validity and EFI PART

so the comment is correct

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
