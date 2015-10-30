Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf0-x22f.google.com ([2a00:1450:4010:c07::22f])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Zs6XL-00061o-Bi
 for barebox@lists.infradead.org; Fri, 30 Oct 2015 10:03:56 +0000
Received: by lffz202 with SMTP id z202so30702587lff.3
 for <barebox@lists.infradead.org>; Fri, 30 Oct 2015 03:03:32 -0700 (PDT)
Date: Fri, 30 Oct 2015 13:06:09 +0300
From: Peter Mamonov <pmamonov@gmail.com>
Message-ID: <20151030130609.0d054aaf@berta>
In-Reply-To: <201510300953.50440.jbe@pengutronix.de>
References: <20151029160409.2ad22e14@berta>
 <20151030073104.GZ25308@pengutronix.de>
 <201510300953.50440.jbe@pengutronix.de>
MIME-Version: 1.0
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
Subject: Re: [BUG] ata: disk_ata_drive: SSD drive doesn't pass check for ata
 id validity
To: Juergen Borleis <jbe@pengutronix.de>
Cc: barebox@lists.infradead.org

On Fri, 30 Oct 2015 09:53:50 +0100
Juergen Borleis <jbe@pengutronix.de> wrote:

> On Friday 30 October 2015 08:31:04 Sascha Hauer wrote:
> > On Thu, Oct 29, 2015 at 04:04:09PM +0300, Peter Mamonov wrote:
> > > Hi!
> > >
> > > Barebox refuses to deal with OCZ-VERTEX4 ssd sata drive, because:
> > > 	ata1: ata id invalid
> > >
> > > This error is triggered by the following piece of code :
> > >
> > > static int ata_id_is_valid(const uint16_t *id)
> > > {
> > > 	if ((id[ATA_ID_FIELD_VALID] & 1) == 0) {
> > > 		pr_debug("Drive's ID seems invalid\n");
> > > 		return -EINVAL;
> > > 	}
> > >
> > > 	return 0;
> > > }
> > >
> > > The "id" is a sector-sized block of bytes, received after
> > > issuing ATA_CMD_ID_ATA command.
> > >
> > > If I remove this check, the drive works fine.
> > >
> > > Can someone with better knowledge of ATA standard comment on this
> > > issue?
> >
> > Juergen, do you have an idea what this check is for? Neither U-Boot
> > nor the Kernel seem to ever check for bit 0 in this field.
> 
> Seems this bit was meaningful in earlier days: it marked the ID
> member in the structure returned by the disk as valid (=1) or invalid
> (=0). In the meantime it seems obsolete. The last occurrence I found
> is in the Linux kernel in file "drivers/block/mg_disk.c". All other
> code which checks this register content just check bits 1 and 2. I
> vote for removing this piece of code.

Thanks for clarification.

> 
> jbe
> 


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
