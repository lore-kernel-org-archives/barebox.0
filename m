Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 20.mo5.mail-out.ovh.net ([91.121.55.239]
 helo=mo5.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1RbE8r-0006wh-2X
 for barebox@lists.infradead.org; Thu, 15 Dec 2011 16:26:47 +0000
Received: from mail434.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id 205F7FFC470
 for <barebox@lists.infradead.org>; Thu, 15 Dec 2011 17:25:07 +0100 (CET)
Date: Thu, 15 Dec 2011 17:20:13 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20111215162013.GI9234@game.jcrosoft.org>
References: <1323945034-19687-1-git-send-email-s.hauer@pengutronix.de>
 <1323945034-19687-7-git-send-email-s.hauer@pengutronix.de>
 <20111215133317.GD9234@game.jcrosoft.org>
 <20111215152752.GU27267@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20111215152752.GU27267@pengutronix.de>
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
Subject: Re: *** PROBABLY SPAM *** [PATCH 06/12] reimplement uImage code
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 16:27 Thu 15 Dec     , Sascha Hauer wrote:
> On Thu, Dec 15, 2011 at 02:33:17PM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > On 11:30 Thu 15 Dec     , Sascha Hauer wrote:
> > > Provide a new API for accessing uImages which makes it easy
> > > for commands to open images, verify them, load to (free) sdram
> > > regions and show information about uImages.
> > > 
> > > - We now do not load the image to malloced space anymore.
> > > - The data in the header is now stored in cpu native endianess
> > >   after uimage_open which makes it easy to access the header data.
> > > - uImage can be loaded to dynamically allocated sdram regions.
> > > 
> > > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> > I was more think of a filesystem
> > 
> > so we can execute an embedded script
> 
> You can still do with "uimage -e script myimage; ./script"
> 
> I thought about the filesystem approach and I came to the conclusion
> that this is not really what we want for booting. While it definitely
> has charm when we can mount a uImage and just work on the included file
> we would loose the meta data in this case. We could create the metadata
> in form of files, maybe like this:
> 
> # mount uImage uimage /mnt
> # ls /mnt
> /mnt/image0
> /mnt/image1
> /mnt/entrypoint
> /mnt/loadaddress
> 
> But these files would be hard to work on and also would not have
> the 'uImage is just another image handled by bootm' facility.
I get a first patch that do this but not finished

no my idea why a new falicity as all the image could be mouted in my mind

and maybe use an ioctl to get the metadata

and we could map it

Best Regrds,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
