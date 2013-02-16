Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 9.mo3.mail-out.ovh.net ([87.98.184.141]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1U6fyJ-0001Ub-By
 for barebox@lists.infradead.org; Sat, 16 Feb 2013 11:30:24 +0000
Received: from mail642.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id 0669DFF84B1
 for <barebox@lists.infradead.org>; Sat, 16 Feb 2013 12:45:13 +0100 (CET)
Date: Sat, 16 Feb 2013 12:29:16 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20130216112916.GF19322@game.jcrosoft.org>
References: <20130215125941.GB19322@game.jcrosoft.org>
 <1360935317-7386-1-git-send-email-plagnioj@jcrosoft.com>
 <1360935317-7386-4-git-send-email-plagnioj@jcrosoft.com>
 <20130215174357.GZ1906@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20130215174357.GZ1906@pengutronix.de>
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
Subject: Re: [PATCH 4/5] disk: introduce partition name
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org, Rob Herring <rob.herring@calxeda.com>

On 18:43 Fri 15 Feb     , Sascha Hauer wrote:
> On Fri, Feb 15, 2013 at 02:35:16PM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > so we can register partion with name as present in EFI GPT
> > 
> > Cc: Rob Herring <rob.herring@calxeda.com>
> > Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> > ---
> >  common/partitions.c        |   54 ++++++++++++++++++++++++++++++++++----------
> >  common/partitions/parser.h |    2 ++
> >  2 files changed, 44 insertions(+), 12 deletions(-)
> > 
> > diff --git a/common/partitions.c b/common/partitions.c
> > index c1578c9..b0f48be 100644
> > --- a/common/partitions.c
> > +++ b/common/partitions.c
> > @@ -44,15 +44,43 @@ LIST_HEAD(partition_parser_list);
> >  static int register_one_partition(struct block_device *blk,
> >  					struct partition *part, int no)
> >  {
> > -	char partition_name[19];
> > +	char *partition_name;
> > +	int ret;
> > +	uint64_t start = part->first_sec * SECTOR_SIZE;
> > +	uint64_t size = part->size * SECTOR_SIZE;
> > +
> > +	partition_name = asprintf("%s.%d", blk->cdev.name, no);
> > +	if (!partition_name)
> > +		return -ENOMEM;
> > +	dev_dbg(blk->dev, "Registering partition %s on drive %s\n",
> > +				partition_name, blk->cdev.name);
> > +	ret = devfs_add_partition(blk->cdev.name,
> > +				start, size, 0, partition_name);
> > +	if (ret)
> > +		goto out;
> > +
> > +	free(partition_name);
> > +
> > +	if (!part->name[0])
> > +		return 0;
> 
> So when a name is not given then you also don't register the partition
> with a number?

we register with number first and only register with name if present

Best Regards,
J.
> 
> > +
> > +	partition_name = asprintf("%s.%s", blk->cdev.name, part->name);
> > +	if (!partition_name)
> > +		return -ENOMEM;
> >  
> > -	sprintf(partition_name, "%s.%d", blk->cdev.name, no);
> >  	dev_dbg(blk->dev, "Registering partition %s on drive %s\n",
> >  				partition_name, blk->cdev.name);
> > -	return devfs_add_partition(blk->cdev.name,
> > -				part->first_sec * SECTOR_SIZE,
> > -				part->size * SECTOR_SIZE,
> > -				0, partition_name);
> > +	ret = devfs_add_partition(blk->cdev.name,
> > +				start, size, 0, partition_name);
> > +
> > +	if (ret)
> > +		dev_warn(blk->dev, "Registering partition %s on drive %s failled\n",
> > +				partition_name, blk->cdev.name);
> 
> s/failled/failed/
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
