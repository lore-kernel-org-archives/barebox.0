Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 31.mail-out.ovh.net ([213.186.62.10])
	by bombadil.infradead.org with smtp (Exim 4.72 #1 (Red Hat Linux))
	id 1OyjxK-00070Y-NN
	for barebox@lists.infradead.org; Thu, 23 Sep 2010 11:27:15 +0000
Date: Thu, 23 Sep 2010 13:25:48 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20100923112548.GC32018@game.jcrosoft.org>
References: <1285151785-507-1-git-send-email-plagnioj@jcrosoft.com>
	<20100922123613.GD23406@pengutronix.de>
	<87d3s5by0y.fsf@macbook.be.48ers.dk>
	<20100922160834.GG23406@pengutronix.de>
	<20100922161218.GW32018@game.jcrosoft.org>
	<20100922165422.GI23406@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20100922165422.GI23406@pengutronix.de>
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
Subject: Re: [PATCH] commands/crc32: add compare 2 files crc
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 18:54 Wed 22 Sep     , Sascha Hauer wrote:
> On Wed, Sep 22, 2010 at 06:12:18PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > On 18:08 Wed 22 Sep     , Sascha Hauer wrote:
> > > On Wed, Sep 22, 2010 at 05:25:49PM +0200, Peter Korsgaard wrote:
> > > > >>>>> "Sascha" == Sascha Hauer <s.hauer@pengutronix.de> writes:
> > > > 
> > > >  Sascha> On Wed, Sep 22, 2010 at 12:36:25PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > > >  >> add -F options to compare to file crc
> > > >  >> 
> > > >  >> it's usefull to compare what you flash in a partition
> > > > 
> > > >  Sascha> Why don't you use memcmp?
> > > > 
> > > >  Sascha> memcmp -s uImage -d /dev/nand0.kernel.bb 0 0
> > > > 
> > > > It's sometimes interesting to be able to compare a checksum with a file
> > > > on the host (E.G. output of cksum/md5sum/sha1sum/..)
> > > 
> > > crc32 can output the crc checksum of a file using the -f option. What
> > > Jean-Christophe added is an option to calculate the checksum of two
> > > files (one given with -f and the other with -F). I just fail to see why
> > > this must be done in a single step instead of using a crc32 followed by
> > > a memcmp.
> > it's faster btw
> 
> Yes, that's the remaining argument, so this should be the selling point
> for this patch?
yes
> 
> btw, does the patch handle the case when the partition is bigger than
> the image file?
yes

> 
> I would also write the image file directly to the flash instead of
> transfering it to RAM and then copy it to flash. That should be even
> faster.
here we just do a crc32 but we could integrate it in the tftp & co to as check
in a second step

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
