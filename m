Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mx1.tq-group.com ([62.157.118.193])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gPm5P-0001Hr-IJ
 for barebox@lists.infradead.org; Thu, 22 Nov 2018 10:19:53 +0000
Message-ID: <e8a745f8ce80ae9a17cb3d7278732d77cec8277f.camel@ew.tq-group.com>
From: Matthias Schiffer <matthias.schiffer@ew.tq-group.com>
Date: Thu, 22 Nov 2018 11:19:30 +0100
In-Reply-To: <20181121075649.uheexugggfy6rp6n@pengutronix.de>
References: <20181120094035.18252-1-matthias.schiffer@ew.tq-group.com>
 <20181120094035.18252-2-matthias.schiffer@ew.tq-group.com>
 <20181121075649.uheexugggfy6rp6n@pengutronix.de>
Mime-Version: 1.0
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
Subject: Re: [PATCH] environment: do not attempt to erase devices with
 MTD_NO_ERASE
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On Wed, 2018-11-21 at 08:56 +0100, Sascha Hauer wrote:
> Hi Matthias,
> 
> On Tue, Nov 20, 2018 at 10:40:34AM +0100, 
> matthias.schiffer@ew.tq-group.com wrote:
> > From: Matthias Schiffer <matthias.schiffer@ew.tq-group.com>
> > 
> > Devices like MRAM do not need to be erased; in fact, trying to do a
> > partial
> > erase will fail with -EINVAL, as they don't have a proper erase
> > block size
> > defined.
> 
> Where does this -EINVAL come from? Wouldn't it be an option to check
> for
> the MTD_NO_ERASE flag mtd_op_erase() and return -EOPNOTSUPP there?
> 
> Sascha
> 

Hmm, what are the expected semantics of MTD_NO_ERASE - "does not need
erase" or "does not support erase"? According to code comments, it's
the former.

The MRAM I'm working with reports an erase size equal to its total
size:

barebox:/ devinfo m25p0
Parameters:
  erasesize: 131072 (type: uint32)
  oobsize: 0 (type: uint32)
  partitions: 128k(barebox-environment) (type: string)
  size: 131072 (type: uint64)
  writesize: 1 (type: uint32)

This matches what Linux reports, but it seems to me that this MRAM does
not actually implement it: When I try to erase the whole flash (from
Linux or Barebox), it does return success, but the data is unchanged.
When I configure the environment to span the whole flash, envfs_save()
is working fine without my patch, as the erase is successful.

The problems start when I try to partition the MRAM, as envfs_save()
will now try to erase a block smaller than the erasesize, leading to
-EINVAL.

I'm not sure if making mtd_op_erase() check for MTD_NO_ERASE is the
correct solution - it would obviously be fine for my MRAM, as erase is
a noop anyways, but I have no idea if there are other devices that set
the flag, but do support erase (and just don't need it for normal write
operations).

Anyways, I have no problem with implementing the fix that way if we
decide that these are the semantics we want.

Matthias


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
