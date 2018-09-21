Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from eddie.linux-mips.org ([148.251.95.138] helo=cvs.linux-mips.org)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1g3I1S-0003qy-34
 for barebox@lists.infradead.org; Fri, 21 Sep 2018 09:47:09 +0000
Received: (from localhost user: 'ladis' uid#1021 fake: STDIN
 (ladis@eddie.linux-mips.org)) by eddie.linux-mips.org
 id S23992786AbeIUJqhM2EHB (ORCPT
 <rfc822;barebox@lists.infradead.org>);
 Fri, 21 Sep 2018 11:46:37 +0200
Date: Fri, 21 Sep 2018 11:46:36 +0200
From: Ladislav Michl <ladis@linux-mips.org>
Message-ID: <20180921094636.GA9954@lenoch>
References: <20180920182701.GA18781@lenoch>
 <20180921071111.GW4097@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180921071111.GW4097@pengutronix.de>
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
Subject: Re: mtd_peb_write broken on dataflash
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On Fri, Sep 21, 2018 at 09:11:11AM +0200, Sascha Hauer wrote:
> Hi Ladis,
> 
> On Thu, Sep 20, 2018 at 08:27:01PM +0200, Ladislav Michl wrote:
> > As mtd_peb_write checks for alignment, it fails writing to dataflash:
> > barebox$ state -s
> > ERROR: state: Failed to write PEB 0, -22
> > ERROR: state: Failed to write circular to 0 length 48, -22
> > WARNING: state: Failed to write state backend bucket, -22
> > ERROR: state: Failed to write PEB 1, -22
> > ERROR: state: Failed to write circular to 0 length 48, -22
> > WARNING: state: Failed to write state backend bucket, -22
> > ERROR: state: Failed to write PEB 2, -22
> > ERROR: state: Failed to write circular to 0 length 48, -22
> 
> How I read the code the length should be writesize aligned...

It is perfectly valid to write less to dataflash... But see bellow.

> > diff --git a/drivers/mtd/peb.c b/drivers/mtd/peb.c
> > index c35b63f2f..6035fbc45 100644
> > --- a/drivers/mtd/peb.c
> > +++ b/drivers/mtd/peb.c
> > @@ -376,7 +376,7 @@ int mtd_peb_write(struct mtd_info *mtd, const void *buf, int pnum, int offset,
> >  		return -EINVAL;
> >  	if (len <= 0)
> >  		return -EINVAL;
> > -	if (len % (mtd->writesize >> mtd->subpage_sft))
> > +	if (mtd->type != MTD_DATAFLASH && len % (mtd->writesize >> mtd->subpage_sft))
> 
> So how big is mtd->writesize here and is this value correct?

Yes, it is correct:
dataflash@00: AT45DB041x (528 KBytes) pagesize 264 bytes (OTP)

> In state_storage_mtd_buckets_init() we have:
> 
>         if (circular)
>                 writesize = meminfo->writesize;
>         else
>                 writesize = meminfo->erasesize;
> 
> How big are meminfo->writesize and meminfo->erasesize here and
> which path is chosen?

writesize: 264
erasesize: 264
subpage_sft: 0
circular: true

But later we are trying to write 48 bytes:
dataflash0.barebox-state: write 48 bytes to PEB 0:0

	ladis

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
